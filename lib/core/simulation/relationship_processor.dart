import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/action.dart';
import 'package:alma/core/models/relationship.dart';
import 'package:alma/core/models/enums/npc_role.dart';
import 'package:alma/core/models/enums/trait_type.dart';
import 'package:alma/core/engine/seeded_random.dart';
import 'package:alma/app/constants/game_constants.dart';

class RelationshipProcessor {
  LifeState processAction(LifeState state, GameAction action, SeededRandom rng) {
    if (action.targetNpcId == null) return state;
    final List<Relationship> relationships =
        state.relationships.map((rel) {
      if (rel.npc.id == action.targetNpcId) {
        return _updateRelationship(rel, state, rng);
      }
      return rel;
    }).toList();
    return state.copyWith(relationships: relationships);
  }

  LifeState applyYearlyDecay(LifeState state) {
    final List<Relationship> relationships =
        state.relationships.map((rel) {
      final int decay = _getDecayRate(rel.npc.role);
      final int newValue = (rel.value - decay)
          .clamp(kMinRelationshipValue, kMaxRelationshipValue);
      return rel.copyWith(value: newValue);
    }).toList();
    return state.copyWith(relationships: relationships);
  }

  Relationship _updateRelationship(
    Relationship rel,
    LifeState state,
    SeededRandom rng,
  ) {
    int delta = 5;
    delta += _compatibilityBonus(rel, state);
    final int newValue = (rel.value + delta)
        .clamp(kMinRelationshipValue, kMaxRelationshipValue);
    int discoveredCount = rel.discoveredTraitCount;
    if (discoveredCount < rel.npc.hiddenTraits.length && rng.chance(0.2)) {
      discoveredCount++;
    }
    return rel.copyWith(
      value: newValue,
      discoveredTraitCount: discoveredCount,
    );
  }

  int _compatibilityBonus(Relationship rel, LifeState state) {
    int bonus = 0;
    if (rel.npc.compatibilityFactor > 0.7) bonus += 2;
    if (rel.npc.compatibilityFactor < 0.3) bonus -= 2;
    if (state.traits.contains(TraitType.kind)) bonus += 1;
    if (state.traits.contains(TraitType.selfish)) bonus -= 2;
    return bonus;
  }

  int _getDecayRate(NpcRole role) {
    switch (role) {
      case NpcRole.parent:
      case NpcRole.child:
        return 1;
      case NpcRole.sibling:
      case NpcRole.partner:
        return 2;
      case NpcRole.friend:
        return kRelationshipDecayPerYear;
      case NpcRole.coworker:
      case NpcRole.mentor:
        return 4;
      case NpcRole.rival:
        return 3;
    }
  }
}
