import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:alma/core/models/education/education_level.dart';

part 'education_country_config.freezed.dart';
part 'education_country_config.g.dart';

@freezed
sealed class EducationCountryConfig with _$EducationCountryConfig {
  const factory EducationCountryConfig({
    required String countryCode,
    required List<EducationLevelConfig> levels,
  }) = _EducationCountryConfig;

  factory EducationCountryConfig.fromJson(Map<String, dynamic> json) =>
      _$EducationCountryConfigFromJson(json);
}

@freezed
sealed class EducationLevelConfig with _$EducationLevelConfig {
  const factory EducationLevelConfig({
    required EducationLevel level,
    required int defaultDuration,
    required bool isCompulsory,
    required bool autoStart,
    int? startAge,
    @Default(true) bool canRepeatYears,
    @Default(true) bool canGetKickedOut,
    @Default(2) int maxRepeats,
    @Default(50) int passThreshold,
  }) = _EducationLevelConfig;

  factory EducationLevelConfig.fromJson(Map<String, dynamic> json) =>
      _$EducationLevelConfigFromJson(json);
}
