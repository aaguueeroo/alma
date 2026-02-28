// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'soul.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Soul _$SoulFromJson(Map<String, dynamic> json) => _Soul(
  id: json['id'] as String,
  name: json['name'] as String,
  remainingLives: (json['remainingLives'] as num?)?.toInt() ?? kDefaultMaxLives,
  subjects: (json['subjects'] as List<dynamic>)
      .map((e) => SoulSubject.fromJson(e as Map<String, dynamic>))
      .toList(),
  metaStats:
      (json['metaStats'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toInt()),
      ) ??
      const {},
  createdAt: DateTime.parse(json['createdAt'] as String),
  currentLifeId: json['currentLifeId'] as String?,
);

Map<String, dynamic> _$SoulToJson(_Soul instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'remainingLives': instance.remainingLives,
  'subjects': instance.subjects,
  'metaStats': instance.metaStats,
  'createdAt': instance.createdAt.toIso8601String(),
  'currentLifeId': instance.currentLifeId,
};
