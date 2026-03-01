import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:alma/core/models/enums/job_type.dart';

part 'employment.freezed.dart';
part 'employment.g.dart';

@freezed
sealed class Employment with _$Employment {
  const factory Employment({
    required String jobId,
    required String jobName,
    required JobType type,
    @Default(1) int currentLevel,
    required int startAge,
    @Default(0) int yearsWorked,
    required int salary,
    int? lastPromotionYear,
    @Default(true) bool isActive,
    @Default(50) int performance,
  }) = _Employment;

  factory Employment.fromJson(Map<String, dynamic> json) =>
      _$EmploymentFromJson(json);
}
