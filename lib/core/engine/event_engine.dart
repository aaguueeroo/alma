import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/event.dart';
import 'package:alma/core/models/event_option.dart';
import 'package:alma/core/models/skill.dart';
import 'package:alma/core/models/hidden_metrics.dart';
import 'package:alma/core/models/enums/trait_type.dart';
import 'package:alma/core/engine/seeded_random.dart';
import 'package:alma/core/engine/probability_engine.dart';
import 'package:alma/app/constants/game_constants.dart';

class EventEngine {
  EventEngine({
    required this.probabilityEngine,
  });

  final ProbabilityEngine probabilityEngine;
  List<GameEvent> _events = [];

  void loadEvents(List<GameEvent> events) {
    _events = events;
  }

  GameEvent? checkTriggers(LifeState state, SeededRandom rng) {
    if (state.eventsTriggeredThisYear >= kMaxEventsPerYear) {
      return null;
    }
    final List<GameEvent> eligible = _getEligibleEvents(state);
    if (eligible.isEmpty) return null;
    for (final event in eligible) {
      if (probabilityEngine.rollEvent(event, state, rng)) {
        return event;
      }
    }
    return null;
  }

  LifeState resolveEvent(
    LifeState state,
    GameEvent event,
    int choiceIndex,
    SeededRandom rng,
  ) {
    final EventOption choice = event.choices[choiceIndex];
    final EventConsequences consequences = choice.consequences;
    LifeState newState = state.copyWith(
      pendingEvent: null,
      eventsTriggeredThisYear: state.eventsTriggeredThisYear + 1,
    );
    newState = _applySkillChanges(newState, consequences);
    newState = _applyHiddenMetricChanges(newState, consequences);
    newState = _applyHealthChange(newState, consequences);
    newState = _applyMoneyChange(newState, consequences);
    newState = _applyTraitChanges(newState, consequences, rng);
    newState = _applyRelationshipChanges(newState, consequences);
    if (consequences.causesDeath) {
      newState = newState.copyWith(
        isDead: true,
        causeOfDeath: 'Event: ${event.title}',
      );
    }
    return newState;
  }

  List<GameEvent> _getEligibleEvents(LifeState state) {
    return _events.where((event) {
      final EventTriggerConditions conditions = event.triggerConditions;
      if (state.age < conditions.minAge || state.age > conditions.maxAge) {
        return false;
      }
      for (final required in conditions.requiredTraits) {
        if (!state.traits.contains(required)) return false;
      }
      for (final forbidden in conditions.forbiddenTraits) {
        if (state.traits.contains(forbidden)) return false;
      }
      if (conditions.minHealth > 0 && state.health < conditions.minHealth) {
        return false;
      }
      return true;
    }).toList();
  }

  LifeState _applySkillChanges(LifeState state, EventConsequences consequences) {
    var skills = state.skills;
    for (final entry in consequences.skillChanges.entries) {
      skills = skills.withChange(entry.key, entry.value);
    }
    return state.copyWith(skills: skills);
  }

  LifeState _applyHiddenMetricChanges(
    LifeState state,
    EventConsequences consequences,
  ) {
    var metrics = state.hiddenMetrics;
    for (final entry in consequences.hiddenMetricChanges.entries) {
      metrics = metrics.withChange(entry.key, entry.value);
    }
    return state.copyWith(hiddenMetrics: metrics);
  }

  LifeState _applyHealthChange(LifeState state, EventConsequences consequences) {
    if (consequences.healthChange == 0) return state;
    final int newHealth = (state.health + consequences.healthChange)
        .clamp(kMinHealthValue, kMaxHealthValue);
    LifeState newState = state.copyWith(health: newHealth);
    if (newHealth <= 0) {
      newState = newState.copyWith(isDead: true, causeOfDeath: 'Health reached zero');
    }
    return newState;
  }

  LifeState _applyMoneyChange(LifeState state, EventConsequences consequences) {
    if (consequences.moneyChange == 0) return state;
    return state.copyWith(money: state.money + consequences.moneyChange);
  }

  LifeState _applyTraitChanges(
    LifeState state,
    EventConsequences consequences,
    SeededRandom rng,
  ) {
    final List<TraitType> traits = List<TraitType>.from(state.traits);
    for (final entry in consequences.traitChance.entries) {
      if (rng.chance(entry.value) && !traits.contains(entry.key)) {
        traits.add(entry.key);
      }
    }
    return state.copyWith(traits: traits);
  }

  LifeState _applyRelationshipChanges(
    LifeState state,
    EventConsequences consequences,
  ) {
    if (consequences.relationshipTargetId == null ||
        consequences.relationshipChange == 0) {
      return state;
    }
    final relationships = state.relationships.map((rel) {
      if (rel.npc.id == consequences.relationshipTargetId) {
        final int newValue = (rel.value + consequences.relationshipChange)
            .clamp(kMinRelationshipValue, kMaxRelationshipValue);
        return rel.copyWith(value: newValue);
      }
      return rel;
    }).toList();
    return state.copyWith(relationships: relationships);
  }
}
