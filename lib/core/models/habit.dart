import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:alma/core/models/enums/habit_type.dart';

part 'habit.freezed.dart';
part 'habit.g.dart';

@freezed
sealed class Habit with _$Habit {
  const factory Habit({
    required HabitType type,
    @Default(0) int strength,
    @Default(0) int repetitions,
  }) = _Habit;

  factory Habit.fromJson(Map<String, dynamic> json) => _$HabitFromJson(json);
}
