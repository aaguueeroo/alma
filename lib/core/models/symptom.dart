import 'package:freezed_annotation/freezed_annotation.dart';

part 'symptom.freezed.dart';
part 'symptom.g.dart';

@freezed
sealed class Symptom with _$Symptom {
  const factory Symptom({
    required String id,
    required String name,
    required String description,
    required String conditionId,
    int? appearedAtAge,
  }) = _Symptom;

  factory Symptom.fromJson(Map<String, dynamic> json) =>
      _$SymptomFromJson(json);
}
