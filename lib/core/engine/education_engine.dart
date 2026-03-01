import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/action.dart';
import 'package:alma/core/models/section.dart';
import 'package:alma/core/models/education_state.dart';
import 'package:alma/core/models/enrollment.dart';
import 'package:alma/core/models/education_record.dart';
import 'package:alma/core/models/education_program.dart';
import 'package:alma/core/models/education_prompt.dart';
import 'package:alma/core/models/access_condition.dart';
import 'package:alma/core/models/enums/education_level.dart';
import 'package:alma/core/models/enums/log_category.dart';
import 'package:alma/core/models/enums/section_type.dart';
import 'package:alma/core/rules/education_country_config.dart';
import 'package:alma/core/models/skill.dart';
import 'package:alma/app/constants/log_narratives.dart';
import 'package:alma/core/engine/game_logger.dart';
import 'package:alma/core/engine/seeded_random.dart';
import 'package:alma/core/engine/time_commitment.dart';

class EducationEngine {
  EducationCountryConfig? _countryConfig;
  List<EducationProgram> _allPrograms = [];
  List<GameAction> _educationActions = [];

  static const int _actionsPerYear = 4;
  static const int _defaultPerformance = 50;

  void loadData({
    required EducationCountryConfig countryConfig,
    required List<EducationProgram> programs,
    required List<GameAction> educationActions,
  }) {
    _countryConfig = countryConfig;
    _allPrograms = programs;
    _educationActions = educationActions;
  }

  bool get isLoaded => _countryConfig != null;

  LifeState initializeEducation(LifeState state) {
    return state.copyWith(
      educationState: const EducationState(),
    );
  }

  LifeState processYearEnd(LifeState state, SeededRandom rng) {
    if (_countryConfig == null) return state;
    EducationState eduState = state.educationState ?? const EducationState();
    final Enrollment? enrollment = eduState.currentEnrollment;
    if (enrollment == null || !enrollment.isActive) {
      return state;
    }
    final EducationLevelConfig? levelConfig = _getLevelConfig(enrollment.level);
    if (levelConfig == null) return state;
    final int performance = _getEducationPerformance(state);
    final bool passed = performance >= levelConfig.passThreshold;
    if (passed) {
      state = _handleYearPassed(state, eduState, enrollment, performance);
    } else {
      state = _handleYearFailed(state, eduState, enrollment, levelConfig, performance);
    }
    return state;
  }

  LifeState checkAutoEnrollment(LifeState state) {
    if (_countryConfig == null) return state;
    final EducationState eduState = state.educationState ?? const EducationState();
    return _checkAutoEnrollment(state, eduState);
  }

  LifeState _handleYearPassed(
    LifeState state,
    EducationState eduState,
    Enrollment enrollment,
    int performance,
  ) {
    final bool isLastYear = enrollment.yearInProgram >= enrollment.totalYears;
    if (isLastYear) {
      return _graduateFromProgram(state, eduState, enrollment, performance);
    }
    state = GameLogger.addLog(
      state,
      message: LogNarratives.educationPassedYear(
        enrollment.yearInProgram,
        enrollment.programName,
      ),
      category: LogCategory.education,
      tags: ['program:${enrollment.programId}'],
    );
    final Enrollment advanced = enrollment.copyWith(
      yearInProgram: enrollment.yearInProgram + 1,
    );
    return state.copyWith(
      educationState: eduState.copyWith(currentEnrollment: advanced),
    );
  }

  LifeState _graduateFromProgram(
    LifeState state,
    EducationState eduState,
    Enrollment enrollment,
    int performance,
  ) {
    final int currentPerformance = _getEducationPerformance(state);
    final EducationRecord record = EducationRecord(
      programId: enrollment.programId,
      level: enrollment.level,
      programName: enrollment.programName,
      finalGrade: performance,
      graduated: true,
      yearsSpent: enrollment.yearInProgram + enrollment.repeatsInLevel,
      startAge: state.age - enrollment.yearInProgram - enrollment.repeatsInLevel + 1,
      endAge: state.age,
      branch: enrollment.branch,
    );
    final List<EducationRecord> history = [...eduState.history, record];
    EducationState newEduState = eduState.copyWith(
      currentEnrollment: null,
      history: history,
    );
    state = state.copyWith(educationState: newEduState);
    state = GameLogger.addLog(
      state,
      message: LogNarratives.educationGraduated(enrollment.programName, performance),
      category: LogCategory.education,
      tags: ['program:${enrollment.programId}'],
    );
    return _createNextLevelPrompt(state, enrollment, currentPerformance);
  }

