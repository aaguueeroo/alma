import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:alma/core/models/enums/action_category.dart';
import 'package:alma/core/models/enums/skill_type.dart';
import 'package:alma/core/models/enums/hidden_metric_type.dart';
import 'package:alma/core/models/habit/habit_type.dart';
import 'package:alma/core/models/moral_impact.dart';
import 'package:alma/core/models/access_condition.dart';
import 'package:alma/core/models/social/relationship_effects.dart';

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
    String? educationLevel,
    String? educationProgramId,
    String? workJobId,
    String? workJobType,
    String? logMessage,
    @Default([]) List<String> relationshipTypeIds,
    @Default([]) List<AccessCondition> conditions,
    @Default(0.0) double npcResponseChance,
    @Default({}) Map<String, int> npcDeclineConsequences,
    @Default(false) bool isGroupAction,
    @Default(RelationshipEffects()) RelationshipEffects relationshipEffects,
    int? minAge,
    int? maxAge,

    /// Type of social action (e.g. "friendly", "romantic", "mischievous"). Used to filter actions per relationship type (e.g. romantic not allowed for family). When null, treated as "friendly".
    String? socialActionType,

    /// Optional templates for result dialog after group actions. Keys: "allAccepted", "someRejected", "allRejected". Placeholders: {accepted}, {rejected}.
    @Default({}) Map<String, String> resultDialogTemplates,
  }) = _GameAction;

  factory GameAction.fromJson(Map<String, dynamic> json) =>
      _$GameActionFromJson(json);
}
