import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:alma/core/models/enrollment.dart';
import 'package:alma/core/models/education_record.dart';
import 'package:alma/core/models/education_prompt.dart';

part 'education_state.freezed.dart';
part 'education_state.g.dart';

@freezed
sealed class EducationState with _$EducationState {
  const factory EducationState({
    Enrollment? currentEnrollment,
    @Default([]) List<EducationRecord> history,
    EducationPrompt? pendingPrompt,
  }) = _EducationState;

  factory EducationState.fromJson(Map<String, dynamic> json) =>
      _$EducationStateFromJson(json);
}
