import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:alma/core/models/education/enrollment.dart';
import 'package:alma/core/models/education/education_record.dart';
import 'package:alma/core/models/education/education_prompt.dart';

part 'education_state.freezed.dart';
part 'education_state.g.dart';

@freezed
sealed class EducationState with _$EducationState {
  const factory EducationState({
    Enrollment? currentEnrollment,
    @Default([]) List<EducationRecord> history,
    EducationPrompt? pendingPrompt,
    @Default([]) List<String> performedActionIdsThisYear,
  }) = _EducationState;

  factory EducationState.fromJson(Map<String, dynamic> json) =>
      _$EducationStateFromJson(json);
}
