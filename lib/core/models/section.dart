import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:alma/core/models/enums/section_type.dart';

part 'section.freezed.dart';
part 'section.g.dart';

@freezed
sealed class Section with _$Section {
  const factory Section({
    required SectionType type,
    @Default(50) int performance,
    @Default('') String contextLabel,
  }) = _Section;

  factory Section.fromJson(Map<String, dynamic> json) =>
      _$SectionFromJson(json);
}
