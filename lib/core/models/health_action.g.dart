// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HealthAction _$HealthActionFromJson(Map<String, dynamic> json) =>
    _HealthAction(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      type: $enumDecode(_$HealthActionTypeEnumMap, json['type']),
      timeCost: (json['timeCost'] as num).toInt(),
      physicalHealthEffect:
          (json['physicalHealthEffect'] as num?)?.toDouble() ?? 0.0,
      mentalHealthEffect:
          (json['mentalHealthEffect'] as num?)?.toDouble() ?? 0.0,
      canDiagnoseConditionIds:
          (json['canDiagnoseConditionIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      canTreatConditionIds:
          (json['canTreatConditionIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      conditions:
          (json['conditions'] as List<dynamic>?)
              ?.map((e) => AccessCondition.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$HealthActionToJson(_HealthAction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'type': _$HealthActionTypeEnumMap[instance.type]!,
      'timeCost': instance.timeCost,
      'physicalHealthEffect': instance.physicalHealthEffect,
      'mentalHealthEffect': instance.mentalHealthEffect,
      'canDiagnoseConditionIds': instance.canDiagnoseConditionIds,
      'canTreatConditionIds': instance.canTreatConditionIds,
      'conditions': instance.conditions,
    };

const _$HealthActionTypeEnumMap = {
  HealthActionType.hospital: 'hospital',
  HealthActionType.general: 'general',
};
