// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GameAction _$GameActionFromJson(Map<String, dynamic> json) => _GameAction(
  id: json['id'] as String,
  name: json['name'] as String,
  description: json['description'] as String,
  category: $enumDecode(_$ActionCategoryEnumMap, json['category']),
  timeCost: (json['timeCost'] as num).toInt(),
  skillEffects:
      (json['skillEffects'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry($enumDecode(_$SkillTypeEnumMap, k), (e as num).toInt()),
      ) ??
      const {},
  hiddenMetricEffects:
      (json['hiddenMetricEffects'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
          $enumDecode(_$HiddenMetricTypeEnumMap, k),
          (e as num).toDouble(),
        ),
      ) ??
      const {},
  healthEffect: (json['healthEffect'] as num?)?.toInt() ?? 0,
  sectionPerformanceEffect:
      (json['sectionPerformanceEffect'] as num?)?.toInt() ?? 0,
  associatedHabit: $enumDecodeNullable(
    _$HabitTypeEnumMap,
    json['associatedHabit'],
  ),
  targetNpcId: json['targetNpcId'] as String?,
  moralImpactTemplates:
      (json['moralImpactTemplates'] as List<dynamic>?)
          ?.map((e) => MoralImpactTemplate.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  educationLevel: json['educationLevel'] as String?,
  educationProgramId: json['educationProgramId'] as String?,
  workJobId: json['workJobId'] as String?,
  workJobType: json['workJobType'] as String?,
);

Map<String, dynamic> _$GameActionToJson(_GameAction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'category': _$ActionCategoryEnumMap[instance.category]!,
      'timeCost': instance.timeCost,
      'skillEffects': instance.skillEffects.map(
        (k, e) => MapEntry(_$SkillTypeEnumMap[k]!, e),
      ),
      'hiddenMetricEffects': instance.hiddenMetricEffects.map(
        (k, e) => MapEntry(_$HiddenMetricTypeEnumMap[k]!, e),
      ),
      'healthEffect': instance.healthEffect,
      'sectionPerformanceEffect': instance.sectionPerformanceEffect,
      'associatedHabit': _$HabitTypeEnumMap[instance.associatedHabit],
      'targetNpcId': instance.targetNpcId,
      'moralImpactTemplates': instance.moralImpactTemplates,
      'educationLevel': instance.educationLevel,
      'educationProgramId': instance.educationProgramId,
      'workJobId': instance.workJobId,
      'workJobType': instance.workJobType,
    };

const _$ActionCategoryEnumMap = {
  ActionCategory.education: 'education',
  ActionCategory.work: 'work',
  ActionCategory.health: 'health',
  ActionCategory.social: 'social',
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

const _$HabitTypeEnumMap = {
  HabitType.smoking: 'smoking',
  HabitType.exercise: 'exercise',
  HabitType.volunteering: 'volunteering',
  HabitType.gambling: 'gambling',
  HabitType.reading: 'reading',
  HabitType.meditation: 'meditation',
  HabitType.socialMedia: 'socialMedia',
  HabitType.cooking: 'cooking',
  HabitType.drinking: 'drinking',
};
