// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_country_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WorkCountryConfig _$WorkCountryConfigFromJson(Map<String, dynamic> json) =>
    _WorkCountryConfig(
      countryCode: json['countryCode'] as String,
      maxFullTimeJobs: (json['maxFullTimeJobs'] as num?)?.toInt() ?? 1,
      maxPartTimeJobs: (json['maxPartTimeJobs'] as num?)?.toInt() ?? 1,
      maxWeeklyHours: (json['maxWeeklyHours'] as num?)?.toInt() ?? 48,
      promotionBaseChance:
          (json['promotionBaseChance'] as num?)?.toDouble() ?? 0.05,
      promotionPerformanceScaling:
          (json['promotionPerformanceScaling'] as num?)?.toDouble() ?? 0.01,
      jobPoolSize: (json['jobPoolSize'] as num?)?.toInt() ?? 4,
      casualJobPoolSize: (json['casualJobPoolSize'] as num?)?.toInt() ?? 2,
      promotionMinPerformance:
          (json['promotionMinPerformance'] as num?)?.toInt() ?? 70,
      minAgeForNoEducationJobs:
          (json['minAgeForNoEducationJobs'] as num?)?.toInt() ?? 16,
      firePerformanceThreshold:
          (json['firePerformanceThreshold'] as num?)?.toInt() ?? 30,
      fireAtZeroPerformance: json['fireAtZeroPerformance'] as bool? ?? true,
      fireBaseChance: (json['fireBaseChance'] as num?)?.toDouble() ?? 0.02,
      fireChanceScaling:
          (json['fireChanceScaling'] as num?)?.toDouble() ?? 0.02,
    );

Map<String, dynamic> _$WorkCountryConfigToJson(_WorkCountryConfig instance) =>
    <String, dynamic>{
      'countryCode': instance.countryCode,
      'maxFullTimeJobs': instance.maxFullTimeJobs,
      'maxPartTimeJobs': instance.maxPartTimeJobs,
      'maxWeeklyHours': instance.maxWeeklyHours,
      'promotionBaseChance': instance.promotionBaseChance,
      'promotionPerformanceScaling': instance.promotionPerformanceScaling,
      'jobPoolSize': instance.jobPoolSize,
      'casualJobPoolSize': instance.casualJobPoolSize,
      'promotionMinPerformance': instance.promotionMinPerformance,
      'minAgeForNoEducationJobs': instance.minAgeForNoEducationJobs,
      'firePerformanceThreshold': instance.firePerformanceThreshold,
      'fireAtZeroPerformance': instance.fireAtZeroPerformance,
      'fireBaseChance': instance.fireBaseChance,
      'fireChanceScaling': instance.fireChanceScaling,
    };
