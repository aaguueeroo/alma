import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/action.dart';
import 'package:alma/core/models/enums/trait_type.dart';
import 'package:alma/core/models/enums/action_category.dart';
import 'package:alma/core/engine/seeded_random.dart';

class TraitRules {
  static const double _gainBaseChance = 0.05;
  static const double _lossBaseChance = 0.02;

  LifeState checkEvolution(
    LifeState state,
    GameAction action,
    SeededRandom rng,
  ) {
    final List<TraitType> traits = List<TraitType>.from(state.traits);
    bool changed = false;
    final TraitType? candidateGain = _getGainCandidate(action);
    if (candidateGain != null && !traits.contains(candidateGain)) {
      final double chance = _gainBaseChance * _habitModifier(state);
      if (rng.chance(chance)) {
        traits.add(candidateGain);
        changed = true;
      }
    }
    final TraitType? candidateLoss = _getLossCandidate(action, traits);
    if (candidateLoss != null) {
      if (rng.chance(_lossBaseChance)) {
        traits.remove(candidateLoss);
        changed = true;
      }
    }
    if (changed) {
      return state.copyWith(traits: traits);
    }
    return state;
  }

  TraitType? _getGainCandidate(GameAction action) {
    switch (action.category) {
      case ActionCategory.education:
        return TraitType.curious;
      case ActionCategory.work:
        return TraitType.ambitious;
      case ActionCategory.health:
        return TraitType.calm;
      case ActionCategory.social:
        return TraitType.kind;
    }
  }

  TraitType? _getLossCandidate(GameAction action, List<TraitType> traits) {
    if (action.category == ActionCategory.health &&
        traits.contains(TraitType.lazy)) {
      return TraitType.lazy;
    }
    if (action.category == ActionCategory.social &&
        traits.contains(TraitType.shy)) {
      return TraitType.shy;
    }
    return null;
  }

  double _habitModifier(LifeState state) {
    if (state.habits.any((h) => h.strength >= 5)) return 1.5;
    return 1.0;
  }
}
