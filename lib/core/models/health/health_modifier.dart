import 'package:freezed_annotation/freezed_annotation.dart';

part 'health_modifier.freezed.dart';
part 'health_modifier.g.dart';

@freezed
sealed class HealthModifier with _$HealthModifier {
  const factory HealthModifier({
    required String source,
    @Default(0.0) double physicalDelta,
    @Default(0.0) double mentalDelta,
    @Default(0.0) double stressDelta,
  }) = _HealthModifier;

  factory HealthModifier.fromJson(Map<String, dynamic> json) =>
      _$HealthModifierFromJson(json);
}
