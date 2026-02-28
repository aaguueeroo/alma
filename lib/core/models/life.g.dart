// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'life.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Life _$LifeFromJson(Map<String, dynamic> json) => _Life(
  id: json['id'] as String,
  soulId: json['soulId'] as String,
  seed: (json['seed'] as num).toInt(),
  templateId: json['templateId'] as String,
  state: LifeState.fromJson(json['state'] as Map<String, dynamic>),
  isComplete: json['isComplete'] as bool? ?? false,
  summary: json['summary'] == null
      ? null
      : LifeSummary.fromJson(json['summary'] as Map<String, dynamic>),
);

Map<String, dynamic> _$LifeToJson(_Life instance) => <String, dynamic>{
  'id': instance.id,
  'soulId': instance.soulId,
  'seed': instance.seed,
  'templateId': instance.templateId,
  'state': instance.state,
  'isComplete': instance.isComplete,
  'summary': instance.summary,
};

_LifeState _$LifeStateFromJson(Map<String, dynamic> json) => _LifeState(
  currentYear: (json['currentYear'] as num).toInt(),
  age: (json['age'] as num).toInt(),
  health: (json['health'] as num).toInt(),
  money: (json['money'] as num).toInt(),
  timeRemaining: (json['timeRemaining'] as num).toInt(),
  skills: SkillSet.fromJson(json['skills'] as Map<String, dynamic>),
  traits: (json['traits'] as List<dynamic>)
      .map((e) => $enumDecode(_$TraitTypeEnumMap, e))
      .toList(),
  habits: (json['habits'] as List<dynamic>)
      .map((e) => Habit.fromJson(e as Map<String, dynamic>))
      .toList(),
  relationships: (json['relationships'] as List<dynamic>)
      .map((e) => Relationship.fromJson(e as Map<String, dynamic>))
      .toList(),
  sections: (json['sections'] as List<dynamic>)
      .map((e) => Section.fromJson(e as Map<String, dynamic>))
      .toList(),
  hiddenMetrics: HiddenMetrics.fromJson(
    json['hiddenMetrics'] as Map<String, dynamic>,
  ),
  eventsTriggeredThisYear:
      (json['eventsTriggeredThisYear'] as num?)?.toInt() ?? 0,
  pendingEvent: json['pendingEvent'] == null
      ? null
      : GameEvent.fromJson(json['pendingEvent'] as Map<String, dynamic>),
  isDead: json['isDead'] as bool? ?? false,
  causeOfDeath: json['causeOfDeath'] as String?,
);

Map<String, dynamic> _$LifeStateToJson(_LifeState instance) =>
    <String, dynamic>{
      'currentYear': instance.currentYear,
      'age': instance.age,
      'health': instance.health,
      'money': instance.money,
      'timeRemaining': instance.timeRemaining,
      'skills': instance.skills,
      'traits': instance.traits.map((e) => _$TraitTypeEnumMap[e]!).toList(),
      'habits': instance.habits,
      'relationships': instance.relationships,
      'sections': instance.sections,
      'hiddenMetrics': instance.hiddenMetrics,
      'eventsTriggeredThisYear': instance.eventsTriggeredThisYear,
      'pendingEvent': instance.pendingEvent,
      'isDead': instance.isDead,
      'causeOfDeath': instance.causeOfDeath,
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

_LifeSummary _$LifeSummaryFromJson(Map<String, dynamic> json) => _LifeSummary(
  ageAtDeath: (json['ageAtDeath'] as num).toInt(),
  causeOfDeath: json['causeOfDeath'] as String,
  finalSkills: SkillSet.fromJson(json['finalSkills'] as Map<String, dynamic>),
  finalTraits: (json['finalTraits'] as List<dynamic>)
      .map((e) => $enumDecode(_$TraitTypeEnumMap, e))
      .toList(),
  subjectContributions: (json['subjectContributions'] as Map<String, dynamic>)
      .map((k, e) => MapEntry(k, (e as num).toDouble())),
);

Map<String, dynamic> _$LifeSummaryToJson(_LifeSummary instance) =>
    <String, dynamic>{
      'ageAtDeath': instance.ageAtDeath,
      'causeOfDeath': instance.causeOfDeath,
      'finalSkills': instance.finalSkills,
      'finalTraits': instance.finalTraits
          .map((e) => _$TraitTypeEnumMap[e]!)
          .toList(),
      'subjectContributions': instance.subjectContributions,
    };
