// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EducationRecord _$EducationRecordFromJson(Map<String, dynamic> json) =>
    _EducationRecord(
      programId: json['programId'] as String,
      level: $enumDecode(_$EducationLevelEnumMap, json['level']),
      programName: json['programName'] as String,
      finalGrade: (json['finalGrade'] as num).toInt(),
      graduated: json['graduated'] as bool,
      yearsSpent: (json['yearsSpent'] as num).toInt(),
      startAge: (json['startAge'] as num).toInt(),
      endAge: (json['endAge'] as num).toInt(),
      branch: json['branch'] as String?,
      isDropOut: json['isDropOut'] as bool? ?? false,
    );

Map<String, dynamic> _$EducationRecordToJson(_EducationRecord instance) =>
    <String, dynamic>{
      'programId': instance.programId,
      'level': _$EducationLevelEnumMap[instance.level]!,
      'programName': instance.programName,
      'finalGrade': instance.finalGrade,
      'graduated': instance.graduated,
      'yearsSpent': instance.yearsSpent,
      'startAge': instance.startAge,
      'endAge': instance.endAge,
      'branch': instance.branch,
      'isDropOut': instance.isDropOut,
    };

const _$EducationLevelEnumMap = {
  EducationLevel.preschool: 'preschool',
  EducationLevel.middleSchool: 'middleSchool',
  EducationLevel.highSchool: 'highSchool',
  EducationLevel.university: 'university',
  EducationLevel.master: 'master',
  EducationLevel.doctorate: 'doctorate',
};
