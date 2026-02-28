// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hidden_metrics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HiddenMetrics _$HiddenMetricsFromJson(Map<String, dynamic> json) =>
    _HiddenMetrics(
      loyalty: (json['loyalty'] as num?)?.toDouble() ?? 0.0,
      compassion: (json['compassion'] as num?)?.toDouble() ?? 0.0,
      integrity: (json['integrity'] as num?)?.toDouble() ?? 0.0,
      ambition: (json['ambition'] as num?)?.toDouble() ?? 0.0,
      courage: (json['courage'] as num?)?.toDouble() ?? 0.0,
      humility: (json['humility'] as num?)?.toDouble() ?? 0.0,
      discipline: (json['discipline'] as num?)?.toDouble() ?? 0.0,
      curiosity: (json['curiosity'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$HiddenMetricsToJson(_HiddenMetrics instance) =>
    <String, dynamic>{
      'loyalty': instance.loyalty,
      'compassion': instance.compassion,
      'integrity': instance.integrity,
      'ambition': instance.ambition,
      'courage': instance.courage,
      'humility': instance.humility,
      'discipline': instance.discipline,
      'curiosity': instance.curiosity,
    };
