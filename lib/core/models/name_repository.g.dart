// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'name_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NameRepository _$NameRepositoryFromJson(Map<String, dynamic> json) =>
    _NameRepository(
      country: json['country'] as String,
      firstNames: NameSet.fromJson(json['firstNames'] as Map<String, dynamic>),
      lastNames: (json['lastNames'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$NameRepositoryToJson(_NameRepository instance) =>
    <String, dynamic>{
      'country': instance.country,
      'firstNames': instance.firstNames,
      'lastNames': instance.lastNames,
    };

_NameSet _$NameSetFromJson(Map<String, dynamic> json) => _NameSet(
  male: (json['male'] as List<dynamic>).map((e) => e as String).toList(),
  female: (json['female'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$NameSetToJson(_NameSet instance) => <String, dynamic>{
  'male': instance.male,
  'female': instance.female,
};
