// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Employment _$EmploymentFromJson(Map<String, dynamic> json) => _Employment(
  jobId: json['jobId'] as String,
  jobName: json['jobName'] as String,
  type: $enumDecode(_$JobTypeEnumMap, json['type']),
  currentLevel: (json['currentLevel'] as num?)?.toInt() ?? 1,
  startAge: (json['startAge'] as num).toInt(),
  yearsWorked: (json['yearsWorked'] as num?)?.toInt() ?? 0,
  salary: (json['salary'] as num).toInt(),
  lastPromotionYear: (json['lastPromotionYear'] as num?)?.toInt(),
  isActive: json['isActive'] as bool? ?? true,
  performance: (json['performance'] as num?)?.toInt() ?? 50,
  hoursPerWeek: (json['hoursPerWeek'] as num?)?.toInt(),
);

Map<String, dynamic> _$EmploymentToJson(_Employment instance) =>
    <String, dynamic>{
      'jobId': instance.jobId,
      'jobName': instance.jobName,
      'type': _$JobTypeEnumMap[instance.type]!,
      'currentLevel': instance.currentLevel,
      'startAge': instance.startAge,
      'yearsWorked': instance.yearsWorked,
      'salary': instance.salary,
      'lastPromotionYear': instance.lastPromotionYear,
      'isActive': instance.isActive,
      'performance': instance.performance,
      'hoursPerWeek': instance.hoursPerWeek,
    };

const _$JobTypeEnumMap = {
  JobType.fullTime: 'fullTime',
  JobType.partTime: 'partTime',
  JobType.casual: 'casual',
};
