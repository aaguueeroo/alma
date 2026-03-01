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
      relationshipTypeId: json['relationshipTypeId'] as String?,
      metrics: json['metrics'] == null
          ? const RelationshipState()
          : RelationshipState.fromJson(json['metrics'] as Map<String, dynamic>),
      isActive: json['isActive'] as bool? ?? true,
      cohabiting: json['cohabiting'] as bool? ?? false,
      usedActionIds:
          (json['usedActionIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      usedActionIdsThisYear:
          (json['usedActionIdsThisYear'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      actionIdsThisYear:
          (json['actionIdsThisYear'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      metAt: (json['metAt'] as num?)?.toInt(),
    );

Map<String, dynamic> _$RelationshipToJson(_Relationship instance) =>
    <String, dynamic>{
      'npc': instance.npc,
      'value': instance.value,
      'discoveredTraitCount': instance.discoveredTraitCount,
      'relationshipTypeId': instance.relationshipTypeId,
      'metrics': instance.metrics,
      'isActive': instance.isActive,
      'cohabiting': instance.cohabiting,
      'usedActionIds': instance.usedActionIds,
      'usedActionIdsThisYear': instance.usedActionIdsThisYear,
      'actionIdsThisYear': instance.actionIdsThisYear,
      'metAt': instance.metAt,
    };
