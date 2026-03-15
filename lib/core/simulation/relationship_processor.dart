import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/action.dart';
import 'package:alma/core/models/social/relationship.dart';
import 'package:alma/core/models/social/relationship_effects.dart';
import 'package:alma/core/models/social/relationship_state.dart';
import 'package:alma/core/models/enums/npc_role.dart';
import 'package:alma/core/models/enums/trait_type.dart';
import 'package:alma/core/engine/seeded_random.dart';
import 'package:alma/core/engine/social_engine.dart';
import 'package:alma/app/constants/game_constants.dart';

class RelationshipProcessor {
  RelationshipProcessor({this.socialEngine});

  final SocialEngine? socialEngine;

  static const int _kFamilyAttractionValue = -100;

  LifeState processAction(
    LifeState state,
    GameAction action,
    SeededRandom rng,
  ) {
    if (action.targetNpcId == null) return state;

    final List<Relationship> socialRels =
        state.socialState?.relationships ?? [];
    final List<Relationship> legacyRels = state.relationships;

    final List<Relationship> updatedSocial = socialRels.map((Relationship rel) {
      if (rel.npc.id == action.targetNpcId) {
        return _updateRelationship(rel, state, action, rng);
      }
      return rel;
    }).toList();

    final List<Relationship> updatedLegacy = legacyRels.map((Relationship rel) {
      if (rel.npc.id == action.targetNpcId) {
        return _updateRelationship(rel, state, action, rng);
      }
      return rel;
    }).toList();

    LifeState newState = state.copyWith(relationships: updatedLegacy);
    if (state.socialState != null) {
      newState = newState.copyWith(
        socialState: state.socialState!.copyWith(relationships: updatedSocial),
      );
    }
    return newState;
  }

  LifeState applyYearlyDecay(LifeState state) {
    final List<Relationship> relationships = state.relationships.map((
      Relationship rel,
    ) {
      final int decay = _getDecayRate(rel.npc.role);
      final int newValue = (rel.value - decay).clamp(
        kMinRelationshipValue,
        kMaxRelationshipValue,
      );
      final RelationshipState newMetrics = rel.metrics.withChange(
        affectionDelta: -decay,
        trustDelta: -(decay ~/ 2),
      );
      return rel.copyWith(value: newValue, metrics: newMetrics);
    }).toList();
    return state.copyWith(relationships: relationships);
  }

  Relationship _updateRelationship(
    Relationship rel,
    LifeState state,
    GameAction action,
    SeededRandom rng,
  ) {
    int delta = 5;
    delta += _compatibilityBonus(rel, state);

    final RelationshipEffects eff = action.relationshipEffects;
    final bool attractionAllowed =
        socialEngine?.getSubtype(rel.displayTypeId)?.attractionAllowed ?? true;
    final int attractionDelta = attractionAllowed ? eff.attraction : 0;
    final bool hasSocialMetrics =
        eff.affection != 0 ||
        eff.trust != 0 ||
        eff.respect != 0 ||
        attractionDelta != 0 ||
        eff.conflict != 0;

    RelationshipState newMetrics = rel.metrics;
    if (hasSocialMetrics) {
      newMetrics = newMetrics.withChange(
        affectionDelta: eff.affection,
        trustDelta: eff.trust,
        respectDelta: eff.respect,
        attractionDelta: attractionDelta,
        conflictDelta: eff.conflict,
      );
      if (!attractionAllowed &&
          newMetrics.attraction != _kFamilyAttractionValue) {
        newMetrics = newMetrics.copyWith(attraction: _kFamilyAttractionValue);
      }
      delta = ((eff.affection + eff.trust + eff.respect) ~/ 3);
    }

    final int newValue = (rel.value + delta).clamp(
      kMinRelationshipValue,
      kMaxRelationshipValue,
    );
    int discoveredCount = rel.discoveredTraitCount;
    if (discoveredCount < rel.npc.hiddenTraits.length && rng.chance(0.2)) {
      discoveredCount++;
    }
    return rel.copyWith(
      value: newValue,
      discoveredTraitCount: discoveredCount,
      metrics: newMetrics,
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
      case NpcRole.grandparent:
      case NpcRole.grandchild:
        return 1;
      case NpcRole.sibling:
      case NpcRole.partner:
      case NpcRole.spouse:
      case NpcRole.fiance:
        return 2;
      case NpcRole.friend:
      case NpcRole.bestFriend:
        return kRelationshipDecayPerYear;
      case NpcRole.coworker:
      case NpcRole.mentor:
      case NpcRole.boss:
      case NpcRole.workSpouse:
      case NpcRole.classmate:
        return 4;
      case NpcRole.rival:
      case NpcRole.ex:
        return 3;
      case NpcRole.uncle:
      case NpcRole.cousin:
      case NpcRole.nephew:
      case NpcRole.acquaintance:
        return 5;
    }
  }
}
