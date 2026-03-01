// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relationship_effects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RelationshipEffects _$RelationshipEffectsFromJson(Map<String, dynamic> json) =>
    _RelationshipEffects(
      affection: (json['affection'] as num?)?.toInt() ?? 0,
      trust: (json['trust'] as num?)?.toInt() ?? 0,
      respect: (json['respect'] as num?)?.toInt() ?? 0,
      attraction: (json['attraction'] as num?)?.toInt() ?? 0,
      conflict: (json['conflict'] as num?)?.toInt() ?? 0,
      reputation: (json['reputation'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$RelationshipEffectsToJson(
  _RelationshipEffects instance,
) => <String, dynamic>{
  'affection': instance.affection,
  'trust': instance.trust,
  'respect': instance.respect,
  'attraction': instance.attraction,
  'conflict': instance.conflict,
  'reputation': instance.reputation,
};
