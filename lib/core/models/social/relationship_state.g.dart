// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relationship_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RelationshipState _$RelationshipStateFromJson(Map<String, dynamic> json) =>
    _RelationshipState(
      affection: (json['affection'] as num?)?.toInt() ?? 0,
      trust: (json['trust'] as num?)?.toInt() ?? 0,
      respect: (json['respect'] as num?)?.toInt() ?? 0,
      attraction: (json['attraction'] as num?)?.toInt() ?? 0,
      conflict: (json['conflict'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$RelationshipStateToJson(_RelationshipState instance) =>
    <String, dynamic>{
      'affection': instance.affection,
      'trust': instance.trust,
      'respect': instance.respect,
      'attraction': instance.attraction,
      'conflict': instance.conflict,
    };
