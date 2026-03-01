import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/action.dart';
import 'package:alma/core/models/section.dart';
import 'package:alma/core/models/work_state.dart';
import 'package:alma/core/models/employment.dart';
import 'package:alma/core/models/work_record.dart';
import 'package:alma/core/models/work_prompt.dart';
import 'package:alma/core/models/job.dart';
import 'package:alma/core/models/job_level.dart';
import 'package:alma/core/models/access_condition.dart';
import 'package:alma/core/models/education_state.dart';
import 'package:alma/core/models/education_record.dart';
import 'package:alma/core/models/enums/education_level.dart';
import 'package:alma/core/models/enums/job_type.dart';
import 'package:alma/core/models/enums/section_type.dart';
import 'package:alma/core/models/enums/work_prompt_type.dart';
import 'package:alma/core/models/skill.dart';
import 'package:alma/core/rules/work_country_config.dart';
import 'package:alma/core/engine/seeded_random.dart';
import 'package:alma/core/engine/time_commitment.dart';

class WorkEngine {
  WorkCountryConfig? _countryConfig;
  List<Job> _allJobs = [];
  List<GameAction> _workActions = [];

  static const int _actionsPerYear = 4;
  static const int _defaultPerformance = 50;

  void loadData({
    required WorkCountryConfig countryConfig,
    required List<Job> jobs,
    required List<GameAction> workActions,
  }) {
    _countryConfig = countryConfig;
    _allJobs = jobs;
    _workActions = workActions;
  }

  bool get isLoaded => _countryConfig != null;

  LifeState initializeWork(LifeState state) {
    return state.copyWith(
      workState: const WorkState(),
    );
  }

  List<Job> getAvailableJobs(LifeState state, SeededRandom rng) {
    if (_countryConfig == null) return [];
    final WorkState workState = state.workState ?? const WorkState();
    final EducationState eduState =
        state.educationState ?? const EducationState();
    final List<Job> eligible = _allJobs.where((Job job) {
      if (!_meetsAccessConditions(job.accessConditions, state, eduState)) {
        return false;
      }
      if (job.accessConditions.isEmpty &&
          job.requiredEducationLevel == null &&
          state.age < _countryConfig!.minAgeForNoEducationJobs) {
        return false;
      }
      if (_isAlreadyEmployed(workState, job.id)) return false;
      if (!_canTakeJobType(workState, job.type)) return false;
      return true;
    }).toList();
    if (eligible.isEmpty) return [];
    final int poolSize = _countryConfig!.jobPoolSize;
    if (eligible.length <= poolSize) return eligible;
    final List<Job> shuffled = List<Job>.from(eligible);
    for (int i = shuffled.length - 1; i > 0; i--) {
      final int j = rng.nextInt(i + 1);
      final Job temp = shuffled[i];
      shuffled[i] = shuffled[j];
      shuffled[j] = temp;
    }
    return shuffled.take(poolSize).toList();
  }

  LifeState applyToJob(LifeState state, Job job, SeededRandom rng) {
    final WorkState workState = state.workState ?? const WorkState();
    final EducationState eduState = state.educationState ?? const EducationState();
    if (!_meetsAccessConditions(job.accessConditions, state, eduState)) {
      return state.copyWith(
        workState: workState.copyWith(
          pendingPrompt: WorkPrompt(
            type: WorkPromptType.interviewResult,
            title: 'Application Rejected',
            description:
                'Your application for ${job.name} was rejected. You do not meet the requirements.',
            targetJob: job,
            accepted: false,
          ),
        ),
      );
    }
    final int jobCommitmentDays = getJobCommitmentDays(job);
    if (state.timeRemaining < jobCommitmentDays) {
      return state.copyWith(
        workState: workState.copyWith(
          pendingPrompt: WorkPrompt(
            type: WorkPromptType.interviewResult,
            title: 'Not Enough Time',
            description:
                'You do not have enough time left this year to take this job. ${job.name} requires $jobCommitmentDays days of commitment.',
            targetJob: job,
            accepted: false,
          ),
        ),
      );
    }
    if (job.interviewConditions.isEmpty) {
      return hireForJob(state, job);
    }
    if (_meetsAccessConditions(job.interviewConditions, state, eduState)) {
      return hireForJob(state, job);
    }
    return state.copyWith(
      workState: workState.copyWith(
        pendingPrompt: WorkPrompt(
          type: WorkPromptType.interviewResult,
          title: 'Interview Result',
          description:
              'After the interview for ${job.name}, they decided not to move forward with your application.',
          targetJob: job,
          accepted: false,
        ),
      ),
    );
  }

