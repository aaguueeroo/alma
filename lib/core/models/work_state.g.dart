// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WorkState _$WorkStateFromJson(Map<String, dynamic> json) => _WorkState(
  currentEmployments:
      (json['currentEmployments'] as List<dynamic>?)
          ?.map((e) => Employment.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  history:
      (json['history'] as List<dynamic>?)
          ?.map((e) => WorkRecord.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  pendingPrompt: json['pendingPrompt'] == null
      ? null
      : WorkPrompt.fromJson(json['pendingPrompt'] as Map<String, dynamic>),
  performedActionsByJobIdThisYear:
      (json['performedActionsByJobIdThisYear'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
          k,
          (e as List<dynamic>)
              .map((e) => GameAction.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
      ) ??
      const {},
);

Map<String, dynamic> _$WorkStateToJson(
  _WorkState instance,
) => <String, dynamic>{
  'currentEmployments': instance.currentEmployments,
  'history': instance.history,
  'pendingPrompt': instance.pendingPrompt,
  'performedActionsByJobIdThisYear': instance.performedActionsByJobIdThisYear,
};
