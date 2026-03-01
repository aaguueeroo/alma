// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_level.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_JobLevel _$JobLevelFromJson(Map<String, dynamic> json) => _JobLevel(
  level: (json['level'] as num).toInt(),
  title: json['title'] as String,
  salaryMultiplier: (json['salaryMultiplier'] as num).toDouble(),
  description: json['description'] as String,
);

Map<String, dynamic> _$JobLevelToJson(_JobLevel instance) => <String, dynamic>{
  'level': instance.level,
  'title': instance.title,
  'salaryMultiplier': instance.salaryMultiplier,
  'description': instance.description,
};
