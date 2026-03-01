import 'package:freezed_annotation/freezed_annotation.dart';

part 'life_maintenance_item.freezed.dart';
part 'life_maintenance_item.g.dart';

/// A configurable daily commitment (e.g. sleep, hygiene, eating) that consumes
/// time each year. [hoursPerDay] is the default; can be overridden per life later.
@freezed
sealed class LifeMaintenanceItem with _$LifeMaintenanceItem {
  const factory LifeMaintenanceItem({
    required String id,
    required String name,
    /// Default hours per day for this activity. Yearly days = (hoursPerDay * 365) / 24.
    required double hoursPerDay,
  }) = _LifeMaintenanceItem;

  factory LifeMaintenanceItem.fromJson(Map<String, dynamic> json) =>
      _$LifeMaintenanceItemFromJson(json);
}
