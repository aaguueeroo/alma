import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:alma/core/models/enums/condition_type.dart';

part 'condition.freezed.dart';
part 'condition.g.dart';

@freezed
sealed class Condition with _$Condition {
  const factory Condition({
    required String id,
    required String name,
    required ConditionType type,
    required bool isChronic,
    required int severity,
    @Default(false) bool isDiagnosed,
    @Default(false) bool isTreated,
    int? startAge,
    int? endAge,
    @Default([]) List<String> symptomIds,
    @Default(0.0) double physicalHealthEffect,
    @Default(0.0) double mentalHealthEffect,
    @Default(1.0) double timeCostMultiplier,
    @Default(0.0) double workPerformanceEffect,
    @Default(0.0) double studyPerformanceEffect,
    @Default(0.0) double relationshipEffect,
  }) = _Condition;

  factory Condition.fromJson(Map<String, dynamic> json) =>
      _$ConditionFromJson(json);
}
