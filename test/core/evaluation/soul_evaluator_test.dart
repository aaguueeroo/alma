import 'package:flutter_test/flutter_test.dart';
import 'package:alma/core/evaluation/soul_evaluator.dart';
import 'package:alma/core/rules/evaluation_rules.dart';
import 'package:alma/core/models/soul.dart';
import 'package:alma/core/models/soul_subject.dart';
import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/skill.dart';
import 'package:alma/core/models/hidden_metrics.dart';
import 'package:alma/core/models/moral_impact.dart';
import 'package:alma/core/models/enums/soul_subject_type.dart';
import 'package:alma/core/models/enums/trait_type.dart';

void main() {
  late SoulEvaluator evaluator;

  setUp(() {
    evaluator = SoulEvaluator(evaluationRules: EvaluationRules());
  });

  LifeState createTestLifeState({
    HiddenMetrics? hiddenMetrics,
    List<TraitType>? traits,
    int age = 70,
    Map<String, dynamic>? lifeData,
    List<MoralImpact>? moralImpacts,
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
      lifeData: lifeData ?? const {},
      moralImpacts: moralImpacts ?? [],
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
    test('generateLifeSummary produces summary with lifeData and moralImpactSummary', () {
      final state = createTestLifeState(
        hiddenMetrics: const HiddenMetrics(compassion: 50.0, courage: 30.0),
      );
      final summary = evaluator.generateLifeSummary(state);
      expect(summary.ageAtDeath, 70);
      expect(summary.causeOfDeath, 'Old age');
      expect(summary.subjectContributions, isNotEmpty);
      expect(summary.lifeData['compassion'], 50.0);
      expect(summary.lifeData['courage'], 30.0);
      expect(summary.lifeData['age'], 70);
      expect(summary.moralImpactSummary, isNotNull);
      expect(summary.moralImpactSummary!.diversityScore, 0.0);
      expect(summary.moralImpactSummary!.totalImpactFor(SoulSubjectType.compassion), 0.0);
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
      final List<MoralImpact> impacts = List<MoralImpact>.generate(
        20,
        (i) => MoralImpact(
          axis: SoulSubjectType.discipline,
          weight: 1.0,
          contextMultiplier: 1.0,
          year: i + 1,
          wasDifficult: false,
        ),
      );
      final state = createTestLifeState(moralImpacts: impacts);
      final summary = evaluator.generateLifeSummary(state);
      final updatedSoul = evaluator.applySoulProgress(soul, summary);
      expect(updatedSoul.remainingLives, soul.remainingLives - 1);
      expect(updatedSoul.metaStats['totalLivesLived'], 1);
      expect(updatedSoul.metaStats['totalYearsLived'], 70);
      expect(updatedSoul.currentLifeId, isNull);
      final disciplineSubject = updatedSoul.subjects.firstWhere(
        (s) => s.type == SoulSubjectType.discipline,
      );
      expect(disciplineSubject.isPassed, isTrue);
    });

    test('subject passes when weighted impact rule matches', () {
      final soul = createTestSoul();
      final List<MoralImpact> impacts = <MoralImpact>[
        ...List<MoralImpact>.generate(
          14,
          (i) => MoralImpact(
            axis: SoulSubjectType.compassion,
            weight: 1.0,
            contextMultiplier: 1.0,
            year: i + 1,
            wasDifficult: false,
          ),
        ),
        MoralImpact(
          axis: SoulSubjectType.compassion,
          weight: 2.0,
          contextMultiplier: 1.0,
          year: 15,
          wasDifficult: true,
        ),
        MoralImpact(
          axis: SoulSubjectType.discipline,
          weight: 0.5,
          contextMultiplier: 1.0,
          year: 5,
          wasDifficult: false,
        ),
      ];
      final state = createTestLifeState(moralImpacts: impacts);
      final summary = evaluator.generateLifeSummary(state);
      final updatedSoul = evaluator.applySoulProgress(soul, summary);
      final compassionSubject = updatedSoul.subjects.firstWhere(
        (s) => s.type == SoulSubjectType.compassion,
      );
      expect(compassionSubject.isPassed, isTrue);
    });

    test('subject stays not passed when weighted impact rule does not match', () {
      final soul = createTestSoul();
      final state = createTestLifeState(
        moralImpacts: <MoralImpact>[
          MoralImpact(
            axis: SoulSubjectType.compassion,
            weight: 0.5,
            contextMultiplier: 1.0,
            year: 1,
            wasDifficult: false,
          ),
        ],
      );
      final summary = evaluator.generateLifeSummary(state);
      final updatedSoul = evaluator.applySoulProgress(soul, summary);
      final compassionSubject = updatedSoul.subjects.firstWhere(
        (s) => s.type == SoulSubjectType.compassion,
      );
      expect(compassionSubject.isPassed, isFalse);
    });
  });
}
