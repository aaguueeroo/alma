// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Habit _$HabitFromJson(Map<String, dynamic> json) => _Habit(
  type: $enumDecode(_$HabitTypeEnumMap, json['type']),
  strength: (json['strength'] as num?)?.toInt() ?? 0,
  repetitions: (json['repetitions'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$HabitToJson(_Habit instance) => <String, dynamic>{
  'type': _$HabitTypeEnumMap[instance.type]!,
  'strength': instance.strength,
  'repetitions': instance.repetitions,
};

const _$HabitTypeEnumMap = {
  HabitType.smoking: 'smoking',
  HabitType.exercise: 'exercise',
  HabitType.volunteering: 'volunteering',
  HabitType.gambling: 'gambling',
  HabitType.reading: 'reading',
  HabitType.meditation: 'meditation',
  HabitType.socialMedia: 'socialMedia',
  HabitType.cooking: 'cooking',
  HabitType.drinking: 'drinking',
};
