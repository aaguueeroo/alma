import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:alma/core/models/npc.dart';
import 'package:alma/app/constants/game_constants.dart';

part 'relationship.freezed.dart';
part 'relationship.g.dart';

@freezed
sealed class Relationship with _$Relationship {
  const factory Relationship({
    required Npc npc,
    @Default(kDefaultRelationshipValue) int value,
    @Default(0) int discoveredTraitCount,
  }) = _Relationship;

  factory Relationship.fromJson(Map<String, dynamic> json) =>
      _$RelationshipFromJson(json);
}
