import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_country_config.freezed.dart';
part 'social_country_config.g.dart';

@freezed
sealed class SocialCountryConfig with _$SocialCountryConfig {
  const factory SocialCountryConfig({
    required String country,
    @Default(0.4) double meetChanceSchool,
    @Default(0.3) double meetChanceWork,
    @Default(0.2) double meetChanceNeighborhood,
    @Default(0.1) double meetChanceRandom,
    @Default(1.0) double familyImportanceModifier,
    @Default(1.0) double friendshipDecayModifier,
  }) = _SocialCountryConfig;

  factory SocialCountryConfig.fromJson(Map<String, dynamic> json) =>
      _$SocialCountryConfigFromJson(json);
}
