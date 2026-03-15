import 'package:freezed_annotation/freezed_annotation.dart';

part 'relationship_effects.freezed.dart';
part 'relationship_effects.g.dart';

@freezed
sealed class RelationshipEffects with _$RelationshipEffects {
  const factory RelationshipEffects({
    @Default(0) int affection,
    @Default(0) int trust,
    @Default(0) int respect,
    @Default(0) int attraction,
    @Default(0) int conflict,
    @Default(0) int reputation,
  }) = _RelationshipEffects;

  factory RelationshipEffects.fromJson(Map<String, dynamic> json) =>
      _$RelationshipEffectsFromJson(json);
}
