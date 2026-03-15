// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enrollment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Enrollment _$EnrollmentFromJson(Map<String, dynamic> json) => _Enrollment(
  programId: json['programId'] as String,
  level: $enumDecode(_$EducationLevelEnumMap, json['level']),
  programName: json['programName'] as String,
  yearInProgram: (json['yearInProgram'] as num?)?.toInt() ?? 1,
  totalYears: (json['totalYears'] as num).toInt(),
  repeatsInLevel: (json['repeatsInLevel'] as num?)?.toInt() ?? 0,
  isActive: json['isActive'] as bool? ?? true,
  branch: json['branch'] as String?,
);

Map<String, dynamic> _$EnrollmentToJson(_Enrollment instance) =>
    <String, dynamic>{
      'programId': instance.programId,
      'level': _$EducationLevelEnumMap[instance.level]!,
      'programName': instance.programName,
      'yearInProgram': instance.yearInProgram,
      'totalYears': instance.totalYears,
      'repeatsInLevel': instance.repeatsInLevel,
      'isActive': instance.isActive,
      'branch': instance.branch,
    };

const _$EducationLevelEnumMap = {
  EducationLevel.preschool: 'preschool',
  EducationLevel.middleSchool: 'middleSchool',
  EducationLevel.highSchool: 'highSchool',
  EducationLevel.university: 'university',
  EducationLevel.master: 'master',
  EducationLevel.doctorate: 'doctorate',
};
