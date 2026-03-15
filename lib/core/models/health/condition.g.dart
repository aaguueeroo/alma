// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'condition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Condition _$ConditionFromJson(Map<String, dynamic> json) => _Condition(
  id: json['id'] as String,
  name: json['name'] as String,
  type: $enumDecode(_$ConditionTypeEnumMap, json['type']),
  isChronic: json['isChronic'] as bool,
  severity: (json['severity'] as num).toInt(),
  isDiagnosed: json['isDiagnosed'] as bool? ?? false,
  isTreated: json['isTreated'] as bool? ?? false,
  startAge: (json['startAge'] as num?)?.toInt(),
  endAge: (json['endAge'] as num?)?.toInt(),
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
);

Map<String, dynamic> _$ConditionToJson(_Condition instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': _$ConditionTypeEnumMap[instance.type]!,
      'isChronic': instance.isChronic,
      'severity': instance.severity,
      'isDiagnosed': instance.isDiagnosed,
      'isTreated': instance.isTreated,
      'startAge': instance.startAge,
      'endAge': instance.endAge,
      'symptomIds': instance.symptomIds,
      'physicalHealthEffect': instance.physicalHealthEffect,
      'mentalHealthEffect': instance.mentalHealthEffect,
      'timeCostMultiplier': instance.timeCostMultiplier,
      'workPerformanceEffect': instance.workPerformanceEffect,
      'studyPerformanceEffect': instance.studyPerformanceEffect,
      'relationshipEffect': instance.relationshipEffect,
    };

const _$ConditionTypeEnumMap = {
  ConditionType.physical: 'physical',
  ConditionType.mental: 'mental',
};
