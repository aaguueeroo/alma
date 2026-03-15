import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:alma/core/models/event_option.dart';
import 'package:alma/core/models/enums/trait_type.dart';

part 'event.freezed.dart';
part 'event.g.dart';

enum EventTriggerPhase { afterAction, yearEnd }

@freezed
sealed class GameEvent with _$GameEvent {
  const factory GameEvent({
    required String id,
    required String title,
    required String description,
    required EventTriggerConditions triggerConditions,
    required List<EventOption> choices,
  }) = _GameEvent;

  factory GameEvent.fromJson(Map<String, dynamic> json) =>
      _$GameEventFromJson(json);
}

@freezed
sealed class EventTriggerConditions with _$EventTriggerConditions {
  const factory EventTriggerConditions({
    @Default(0) int minAge,
    @Default(100) int maxAge,
    @Default([]) List<TraitType> requiredTraits,
    @Default([]) List<TraitType> forbiddenTraits,
    @Default(0) int minHealth,
    @Default(1.0) double baseChance,
    String? requiredSection,
    int? minSectionPerformance,
    EventTriggerPhase? triggerPhase,
    List<String>? triggerAfterActionIds,
    List<String>? requiredJobIds,
    List<String>? requiredProgramIds,
    String? requiredUnlockEventId,
  }) = _EventTriggerConditions;

  factory EventTriggerConditions.fromJson(Map<String, dynamic> json) =>
      _$EventTriggerConditionsFromJson(json);
}
