// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_modifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HealthModifier _$HealthModifierFromJson(Map<String, dynamic> json) =>
    _HealthModifier(
      source: json['source'] as String,
      physicalDelta: (json['physicalDelta'] as num?)?.toDouble() ?? 0.0,
      mentalDelta: (json['mentalDelta'] as num?)?.toDouble() ?? 0.0,
      stressDelta: (json['stressDelta'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$HealthModifierToJson(_HealthModifier instance) =>
    <String, dynamic>{
      'source': instance.source,
      'physicalDelta': instance.physicalDelta,
      'mentalDelta': instance.mentalDelta,
      'stressDelta': instance.stressDelta,
    };
