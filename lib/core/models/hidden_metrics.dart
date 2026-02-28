import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:alma/core/models/enums/hidden_metric_type.dart';

part 'hidden_metrics.freezed.dart';
part 'hidden_metrics.g.dart';

@freezed
sealed class HiddenMetrics with _$HiddenMetrics {
  const factory HiddenMetrics({
    @Default(0.0) double loyalty,
    @Default(0.0) double compassion,
    @Default(0.0) double integrity,
    @Default(0.0) double ambition,
    @Default(0.0) double courage,
    @Default(0.0) double humility,
    @Default(0.0) double discipline,
    @Default(0.0) double curiosity,
  }) = _HiddenMetrics;

  factory HiddenMetrics.fromJson(Map<String, dynamic> json) =>
      _$HiddenMetricsFromJson(json);
}

extension HiddenMetricsExtension on HiddenMetrics {
  double getValue(HiddenMetricType type) {
    switch (type) {
      case HiddenMetricType.loyalty:
        return loyalty;
      case HiddenMetricType.compassion:
        return compassion;
      case HiddenMetricType.integrity:
        return integrity;
      case HiddenMetricType.ambition:
        return ambition;
      case HiddenMetricType.courage:
        return courage;
      case HiddenMetricType.humility:
        return humility;
      case HiddenMetricType.discipline:
        return discipline;
      case HiddenMetricType.curiosity:
        return curiosity;
    }
  }

  HiddenMetrics withChange(HiddenMetricType type, double delta) {
    switch (type) {
      case HiddenMetricType.loyalty:
        return copyWith(loyalty: loyalty + delta);
      case HiddenMetricType.compassion:
        return copyWith(compassion: compassion + delta);
      case HiddenMetricType.integrity:
        return copyWith(integrity: integrity + delta);
      case HiddenMetricType.ambition:
        return copyWith(ambition: ambition + delta);
      case HiddenMetricType.courage:
        return copyWith(courage: courage + delta);
      case HiddenMetricType.humility:
        return copyWith(humility: humility + delta);
      case HiddenMetricType.discipline:
        return copyWith(discipline: discipline + delta);
      case HiddenMetricType.curiosity:
        return copyWith(curiosity: curiosity + delta);
    }
  }
}
