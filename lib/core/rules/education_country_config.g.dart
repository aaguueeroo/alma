// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education_country_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EducationCountryConfig _$EducationCountryConfigFromJson(
  Map<String, dynamic> json,
) => _EducationCountryConfig(
  countryCode: json['countryCode'] as String,
  levels: (json['levels'] as List<dynamic>)
      .map((e) => EducationLevelConfig.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$EducationCountryConfigToJson(
  _EducationCountryConfig instance,
) => <String, dynamic>{
  'countryCode': instance.countryCode,
  'levels': instance.levels,
};

_EducationLevelConfig _$EducationLevelConfigFromJson(
  Map<String, dynamic> json,
) => _EducationLevelConfig(
  level: $enumDecode(_$EducationLevelEnumMap, json['level']),
  defaultDuration: (json['defaultDuration'] as num).toInt(),
  isCompulsory: json['isCompulsory'] as bool,
  autoStart: json['autoStart'] as bool,
  startAge: (json['startAge'] as num?)?.toInt(),
  canRepeatYears: json['canRepeatYears'] as bool? ?? true,
  canGetKickedOut: json['canGetKickedOut'] as bool? ?? true,
  maxRepeats: (json['maxRepeats'] as num?)?.toInt() ?? 2,
  passThreshold: (json['passThreshold'] as num?)?.toInt() ?? 50,
);

Map<String, dynamic> _$EducationLevelConfigToJson(
  _EducationLevelConfig instance,
) => <String, dynamic>{
  'level': _$EducationLevelEnumMap[instance.level]!,
  'defaultDuration': instance.defaultDuration,
  'isCompulsory': instance.isCompulsory,
  'autoStart': instance.autoStart,
  'startAge': instance.startAge,
  'canRepeatYears': instance.canRepeatYears,
  'canGetKickedOut': instance.canGetKickedOut,
  'maxRepeats': instance.maxRepeats,
  'passThreshold': instance.passThreshold,
};

const _$EducationLevelEnumMap = {
  EducationLevel.preschool: 'preschool',
  EducationLevel.middleSchool: 'middleSchool',
  EducationLevel.highSchool: 'highSchool',
  EducationLevel.university: 'university',
  EducationLevel.master: 'master',
  EducationLevel.doctorate: 'doctorate',
};
