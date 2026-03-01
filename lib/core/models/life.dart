import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:alma/core/models/skill.dart';
import 'package:alma/core/models/hidden_metrics.dart';
import 'package:alma/core/models/habit.dart';
import 'package:alma/core/models/relationship.dart';
import 'package:alma/core/models/section.dart';
import 'package:alma/core/models/event.dart';
import 'package:alma/core/models/moral_impact.dart';
import 'package:alma/core/models/education_state.dart';
import 'package:alma/core/models/work_state.dart';
import 'package:alma/core/models/game_log.dart';
import 'package:alma/core/models/enums/trait_type.dart';

part 'life.freezed.dart';
part 'life.g.dart';

@freezed
sealed class Life with _$Life {
  const factory Life({
    required String id,
    required String soulId,
    required int seed,
    required String templateId,
    required LifeState state,
    @Default(false) bool isComplete,
    LifeSummary? summary,
  }) = _Life;

  factory Life.fromJson(Map<String, dynamic> json) => _$LifeFromJson(json);
}

@freezed
sealed class LifeState with _$LifeState {
  const factory LifeState({
    required int currentYear,
    required int age,
    required int health,
    required int money,
    required int timeRemaining,
    required SkillSet skills,
    required List<TraitType> traits,
    required List<Habit> habits,
    required List<Relationship> relationships,
    required List<Section> sections,
    required HiddenMetrics hiddenMetrics,
    @Default(0) int eventsTriggeredThisYear,
    @Default([]) List<String> eventIdsTriggeredThisYear,
    @Default([]) List<String> unlockedEventIds,
    GameEvent? pendingEvent,
    @Default(false) bool isDead,
    String? causeOfDeath,
    @Default({}) Map<String, dynamic> lifeData,
    @Default([]) List<MoralImpact> moralImpacts,
    @Default([]) List<GameLog> logs,
    EducationState? educationState,
    WorkState? workState,
  }) = _LifeState;

  factory LifeState.fromJson(Map<String, dynamic> json) =>
      _$LifeStateFromJson(json);
}

@freezed
sealed class LifeSummary with _$LifeSummary {
  const factory LifeSummary({
    required int ageAtDeath,
    required String causeOfDeath,
    required SkillSet finalSkills,
    required List<TraitType> finalTraits,
    required Map<String, double> subjectContributions,
    @Default({}) Map<String, dynamic> lifeData,
    MoralImpactSummary? moralImpactSummary,
  }) = _LifeSummary;

  factory LifeSummary.fromJson(Map<String, dynamic> json) =>
      _$LifeSummaryFromJson(json);
}
