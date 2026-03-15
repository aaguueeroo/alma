// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education_prompt.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EducationPrompt _$EducationPromptFromJson(Map<String, dynamic> json) =>
    _EducationPrompt(
      title: json['title'] as String,
      description: json['description'] as String,
      availablePrograms: (json['availablePrograms'] as List<dynamic>)
          .map((e) => EducationProgram.fromJson(e as Map<String, dynamic>))
          .toList(),
      canDecline: json['canDecline'] as bool? ?? true,
      carryOverPerformance: (json['carryOverPerformance'] as num?)?.toInt(),
    );

Map<String, dynamic> _$EducationPromptToJson(_EducationPrompt instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'availablePrograms': instance.availablePrograms,
      'canDecline': instance.canDecline,
      'carryOverPerformance': instance.carryOverPerformance,
    };
