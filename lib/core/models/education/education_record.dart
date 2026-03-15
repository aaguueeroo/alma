import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:alma/core/models/education/education_level.dart';

part 'education_record.freezed.dart';
part 'education_record.g.dart';

@freezed
sealed class EducationRecord with _$EducationRecord {
  const factory EducationRecord({
    required String programId,
    required EducationLevel level,
    required String programName,
    required int finalGrade,
    required bool graduated,
    required int yearsSpent,
    required int startAge,
    required int endAge,
    String? branch,
    @Default(false) bool isDropOut,
  }) = _EducationRecord;

  factory EducationRecord.fromJson(Map<String, dynamic> json) =>
      _$EducationRecordFromJson(json);
}
