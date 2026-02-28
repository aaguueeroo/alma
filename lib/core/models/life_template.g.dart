// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'life_template.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LifeTemplate _$LifeTemplateFromJson(Map<String, dynamic> json) =>
    _LifeTemplate(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      country: json['country'] as String,
      familyBackground: json['familyBackground'] as String,
      startingSkills: SkillSet.fromJson(
        json['startingSkills'] as Map<String, dynamic>,
      ),
      startingTraits: (json['startingTraits'] as List<dynamic>)
          .map((e) => $enumDecode(_$TraitTypeEnumMap, e))
          .toList(),
      startingSections: (json['startingSections'] as List<dynamic>)
          .map((e) => Section.fromJson(e as Map<String, dynamic>))
          .toList(),
      startingNpcs: (json['startingNpcs'] as List<dynamic>)
          .map((e) => Npc.fromJson(e as Map<String, dynamic>))
          .toList(),
      startingHealth: (json['startingHealth'] as num?)?.toInt() ?? 80,
      startingMoney: (json['startingMoney'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$LifeTemplateToJson(_LifeTemplate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'country': instance.country,
      'familyBackground': instance.familyBackground,
      'startingSkills': instance.startingSkills,
      'startingTraits': instance.startingTraits
          .map((e) => _$TraitTypeEnumMap[e]!)
          .toList(),
      'startingSections': instance.startingSections,
      'startingNpcs': instance.startingNpcs,
      'startingHealth': instance.startingHealth,
      'startingMoney': instance.startingMoney,
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