  LifeState hireForJob(LifeState state, Job job) {
    final WorkState workState = state.workState ?? const WorkState();
    final JobLevel firstLevel = job.levels.first;
    final int salary = (job.baseSalary * firstLevel.salaryMultiplier).round();
    final Employment employment = Employment(
      jobId: job.id,
      jobName: job.name,
      type: job.type,
      currentLevel: firstLevel.level,
      startAge: state.age,
      salary: salary,
      performance: _defaultPerformance,
      hoursPerWeek: job.timeCost,
    );
    final List<Employment> updatedEmployments = [
      ...workState.currentEmployments,
      employment,
    ];
    final String contextLabel = _buildContextLabel(updatedEmployments);
    final List<Section> sections = state.sections.map((Section s) {
      if (s.type == SectionType.work) {
        return s.copyWith(
          contextLabel: contextLabel,
          performance: s.performance == 0 ? _defaultPerformance : s.performance,
        );
      }
      return s;
    }).toList();
    final int jobCommitmentDays = getJobCommitmentDays(job);
    return state.copyWith(
      timeRemaining: state.timeRemaining - jobCommitmentDays,
      workState: workState.copyWith(
        currentEmployments: updatedEmployments,
        pendingPrompt: WorkPrompt(
          type: WorkPromptType.interviewResult,
          title: 'Hired!',
          description:
              'Congratulations! You have been hired as ${firstLevel.title} at ${job.name} with a salary of \$$salary/yr.',
          targetJob: job,
          accepted: true,
        ),
      ),
      sections: sections,
    );
  }

  LifeState quitJob(LifeState state, String jobId) {
    final WorkState workState = state.workState ?? const WorkState();
    final int index = workState.currentEmployments
        .indexWhere((Employment e) => e.jobId == jobId);
    if (index < 0) return state;
    final Employment employment = workState.currentEmployments[index];
    final WorkRecord record = WorkRecord(
      jobId: employment.jobId,
      jobName: employment.jobName,
      type: employment.type,
      finalLevel: employment.currentLevel,
      startAge: employment.startAge,
      endAge: state.age,
      yearsWorked: employment.yearsWorked,
      quitReason: 'quit',
      finalSalary: employment.salary,
      wasFriendlyDismissal: true,
    );
    final List<Employment> updatedEmployments =
        List<Employment>.from(workState.currentEmployments)..removeAt(index);
    final List<WorkRecord> updatedHistory = [...workState.history, record];
    final String contextLabel = _buildContextLabel(updatedEmployments);
    final List<Section> sections = state.sections.map((Section s) {
      if (s.type == SectionType.work) {
        return s.copyWith(
          contextLabel: contextLabel,
          performance:
              updatedEmployments.isEmpty ? _defaultPerformance : s.performance,
        );
      }
      return s;
    }).toList();
    return state.copyWith(
      workState: workState.copyWith(
        currentEmployments: updatedEmployments,
        history: updatedHistory,
      ),
      sections: sections,
    );
  }

  LifeState dismissPrompt(LifeState state) {
    final WorkState workState = state.workState ?? const WorkState();
    return state.copyWith(
      workState: workState.copyWith(pendingPrompt: null),
    );
  }

