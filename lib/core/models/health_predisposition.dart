import 'package:freezed_annotation/freezed_annotation.dart';

part 'health_predisposition.freezed.dart';
part 'health_predisposition.g.dart';

@freezed
sealed class HealthPredisposition with _$HealthPredisposition {
  const factory HealthPredisposition({
    @Default(0.5) double mentalResilience,
    @Default(0.5) double physicalResilience,
    @Default(0.5) double fitnessGenetics,
    @Default(0.5) double immuneSystem,
    @Default(0.5) double recoverySpeed,
    @Default(0.5) double addictionProneness,
  }) = _HealthPredisposition;

  factory HealthPredisposition.fromJson(Map<String, dynamic> json) =>
      _$HealthPredispositionFromJson(json);
}
