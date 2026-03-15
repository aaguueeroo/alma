import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:alma/core/models/health/condition.dart';
import 'package:alma/core/models/health/health_predisposition.dart';
import 'package:alma/core/models/health/symptom.dart';

part 'health_state.freezed.dart';
part 'health_state.g.dart';

@freezed
sealed class HealthState with _$HealthState {
  const HealthState._();

  const factory HealthState({
    @Default(80.0) double physicalHealth,
    @Default(80.0) double mentalHealth,
    @Default(0.0) double stress,
    @Default([]) List<Condition> conditions,
    @Default([]) List<Symptom> symptoms,
    required HealthPredisposition predisposition,
    @Default([]) List<String> performedHospitalActionIds,
    @Default([]) List<String> performedGeneralActionIdsThisYear,
    @Default([]) List<String> diagnosedConditionIds,
    @Default([]) List<String> generalActionIdsThisYear,
  }) = _HealthState;

  double get totalHealth => (physicalHealth + mentalHealth) / 2;

  factory HealthState.fromJson(Map<String, dynamic> json) =>
      _$HealthStateFromJson(json);
}
