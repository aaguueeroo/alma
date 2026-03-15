import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:alma/core/models/access_condition.dart';
import 'package:alma/core/models/health/health_action_type.dart';

part 'health_action.freezed.dart';
part 'health_action.g.dart';

@freezed
sealed class HealthAction with _$HealthAction {
  const factory HealthAction({
    required String id,
    required String name,
    required String description,
    required HealthActionType type,
    required int timeCost,
    @Default(0.0) double physicalHealthEffect,
    @Default(0.0) double mentalHealthEffect,
    @Default([]) List<String> canDiagnoseConditionIds,
    @Default([]) List<String> canTreatConditionIds,
    @Default([]) List<AccessCondition> conditions,
  }) = _HealthAction;

  factory HealthAction.fromJson(Map<String, dynamic> json) =>
      _$HealthActionFromJson(json);
}
