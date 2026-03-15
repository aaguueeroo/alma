// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SocialState _$SocialStateFromJson(Map<String, dynamic> json) => _SocialState(
  relationships:
      (json['relationships'] as List<dynamic>?)
          ?.map((e) => Relationship.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  reputation: (json['reputation'] as num?)?.toInt() ?? 0,
  pendingPrompt: json['pendingPrompt'] == null
      ? null
      : SocialPrompt.fromJson(json['pendingPrompt'] as Map<String, dynamic>),
  performedGenericActionIdsThisYear:
      (json['performedGenericActionIdsThisYear'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  genericActionIdsThisYear:
      (json['genericActionIdsThisYear'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
);

Map<String, dynamic> _$SocialStateToJson(_SocialState instance) =>
    <String, dynamic>{
      'relationships': instance.relationships,
      'reputation': instance.reputation,
      'pendingPrompt': instance.pendingPrompt,
      'performedGenericActionIdsThisYear':
          instance.performedGenericActionIdsThisYear,
      'genericActionIdsThisYear': instance.genericActionIdsThisYear,
    };
