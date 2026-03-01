import 'package:flutter_test/flutter_test.dart';
import 'package:alma/core/engine/event_engine.dart';
import 'package:alma/core/engine/probability_engine.dart';
import 'package:alma/core/engine/seeded_random.dart';
import 'package:alma/core/models/event.dart';
import 'package:alma/core/models/event_option.dart';
import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/skill.dart';
import 'package:alma/core/models/hidden_metrics.dart';
import 'package:alma/app/constants/time_constants.dart';

void main() {
  late EventEngine eventEngine;
  late SeededRandom rng;

  setUp(() {
    eventEngine = EventEngine(probabilityEngine: ProbabilityEngine());
    rng = SeededRandom(12345);
  });

  LifeState createTestState({
    List<String> eventIdsTriggeredThisYear = const [],
    List<String> unlockedEventIds = const [],
  }) {
    return LifeState(
      currentYear: 1,
      age: 25,
      health: 80,
      money: 100,
      timeRemaining: kDaysPerYear,
      skills: const SkillSet(),
      traits: [],
      habits: [],
      relationships: [],
      sections: [],
      hiddenMetrics: const HiddenMetrics(),
      eventIdsTriggeredThisYear: eventIdsTriggeredThisYear,
      unlockedEventIds: unlockedEventIds,
    );
  }

  GameEvent createTestEvent({
    required String id,
    EventTriggerPhase? triggerPhase,
    double baseChance = 1.0,
  }) {
    return GameEvent(
      id: id,
      title: 'Test $id',
      description: 'Description for $id',
      triggerConditions: EventTriggerConditions(
        minAge: 0,
        maxAge: 100,
        baseChance: baseChance,
        triggerPhase: triggerPhase,
      ),
      choices: [
        EventOption(
          description: 'Choice 1',
          consequences: const EventConsequences(),
          logMessage: 'You chose option 1.',
        ),
      ],
    );
  }

  group('EventEngine', () {
    test('same event does not trigger twice in same year', () {
      final event = createTestEvent(id: 'once_per_year');
      eventEngine.loadEvents([event]);
      final stateFresh = createTestState();
      final stateAlreadyTriggered =
          createTestState(eventIdsTriggeredThisYear: ['once_per_year']);
      expect(eventEngine.checkTriggers(stateFresh, rng), isNotNull);
      expect(
        eventEngine.checkTriggers(
          stateAlreadyTriggered,
          rng,
          triggerPhaseFilter: EventTriggerPhase.afterAction,
        ),
        isNull,
      );
    });

    test('yearEnd event only eligible when triggerPhaseFilter is yearEnd', () {
      final afterActionEvent = createTestEvent(id: 'after_action');
      final yearEndEvent = createTestEvent(
        id: 'year_end_event',
        triggerPhase: EventTriggerPhase.yearEnd,
      );
      eventEngine.loadEvents([afterActionEvent, yearEndEvent]);
      final state = createTestState();
      final resultAfterAction = eventEngine.checkTriggers(
        state,
        rng,
        triggerPhaseFilter: EventTriggerPhase.afterAction,
      );
      final resultYearEnd = eventEngine.checkTriggers(
        state,
        rng,
        triggerPhaseFilter: EventTriggerPhase.yearEnd,
      );
      expect(resultAfterAction?.id, 'after_action');
      expect(resultYearEnd?.id, 'year_end_event');
    });

    test('resolveEvent adds event id to eventIdsTriggeredThisYear', () {
      final event = createTestEvent(id: 'resolved_event');
      eventEngine.loadEvents([event]);
      final state = createTestState();
      final resolved = eventEngine.resolveEvent(state, event, 0, rng);
      expect(resolved.eventIdsTriggeredThisYear, contains('resolved_event'));
      expect(resolved.eventsTriggeredThisYear, 1);
    });

    test('resolveEvent adds unlockEventId to unlockedEventIds', () {
      final event = createTestEvent(id: 'unlock_event');
      eventEngine.loadEvents([event]);
      final state = createTestState();
      final choiceWithUnlock = EventOption(
        description: 'Unlock',
        consequences: const EventConsequences(unlockEventId: 'future_event'),
        logMessage: 'You unlocked a future event.',
      );
      final eventWithUnlock = GameEvent(
        id: event.id,
        title: event.title,
        description: event.description,
        triggerConditions: event.triggerConditions,
        choices: [choiceWithUnlock],
      );
      eventEngine.loadEvents([eventWithUnlock]);
      final resolved = eventEngine.resolveEvent(state, eventWithUnlock, 0, rng);
      expect(resolved.unlockedEventIds, contains('future_event'));
    });
  });
}
