// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'soul_subject.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SoulSubject _$SoulSubjectFromJson(Map<String, dynamic> json) => _SoulSubject(
  type: $enumDecode(_$SoulSubjectTypeEnumMap, json['type']),
  progress: (json['progress'] as num?)?.toInt() ?? 0,
  isPassed: json['isPassed'] as bool? ?? false,
);

Map<String, dynamic> _$SoulSubjectToJson(_SoulSubject instance) =>
    <String, dynamic>{
      'type': _$SoulSubjectTypeEnumMap[instance.type]!,
      'progress': instance.progress,
      'isPassed': instance.isPassed,
    };

const _$SoulSubjectTypeEnumMap = {
  SoulSubjectType.compassion: 'compassion',
  SoulSubjectType.discipline: 'discipline',
  SoulSubjectType.courage: 'courage',
  SoulSubjectType.wisdom: 'wisdom',
  SoulSubjectType.fun: 'fun',
  SoulSubjectType.humility: 'humility',
};
