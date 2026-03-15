// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HealthState _$HealthStateFromJson(Map<String, dynamic> json) => _HealthState(
  physicalHealth: (json['physicalHealth'] as num?)?.toDouble() ?? 80.0,
  mentalHealth: (json['mentalHealth'] as num?)?.toDouble() ?? 80.0,
  stress: (json['stress'] as num?)?.toDouble() ?? 0.0,
  conditions:
      (json['conditions'] as List<dynamic>?)
          ?.map((e) => Condition.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  symptoms:
      (json['symptoms'] as List<dynamic>?)
          ?.map((e) => Symptom.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  predisposition: HealthPredisposition.fromJson(
    json['predisposition'] as Map<String, dynamic>,
  ),
  performedHospitalActionIds:
      (json['performedHospitalActionIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  performedGeneralActionIdsThisYear:
      (json['performedGeneralActionIdsThisYear'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  diagnosedConditionIds:
      (json['diagnosedConditionIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  generalActionIdsThisYear:
      (json['generalActionIdsThisYear'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
);

Map<String, dynamic> _$HealthStateToJson(_HealthState instance) =>
    <String, dynamic>{
      'physicalHealth': instance.physicalHealth,
      'mentalHealth': instance.mentalHealth,
      'stress': instance.stress,
      'conditions': instance.conditions,
      'symptoms': instance.symptoms,
      'predisposition': instance.predisposition,
      'performedHospitalActionIds': instance.performedHospitalActionIds,
      'performedGeneralActionIdsThisYear':
          instance.performedGeneralActionIdsThisYear,
      'diagnosedConditionIds': instance.diagnosedConditionIds,
      'generalActionIdsThisYear': instance.generalActionIdsThisYear,
    };
