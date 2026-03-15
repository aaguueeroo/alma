import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/event.dart';
import 'package:alma/core/models/event_option.dart';
import 'package:alma/core/models/skill.dart';
import 'package:alma/core/models/hidden_metrics.dart';
import 'package:alma/core/models/moral_impact.dart';
import 'package:alma/core/models/enums/log_category.dart';
import 'package:alma/core/models/enums/trait_type.dart';
import 'package:alma/core/engine/game_logger.dart';
import 'package:alma/core/engine/seeded_random.dart';
import 'package:alma/core/engine/probability_engine.dart';
import 'package:alma/app/constants/game_constants.dart';
import 'package:alma/app/constants/log_narratives.dart';

class EventEngine {
  EventEngine({
    required this.probabilityEngine,
  });

  final ProbabilityEngine probabilityEngine;
  List<GameEvent> _events = [];
  Set<String> _healthEventIds = const {};

  void loadEvents(List<GameEvent> events) {
    _events = events;
  }

  void loadHealthEventIds(Set<String> ids) {
    _healthEventIds = ids;
  }

  List<GameEvent> getAllEvents() => List.unmodifiable(_events);

  GameEvent? getEventById(String id) {
    try {
      return _events.firstWhere((e) => e.id == id);
    } catch (_) {
      return null;
    }
  }

  bool isHealthEvent(String eventId) => _healthEventIds.contains(eventId);

  GameEvent? checkTriggers(
    LifeState state,
    SeededRandom rng, {
    String? lastActionId,
    EventTriggerPhase? triggerPhaseFilter,
  }) {
    if (state.eventsTriggeredThisYear >= kMaxEventsPerYear) {
      return null;
    }
    final List<GameEvent> eligible = _getEligibleEvents(
      state,
      lastActionId: lastActionId,
      triggerPhaseFilter: triggerPhaseFilter,
    );
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
      eventIdsTriggeredThisYear: [
        ...state.eventIdsTriggeredThisYear,
        event.id,
      ],
    );
    newState = _applySkillChanges(newState, consequences);
    newState = _applyHiddenMetricChanges(newState, consequences);
    newState = _applyHealthChange(newState, consequences);
    newState = _applyMoneyChange(newState, consequences);
    newState = _applyTraitChanges(newState, consequences, rng);
    newState = _applyRelationshipChanges(newState, consequences);
    newState = _applyMoralImpacts(newState, consequences);
    if (consequences.unlockEventId != null) {
      newState = newState.copyWith(
        unlockedEventIds: [
          ...newState.unlockedEventIds,
          consequences.unlockEventId!,
        ],
      );
    }
    final List<String> tags = ['event:${event.id}'];
    if (consequences.relationshipTargetId != null) {
      tags.add('npc:${consequences.relationshipTargetId}');
    }
    final String logMessage =
        choice.logMessage ?? '${event.title}: ${choice.description}';
    final LogCategory logCategory =
        _healthEventIds.contains(event.id) ? LogCategory.health : LogCategory.event;
    newState = GameLogger.addLog(
      newState,
      message: logMessage,
      category: logCategory,
      tags: tags,
    );
    if (consequences.causesDeath) {
      newState = GameLogger.addLog(
        newState,
        message: LogNarratives.lifeDiedEvent(event.title),
        category: LogCategory.life,
      );
      newState = newState.copyWith(
        isDead: true,
        causeOfDeath: 'Event: ${event.title}',
      );
    }
    return newState;
  }

  List<GameEvent> _getEligibleEvents(
    LifeState state, {
    String? lastActionId,
    EventTriggerPhase? triggerPhaseFilter,
  }) {
    return _events.where((event) {
      if (state.eventIdsTriggeredThisYear.contains(event.id)) {
        return false;
      }
      final EventTriggerConditions conditions = event.triggerConditions;
      if (triggerPhaseFilter != null) {
        final phase = conditions.triggerPhase ?? EventTriggerPhase.afterAction;
        if (phase != triggerPhaseFilter) return false;
      }
      if (lastActionId != null &&
          conditions.triggerAfterActionIds != null &&
          conditions.triggerAfterActionIds!.isNotEmpty) {
        if (!conditions.triggerAfterActionIds!.contains(lastActionId)) {
          return false;
        }
      }
      if (conditions.requiredUnlockEventId != null &&
          !state.unlockedEventIds.contains(conditions.requiredUnlockEventId!)) {
        return false;
      }
      if (conditions.requiredJobIds != null &&
          conditions.requiredJobIds!.isNotEmpty) {
        final jobIds = state.workState?.currentEmployments
                .map((e) => e.jobId)
                .toList() ??
            [];
        if (!jobIds.any((id) => conditions.requiredJobIds!.contains(id))) {
          return false;
        }
      }
      if (conditions.requiredProgramIds != null &&
          conditions.requiredProgramIds!.isNotEmpty) {
        final programId = state.educationState?.currentEnrollment?.programId;
        if (programId == null ||
            !conditions.requiredProgramIds!.contains(programId)) {
          return false;
        }
      }
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

  LifeState _applyMoralImpacts(
    LifeState state,
    EventConsequences consequences,
  ) {
    if (consequences.moralImpactTemplates.isEmpty) return state;
    final List<MoralImpact> newImpacts = consequences.moralImpactTemplates
        .map((t) => t.toImpact(state.currentYear))
        .toList();
    return state.copyWith(
      moralImpacts: [...state.moralImpacts, ...newImpacts],
    );
  }
}