  LifeState processYearEnd(LifeState state, SeededRandom rng) {
    if (_countryConfig == null) return state;
    WorkState workState = state.workState ?? const WorkState();
    if (workState.currentEmployments.isEmpty) return state;
    final List<Employment> updatedEmployments = [];
    final List<WorkRecord> newRecords = [];
    WorkPrompt? promotionPrompt;
    WorkPrompt? firedPrompt;
    for (final Employment employment in workState.currentEmployments) {
      if (employment.type == JobType.casual) {
        newRecords.add(WorkRecord(
          jobId: employment.jobId,
          jobName: employment.jobName,
          type: employment.type,
          finalLevel: employment.currentLevel,
          startAge: employment.startAge,
          endAge: state.age,
          yearsWorked: employment.yearsWorked + 1,
          quitReason: 'casual_completed',
          finalSalary: employment.salary,
        ));
        state = state.copyWith(money: state.money + employment.salary);
        continue;
      }
      final bool fired = _checkFired(employment, rng);
      if (fired) {
        newRecords.add(WorkRecord(
          jobId: employment.jobId,
          jobName: employment.jobName,
          type: employment.type,
          finalLevel: employment.currentLevel,
          startAge: employment.startAge,
          endAge: state.age,
          yearsWorked: employment.yearsWorked,
          quitReason: 'fired',
          finalSalary: employment.salary,
          wasFriendlyDismissal: false,
        ));
        firedPrompt ??= WorkPrompt(
          type: WorkPromptType.fired,
          title: 'Dismissed',
          description:
              'Your performance at ${employment.jobName} was below expectations. You have been let go.',
          accepted: false,
        );
        continue;
      }
      state = state.copyWith(money: state.money + employment.salary);
      Employment updated = employment.copyWith(
        yearsWorked: employment.yearsWorked + 1,
      );
      if (promotionPrompt == null) {
        final _PromotionResult result =
            _checkPromotion(state, updated, updated.performance, rng);
        if (result.promoted) {
          updated = result.employment;
          promotionPrompt = WorkPrompt(
            type: WorkPromptType.promotionResult,
            title: 'Promotion!',
            description:
                'Your hard work at ${updated.jobName} has paid off! You have been promoted to ${result.newTitle} with a new salary of \$${updated.salary}/yr.',
            accepted: true,
          );
        }
      }
      updatedEmployments.add(updated);
    }
    final List<WorkRecord> updatedHistory = [
      ...workState.history,
      ...newRecords,
    ];
    final String contextLabel = _buildContextLabel(updatedEmployments);
    final List<Section> sections = state.sections.map((Section s) {
      if (s.type == SectionType.work) {
        return s.copyWith(
          contextLabel: contextLabel,
          performance:
              updatedEmployments.isEmpty ? _defaultPerformance : s.performance,
        );
      }
      return s;
    }).toList();
    return state.copyWith(
      workState: workState.copyWith(
        currentEmployments: updatedEmployments,
        history: updatedHistory,
        pendingPrompt: firedPrompt ?? promotionPrompt,
        performedActionsByJobIdThisYear: {},
      ),
      sections: sections,
    );
  }

