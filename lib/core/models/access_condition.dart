import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:alma/core/models/education/education_level.dart';
import 'package:alma/core/models/enums/skill_type.dart';

part 'access_condition.freezed.dart';
part 'access_condition.g.dart';

@Freezed(unionKey: 'type')
sealed class AccessCondition with _$AccessCondition {
  const factory AccessCondition.previousLevel({
    required EducationLevel level,
    String? requiredBranch,
  }) = PreviousLevelCondition;

  const factory AccessCondition.previousProgram({
    required String requiredProgramId,
  }) = PreviousProgramCondition;

  const factory AccessCondition.minGrade({
    required EducationLevel level,
    required int minGrade,
  }) = MinGradeCondition;

  const factory AccessCondition.minSkill({
    required SkillType skill,
    required int minValue,
  }) = MinSkillCondition;

  const factory AccessCondition.custom({
    required String key,
    required String operator,
    required dynamic value,
  }) = CustomCondition;

  factory AccessCondition.fromJson(Map<String, dynamic> json) =>
      _$AccessConditionFromJson(json);
}
