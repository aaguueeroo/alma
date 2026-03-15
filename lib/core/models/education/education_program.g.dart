// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education_program.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EducationProgram _$EducationProgramFromJson(Map<String, dynamic> json) =>
    _EducationProgram(
      id: json['id'] as String,
      level: $enumDecode(_$EducationLevelEnumMap, json['level']),
      name: json['name'] as String,
      description: json['description'] as String,
      branch: json['branch'] as String?,
      field: json['field'] as String?,
      durationOverride: (json['durationOverride'] as num?)?.toInt(),
      accessConditions:
          (json['accessConditions'] as List<dynamic>?)
              ?.map((e) => AccessCondition.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$EducationProgramToJson(_EducationProgram instance) =>
    <String, dynamic>{
      'id': instance.id,
      'level': _$EducationLevelEnumMap[instance.level]!,
      'name': instance.name,
      'description': instance.description,
      'branch': instance.branch,
      'field': instance.field,
      'durationOverride': instance.durationOverride,
      'accessConditions': instance.accessConditions,
    };

const _$EducationLevelEnumMap = {
  EducationLevel.preschool: 'preschool',
  EducationLevel.middleSchool: 'middleSchool',
  EducationLevel.highSchool: 'highSchool',
  EducationLevel.university: 'university',
  EducationLevel.master: 'master',
  EducationLevel.doctorate: 'doctorate',
};
