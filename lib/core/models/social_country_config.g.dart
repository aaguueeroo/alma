// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_country_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SocialCountryConfig _$SocialCountryConfigFromJson(Map<String, dynamic> json) =>
    _SocialCountryConfig(
      country: json['country'] as String,
      meetChanceSchool: (json['meetChanceSchool'] as num?)?.toDouble() ?? 0.4,
      meetChanceWork: (json['meetChanceWork'] as num?)?.toDouble() ?? 0.3,
      meetChanceNeighborhood:
          (json['meetChanceNeighborhood'] as num?)?.toDouble() ?? 0.2,
      meetChanceRandom: (json['meetChanceRandom'] as num?)?.toDouble() ?? 0.1,
      familyImportanceModifier:
          (json['familyImportanceModifier'] as num?)?.toDouble() ?? 1.0,
      friendshipDecayModifier:
          (json['friendshipDecayModifier'] as num?)?.toDouble() ?? 1.0,
    );

Map<String, dynamic> _$SocialCountryConfigToJson(
  _SocialCountryConfig instance,
) => <String, dynamic>{
  'country': instance.country,
  'meetChanceSchool': instance.meetChanceSchool,
  'meetChanceWork': instance.meetChanceWork,
  'meetChanceNeighborhood': instance.meetChanceNeighborhood,
  'meetChanceRandom': instance.meetChanceRandom,
  'familyImportanceModifier': instance.familyImportanceModifier,
  'friendshipDecayModifier': instance.friendshipDecayModifier,
};
