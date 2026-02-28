// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SkillSet _$SkillSetFromJson(Map<String, dynamic> json) => _SkillSet(
  intelligence: (json['intelligence'] as num?)?.toInt() ?? kDefaultSkillValue,
  creativity: (json['creativity'] as num?)?.toInt() ?? kDefaultSkillValue,
  communication: (json['communication'] as num?)?.toInt() ?? kDefaultSkillValue,
  emotionalStability:
      (json['emotionalStability'] as num?)?.toInt() ?? kDefaultSkillValue,
  fitness: (json['fitness'] as num?)?.toInt() ?? kDefaultSkillValue,
);

Map<String, dynamic> _$SkillSetToJson(_SkillSet instance) => <String, dynamic>{
  'intelligence': instance.intelligence,
  'creativity': instance.creativity,
  'communication': instance.communication,
  'emotionalStability': instance.emotionalStability,
  'fitness': instance.fitness,
};
