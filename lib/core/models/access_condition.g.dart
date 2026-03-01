// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_condition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PreviousLevelCondition _$PreviousLevelConditionFromJson(
  Map<String, dynamic> json,
) => PreviousLevelCondition(
  level: $enumDecode(_$EducationLevelEnumMap, json['level']),
  requiredBranch: json['requiredBranch'] as String?,
  $type: json['type'] as String?,
);

Map<String, dynamic> _$PreviousLevelConditionToJson(
  PreviousLevelCondition instance,
) => <String, dynamic>{
  'level': _$EducationLevelEnumMap[instance.level]!,
  'requiredBranch': instance.requiredBranch,
  'type': instance.$type,
};

const _$EducationLevelEnumMap = {
  EducationLevel.preschool: 'preschool',
  EducationLevel.middleSchool: 'middleSchool',
  EducationLevel.highSchool: 'highSchool',
  EducationLevel.university: 'university',
  EducationLevel.master: 'master',
  EducationLevel.doctorate: 'doctorate',
};

PreviousProgramCondition _$PreviousProgramConditionFromJson(
  Map<String, dynamic> json,
) => PreviousProgramCondition(
  requiredProgramId: json['requiredProgramId'] as String,
  $type: json['type'] as String?,
);

Map<String, dynamic> _$PreviousProgramConditionToJson(
  PreviousProgramCondition instance,
) => <String, dynamic>{
  'requiredProgramId': instance.requiredProgramId,
  'type': instance.$type,
};

MinGradeCondition _$MinGradeConditionFromJson(Map<String, dynamic> json) =>
    MinGradeCondition(
      level: $enumDecode(_$EducationLevelEnumMap, json['level']),
      minGrade: (json['minGrade'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$MinGradeConditionToJson(MinGradeCondition instance) =>
    <String, dynamic>{
      'level': _$EducationLevelEnumMap[instance.level]!,
      'minGrade': instance.minGrade,
      'type': instance.$type,
    };

MinSkillCondition _$MinSkillConditionFromJson(Map<String, dynamic> json) =>
    MinSkillCondition(
      skill: $enumDecode(_$SkillTypeEnumMap, json['skill']),
      minValue: (json['minValue'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$MinSkillConditionToJson(MinSkillCondition instance) =>
    <String, dynamic>{
      'skill': _$SkillTypeEnumMap[instance.skill]!,
      'minValue': instance.minValue,
      'type': instance.$type,
    };

const _$SkillTypeEnumMap = {
  SkillType.intelligence: 'intelligence',
  SkillType.creativity: 'creativity',
  SkillType.communication: 'communication',
  SkillType.emotionalStability: 'emotionalStability',
  SkillType.fitness: 'fitness',
};

CustomCondition _$CustomConditionFromJson(Map<String, dynamic> json) =>
    CustomCondition(
      key: json['key'] as String,
      operator: json['operator'] as String,
      value: json['value'],
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$CustomConditionToJson(CustomCondition instance) =>
    <String, dynamic>{
      'key': instance.key,
      'operator': instance.operator,
      'value': instance.value,
      'type': instance.$type,
    };
