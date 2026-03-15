// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_prompt.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WorkPrompt _$WorkPromptFromJson(Map<String, dynamic> json) => _WorkPrompt(
  type: $enumDecode(_$WorkPromptTypeEnumMap, json['type']),
  title: json['title'] as String,
  description: json['description'] as String,
  availableJobs:
      (json['availableJobs'] as List<dynamic>?)
          ?.map((e) => Job.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  targetJob: json['targetJob'] == null
      ? null
      : Job.fromJson(json['targetJob'] as Map<String, dynamic>),
  accepted: json['accepted'] as bool?,
);

Map<String, dynamic> _$WorkPromptToJson(_WorkPrompt instance) =>
    <String, dynamic>{
      'type': _$WorkPromptTypeEnumMap[instance.type]!,
      'title': instance.title,
      'description': instance.description,
      'availableJobs': instance.availableJobs,
      'targetJob': instance.targetJob,
      'accepted': instance.accepted,
    };

const _$WorkPromptTypeEnumMap = {
  WorkPromptType.jobOffers: 'jobOffers',
  WorkPromptType.interviewInvite: 'interviewInvite',
  WorkPromptType.interviewResult: 'interviewResult',
  WorkPromptType.promotionResult: 'promotionResult',
  WorkPromptType.fired: 'fired',
};
