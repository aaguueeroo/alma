import 'package:freezed_annotation/freezed_annotation.dart';

part 'relationship_state.freezed.dart';
part 'relationship_state.g.dart';

@freezed
sealed class RelationshipState with _$RelationshipState {
  const RelationshipState._();

  const factory RelationshipState({
    @Default(0) int affection,
    @Default(0) int trust,
    @Default(0) int respect,
    @Default(0) int attraction,
    @Default(0) int conflict,
  }) = _RelationshipState;

  factory RelationshipState.fromJson(Map<String, dynamic> json) =>
      _$RelationshipStateFromJson(json);

  int get overallValue {
    return ((affection + trust + respect + attraction - conflict) / 4)
        .round()
        .clamp(-100, 100);
  }

  RelationshipState withChange({
    int affectionDelta = 0,
    int trustDelta = 0,
    int respectDelta = 0,
    int attractionDelta = 0,
    int conflictDelta = 0,
  }) {
    return copyWith(
      affection: (affection + affectionDelta).clamp(-100, 100),
      trust: (trust + trustDelta).clamp(-100, 100),
      respect: (respect + respectDelta).clamp(-100, 100),
      attraction: (attraction + attractionDelta).clamp(-100, 100),
      conflict: (conflict + conflictDelta).clamp(0, 100),
    );
  }

  Map<String, double> toRadarMap() {
    return {
      'affection': (affection + 100) / 200,
      'trust': (trust + 100) / 200,
      'respect': (respect + 100) / 200,
      'attraction': (attraction + 100) / 200,
      'conflict': conflict / 100,
    };
  }
}