  LifeState requestPromotion(
      LifeState state, String jobId, SeededRandom rng) {
    final WorkState workState = state.workState ?? const WorkState();
    final int index = workState.currentEmployments
        .indexWhere((Employment e) => e.jobId == jobId);
    if (index < 0) return state;
    final Employment employment = workState.currentEmployments[index];
    final _PromotionResult result =
        _checkPromotion(state, employment, employment.performance, rng,
            isRequest: true);
    if (result.promoted) {
      final List<Employment> updatedEmployments =
          List<Employment>.from(workState.currentEmployments);
      updatedEmployments[index] = result.employment;
      final String contextLabel = _buildContextLabel(updatedEmployments);
      final List<Section> sections = state.sections.map((Section s) {
        if (s.type == SectionType.work) {
          return s.copyWith(contextLabel: contextLabel);
        }
        return s;
      }).toList();
      return state.copyWith(
        workState: workState.copyWith(
          currentEmployments: updatedEmployments,
          pendingPrompt: WorkPrompt(
            type: WorkPromptType.promotionResult,
            title: 'Promotion!',
            description:
                'Your request was approved! You have been promoted to ${result.newTitle} at ${employment.jobName} with a salary of \$${result.employment.salary}/yr.',
            accepted: true,
          ),
        ),
        sections: sections,
      );
    }
    return state.copyWith(
      workState: workState.copyWith(
        pendingPrompt: WorkPrompt(
          type: WorkPromptType.promotionResult,
          title: 'Promotion Denied',
          description:
              'Your promotion request at ${employment.jobName} was not approved at this time.',
          accepted: false,
        ),
      ),
    );
  }

  Map<String, List<GameAction>> pickYearlyActions(
    List<Employment> employments,
    SeededRandom rng,
  ) {
    final Map<String, List<GameAction>> result = {};
    for (final Employment employment in employments) {
      final List<GameAction> eligible = _workActions.where((GameAction action) {
        if (action.workJobId == null && action.workJobType == null) {
          return true;
        }
        if (action.workJobId != null && action.workJobId != employment.jobId) {
          return false;
        }
        if (action.workJobType != null &&
            action.workJobType != employment.type.name) {
          return false;
        }
        return true;
      }).toList();
      if (eligible.isEmpty) {
        result[employment.jobId] = [];
        continue;
      }
      final List<GameAction> shuffled = List<GameAction>.from(eligible);
      for (int i = shuffled.length - 1; i > 0; i--) {
        final int j = rng.nextInt(i + 1);
        final GameAction temp = shuffled[i];
        shuffled[i] = shuffled[j];
        shuffled[j] = temp;
      }
      result[employment.jobId] =
          shuffled.take(_actionsPerYear).toList();
    }
    return result;
  }

  bool _isAlreadyEmployed(WorkState workState, String jobId) {
    return workState.currentEmployments
        .any((Employment e) => e.jobId == jobId);
  }

  bool _canTakeJobType(WorkState workState, JobType type) {
    if (_countryConfig == null) return true;
    if (type == JobType.casual) return true;
    final int currentFullTime = workState.currentEmployments
        .where((Employment e) => e.type == JobType.fullTime)
        .length;
    final int currentPartTime = workState.currentEmployments
        .where((Employment e) => e.type == JobType.partTime)
        .length;
    if (type == JobType.fullTime) {
      return currentFullTime < _countryConfig!.maxFullTimeJobs;
    }
    if (type == JobType.partTime) {
      return currentPartTime < _countryConfig!.maxPartTimeJobs;
    }
    return true;
  }

  bool _meetsAccessConditions(
    List<AccessCondition> conditions,
    LifeState state,
    EducationState eduState,
  ) {
    for (final AccessCondition condition in conditions) {
      final bool met = switch (condition) {
        PreviousLevelCondition(:final level, :final requiredBranch) =>
          _hasPreviousLevel(eduState, level, requiredBranch),
        PreviousProgramCondition(:final requiredProgramId) =>
          _hasCompletedProgram(eduState, requiredProgramId),
        MinGradeCondition(:final level, :final minGrade) =>
          _hasMinGrade(eduState, level, minGrade),
        MinSkillCondition(:final skill, :final minValue) =>
          state.skills.getValue(skill) >= minValue,
        CustomCondition(:final key, :final operator, :final value) =>
          _evaluateCustomCondition(state, key, operator, value),
      };
      if (!met) return false;
    }
    return true;
  }

  bool _hasPreviousLevel(
    EducationState eduState,
    EducationLevel level,
    String? requiredBranch,
  ) {
    return eduState.history.any((EducationRecord record) {
      if (record.level != level || !record.graduated) return false;
      if (requiredBranch != null && record.branch != requiredBranch) return false;
      return true;
    });
  }

