// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relationship_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RelationshipCategory _$RelationshipCategoryFromJson(
  Map<String, dynamic> json,
) => _RelationshipCategory(
  category: json['category'] as String,
  subtypes: (json['subtypes'] as List<dynamic>)
      .map((e) => RelationshipSubtype.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$RelationshipCategoryToJson(
  _RelationshipCategory instance,
) => <String, dynamic>{
  'category': instance.category,
  'subtypes': instance.subtypes,
};

_RelationshipSubtype _$RelationshipSubtypeFromJson(
  Map<String, dynamic> json,
) => _RelationshipSubtype(
  id: json['id'] as String,
  label: json['label'] as String,
  decayRate: (json['decayRate'] as num?)?.toInt() ?? 3,
  autoImproveWhenCohabiting:
      json['autoImproveWhenCohabiting'] as bool? ?? false,
  autoImproveWhenCoworking: json['autoImproveWhenCoworking'] as bool? ?? false,
  canChangeAutomatically: json['canChangeAutomatically'] as bool? ?? true,
  requiresActionToTransition:
      json['requiresActionToTransition'] as bool? ?? false,
  transitionsTo: json['transitionsTo'] as String?,
  autoTransitionThreshold: (json['autoTransitionThreshold'] as num?)?.toInt(),
  attractionAllowed: json['attractionAllowed'] as bool? ?? true,
  allowedActionTypes:
      (json['allowedActionTypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      null,
);

Map<String, dynamic> _$RelationshipSubtypeToJson(
  _RelationshipSubtype instance,
) => <String, dynamic>{
  'id': instance.id,
  'label': instance.label,
  'decayRate': instance.decayRate,
  'autoImproveWhenCohabiting': instance.autoImproveWhenCohabiting,
  'autoImproveWhenCoworking': instance.autoImproveWhenCoworking,
  'canChangeAutomatically': instance.canChangeAutomatically,
  'requiresActionToTransition': instance.requiresActionToTransition,
  'transitionsTo': instance.transitionsTo,
  'autoTransitionThreshold': instance.autoTransitionThreshold,
  'attractionAllowed': instance.attractionAllowed,
  'allowedActionTypes': instance.allowedActionTypes,
};
