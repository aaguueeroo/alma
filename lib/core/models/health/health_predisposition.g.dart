// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_predisposition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HealthPredisposition _$HealthPredispositionFromJson(
  Map<String, dynamic> json,
) => _HealthPredisposition(
  mentalResilience: (json['mentalResilience'] as num?)?.toDouble() ?? 0.5,
  physicalResilience: (json['physicalResilience'] as num?)?.toDouble() ?? 0.5,
  fitnessGenetics: (json['fitnessGenetics'] as num?)?.toDouble() ?? 0.5,
  immuneSystem: (json['immuneSystem'] as num?)?.toDouble() ?? 0.5,
  recoverySpeed: (json['recoverySpeed'] as num?)?.toDouble() ?? 0.5,
  addictionProneness: (json['addictionProneness'] as num?)?.toDouble() ?? 0.5,
);

Map<String, dynamic> _$HealthPredispositionToJson(
  _HealthPredisposition instance,
) => <String, dynamic>{
  'mentalResilience': instance.mentalResilience,
  'physicalResilience': instance.physicalResilience,
  'fitnessGenetics': instance.fitnessGenetics,
  'immuneSystem': instance.immuneSystem,
  'recoverySpeed': instance.recoverySpeed,
  'addictionProneness': instance.addictionProneness,
};
