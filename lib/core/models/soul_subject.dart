import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:alma/core/models/enums/soul_subject_type.dart';

part 'soul_subject.freezed.dart';
part 'soul_subject.g.dart';

@freezed
sealed class SoulSubject with _$SoulSubject {
  const factory SoulSubject({
    required SoulSubjectType type,
    @Default(false) bool isPassed,
  }) = _SoulSubject;

  factory SoulSubject.fromJson(Map<String, dynamic> json) =>
      _$SoulSubjectFromJson(json);
}
