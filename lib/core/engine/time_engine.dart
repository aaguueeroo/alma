import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/action.dart';
import 'package:alma/core/models/skill.dart';
import 'package:alma/core/models/life_maintenance_item.dart';
import 'package:alma/core/models/enums/trait_type.dart';
import 'package:alma/core/engine/time_commitment.dart';
import 'package:alma/app/constants/time_constants.dart';

class TimeEngine {
  List<LifeMaintenanceItem> _lifeMaintenance = [];

  void loadLifeMaintenance(List<LifeMaintenanceItem> items) {
    _lifeMaintenance = List.from(items);
  }

  /// Initial time remaining for a new life (year 1). Subtracts life maintenance only.
  int getInitialTimeRemainingForNewLife() {
    final int maintenance = getLifeMaintenanceCommitmentDays(_lifeMaintenance);
    return (kDaysPerYear - maintenance).clamp(0, kDaysPerYear);
  }

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
    return cost.round().clamp(1, kDaysPerYear);
  }

  LifeState startNewYear(LifeState state) {
    final int commitment = getYearStartCommitmentDays(state) +
        getLifeMaintenanceCommitmentDays(_lifeMaintenance);
    final int available = (kDaysPerYear - commitment).clamp(0, kDaysPerYear);
    return state.copyWith(
      currentYear: state.currentYear + 1,
      age: state.age + 1,
      timeRemaining: available,
      eventsTriggeredThisYear: 0,
      eventIdsTriggeredThisYear: [],
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