  LifeState _handleYearFailed(
    LifeState state,
    EducationState eduState,
    Enrollment enrollment,
    EducationLevelConfig levelConfig,
    int performance,
  ) {
    if (!levelConfig.canRepeatYears) {
      state = GameLogger.addLog(
        state,
        message: LogNarratives.educationFailedYear(
          enrollment.yearInProgram,
          enrollment.programName,
        ),
        category: LogCategory.education,
        tags: ['program:${enrollment.programId}'],
      );
      final Enrollment advanced = enrollment.copyWith(
        yearInProgram: enrollment.yearInProgram + 1,
      );
      if (advanced.yearInProgram > enrollment.totalYears) {
        return _graduateFromProgram(state, eduState, enrollment, performance);
      }
      return state.copyWith(
        educationState: eduState.copyWith(currentEnrollment: advanced),
      );
    }
    final int newRepeats = enrollment.repeatsInLevel + 1;
    if (levelConfig.canGetKickedOut && newRepeats > levelConfig.maxRepeats) {
      return _kickOutFromProgram(state, eduState, enrollment, performance);
    }
    state = GameLogger.addLog(
      state,
      message: LogNarratives.educationFailedYearRepeating(
        enrollment.yearInProgram,
        enrollment.programName,
      ),
      category: LogCategory.education,
      tags: ['program:${enrollment.programId}'],
    );
    final Enrollment repeated = enrollment.copyWith(
      repeatsInLevel: newRepeats,
    );
    return state.copyWith(
      educationState: eduState.copyWith(currentEnrollment: repeated),
    );
  }

  LifeState _kickOutFromProgram(
    LifeState state,
    EducationState eduState,
    Enrollment enrollment,
    int performance,
  ) {
    final EducationRecord record = EducationRecord(
      programId: enrollment.programId,
      level: enrollment.level,
      programName: enrollment.programName,
      finalGrade: performance,
      graduated: false,
      yearsSpent: enrollment.yearInProgram + enrollment.repeatsInLevel,
      startAge: state.age - enrollment.yearInProgram - enrollment.repeatsInLevel + 1,
      endAge: state.age,
      branch: enrollment.branch,
      isDropOut: false,
    );
    final List<EducationRecord> history = [...eduState.history, record];
    state = state.copyWith(
      educationState: eduState.copyWith(
        currentEnrollment: null,
        history: history,
      ),
    );
    return GameLogger.addLog(
      state,
      message: LogNarratives.educationKickedOut(enrollment.programName),
      category: LogCategory.education,
      tags: ['program:${enrollment.programId}'],
    );
  }

  LifeState _createNextLevelPrompt(
    LifeState state,
    Enrollment completedEnrollment,
    int carryOverPerformance,
  ) {
    final EducationLevel? nextLevel = _getNextLevel(completedEnrollment.level);
    if (nextLevel == null) return state;
    final EducationLevelConfig? nextConfig = _getLevelConfig(nextLevel);
    if (nextConfig == null) return state;
    if (nextConfig.isCompulsory) {
      return _autoEnrollInLevel(
        state,
        nextLevel,
        initialPerformance: carryOverPerformance,
      );
    }
    final List<EducationProgram> available =
        programsAvailableForEnrollment(state, nextLevel);
    if (available.isEmpty) return state;
    final EducationState eduState = state.educationState ?? const EducationState();
    final EducationPrompt prompt = EducationPrompt(
      title: 'Continue Education?',
      description: 'You have graduated from ${completedEnrollment.programName}. '
          'Would you like to continue your education?',
      availablePrograms: available,
      canDecline: !nextConfig.isCompulsory,
      carryOverPerformance: carryOverPerformance,
    );
    return state.copyWith(
      educationState: eduState.copyWith(pendingPrompt: prompt),
    );
  }

  LifeState _checkAutoEnrollment(LifeState state, EducationState eduState) {
    if (_countryConfig == null) return state;
    if (eduState.currentEnrollment != null) return state;
    if (eduState.pendingPrompt != null) return state;
    for (final EducationLevelConfig config in _countryConfig!.levels) {
      if (!config.autoStart || config.startAge == null) continue;
      if (state.age != config.startAge) continue;
      final bool alreadyCompleted = eduState.history.any(
        (r) => r.level == config.level,
      );
      if (alreadyCompleted) continue;
      return _autoEnrollInLevel(state, config.level);
    }
    return state;
  }

