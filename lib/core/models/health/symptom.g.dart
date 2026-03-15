// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symptom.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Symptom _$SymptomFromJson(Map<String, dynamic> json) => _Symptom(
  id: json['id'] as String,
  name: json['name'] as String,
  description: json['description'] as String,
  conditionId: json['conditionId'] as String,
  appearedAtAge: (json['appearedAtAge'] as num?)?.toInt(),
);

Map<String, dynamic> _$SymptomToJson(_Symptom instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'conditionId': instance.conditionId,
  'appearedAtAge': instance.appearedAtAge,
};
