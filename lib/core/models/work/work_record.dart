import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:alma/core/models/work/job_type.dart';

part 'work_record.freezed.dart';
part 'work_record.g.dart';

@freezed
sealed class WorkRecord with _$WorkRecord {
  const factory WorkRecord({
    required String jobId,
    required String jobName,
    required JobType type,
    required int finalLevel,
    required int startAge,
    required int endAge,
    required int yearsWorked,
    required String quitReason,
    required int finalSalary,
    bool? wasFriendlyDismissal,
  }) = _WorkRecord;

  factory WorkRecord.fromJson(Map<String, dynamic> json) =>
      _$WorkRecordFromJson(json);
}
