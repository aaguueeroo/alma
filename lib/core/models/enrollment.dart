import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:alma/core/models/enums/education_level.dart';

part 'enrollment.freezed.dart';
part 'enrollment.g.dart';

@freezed
sealed class Enrollment with _$Enrollment {
  const factory Enrollment({
    required String programId,
    required EducationLevel level,
    required String programName,
    @Default(1) int yearInProgram,
    required int totalYears,
    @Default(0) int repeatsInLevel,
    @Default(true) bool isActive,
    String? branch,
  }) = _Enrollment;

  factory Enrollment.fromJson(Map<String, dynamic> json) =>
      _$EnrollmentFromJson(json);
}
