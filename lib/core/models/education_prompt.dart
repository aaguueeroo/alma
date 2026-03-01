import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:alma/core/models/education_program.dart';

part 'education_prompt.freezed.dart';
part 'education_prompt.g.dart';

@freezed
sealed class EducationPrompt with _$EducationPrompt {
  const factory EducationPrompt({
    required String title,
    required String description,
    required List<EducationProgram> availablePrograms,
    @Default(true) bool canDecline,
    int? carryOverPerformance,
  }) = _EducationPrompt;

  factory EducationPrompt.fromJson(Map<String, dynamic> json) =>
      _$EducationPromptFromJson(json);
}
