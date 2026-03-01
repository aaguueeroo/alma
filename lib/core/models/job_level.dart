import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_level.freezed.dart';
part 'job_level.g.dart';

@freezed
sealed class JobLevel with _$JobLevel {
  const factory JobLevel({
    required int level,
    required String title,
    required double salaryMultiplier,
    required String description,
  }) = _JobLevel;

  factory JobLevel.fromJson(Map<String, dynamic> json) =>
      _$JobLevelFromJson(json);
}
