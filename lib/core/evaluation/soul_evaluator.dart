import 'package:alma/core/models/soul.dart';
import 'package:alma/core/models/soul_subject.dart';
import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/enums/soul_subject_type.dart';
import 'package:alma/core/rules/evaluation_rules.dart';
import 'package:alma/app/constants/game_constants.dart';

class SoulEvaluator {
  SoulEvaluator({required this.evaluationRules});

  final EvaluationRules evaluationRules;

  LifeSummary generateLifeSummary(LifeState state) {
    final Map<SoulSubjectType, double> contributions =
        evaluationRules.evaluateLife(state);
    return LifeSummary(
      ageAtDeath: state.age,
      causeOfDeath: state.causeOfDeath ?? 'Unknown',
      finalSkills: state.skills,
      finalTraits: state.traits,
      subjectContributions: contributions.map(
        (key, value) => MapEntry(key.name, value),
      ),
    );
  }

  Soul applySoulProgress(Soul soul, LifeSummary summary) {
    final List<SoulSubject> updatedSubjects = soul.subjects.map((subject) {
      final double contribution =
          summary.subjectContributions[subject.type.name] ?? 0.0;
      final int newProgress =
          (subject.progress + contribution.round())
              .clamp(0, kMaxSubjectScore);
      final bool isPassed = newProgress >= kSubjectPassThreshold;
      return subject.copyWith(
        progress: newProgress,
        isPassed: isPassed,
      );
    }).toList();
    final Map<String, int> updatedStats = Map<String, int>.from(soul.metaStats);
    updatedStats['totalLivesLived'] =
        (updatedStats['totalLivesLived'] ?? 0) + 1;
    updatedStats['totalYearsLived'] =
        (updatedStats['totalYearsLived'] ?? 0) + summary.ageAtDeath;
    return soul.copyWith(
      subjects: updatedSubjects,
      remainingLives: soul.remainingLives - 1,
      metaStats: updatedStats,
      currentLifeId: null,
    );
  }
}
