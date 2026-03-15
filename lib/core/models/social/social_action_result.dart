import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_action_result.freezed.dart';

@freezed
sealed class SocialActionResult with _$SocialActionResult {
  const factory SocialActionResult({
    required List<String> acceptedNpcIds,
    required List<String> rejectedNpcIds,
    required String resultDialogText,
    @Default(false) bool hadTargets,
  }) = _SocialActionResult;
}