  bool _hasCompletedProgram(EducationState eduState, String programId) {
    return eduState.history.any((EducationRecord record) =>
        record.graduated && record.programId == programId);
  }

  bool _hasMinGrade(
      EducationState eduState, EducationLevel level, int minGrade) {
    return eduState.history.any((EducationRecord record) {
      return record.level == level &&
          record.graduated &&
          record.finalGrade >= minGrade;
    });
  }

  bool _evaluateCustomCondition(
    LifeState state,
    String key,
    String operator,
    dynamic value,
  ) {
    final dynamic actual = state.lifeData[key];
    if (actual == null) return false;
    return switch (operator) {
      '>=' => (actual as num) >= (value as num),
      '>' => (actual as num) > (value as num),
      '<=' => (actual as num) <= (value as num),
      '<' => (actual as num) < (value as num),
      '==' => actual == value,
      '!=' => actual != value,
      _ => false,
    };
  }

  _PromotionResult _checkPromotion(
    LifeState state,
    Employment employment,
    int performance,
    SeededRandom rng, {
    bool isRequest = false,
  }) {
    if (_countryConfig == null) {
      return _PromotionResult(promoted: false, employment: employment);
    }
    final Job? job =
        _allJobs.where((Job j) => j.id == employment.jobId).firstOrNull;
    if (job == null) {
      return _PromotionResult(promoted: false, employment: employment);
    }
    final int maxLevel = job.levels.length;
    if (employment.currentLevel >= maxLevel) {
      return _PromotionResult(promoted: false, employment: employment);
    }
    if (performance < _countryConfig!.promotionMinPerformance) {
      return _PromotionResult(promoted: false, employment: employment);
    }
    double chance = _countryConfig!.promotionBaseChance;
    final int performanceAboveMin =
        performance - _countryConfig!.promotionMinPerformance;
    chance += performanceAboveMin * _countryConfig!.promotionPerformanceScaling;
    if (employment.lastPromotionYear != null) {
      final int yearsSincePromotion =
          state.currentYear - employment.lastPromotionYear!;
      if (yearsSincePromotion < 2) {
        chance *= 0.3;
      }
    }
    if (isRequest) {
      chance *= 1.5;
    }
    if (!rng.chance(chance)) {
      return _PromotionResult(promoted: false, employment: employment);
    }
    final int newLevelIndex = employment.currentLevel;
    final JobLevel newLevel = job.levels[newLevelIndex];
    final int newSalary = (job.baseSalary * newLevel.salaryMultiplier).round();
    final Employment promoted = employment.copyWith(
      currentLevel: newLevel.level,
      salary: newSalary,
      lastPromotionYear: state.currentYear,
    );
    return _PromotionResult(
      promoted: true,
      employment: promoted,
      newTitle: newLevel.title,
    );
  }

  bool _checkFired(Employment employment, SeededRandom rng) {
    if (_countryConfig == null) return false;
    final int performance = employment.performance;
    if (performance <= 0 &&
        _countryConfig!.fireAtZeroPerformance) {
      return true;
    }
    if (performance >= _countryConfig!.firePerformanceThreshold) {
      return false;
    }
    final double chance = _countryConfig!.fireBaseChance +
        (_countryConfig!.firePerformanceThreshold - performance) *
            _countryConfig!.fireChanceScaling;
    return rng.chance(chance.clamp(0.0, 1.0));
  }

  String _buildContextLabel(List<Employment> employments) {
    if (employments.isEmpty) return '';
    return employments.map((Employment e) => e.jobName).join(', ');
  }
}

class _PromotionResult {
  _PromotionResult({
    required this.promoted,
    required this.employment,
    this.newTitle,
  });

  final bool promoted;
  final Employment employment;
  final String? newTitle;
}
