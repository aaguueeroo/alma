// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moral_impact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MoralImpact _$MoralImpactFromJson(Map<String, dynamic> json) => _MoralImpact(
  axis: $enumDecode(_$SoulSubjectTypeEnumMap, json['axis']),
  weight: (json['weight'] as num).toDouble(),
  contextMultiplier: (json['contextMultiplier'] as num?)?.toDouble() ?? 1.0,
  year: (json['year'] as num).toInt(),
  wasDifficult: json['wasDifficult'] as bool? ?? false,
);

Map<String, dynamic> _$MoralImpactToJson(_MoralImpact instance) =>
    <String, dynamic>{
      'axis': _$SoulSubjectTypeEnumMap[instance.axis]!,
      'weight': instance.weight,
      'contextMultiplier': instance.contextMultiplier,
      'year': instance.year,
      'wasDifficult': instance.wasDifficult,
    };

const _$SoulSubjectTypeEnumMap = {
  SoulSubjectType.compassion: 'compassion',
  SoulSubjectType.discipline: 'discipline',
  SoulSubjectType.courage: 'courage',
  SoulSubjectType.wisdom: 'wisdom',
  SoulSubjectType.fun: 'fun',
  SoulSubjectType.humility: 'humility',
};

_MoralImpactTemplate _$MoralImpactTemplateFromJson(Map<String, dynamic> json) =>
    _MoralImpactTemplate(
      axis: $enumDecode(_$SoulSubjectTypeEnumMap, json['axis']),
      weight: (json['weight'] as num).toDouble(),
      contextMultiplier: (json['contextMultiplier'] as num?)?.toDouble() ?? 1.0,
      wasDifficult: json['wasDifficult'] as bool? ?? false,
    );

Map<String, dynamic> _$MoralImpactTemplateToJson(
  _MoralImpactTemplate instance,
) => <String, dynamic>{
  'axis': _$SoulSubjectTypeEnumMap[instance.axis]!,
  'weight': instance.weight,
  'contextMultiplier': instance.contextMultiplier,
  'wasDifficult': instance.wasDifficult,
};

_MoralImpactSummary _$MoralImpactSummaryFromJson(Map<String, dynamic> json) =>
    _MoralImpactSummary(
      totalWeightedImpactByAxis:
          (json['totalWeightedImpactByAxis'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(
              $enumDecode(_$SoulSubjectTypeEnumMap, k),
              (e as num).toDouble(),
            ),
          ),
      diversityScore: (json['diversityScore'] as num).toDouble(),
      consistencyScore: (json['consistencyScore'] as num).toDouble(),
      difficultActionCount: (json['difficultActionCount'] as num).toInt(),
      difficultWeightedSum: (json['difficultWeightedSum'] as num).toDouble(),
    );

Map<String, dynamic> _$MoralImpactSummaryToJson(_MoralImpactSummary instance) =>
    <String, dynamic>{
      'totalWeightedImpactByAxis': instance.totalWeightedImpactByAxis.map(
        (k, e) => MapEntry(_$SoulSubjectTypeEnumMap[k]!, e),
      ),
      'diversityScore': instance.diversityScore,
      'consistencyScore': instance.consistencyScore,
      'difficultActionCount': instance.difficultActionCount,
      'difficultWeightedSum': instance.difficultWeightedSum,
    };
