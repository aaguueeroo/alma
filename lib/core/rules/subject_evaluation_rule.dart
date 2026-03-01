import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/moral_impact.dart';
import 'package:alma/core/models/enums/soul_subject_type.dart';

/// Contract for evaluating whether a soul subject is passed
/// based on finished life data.
abstract class SubjectEvaluationRule {
  /// Returns true if the life summary meets the conditions for this subject.
  bool matches(LifeSummary summary);
}

/// Rule that passes when weighted moral impact criteria are met for one axis.
/// Uses [LifeSummary.moralImpactSummary]: total impact, diversity, consistency, difficulty.
class WeightedImpactRule implements SubjectEvaluationRule {
  const WeightedImpactRule({
    required this.axis,
    required this.minTotalImpact,
    this.minDiversity,
    this.minConsistency,
    this.minDifficultActionCount,
    this.minDifficultWeightedSum,
  });

  final SoulSubjectType axis;
  final double minTotalImpact;
  final double? minDiversity;
  final double? minConsistency;
  final int? minDifficultActionCount;
  final double? minDifficultWeightedSum;

  @override
  bool matches(LifeSummary summary) {
    final MoralImpactSummary? s = summary.moralImpactSummary;
    if (s == null) return false;
    if (s.totalImpactFor(axis) < minTotalImpact) {
      return false;
    }
    if (minDiversity != null && s.diversityScore < minDiversity!) {
      return false;
    }
    if (minConsistency != null &&
        s.consistencyScore < minConsistency!) {
      return false;
    }
    if (minDifficultActionCount != null &&
        s.difficultActionCount < minDifficultActionCount!) {
      return false;
    }
    if (minDifficultWeightedSum != null &&
        s.difficultWeightedSum < minDifficultWeightedSum!) {
      return false;
    }
    return true;
  }
}

/// A single condition: [key] from lifeData [operator] [value].
/// Used to build data-driven rules (e.g. donated_money >= 10000).
class RuleCondition {
  const RuleCondition({
    required this.key,
    required this.operator,
    required this.value,
  });

  final String key;
  final String operator;
  final Object value;

  bool evaluate(Map<String, dynamic> lifeData) {
    final Object? actual = lifeData[key];
    if (actual == null && operator != '==') return false;
    if (value is num && (actual is num || actual is int)) {
      final num a = actual is int ? actual.toDouble() : actual as num;
      final num v = value is int ? (value as int).toDouble() : value as num;
      switch (operator) {
        case '>=':
          return a >= v;
        case '<=':
          return a <= v;
        case '>':
          return a > v;
        case '<':
          return a < v;
        case '==':
          return a == v;
        case '!=':
          return a != v;
        default:
          return false;
      }
    }
    if (value is bool && actual is bool) {
      if (operator == '==') return actual == value;
      if (operator == '!=') return actual != value;
      return false;
    }
    if (operator == '==') return actual == value;
    if (operator == '!=') return actual != value;
    return false;
  }
}

/// Rule that passes when all [conditions] evaluate to true against [LifeSummary.lifeData].
class ConditionRule implements SubjectEvaluationRule {
  const ConditionRule(this.conditions);

  final List<RuleCondition> conditions;

  @override
  bool matches(LifeSummary summary) {
    return conditions.every((c) => c.evaluate(summary.lifeData));
  }
}
