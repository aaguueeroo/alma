import 'package:alma/core/models/enums/soul_subject_type.dart';
import 'package:alma/core/models/enums/hidden_metric_type.dart';
import 'package:alma/core/models/enums/trait_type.dart';
import 'package:alma/core/models/habit/habit_type.dart';
import 'package:alma/core/models/hidden_metrics.dart';
import 'package:alma/core/models/life.dart';
import 'package:alma/app/constants/game_constants.dart';

class EvaluationRules {
  static const Map<SoulSubjectType, List<_MetricWeight>> _subjectWeights = {
    SoulSubjectType.compassion: [
      _MetricWeight(HiddenMetricType.compassion, 0.5),
      _MetricWeight(HiddenMetricType.loyalty, 0.3),
      _MetricWeight(HiddenMetricType.humility, 0.2),
    ],
    SoulSubjectType.discipline: [
      _MetricWeight(HiddenMetricType.discipline, 0.6),
      _MetricWeight(HiddenMetricType.integrity, 0.2),
      _MetricWeight(HiddenMetricType.ambition, 0.2),
    ],
    SoulSubjectType.courage: [
      _MetricWeight(HiddenMetricType.courage, 0.7),
      _MetricWeight(HiddenMetricType.integrity, 0.3),
    ],
    SoulSubjectType.wisdom: [
      _MetricWeight(HiddenMetricType.integrity, 0.3),
      _MetricWeight(HiddenMetricType.curiosity, 0.4),
      _MetricWeight(HiddenMetricType.discipline, 0.3),
    ],
    SoulSubjectType.fun: [
      _MetricWeight(HiddenMetricType.curiosity, 0.4),
      _MetricWeight(HiddenMetricType.compassion, 0.2),
      _MetricWeight(HiddenMetricType.courage, 0.4),
    ],
    SoulSubjectType.humility: [
      _MetricWeight(HiddenMetricType.humility, 0.5),
      _MetricWeight(HiddenMetricType.compassion, 0.3),
      _MetricWeight(HiddenMetricType.loyalty, 0.2),
    ],
  };

  Map<SoulSubjectType, double> evaluateLife(LifeState state) {
    final Map<SoulSubjectType, double> contributions = {};
    for (final subject in SoulSubjectType.values) {
      double score = _calculateBaseScore(subject, state.hiddenMetrics);
      score += _traitBonus(subject, state.traits);
      score += _habitBonus(subject, state);
      score += _ageBonus(subject, state.age);
      contributions[subject] = score.clamp(0.0, kMaxSubjectScore.toDouble());
    }
    return contributions;
  }

  double _calculateBaseScore(SoulSubjectType subject, HiddenMetrics metrics) {
    final List<_MetricWeight>? weights = _subjectWeights[subject];
    if (weights == null) return 0.0;
    double score = 0.0;
    for (final weight in weights) {
      score += metrics.getValue(weight.metric) * weight.weight;
    }
    return score;
  }

  double _traitBonus(SoulSubjectType subject, List<TraitType> traits) {
    double bonus = 0.0;
    switch (subject) {
      case SoulSubjectType.compassion:
        if (traits.contains(TraitType.generous)) bonus += 5.0;
        if (traits.contains(TraitType.kind)) bonus += 5.0;
        if (traits.contains(TraitType.selfish)) bonus -= 5.0;
      case SoulSubjectType.discipline:
        if (traits.contains(TraitType.ambitious)) bonus += 5.0;
        if (traits.contains(TraitType.lazy)) bonus -= 5.0;
      case SoulSubjectType.courage:
        if (traits.contains(TraitType.brave)) bonus += 8.0;
        if (traits.contains(TraitType.shy)) bonus -= 3.0;
      case SoulSubjectType.wisdom:
        if (traits.contains(TraitType.curious)) bonus += 5.0;
        if (traits.contains(TraitType.calm)) bonus += 3.0;
      case SoulSubjectType.fun:
        if (traits.contains(TraitType.creative)) bonus += 5.0;
        if (traits.contains(TraitType.optimistic)) bonus += 5.0;
      case SoulSubjectType.humility:
        if (traits.contains(TraitType.generous)) bonus += 5.0;
        if (traits.contains(TraitType.ambitious)) bonus -= 3.0;
    }
    return bonus;
  }

  double _habitBonus(SoulSubjectType subject, LifeState state) {
    double bonus = 0.0;
    for (final habit in state.habits) {
      if (habit.strength <= 0) continue;
      switch (subject) {
        case SoulSubjectType.compassion:
          if (habit.type == HabitType.volunteering) {
            bonus += habit.strength * 1.5;
          }
        case SoulSubjectType.discipline:
          if (habit.type == HabitType.exercise) bonus += habit.strength * 1.0;
          if (habit.type == HabitType.meditation) bonus += habit.strength * 1.0;
        case SoulSubjectType.courage:
          break;
        case SoulSubjectType.wisdom:
          if (habit.type == HabitType.reading) bonus += habit.strength * 1.5;
          if (habit.type == HabitType.meditation) bonus += habit.strength * 1.0;
        case SoulSubjectType.fun:
          if (habit.type == HabitType.socialMedia) {
            bonus += habit.strength * 0.5;
          }
        case SoulSubjectType.humility:
          if (habit.type == HabitType.volunteering) {
            bonus += habit.strength * 1.0;
          }
      }
    }
    return bonus;
  }

  double _ageBonus(SoulSubjectType subject, int age) {
    if (subject == SoulSubjectType.wisdom && age >= 60) {
      return 5.0;
    }
    return 0.0;
  }
}

class _MetricWeight {
  const _MetricWeight(this.metric, this.weight);
  final HiddenMetricType metric;
  final double weight;
}
