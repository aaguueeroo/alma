import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:alma/core/models/health/condition.dart';
import 'package:alma/core/models/health/condition_type.dart';

part 'condition_definition.freezed.dart';
part 'condition_definition.g.dart';

@freezed
sealed class ConditionDefinition with _$ConditionDefinition {
  const ConditionDefinition._();

  const factory ConditionDefinition({
    required String id,
    required String name,
    required ConditionType type,
    required bool isChronic,
    required int severity,
    @Default([]) List<String> symptomIds,
    @Default(0.0) double physicalHealthEffect,
    @Default(0.0) double mentalHealthEffect,
    @Default(1.0) double timeCostMultiplier,
    @Default(0.0) double workPerformanceEffect,
    @Default(0.0) double studyPerformanceEffect,
    @Default(0.0) double relationshipEffect,
    @Default(0.0) double lifetimeChance,
    @Default(false) bool canDevelopAtBirth,
    @Default(0) int minAgeToDevelop,
    @Default(100) int maxAgeToDevelop,
    int? averageDurationYears,
  }) = _ConditionDefinition;

  Condition toCondition({
    required int startAge,
    int? endAge,
    bool isDiagnosed = false,
    bool isTreated = false,
  }) {
    return Condition(
      id: id,
      name: name,
      type: type,
      isChronic: isChronic,
      severity: severity,
      isDiagnosed: isDiagnosed,
      isTreated: isTreated,
      startAge: startAge,
      endAge: endAge,
      symptomIds: symptomIds,
      physicalHealthEffect: physicalHealthEffect,
      mentalHealthEffect: mentalHealthEffect,
      timeCostMultiplier: timeCostMultiplier,
      workPerformanceEffect: workPerformanceEffect,
      studyPerformanceEffect: studyPerformanceEffect,
      relationshipEffect: relationshipEffect,
    );
  }

  factory ConditionDefinition.fromJson(Map<String, dynamic> json) =>
      _$ConditionDefinitionFromJson(json);
}
