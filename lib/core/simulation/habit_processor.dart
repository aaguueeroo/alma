import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/action.dart';
import 'package:alma/core/rules/habit_rules.dart';

class HabitProcessor {
  HabitProcessor({required this.habitRules});

  final HabitRules habitRules;

  LifeState process(LifeState state, GameAction action) {
    return habitRules.processHabit(state, action);
  }

  LifeState processYearEnd(LifeState state) {
    return habitRules.applyYearlyDecay(state);
  }
}
