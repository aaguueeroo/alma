// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EventOption _$EventOptionFromJson(Map<String, dynamic> json) => _EventOption(
  description: json['description'] as String,
  consequences: EventConsequences.fromJson(
    json['consequences'] as Map<String, dynamic>,
  ),
  logMessage: json['logMessage'] as String?,
  resultDialogText: json['resultDialogText'] as String?,
);

Map<String, dynamic> _$EventOptionToJson(_EventOption instance) =>
    <String, dynamic>{
      'description': instance.description,
      'consequences': instance.consequences,
      'logMessage': instance.logMessage,
      'resultDialogText': instance.resultDialogText,
    };

_EventConsequences _$EventConsequencesFromJson(
  Map<String, dynamic> json,
) => _EventConsequences(
  skillChanges:
      (json['skillChanges'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry($enumDecode(_$SkillTypeEnumMap, k), (e as num).toInt()),
      ) ??
      const {},
  hiddenMetricChanges:
      (json['hiddenMetricChanges'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
          $enumDecode(_$HiddenMetricTypeEnumMap, k),
          (e as num).toDouble(),
        ),
      ) ??
      const {},
  healthChange: (json['healthChange'] as num?)?.toInt() ?? 0,
  moneyChange: (json['moneyChange'] as num?)?.toInt() ?? 0,
  traitChance:
      (json['traitChance'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry($enumDecode(_$TraitTypeEnumMap, k), (e as num).toDouble()),
      ) ??
      const {},
  relationshipTargetId: json['relationshipTargetId'] as String?,
  relationshipChange: (json['relationshipChange'] as num?)?.toInt() ?? 0,
  unlockEventId: json['unlockEventId'] as String?,
  causesDeath: json['causesDeath'] as bool? ?? false,
  moralImpactTemplates:
      (json['moralImpactTemplates'] as List<dynamic>?)
          ?.map((e) => MoralImpactTemplate.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$EventConsequencesToJson(_EventConsequences instance) =>
    <String, dynamic>{
      'skillChanges': instance.skillChanges.map(
        (k, e) => MapEntry(_$SkillTypeEnumMap[k]!, e),
      ),
      'hiddenMetricChanges': instance.hiddenMetricChanges.map(
        (k, e) => MapEntry(_$HiddenMetricTypeEnumMap[k]!, e),
      ),
      'healthChange': instance.healthChange,
      'moneyChange': instance.moneyChange,
      'traitChance': instance.traitChance.map(
        (k, e) => MapEntry(_$TraitTypeEnumMap[k]!, e),
      ),
      'relationshipTargetId': instance.relationshipTargetId,
      'relationshipChange': instance.relationshipChange,
      'unlockEventId': instance.unlockEventId,
      'causesDeath': instance.causesDeath,
      'moralImpactTemplates': instance.moralImpactTemplates,
    };

const _$SkillTypeEnumMap = {
  SkillType.intelligence: 'intelligence',
  SkillType.creativity: 'creativity',
  SkillType.communication: 'communication',
  SkillType.emotionalStability: 'emotionalStability',
  SkillType.fitness: 'fitness',
};

const _$HiddenMetricTypeEnumMap = {
  HiddenMetricType.loyalty: 'loyalty',
  HiddenMetricType.compassion: 'compassion',
  HiddenMetricType.integrity: 'integrity',
  HiddenMetricType.ambition: 'ambition',
  HiddenMetricType.courage: 'courage',
  HiddenMetricType.humility: 'humility',
  HiddenMetricType.discipline: 'discipline',
  HiddenMetricType.curiosity: 'curiosity',
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
