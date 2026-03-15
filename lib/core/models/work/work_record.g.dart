// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WorkRecord _$WorkRecordFromJson(Map<String, dynamic> json) => _WorkRecord(
  jobId: json['jobId'] as String,
  jobName: json['jobName'] as String,
  type: $enumDecode(_$JobTypeEnumMap, json['type']),
  finalLevel: (json['finalLevel'] as num).toInt(),
  startAge: (json['startAge'] as num).toInt(),
  endAge: (json['endAge'] as num).toInt(),
  yearsWorked: (json['yearsWorked'] as num).toInt(),
  quitReason: json['quitReason'] as String,
  finalSalary: (json['finalSalary'] as num).toInt(),
  wasFriendlyDismissal: json['wasFriendlyDismissal'] as bool?,
);

Map<String, dynamic> _$WorkRecordToJson(_WorkRecord instance) =>
    <String, dynamic>{
      'jobId': instance.jobId,
      'jobName': instance.jobName,
      'type': _$JobTypeEnumMap[instance.type]!,
      'finalLevel': instance.finalLevel,
      'startAge': instance.startAge,
      'endAge': instance.endAge,
      'yearsWorked': instance.yearsWorked,
      'quitReason': instance.quitReason,
      'finalSalary': instance.finalSalary,
      'wasFriendlyDismissal': instance.wasFriendlyDismissal,
    };

const _$JobTypeEnumMap = {
  JobType.fullTime: 'fullTime',
  JobType.partTime: 'partTime',
  JobType.casual: 'casual',
};
