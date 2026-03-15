import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/action.dart';
import 'package:alma/core/models/habit/habit.dart';
import 'package:alma/core/models/habit/habit_type.dart';
import 'package:alma/app/constants/game_constants.dart';

class HabitRules {
  LifeState processHabit(LifeState state, GameAction action) {
    if (action.associatedHabit == null) return state;
    final HabitType habitType = action.associatedHabit!;
    final List<Habit> habits = List<Habit>.from(state.habits);
    final int existingIndex = habits.indexWhere((h) => h.type == habitType);
    if (existingIndex >= 0) {
      final Habit existing = habits[existingIndex];
      final int newRepetitions = existing.repetitions + 1;
      final int newStrength = _calculateStrength(newRepetitions);
      habits[existingIndex] = existing.copyWith(
        repetitions: newRepetitions,
        strength: newStrength,
      );
    } else {
      habits.add(Habit(
        type: habitType,
        strength: 0,
        repetitions: 1,
      ));
    }
    return state.copyWith(habits: habits);
  }

  LifeState applyYearlyDecay(LifeState state) {
    final List<Habit> habits = state.habits.map((habit) {
      if (habit.repetitions <= 0) return habit;
      final int decayedReps = (habit.repetitions - 1).clamp(0, habit.repetitions);
      return habit.copyWith(
        repetitions: decayedReps,
        strength: _calculateStrength(decayedReps),
      );
    }).where((h) => h.repetitions > 0 || h.strength > 0).toList();
    return state.copyWith(habits: habits);
  }

  bool isHabitFormed(Habit habit) {
    return habit.repetitions >= kHabitFormationThreshold;
  }

  int _calculateStrength(int repetitions) {
    if (repetitions >= kHabitFormationThreshold) {
      return ((repetitions - kHabitFormationThreshold + 1))
          .clamp(1, kHabitMaxStrength);
    }
    return 0;
  }
}
