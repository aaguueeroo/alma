// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'life_maintenance_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LifeMaintenanceItem _$LifeMaintenanceItemFromJson(Map<String, dynamic> json) =>
    _LifeMaintenanceItem(
      id: json['id'] as String,
      name: json['name'] as String,
      hoursPerDay: (json['hoursPerDay'] as num).toDouble(),
    );

Map<String, dynamic> _$LifeMaintenanceItemToJson(
  _LifeMaintenanceItem instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'hoursPerDay': instance.hoursPerDay,
};
