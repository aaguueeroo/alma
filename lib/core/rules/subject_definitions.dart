import 'package:alma/core/models/enums/soul_subject_type.dart';
import 'package:alma/core/rules/subject_evaluation_rule.dart';

/// Definition of a soul subject: id, name, description, and the rule
/// used to determine if it is passed at the end of a life.
class SoulSubjectDefinition {
  const SoulSubjectDefinition({
    required this.type,
    required this.name,
    required this.description,
    required this.evaluationRule,
  });

  final SoulSubjectType type;
  final String name;
  final String description;
  final SubjectEvaluationRule evaluationRule;
}

/// Registry of all soul subject definitions and their evaluation rules.
/// Rules use [LifeSummary.moralImpactSummary] (weighted impacts, diversity,
/// consistency, difficulty) when available; see [WeightedImpactRule].
class SubjectDefinitions {
  SubjectDefinitions._();

  static const List<SoulSubjectDefinition> all = <SoulSubjectDefinition>[
    SoulSubjectDefinition(
      type: SoulSubjectType.compassion,
      name: 'Compassion',
      description: 'Show care for others through giving and helping.',
      evaluationRule: WeightedImpactRule(
        axis: SoulSubjectType.compassion,
        minTotalImpact: 15.0,
        minDiversity: 0.2,
        minDifficultActionCount: 1,
      ),
    ),
    SoulSubjectDefinition(
      type: SoulSubjectType.discipline,
      name: 'Discipline',
      description: 'Demonstrate consistency and self-control.',
      evaluationRule: WeightedImpactRule(
        axis: SoulSubjectType.discipline,
        minTotalImpact: 15.0,
        minConsistency: 0.2,
      ),
    ),
    SoulSubjectDefinition(
      type: SoulSubjectType.courage,
      name: 'Courage',
      description: 'Face fear and take bold actions.',
      evaluationRule: WeightedImpactRule(
        axis: SoulSubjectType.courage,
        minTotalImpact: 12.0,
        minDifficultActionCount: 1,
        minDifficultWeightedSum: 2.0,
      ),
    ),
    SoulSubjectDefinition(
      type: SoulSubjectType.wisdom,
      name: 'Wisdom',
      description: 'Gain insight through learning and reflection.',
      evaluationRule: WeightedImpactRule(
        axis: SoulSubjectType.wisdom,
        minTotalImpact: 15.0,
        minConsistency: 0.2,
      ),
    ),
    SoulSubjectDefinition(
      type: SoulSubjectType.fun,
      name: 'Fun',
      description: 'Enjoy life and share joy.',
      evaluationRule: WeightedImpactRule(
        axis: SoulSubjectType.fun,
        minTotalImpact: 12.0,
        minDiversity: 0.15,
      ),
    ),
    SoulSubjectDefinition(
      type: SoulSubjectType.humility,
      name: 'Humility',
      description: 'Remain grounded and service-oriented.',
      evaluationRule: WeightedImpactRule(
        axis: SoulSubjectType.humility,
        minTotalImpact: 15.0,
        minConsistency: 0.2,
      ),
    ),
  ];

  static SoulSubjectDefinition? getByType(SoulSubjectType type) {
    try {
      return all.firstWhere((d) => d.type == type);
    } on StateError {
      return null;
    }
  }
}
