import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:alma/core/models/relationship.dart';
import 'package:alma/core/models/social_prompt.dart';

part 'social_state.freezed.dart';
part 'social_state.g.dart';

@freezed
sealed class SocialState with _$SocialState {
  const factory SocialState({
    @Default([]) List<Relationship> relationships,
    @Default(0) int reputation,
    SocialPrompt? pendingPrompt,
    @Default([]) List<String> performedGenericActionIdsThisYear,
    @Default([]) List<String> genericActionIdsThisYear,
  }) = _SocialState;

  factory SocialState.fromJson(Map<String, dynamic> json) =>
      _$SocialStateFromJson(json);
}
