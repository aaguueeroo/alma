import 'package:flutter_test/flutter_test.dart';
import 'package:alma/core/engine/time_engine.dart';
import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/action.dart';
import 'package:alma/core/models/skill.dart';
import 'package:alma/core/models/hidden_metrics.dart';
import 'package:alma/core/models/enums/action_category.dart';
import 'package:alma/app/constants/game_constants.dart';

void main() {
  late TimeEngine timeEngine;

  setUp(() {
    timeEngine = TimeEngine();
  });

  LifeState createTestState({
    int timeRemaining = kTimeUnitsPerYear,
    SkillSet? skills,
  }) {
    return LifeState(
      currentYear: 1,
      age: 20,
      health: 80,
      money: 0,
      timeRemaining: timeRemaining,
      skills: skills ?? const SkillSet(),
      traits: [],
      habits: [],
      relationships: [],
      sections: [],
      hiddenMetrics: const HiddenMetrics(),
    );
  }

  GameAction createTestAction({int timeCost = 10}) {
    return GameAction(
      id: 'test',
      name: 'Test',
      description: 'Test action',
      category: ActionCategory.education,
      timeCost: timeCost,
    );
  }

  group('TimeEngine', () {
    test('consumeTime decreases time remaining', () {
      final state = createTestState(timeRemaining: 50);
      final action = createTestAction(timeCost: 15);
      final result = timeEngine.consumeTime(state, action);
      expect(result.timeRemaining, 35);
    });

    test('consumeTime clamps to zero', () {
      final state = createTestState(timeRemaining: 5);
      final action = createTestAction(timeCost: 15);
      final result = timeEngine.consumeTime(state, action);
      expect(result.timeRemaining, 0);
    });

    test('startNewYear resets time and increments year and age', () {
      final state = createTestState(timeRemaining: 0);
      final result = timeEngine.startNewYear(state);
      expect(result.timeRemaining, kTimeUnitsPerYear);
      expect(result.currentYear, 2);
      expect(result.age, 21);
      expect(result.eventsTriggeredThisYear, 0);
    });

    test('hasTimeRemaining returns correct value', () {
      expect(timeEngine.hasTimeRemaining(createTestState(timeRemaining: 10)), isTrue);
      expect(timeEngine.hasTimeRemaining(createTestState(timeRemaining: 0)), isFalse);
    });

    test('high skill reduces time cost', () {
      final highSkillState = createTestState(
        skills: const SkillSet(intelligence: 80),
      );
      final action = createTestAction(timeCost: 20);
      final adjustedCost = timeEngine.calculateAdjustedTimeCost(
        highSkillState,
        action.copyWith(skillEffects: {
          ...action.skillEffects,
        }),
      );
      expect(adjustedCost, 20);
    });
  });
}
