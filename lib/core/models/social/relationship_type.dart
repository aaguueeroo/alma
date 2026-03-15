import 'package:freezed_annotation/freezed_annotation.dart';

part 'relationship_type.freezed.dart';
part 'relationship_type.g.dart';

@freezed
sealed class RelationshipCategory with _$RelationshipCategory {
  const factory RelationshipCategory({
    required String category,
    required List<RelationshipSubtype> subtypes,
  }) = _RelationshipCategory;

  factory RelationshipCategory.fromJson(Map<String, dynamic> json) =>
      _$RelationshipCategoryFromJson(json);
}

@freezed
sealed class RelationshipSubtype with _$RelationshipSubtype {
  const factory RelationshipSubtype({
    required String id,
    required String label,
    @Default(3) int decayRate,
    @Default(false) bool autoImproveWhenCohabiting,
    @Default(false) bool autoImproveWhenCoworking,
    @Default(true) bool canChangeAutomatically,
    @Default(false) bool requiresActionToTransition,
    String? transitionsTo,
    int? autoTransitionThreshold,

    /// When false, attraction is always 0 and never changed by actions (e.g. family).
    @Default(true) bool attractionAllowed,

    /// When non-null, only actions whose [GameAction.socialActionType] is in this list are eligible. When null, all action types allowed.
    @Default(null) List<String>? allowedActionTypes,
  }) = _RelationshipSubtype;

  factory RelationshipSubtype.fromJson(Map<String, dynamic> json) =>
      _$RelationshipSubtypeFromJson(json);
}