  LifeState _autoEnrollInLevel(
    LifeState state,
    EducationLevel level, {
    int? initialPerformance,
  }) {
    final List<EducationProgram> programs = _allPrograms
        .where((p) => p.level == level)
        .toList();
    if (programs.isEmpty) return state;
    if (programs.length == 1) {
      return enrollInProgram(state, programs.first,
          initialPerformance: initialPerformance);
    }
    final List<EducationProgram> available =
        programsAvailableForEnrollment(state, level);
    if (available.isEmpty) return state;
    if (available.length == 1) {
      return enrollInProgram(state, available.first,
          initialPerformance: initialPerformance);
    }
    final EducationState eduState = state.educationState ?? const EducationState();
    final EducationLevelConfig? config = _getLevelConfig(level);
    final EducationPrompt prompt = EducationPrompt(
      title: 'Choose Your Studies',
      description: 'It\'s time to choose what to study.',
      availablePrograms: available,
      canDecline: config != null ? !config.isCompulsory : true,
      carryOverPerformance: initialPerformance,
    );
    return state.copyWith(
      educationState: eduState.copyWith(pendingPrompt: prompt),
    );
  }

  /// Programs that meet access conditions (optionally for a given level).
  /// Does not exclude already-completed programs; use programsAvailableForEnrollment for that.
  List<EducationProgram> getAvailablePrograms(LifeState state, [EducationLevel? level]) {
    final EducationState eduState = state.educationState ?? const EducationState();
    return _allPrograms.where((program) {
      if (level != null && program.level != level) return false;
      return _meetsAccessConditions(program, state, eduState);
    }).toList();
  }

  /// Programs the player can enroll in: meet access conditions and not already completed.
  /// Use this whenever building a list of programs to show (manual enroll or post-graduation prompt).
  List<EducationProgram> programsAvailableForEnrollment(LifeState state, [EducationLevel? level]) {
    final EducationState eduState = state.educationState ?? const EducationState();
    final Set<String> completedProgramIds = _getCompletedProgramIds(eduState);
    final List<EducationProgram> eligible = getAvailablePrograms(state, level);
    return eligible
        .where((EducationProgram p) => !completedProgramIds.contains(p.id))
        .toList();
  }

  Set<String> _getCompletedProgramIds(EducationState eduState) {
    return eduState.history
        .where((EducationRecord r) => r.graduated)
        .map((EducationRecord r) => r.programId)
        .toSet();
  }

  /// Programs available for manual enrollment (Enroll button). Same as programsAvailableForEnrollment with no level filter.
  List<EducationProgram> getAvailableProgramsForEnrollment(LifeState state) {
    return programsAvailableForEnrollment(state);
  }

