import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/action.dart';
import 'package:alma/core/models/skill.dart';
import 'package:alma/core/models/enums/trait_type.dart';
import 'package:alma/app/constants/game_constants.dart';

class TimeEngine {
  LifeState consumeTime(LifeState state, GameAction action) {
    final int adjustedCost = calculateAdjustedTimeCost(state, action);
    final int consumed = adjustedCost.clamp(0, state.timeRemaining);
    return state.copyWith(timeRemaining: state.timeRemaining - consumed);
  }

  int calculateAdjustedTimeCost(LifeState state, GameAction action) {
    double cost = action.timeCost.toDouble();
    for (final entry in action.skillEffects.entries) {
      final int skillValue = state.skills.getValue(entry.key);
      if (entry.value > 0) {
        cost *= _skillCostMultiplier(skillValue);
      }
    }
    if (state.traits.contains(TraitType.lazy)) {
      cost *= 1.15;
    }
    if (state.traits.contains(TraitType.ambitious)) {
      cost *= 0.9;
    }
    return cost.round().clamp(1, kTimeUnitsPerYear);
  }

  LifeState startNewYear(LifeState state) {
    return state.copyWith(
      currentYear: state.currentYear + 1,
      age: state.age + 1,
      timeRemaining: kTimeUnitsPerYear,
      eventsTriggeredThisYear: 0,
    );
  }

  bool hasTimeRemaining(LifeState state) {
    return state.timeRemaining > 0;
  }

  double _skillCostMultiplier(int skillValue) {
    if (skillValue >= 80) return 0.7;
    if (skillValue >= 60) return 0.85;
    if (skillValue >= 40) return 1.0;
    if (skillValue >= 20) return 1.1;
    return 1.2;
  }
}
