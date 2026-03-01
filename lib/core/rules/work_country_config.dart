import 'package:freezed_annotation/freezed_annotation.dart';

part 'work_country_config.freezed.dart';
part 'work_country_config.g.dart';

@freezed
sealed class WorkCountryConfig with _$WorkCountryConfig {
  const factory WorkCountryConfig({
    required String countryCode,
    @Default(1) int maxFullTimeJobs,
    @Default(1) int maxPartTimeJobs,
    @Default(48) int maxWeeklyHours,
    @Default(0.05) double promotionBaseChance,
    @Default(0.01) double promotionPerformanceScaling,
    @Default(4) int jobPoolSize,
    @Default(2) int casualJobPoolSize,
    @Default(70) int promotionMinPerformance,
    @Default(16) int minAgeForNoEducationJobs,
    @Default(30) int firePerformanceThreshold,
    @Default(true) bool fireAtZeroPerformance,
    @Default(0.02) double fireBaseChance,
    @Default(0.02) double fireChanceScaling,
  }) = _WorkCountryConfig;

  factory WorkCountryConfig.fromJson(Map<String, dynamic> json) =>
      _$WorkCountryConfigFromJson(json);
}
