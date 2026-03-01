// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GameLog _$GameLogFromJson(Map<String, dynamic> json) => _GameLog(
  age: (json['age'] as num).toInt(),
  message: json['message'] as String,
  category: $enumDecode(_$LogCategoryEnumMap, json['category']),
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
);

Map<String, dynamic> _$GameLogToJson(_GameLog instance) => <String, dynamic>{
  'age': instance.age,
  'message': instance.message,
  'category': _$LogCategoryEnumMap[instance.category]!,
  'tags': instance.tags,
};

const _$LogCategoryEnumMap = {
  LogCategory.education: 'education',
  LogCategory.work: 'work',
  LogCategory.health: 'health',
  LogCategory.social: 'social',
  LogCategory.event: 'event',
  LogCategory.life: 'life',
};
