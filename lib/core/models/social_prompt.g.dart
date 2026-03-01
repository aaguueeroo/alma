// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_prompt.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SocialPrompt _$SocialPromptFromJson(Map<String, dynamic> json) =>
    _SocialPrompt(
      title: json['title'] as String,
      description: json['description'] as String,
      canDecline: json['canDecline'] as bool? ?? true,
    );

Map<String, dynamic> _$SocialPromptToJson(_SocialPrompt instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'canDecline': instance.canDecline,
    };
