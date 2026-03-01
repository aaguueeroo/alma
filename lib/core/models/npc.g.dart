// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'npc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Npc _$NpcFromJson(Map<String, dynamic> json) => _Npc(
  id: json['id'] as String,
  name: json['name'] as String,
  role: $enumDecode(_$NpcRoleEnumMap, json['role']),
  visibleTraits:
      (json['visibleTraits'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$TraitTypeEnumMap, e))
          .toList() ??
      const [],
  hiddenTraits:
      (json['hiddenTraits'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$TraitTypeEnumMap, e))
          .toList() ??
      const [],
  compatibilityFactor: (json['compatibilityFactor'] as num?)?.toDouble() ?? 0.5,
  relationshipTypeId: json['relationshipTypeId'] as String?,
  age: (json['age'] as num?)?.toInt(),
  gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
  pronoun: $enumDecodeNullable(_$PronounEnumMap, json['pronoun']),
  alias: json['alias'] as String?,
  jobId: json['jobId'] as String?,
  country: json['country'] as String?,
  isAlive: json['isAlive'] as bool? ?? true,
);

Map<String, dynamic> _$NpcToJson(_Npc instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'role': _$NpcRoleEnumMap[instance.role]!,
  'visibleTraits': instance.visibleTraits
      .map((e) => _$TraitTypeEnumMap[e]!)
      .toList(),
  'hiddenTraits': instance.hiddenTraits
      .map((e) => _$TraitTypeEnumMap[e]!)
      .toList(),
  'compatibilityFactor': instance.compatibilityFactor,
  'relationshipTypeId': instance.relationshipTypeId,
  'age': instance.age,
  'gender': _$GenderEnumMap[instance.gender],
  'pronoun': _$PronounEnumMap[instance.pronoun],
  'alias': instance.alias,
  'jobId': instance.jobId,
  'country': instance.country,
  'isAlive': instance.isAlive,
};

const _$NpcRoleEnumMap = {
  NpcRole.parent: 'parent',
  NpcRole.sibling: 'sibling',
  NpcRole.friend: 'friend',
  NpcRole.partner: 'partner',
  NpcRole.coworker: 'coworker',
  NpcRole.mentor: 'mentor',
  NpcRole.rival: 'rival',
  NpcRole.child: 'child',
  NpcRole.grandparent: 'grandparent',
  NpcRole.uncle: 'uncle',
  NpcRole.cousin: 'cousin',
  NpcRole.nephew: 'nephew',
  NpcRole.grandchild: 'grandchild',
  NpcRole.acquaintance: 'acquaintance',
  NpcRole.bestFriend: 'bestFriend',
  NpcRole.classmate: 'classmate',
  NpcRole.boss: 'boss',
  NpcRole.workSpouse: 'workSpouse',
  NpcRole.fiance: 'fiance',
  NpcRole.spouse: 'spouse',
  NpcRole.ex: 'ex',
};

const _$TraitTypeEnumMap = {
  TraitType.impulsive: 'impulsive',
  TraitType.calm: 'calm',
  TraitType.generous: 'generous',
  TraitType.ambitious: 'ambitious',
  TraitType.loyal: 'loyal',
  TraitType.selfish: 'selfish',
  TraitType.brave: 'brave',
  TraitType.shy: 'shy',
  TraitType.creative: 'creative',
  TraitType.stubborn: 'stubborn',
  TraitType.kind: 'kind',
  TraitType.pessimistic: 'pessimistic',
  TraitType.optimistic: 'optimistic',
  TraitType.curious: 'curious',
  TraitType.lazy: 'lazy',
};

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
  Gender.other: 'other',
};

const _$PronounEnumMap = {
  Pronoun.they: 'they',
  Pronoun.he: 'he',
  Pronoun.she: 'she',
};
