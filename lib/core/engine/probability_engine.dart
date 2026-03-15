import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/event.dart';
import 'package:alma/core/models/enums/trait_type.dart';
import 'package:alma/core/engine/seeded_random.dart';

class ProbabilityEngine {
  double calculateEventProbability(GameEvent event, LifeState state) {
    double probability = event.triggerConditions.baseChance;
    probability *= _traitModifier(event.triggerConditions, state);
    probability *= _healthModifier(state);
    probability *= _ageModifier(event.triggerConditions, state);
    return probability.clamp(0.0, 1.0);
  }

  bool rollEvent(GameEvent event, LifeState state, SeededRandom rng) {
    final double probability = calculateEventProbability(event, state);
    return rng.chance(probability);
  }

  double calculateSuccessProbability({
    required double baseChance,
    required LifeState state,
    Map<String, double> modifiers = const {},
  }) {
    double probability = baseChance;
    for (final modifier in modifiers.values) {
      probability *= modifier;
    }
    return probability.clamp(0.0, 1.0);
  }

  double _traitModifier(EventTriggerConditions conditions, LifeState state) {
    double modifier = 1.0;
    for (final required in conditions.requiredTraits) {
      if (!state.traits.contains(required)) {
        return 0.0;
      }
    }
    for (final forbidden in conditions.forbiddenTraits) {
      if (state.traits.contains(forbidden)) {
        return 0.0;
      }
    }
    if (state.traits.contains(TraitType.impulsive)) modifier *= 1.2;
    if (state.traits.contains(TraitType.calm)) modifier *= 0.8;
    return modifier;
  }

  double _healthModifier(LifeState state) {
    if (state.health < 20) return 1.3;
    if (state.health < 50) return 1.1;
    return 1.0;
  }

  double _ageModifier(EventTriggerConditions conditions, LifeState state) {
    if (state.age < conditions.minAge || state.age > conditions.maxAge) {
      return 0.0;
    }
    return 1.0;
  }
}
