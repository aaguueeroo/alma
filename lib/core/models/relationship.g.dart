// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relationship.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Relationship _$RelationshipFromJson(Map<String, dynamic> json) =>
    _Relationship(
      npc: Npc.fromJson(json['npc'] as Map<String, dynamic>),
      value: (json['value'] as num?)?.toInt() ?? kDefaultRelationshipValue,
      discoveredTraitCount:
          (json['discoveredTraitCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$RelationshipToJson(_Relationship instance) =>
    <String, dynamic>{
      'npc': instance.npc,
      'value': instance.value,
      'discoveredTraitCount': instance.discoveredTraitCount,
    };
