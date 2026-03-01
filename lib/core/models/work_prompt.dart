import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:alma/core/models/enums/work_prompt_type.dart';
import 'package:alma/core/models/job.dart';

part 'work_prompt.freezed.dart';
part 'work_prompt.g.dart';

@freezed
sealed class WorkPrompt with _$WorkPrompt {
  const factory WorkPrompt({
    required WorkPromptType type,
    required String title,
    required String description,
    @Default([]) List<Job> availableJobs,
    Job? targetJob,
    bool? accepted,
  }) = _WorkPrompt;

  factory WorkPrompt.fromJson(Map<String, dynamic> json) =>
      _$WorkPromptFromJson(json);
}
