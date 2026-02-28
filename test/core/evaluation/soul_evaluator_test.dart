import 'package:flutter_test/flutter_test.dart';
import 'package:alma/core/evaluation/soul_evaluator.dart';
import 'package:alma/core/rules/evaluation_rules.dart';
import 'package:alma/core/models/soul.dart';
import 'package:alma/core/models/soul_subject.dart';
import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/skill.dart';
import 'package:alma/core/models/hidden_metrics.dart';
import 'package:alma/core/models/enums/soul_subject_type.dart';
import 'package:alma/core/models/enums/trait_type.dart';
import 'package:alma/app/constants/game_constants.dart';

void main() {
  late SoulEvaluator evaluator;

  setUp(() {
    evaluator = SoulEvaluator(evaluationRules: EvaluationRules());
  });

  LifeState createTestLifeState({
    HiddenMetrics? hiddenMetrics,
    List<TraitType>? traits,
    int age = 70,
  }) {
    return LifeState(
      currentYear: age,
      age: age,
      health: 0,
      money: 0,
      timeRemaining: 0,
      skills: const SkillSet(),
      traits: traits ?? [],
      habits: [],
      relationships: [],
      sections: [],
      hiddenMetrics: hiddenMetrics ?? const HiddenMetrics(),
      isDead: true,
      causeOfDeath: 'Old age',
    );
  }

  Soul createTestSoul() {
    return Soul(
      id: 'test-soul',
      name: 'Test Soul',
      remainingLives: 5,
      subjects: SoulSubjectType.values
          .map((type) => SoulSubject(type: type))
          .toList(),
      createdAt: DateTime(2026, 1, 1),
    );
  }

  group('SoulEvaluator', () {
    test('generateLifeSummary produces summary', () {
      final state = createTestLifeState(
        hiddenMetrics: const HiddenMetrics(compassion: 50.0, courage: 30.0),
      );
      final summary = evaluator.generateLifeSummary(state);
      expect(summary.ageAtDeath, 70);
      expect(summary.causeOfDeath, 'Old age');
      expect(summary.subjectContributions, isNotEmpty);
    });

    test('compassion score increases with compassion metric', () {
      final stateHigh = createTestLifeState(
        hiddenMetrics: const HiddenMetrics(compassion: 80.0, loyalty: 40.0),
      );
      final stateLow = createTestLifeState(
        hiddenMetrics: const HiddenMetrics(compassion: 10.0, loyalty: 5.0),
      );
      final summaryHigh = evaluator.generateLifeSummary(stateHigh);
      final summaryLow = evaluator.generateLifeSummary(stateLow);
      expect(
        summaryHigh.subjectContributions['compassion']!,
        greaterThan(summaryLow.subjectContributions['compassion']!),
      );
    });

    test('generous trait adds compassion bonus', () {
      final stateWithTrait = createTestLifeState(
        hiddenMetrics: const HiddenMetrics(compassion: 30.0),
        traits: [TraitType.generous],
      );
      final stateWithout = createTestLifeState(
        hiddenMetrics: const HiddenMetrics(compassion: 30.0),
      );
      final withTrait = evaluator.generateLifeSummary(stateWithTrait);
      final without = evaluator.generateLifeSummary(stateWithout);
      expect(
        withTrait.subjectContributions['compassion']!,
        greaterThan(without.subjectContributions['compassion']!),
      );
    });

    test('applySoulProgress updates soul subjects and stats', () {
      final soul = createTestSoul();
      final state = createTestLifeState(
        hiddenMetrics: const HiddenMetrics(
          compassion: 80.0,
          loyalty: 60.0,
          humility: 40.0,
        ),
      );
      final summary = evaluator.generateLifeSummary(state);
      final updatedSoul = evaluator.applySoulProgress(soul, summary);
      expect(updatedSoul.remainingLives, soul.remainingLives - 1);
      expect(updatedSoul.metaStats['totalLivesLived'], 1);
      expect(updatedSoul.metaStats['totalYearsLived'], 70);
      expect(updatedSoul.currentLifeId, isNull);
      final compassionSubject = updatedSoul.subjects.firstWhere(
        (s) => s.type == SoulSubjectType.compassion,
      );
      expect(compassionSubject.progress, greaterThan(0));
    });

    test('subject passes when progress exceeds threshold', () {
      final soul = createTestSoul();
      final soulWithProgress = soul.copyWith(
        subjects: soul.subjects.map((s) {
          if (s.type == SoulSubjectType.compassion) {
            return s.copyWith(progress: kSubjectPassThreshold - 5);
          }
          return s;
        }).toList(),
      );
      final state = createTestLifeState(
        hiddenMetrics: const HiddenMetrics(
          compassion: 100.0,
          loyalty: 80.0,
          humility: 60.0,
        ),
        traits: [TraitType.generous, TraitType.kind],
      );
      final summary = evaluator.generateLifeSummary(state);
      final updatedSoul = evaluator.applySoulProgress(soulWithProgress, summary);
      final compassionSubject = updatedSoul.subjects.firstWhere(
        (s) => s.type == SoulSubjectType.compassion,
      );
      expect(compassionSubject.progress, greaterThanOrEqualTo(kSubjectPassThreshold));
      expect(compassionSubject.isPassed, isTrue);
    });
  });
}
