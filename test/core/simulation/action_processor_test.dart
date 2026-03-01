import 'package:flutter_test/flutter_test.dart';
import 'package:alma/core/simulation/action_processor.dart';
import 'package:alma/core/simulation/relationship_processor.dart';
import 'package:alma/core/simulation/habit_processor.dart';
import 'package:alma/core/engine/time_engine.dart';
import 'package:alma/core/engine/event_engine.dart';
import 'package:alma/core/engine/probability_engine.dart';
import 'package:alma/core/engine/education_engine.dart';
import 'package:alma/core/engine/work_engine.dart';
import 'package:alma/core/engine/social_engine.dart';
import 'package:alma/core/engine/seeded_random.dart';
import 'package:alma/core/rules/trait_rules.dart';
import 'package:alma/core/rules/habit_rules.dart';
import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/action.dart';
import 'package:alma/core/models/skill.dart';
import 'package:alma/core/models/hidden_metrics.dart';
import 'package:alma/core/models/enums/action_category.dart';
import 'package:alma/core/models/enums/skill_type.dart';
import 'package:alma/core/models/enums/hidden_metric_type.dart';
import 'package:alma/app/constants/time_constants.dart';

void main() {
  late ActionProcessor processor;
  late SeededRandom rng;

  setUp(() {
    final probabilityEngine = ProbabilityEngine();
    final eventEngine = EventEngine(probabilityEngine: probabilityEngine);
    processor = ActionProcessor(
      timeEngine: TimeEngine(),
      eventEngine: eventEngine,
      educationEngine: EducationEngine(),
      workEngine: WorkEngine(),
      socialEngine: SocialEngine(),
      traitRules: TraitRules(),
      relationshipProcessor: RelationshipProcessor(),
      habitProcessor: HabitProcessor(habitRules: HabitRules()),
    );
    rng = SeededRandom(42);
  });

  LifeState createTestState() {
    return LifeState(
      currentYear: 1,
      age: 20,
      health: 80,
      money: 100,
      timeRemaining: kDaysPerYear,
      skills: const SkillSet(),
      traits: [],
      habits: [],
      relationships: [],
      sections: [],
      hiddenMetrics: const HiddenMetrics(),
    );
  }

  group('ActionProcessor', () {
    test('performAction reduces time', () {
      final state = createTestState();
      final action = GameAction(
        id: 'study',
        name: 'Study',
        description: 'Study hard',
        category: ActionCategory.education,
        timeCost: 43,
      );
      final result = processor.performAction(state, action, rng);
      expect(result.timeRemaining, lessThan(kDaysPerYear));
    });

    test('performAction applies skill changes', () {
      final state = createTestState();
      final action = GameAction(
        id: 'study',
        name: 'Study',
        description: 'Study hard',
        category: ActionCategory.education,
        timeCost: 43,
        skillEffects: const {SkillType.intelligence: 5},
      );
      final result = processor.performAction(state, action, rng);
      expect(result.skills.intelligence, greaterThan(state.skills.intelligence));
    });

    test('performAction applies hidden metric changes', () {
      final state = createTestState();
      final action = GameAction(
        id: 'help',
        name: 'Help',
        description: 'Help someone',
        category: ActionCategory.social,
        timeCost: 10,
        hiddenMetricEffects: const {HiddenMetricType.compassion: 3.0},
      );
      final result = processor.performAction(state, action, rng);
      expect(
        result.hiddenMetrics.compassion,
        greaterThan(state.hiddenMetrics.compassion),
      );
    });

    test('performAction is deterministic with same seed', () {
      final state = createTestState();
      final action = GameAction(
        id: 'study',
        name: 'Study',
        description: 'Study hard',
        category: ActionCategory.education,
        timeCost: 43,
        skillEffects: const {SkillType.intelligence: 3},
      );
      final rng1 = SeededRandom(42);
      final rng2 = SeededRandom(42);
      final result1 = processor.performAction(state, action, rng1);
      final result2 = processor.performAction(state, action, rng2);
      expect(result1.skills.intelligence, equals(result2.skills.intelligence));
      expect(result1.timeRemaining, equals(result2.timeRemaining));
      expect(result1.traits, equals(result2.traits));
    });

    test('processNextYear increments year and age', () {
      final state = createTestState();
      final result = processor.processNextYear(state, rng);
      expect(result.currentYear, 2);
      expect(result.age, 21);
      expect(result.timeRemaining, kDaysPerYear);
    });

    test('death occurs when health reaches zero', () {
      final state = createTestState().copyWith(health: 5);
      final action = GameAction(
        id: 'risky',
        name: 'Risky',
        description: 'Risky action',
        category: ActionCategory.health,
        timeCost: 10,
        healthEffect: -10,
      );
      final result = processor.performAction(state, action, rng);
      expect(result.health, 0);
    });
  });
}
