import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:alma/core/models/enums/action_category.dart';
import 'package:alma/core/models/enums/skill_type.dart';
import 'package:alma/core/models/enums/hidden_metric_type.dart';
import 'package:alma/core/models/enums/habit_type.dart';
import 'package:alma/core/models/moral_impact.dart';

part 'action.freezed.dart';
part 'action.g.dart';

@freezed
sealed class GameAction with _$GameAction {
  const factory GameAction({
    required String id,
    required String name,
    required String description,
    required ActionCategory category,
    required int timeCost,
    @Default({}) Map<SkillType, int> skillEffects,
    @Default({}) Map<HiddenMetricType, double> hiddenMetricEffects,
    @Default(0) int healthEffect,
    @Default(0) int sectionPerformanceEffect,
    HabitType? associatedHabit,
    String? targetNpcId,
    @Default([]) List<MoralImpactTemplate> moralImpactTemplates,
  }) = _GameAction;

  factory GameAction.fromJson(Map<String, dynamic> json) =>
      _$GameActionFromJson(json);
}
