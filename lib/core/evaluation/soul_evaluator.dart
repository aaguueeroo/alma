import 'package:alma/core/models/soul.dart';
import 'package:alma/core/models/soul_subject.dart';
import 'package:alma/core/models/life.dart';
import 'package:alma/core/rules/evaluation_rules.dart';
import 'package:alma/core/rules/subject_definitions.dart';
import 'package:alma/core/evaluation/soul_subject_evaluator.dart';

class SoulEvaluator {
  SoulEvaluator({required this.evaluationRules});

  final EvaluationRules evaluationRules;

  LifeSummary generateLifeSummary(LifeState state) {
    final Map<String, dynamic> lifeData = _buildLifeData(state);
    final Map<String, double> contributions =
        evaluationRules.evaluateLife(state).map(
              (type, value) => MapEntry(type.name, value),
            );
    final moralImpactSummary = SoulSubjectEvaluator.computeSummary(
      state.moralImpacts,
      state.age,
    );
    return LifeSummary(
      ageAtDeath: state.age,
      causeOfDeath: state.causeOfDeath ?? 'Unknown',
      finalSkills: state.skills,
      finalTraits: state.traits,
      subjectContributions: contributions,
      lifeData: lifeData,
      moralImpactSummary: moralImpactSummary,
    );
  }

  /// Builds the lifeData map for rule evaluation. Merges state.lifeData
  /// (simulation-tracked keys like donated_money, helped_people, crimes)
  /// with derived hidden metrics and age so subject rules can read them.
  Map<String, dynamic> _buildLifeData(LifeState state) {
    final Map<String, dynamic> data = Map<String, dynamic>.from(state.lifeData);
    data['age'] = state.age;
    data['compassion'] = state.hiddenMetrics.compassion;
    data['loyalty'] = state.hiddenMetrics.loyalty;
    data['integrity'] = state.hiddenMetrics.integrity;
    data['ambition'] = state.hiddenMetrics.ambition;
    data['courage'] = state.hiddenMetrics.courage;
    data['humility'] = state.hiddenMetrics.humility;
    data['discipline'] = state.hiddenMetrics.discipline;
    data['curiosity'] = state.hiddenMetrics.curiosity;
    return data;
  }

  Soul applySoulProgress(Soul soul, LifeSummary summary) {
    final List<SoulSubject> updatedSubjects = soul.subjects.map((subject) {
      if (subject.isPassed) return subject;
      final SoulSubjectDefinition? definition =
          SubjectDefinitions.getByType(subject.type);
      final bool passed = definition != null &&
          definition.evaluationRule.matches(summary);
      return subject.copyWith(isPassed: passed);
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
