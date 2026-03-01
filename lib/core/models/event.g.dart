// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GameEvent _$GameEventFromJson(Map<String, dynamic> json) => _GameEvent(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  triggerConditions: EventTriggerConditions.fromJson(
    json['triggerConditions'] as Map<String, dynamic>,
  ),
  choices: (json['choices'] as List<dynamic>)
      .map((e) => EventOption.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GameEventToJson(_GameEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'triggerConditions': instance.triggerConditions,
      'choices': instance.choices,
    };

_EventTriggerConditions _$EventTriggerConditionsFromJson(
  Map<String, dynamic> json,
) => _EventTriggerConditions(
  minAge: (json['minAge'] as num?)?.toInt() ?? 0,
  maxAge: (json['maxAge'] as num?)?.toInt() ?? 100,
  requiredTraits:
      (json['requiredTraits'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$TraitTypeEnumMap, e))
          .toList() ??
      const [],
  forbiddenTraits:
      (json['forbiddenTraits'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$TraitTypeEnumMap, e))
          .toList() ??
      const [],
  minHealth: (json['minHealth'] as num?)?.toInt() ?? 0,
  baseChance: (json['baseChance'] as num?)?.toDouble() ?? 1.0,
  requiredSection: json['requiredSection'] as String?,
  minSectionPerformance: (json['minSectionPerformance'] as num?)?.toInt(),
  triggerPhase: $enumDecodeNullable(
    _$EventTriggerPhaseEnumMap,
    json['triggerPhase'],
  ),
  triggerAfterActionIds: (json['triggerAfterActionIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  requiredJobIds: (json['requiredJobIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  requiredProgramIds: (json['requiredProgramIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  requiredUnlockEventId: json['requiredUnlockEventId'] as String?,
);

Map<String, dynamic> _$EventTriggerConditionsToJson(
  _EventTriggerConditions instance,
) => <String, dynamic>{
  'minAge': instance.minAge,
  'maxAge': instance.maxAge,
  'requiredTraits': instance.requiredTraits
      .map((e) => _$TraitTypeEnumMap[e]!)
      .toList(),
  'forbiddenTraits': instance.forbiddenTraits
      .map((e) => _$TraitTypeEnumMap[e]!)
      .toList(),
  'minHealth': instance.minHealth,
  'baseChance': instance.baseChance,
  'requiredSection': instance.requiredSection,
  'minSectionPerformance': instance.minSectionPerformance,
  'triggerPhase': _$EventTriggerPhaseEnumMap[instance.triggerPhase],
  'triggerAfterActionIds': instance.triggerAfterActionIds,
  'requiredJobIds': instance.requiredJobIds,
  'requiredProgramIds': instance.requiredProgramIds,
  'requiredUnlockEventId': instance.requiredUnlockEventId,
};

const _$TraitTypeEnumMap = {
  TraitType.impulsive: 'impulsive',
  TraitType.calm: 'calm',
  TraitType.generous: 'generous',
  TraitType.ambitious: 'ambitious',
  TraitType.loyal: 'loyal',
  TraitType.selfish: 'selfish',
  TraitType.brave: 'brave',
  TraitType.shy: 'shy',
  TraitType.creative: 'creative',
  TraitType.stubborn: 'stubborn',
  TraitType.kind: 'kind',
  TraitType.pessimistic: 'pessimistic',
  TraitType.optimistic: 'optimistic',
  TraitType.curious: 'curious',
  TraitType.lazy: 'lazy',
};

const _$EventTriggerPhaseEnumMap = {
  EventTriggerPhase.afterAction: 'afterAction',
  EventTriggerPhase.yearEnd: 'yearEnd',
};
