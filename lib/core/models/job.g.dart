// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Job _$JobFromJson(Map<String, dynamic> json) => _Job(
  id: json['id'] as String,
  name: json['name'] as String,
  description: json['description'] as String,
  type: $enumDecode(_$JobTypeEnumMap, json['type']),
  field: json['field'] as String?,
  baseSalary: (json['baseSalary'] as num).toInt(),
  timeCost: (json['timeCost'] as num).toInt(),
  levels: (json['levels'] as List<dynamic>)
      .map((e) => JobLevel.fromJson(e as Map<String, dynamic>))
      .toList(),
  accessConditions:
      (json['accessConditions'] as List<dynamic>?)
          ?.map((e) => AccessCondition.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  interviewConditions:
      (json['interviewConditions'] as List<dynamic>?)
          ?.map((e) => AccessCondition.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  requiredEducationLevel: $enumDecodeNullable(
    _$EducationLevelEnumMap,
    json['requiredEducationLevel'],
  ),
);

Map<String, dynamic> _$JobToJson(_Job instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'type': _$JobTypeEnumMap[instance.type]!,
  'field': instance.field,
  'baseSalary': instance.baseSalary,
  'timeCost': instance.timeCost,
  'levels': instance.levels,
  'accessConditions': instance.accessConditions,
  'interviewConditions': instance.interviewConditions,
  'requiredEducationLevel':
      _$EducationLevelEnumMap[instance.requiredEducationLevel],
};

const _$JobTypeEnumMap = {
  JobType.fullTime: 'fullTime',
  JobType.partTime: 'partTime',
  JobType.casual: 'casual',
};

const _$EducationLevelEnumMap = {
  EducationLevel.preschool: 'preschool',
  EducationLevel.middleSchool: 'middleSchool',
  EducationLevel.highSchool: 'highSchool',
  EducationLevel.university: 'university',
  EducationLevel.master: 'master',
  EducationLevel.doctorate: 'doctorate',
};