  bool _meetsAccessConditions(
    EducationProgram program,
    LifeState state,
    EducationState eduState,
  ) {
    for (final AccessCondition condition in program.accessConditions) {
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
    return eduState.history.any((record) {
      if (record.level != level || !record.graduated) return false;
      if (requiredBranch != null && record.branch != requiredBranch) return false;
      return true;
    });
  }

  bool _hasCompletedProgram(EducationState eduState, String programId) {
    return eduState.history.any((EducationRecord record) =>
        record.graduated && record.programId == programId);
  }

  bool _hasMinGrade(EducationState eduState, EducationLevel level, int minGrade) {
    return eduState.history.any((record) {
      return record.level == level && record.graduated && record.finalGrade >= minGrade;
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

  LifeState enrollInProgram(
    LifeState state,
    EducationProgram program, {
    int? initialPerformance,
  }) {
    final int commitmentDays = getEducationCommitmentDays();
    if (state.timeRemaining < commitmentDays) {
      return state;
    }
    final EducationState eduState = state.educationState ?? const EducationState();
    final EducationLevelConfig? config = _getLevelConfig(program.level);
    final int duration = program.durationOverride ?? config?.defaultDuration ?? 4;
    final Enrollment enrollment = Enrollment(
      programId: program.id,
      level: program.level,
      programName: program.name,
      totalYears: duration,
      branch: program.branch,
    );
    final int performance = initialPerformance ?? _defaultPerformance;
    final List<Section> sections = state.sections.map((s) {
      if (s.type == SectionType.education) {
        return s.copyWith(
          contextLabel: program.name,
          performance: performance,
        );
      }
      return s;
    }).toList();
    state = state.copyWith(
      timeRemaining: state.timeRemaining - commitmentDays,
      educationState: eduState.copyWith(
        currentEnrollment: enrollment,
        pendingPrompt: null,
      ),
      sections: sections,
    );
    return GameLogger.addLog(
      state,
      message: LogNarratives.educationEnrolled(program.name),
      category: LogCategory.education,
      tags: ['program:${program.id}'],
    );
  }

  LifeState declineEnrollment(LifeState state) {
    final EducationState eduState = state.educationState ?? const EducationState();
    state = _resetEducationPerformance(state);
    return state.copyWith(
      educationState: eduState.copyWith(pendingPrompt: null),
    );
  }

  bool canDropOut(EducationLevel level) {
    final EducationLevelConfig? config = _getLevelConfig(level);
    if (config == null) return true;
    return !config.isCompulsory;
  }

  LifeState dropOut(LifeState state) {
    final EducationState eduState = state.educationState ?? const EducationState();
    final Enrollment? enrollment = eduState.currentEnrollment;
    if (enrollment == null) return state;
    final int performance = _getEducationPerformance(state);
    final EducationRecord record = EducationRecord(
      programId: enrollment.programId,
      level: enrollment.level,
      programName: enrollment.programName,
      finalGrade: performance,
      graduated: false,
      yearsSpent: enrollment.yearInProgram + enrollment.repeatsInLevel,
      startAge: state.age - enrollment.yearInProgram - enrollment.repeatsInLevel + 1,
      endAge: state.age,
      branch: enrollment.branch,
      isDropOut: true,
    );
    final List<EducationRecord> history = [...eduState.history, record];
    final List<Section> sections = state.sections.map((s) {
      if (s.type == SectionType.education) {
        return s.copyWith(performance: _defaultPerformance, contextLabel: '');
      }
      return s;
    }).toList();
    state = state.copyWith(
      educationState: eduState.copyWith(
        currentEnrollment: null,
        history: history,
      ),
      sections: sections,
    );
    return GameLogger.addLog(
      state,
      message: LogNarratives.educationDroppedOut(enrollment.programName),
      category: LogCategory.education,
      tags: ['program:${enrollment.programId}'],
    );
  }

  List<GameAction> pickYearlyActions(
    Enrollment enrollment,
    SeededRandom rng,
  ) {
    final List<GameAction> eligible = _educationActions.where((action) {
      if (action.educationLevel == null && action.educationProgramId == null) {
        return true;
      }
      if (action.educationLevel != null &&
          action.educationLevel != enrollment.level.name) {
        return false;
      }
      if (action.educationProgramId != null &&
          action.educationProgramId != enrollment.programId) {
        return false;
      }
      return true;
    }).toList();
    if (eligible.length <= _actionsPerYear) return eligible;
    final List<GameAction> shuffled = List<GameAction>.from(eligible);
    for (int i = shuffled.length - 1; i > 0; i--) {
      final int j = rng.nextInt(i + 1);
      final GameAction temp = shuffled[i];
      shuffled[i] = shuffled[j];
      shuffled[j] = temp;
    }
    return shuffled.take(_actionsPerYear).toList();
  }

  LifeState _resetEducationPerformance(LifeState state) {
    final List<Section> sections = state.sections.map((s) {
      if (s.type == SectionType.education) {
        return s.copyWith(performance: _defaultPerformance);
      }
      return s;
    }).toList();
    return state.copyWith(sections: sections);
  }

  int _getEducationPerformance(LifeState state) {
    for (final Section section in state.sections) {
      if (section.type == SectionType.education) return section.performance;
    }
    return _defaultPerformance;
  }

  EducationLevelConfig? _getLevelConfig(EducationLevel level) {
    if (_countryConfig == null) return null;
    for (final EducationLevelConfig config in _countryConfig!.levels) {
      if (config.level == level) return config;
    }
    return null;
  }

  EducationLevel? _getNextLevel(EducationLevel current) {
    const List<EducationLevel> order = EducationLevel.values;
    final int index = order.indexOf(current);
    if (index < 0 || index >= order.length - 1) return null;
    return order[index + 1];
  }
}
