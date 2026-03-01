import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:alma/core/models/npc.dart';
import 'package:alma/core/models/relationship_state.dart';
import 'package:alma/app/constants/game_constants.dart';

part 'relationship.freezed.dart';
part 'relationship.g.dart';

@freezed
sealed class Relationship with _$Relationship {
  const Relationship._();

  const factory Relationship({
    required Npc npc,
    @Default(kDefaultRelationshipValue) int value,
    @Default(0) int discoveredTraitCount,
    String? relationshipTypeId,
    @Default(RelationshipState()) RelationshipState metrics,
    @Default(true) bool isActive,
    @Default(false) bool cohabiting,
    @Default([]) List<String> usedActionIds,
    @Default([]) List<String> usedActionIdsThisYear,
    @Default([]) List<String> actionIdsThisYear,
    int? metAt,
  }) = _Relationship;

  factory Relationship.fromJson(Map<String, dynamic> json) =>
      _$RelationshipFromJson(json);

  String get displayTypeId =>
      relationshipTypeId ?? npc.relationshipTypeId ?? npc.role.name;
}
