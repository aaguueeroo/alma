// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EducationState _$EducationStateFromJson(
  Map<String, dynamic> json,
) => _EducationState(
  currentEnrollment: json['currentEnrollment'] == null
      ? null
      : Enrollment.fromJson(json['currentEnrollment'] as Map<String, dynamic>),
  history:
      (json['history'] as List<dynamic>?)
          ?.map((e) => EducationRecord.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  pendingPrompt: json['pendingPrompt'] == null
      ? null
      : EducationPrompt.fromJson(json['pendingPrompt'] as Map<String, dynamic>),
  performedActionIdsThisYear:
      (json['performedActionIdsThisYear'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
);

Map<String, dynamic> _$EducationStateToJson(_EducationState instance) =>
    <String, dynamic>{
      'currentEnrollment': instance.currentEnrollment,
      'history': instance.history,
      'pendingPrompt': instance.pendingPrompt,
      'performedActionIdsThisYear': instance.performedActionIdsThisYear,
    };
