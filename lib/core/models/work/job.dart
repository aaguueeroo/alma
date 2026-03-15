import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:alma/core/models/work/job_type.dart';
import 'package:alma/core/models/education/education_level.dart';
import 'package:alma/core/models/work/job_level.dart';
import 'package:alma/core/models/access_condition.dart';

part 'job.freezed.dart';
part 'job.g.dart';

@freezed
sealed class Job with _$Job {
  const factory Job({
    required String id,
    required String name,
    required String description,
    required JobType type,
    String? field,
    required int baseSalary,
    required int timeCost,
    required List<JobLevel> levels,
    @Default([]) List<AccessCondition> accessConditions,
    @Default([]) List<AccessCondition> interviewConditions,
    EducationLevel? requiredEducationLevel,
  }) = _Job;

  factory Job.fromJson(Map<String, dynamic> json) => _$JobFromJson(json);
}
