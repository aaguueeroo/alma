// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Section _$SectionFromJson(Map<String, dynamic> json) => _Section(
  type: $enumDecode(_$SectionTypeEnumMap, json['type']),
  performance: (json['performance'] as num?)?.toInt() ?? 50,
  contextLabel: json['contextLabel'] as String? ?? '',
);

Map<String, dynamic> _$SectionToJson(_Section instance) => <String, dynamic>{
  'type': _$SectionTypeEnumMap[instance.type]!,
  'performance': instance.performance,
  'contextLabel': instance.contextLabel,
};

const _$SectionTypeEnumMap = {
  SectionType.education: 'education',
  SectionType.work: 'work',
  SectionType.health: 'health',
  SectionType.social: 'social',
};
