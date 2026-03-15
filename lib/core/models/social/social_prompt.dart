import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_prompt.freezed.dart';
part 'social_prompt.g.dart';

@freezed
sealed class SocialPrompt with _$SocialPrompt {
  const factory SocialPrompt({
    required String title,
    required String description,
    @Default(true) bool canDecline,
  }) = _SocialPrompt;

  factory SocialPrompt.fromJson(Map<String, dynamic> json) =>
      _$SocialPromptFromJson(json);
}
