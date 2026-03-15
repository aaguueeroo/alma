// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'condition_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ConditionDefinition _$ConditionDefinitionFromJson(
  Map<String, dynamic> json,
) => _ConditionDefinition(
  id: json['id'] as String,
  name: json['name'] as String,
  type: $enumDecode(_$ConditionTypeEnumMap, json['type']),
  isChronic: json['isChronic'] as bool,
  severity: (json['severity'] as num).toInt(),
  symptomIds:
      (json['symptomIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  physicalHealthEffect:
      (json['physicalHealthEffect'] as num?)?.toDouble() ?? 0.0,
  mentalHealthEffect: (json['mentalHealthEffect'] as num?)?.toDouble() ?? 0.0,
  timeCostMultiplier: (json['timeCostMultiplier'] as num?)?.toDouble() ?? 1.0,
  workPerformanceEffect:
      (json['workPerformanceEffect'] as num?)?.toDouble() ?? 0.0,
  studyPerformanceEffect:
      (json['studyPerformanceEffect'] as num?)?.toDouble() ?? 0.0,
  relationshipEffect: (json['relationshipEffect'] as num?)?.toDouble() ?? 0.0,
  lifetimeChance: (json['lifetimeChance'] as num?)?.toDouble() ?? 0.0,
  canDevelopAtBirth: json['canDevelopAtBirth'] as bool? ?? false,
  minAgeToDevelop: (json['minAgeToDevelop'] as num?)?.toInt() ?? 0,
  maxAgeToDevelop: (json['maxAgeToDevelop'] as num?)?.toInt() ?? 100,
  averageDurationYears: (json['averageDurationYears'] as num?)?.toInt(),
  blocksWorkAtSeverity: (json['blocksWorkAtSeverity'] as num?)?.toInt(),
  blocksStudyAtSeverity: (json['blocksStudyAtSeverity'] as num?)?.toInt(),
  defaultTreatmentSuccessRate: (json['defaultTreatmentSuccessRate'] as num?)
      ?.toDouble(),
);

Map<String, dynamic> _$ConditionDefinitionToJson(
  _ConditionDefinition instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'type': _$ConditionTypeEnumMap[instance.type]!,
  'isChronic': instance.isChronic,
  'severity': instance.severity,
  'symptomIds': instance.symptomIds,
  'physicalHealthEffect': instance.physicalHealthEffect,
  'mentalHealthEffect': instance.mentalHealthEffect,
  'timeCostMultiplier': instance.timeCostMultiplier,
  'workPerformanceEffect': instance.workPerformanceEffect,
  'studyPerformanceEffect': instance.studyPerformanceEffect,
  'relationshipEffect': instance.relationshipEffect,
  'lifetimeChance': instance.lifetimeChance,
  'canDevelopAtBirth': instance.canDevelopAtBirth,
  'minAgeToDevelop': instance.minAgeToDevelop,
  'maxAgeToDevelop': instance.maxAgeToDevelop,
  'averageDurationYears': instance.averageDurationYears,
  'blocksWorkAtSeverity': instance.blocksWorkAtSeverity,
  'blocksStudyAtSeverity': instance.blocksStudyAtSeverity,
  'defaultTreatmentSuccessRate': instance.defaultTreatmentSuccessRate,
};

const _$ConditionTypeEnumMap = {
  ConditionType.physical: 'physical',
  ConditionType.mental: 'mental',
};
