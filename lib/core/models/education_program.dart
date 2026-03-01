import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:alma/core/models/enums/education_level.dart';
import 'package:alma/core/models/access_condition.dart';

part 'education_program.freezed.dart';
part 'education_program.g.dart';

@freezed
sealed class EducationProgram with _$EducationProgram {
  const factory EducationProgram({
    required String id,
    required EducationLevel level,
    required String name,
    required String description,
    String? branch,
    String? field,
    int? durationOverride,
    @Default([]) List<AccessCondition> accessConditions,
  }) = _EducationProgram;

  factory EducationProgram.fromJson(Map<String, dynamic> json) =>
      _$EducationProgramFromJson(json);
}
