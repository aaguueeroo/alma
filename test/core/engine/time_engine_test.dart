import 'package:flutter_test/flutter_test.dart';
import 'package:alma/core/engine/time_engine.dart';
import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/action.dart';
import 'package:alma/core/models/skill.dart';
import 'package:alma/core/models/hidden_metrics.dart';
import 'package:alma/core/models/life_maintenance_item.dart';
import 'package:alma/core/models/enums/action_category.dart';
import 'package:alma/app/constants/time_constants.dart';

void main() {
  late TimeEngine timeEngine;

  setUp(() {
    timeEngine = TimeEngine();
  });

  LifeState createTestState({
    int timeRemaining = kDaysPerYear,
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

  GameAction createTestAction({int timeCost = 15}) {
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
      final state = createTestState(timeRemaining: 100);
      final action = createTestAction(timeCost: 35);
      final result = timeEngine.consumeTime(state, action);
      expect(result.timeRemaining, 65);
    });

    test('consumeTime clamps to zero', () {
      final state = createTestState(timeRemaining: 10);
      final action = createTestAction(timeCost: 25);
      final result = timeEngine.consumeTime(state, action);
      expect(result.timeRemaining, 0);
    });

    test('startNewYear resets time and increments year and age', () {
      final state = createTestState(timeRemaining: 0);
      final result = timeEngine.startNewYear(state);
      expect(result.timeRemaining, kDaysPerYear);
      expect(result.currentYear, 2);
      expect(result.age, 21);
      expect(result.eventsTriggeredThisYear, 0);
    });

    test('startNewYear subtracts life maintenance when loaded', () {
      timeEngine.loadLifeMaintenance([
        const LifeMaintenanceItem(id: 'sleep', name: 'Sleep', hoursPerDay: 8),
        const LifeMaintenanceItem(id: 'hygiene', name: 'Hygiene', hoursPerDay: 1),
        const LifeMaintenanceItem(id: 'eating', name: 'Eating', hoursPerDay: 2),
      ]);
      final state = createTestState(timeRemaining: 0);
      final result = timeEngine.startNewYear(state);
      expect(result.timeRemaining, lessThan(kDaysPerYear));
      const int maintenanceDays = 122 + 15 + 30;
      expect(result.timeRemaining, equals(kDaysPerYear - maintenanceDays));
    });

    test('hasTimeRemaining returns correct value', () {
      expect(timeEngine.hasTimeRemaining(createTestState(timeRemaining: 10)), isTrue);
      expect(timeEngine.hasTimeRemaining(createTestState(timeRemaining: 0)), isFalse);
    });

    test('high skill reduces time cost', () {
      final highSkillState = createTestState(
        skills: const SkillSet(intelligence: 80),
      );
      final action = createTestAction(timeCost: 22);
      final adjustedCost = timeEngine.calculateAdjustedTimeCost(
        highSkillState,
        action.copyWith(skillEffects: {
          ...action.skillEffects,
        }),
      );
      expect(adjustedCost, 22);
    });
  });
}
