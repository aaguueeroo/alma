import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:alma/data/database/app_database.dart';
import 'package:alma/data/repositories/soul_repository.dart';
import 'package:alma/data/repositories/life_repository.dart';
import 'package:alma/data/repositories/achievement_repository.dart';
import 'package:alma/data/seed/seed_loader.dart';
import 'package:alma/core/engine/time_engine.dart';
import 'package:alma/core/engine/event_engine.dart';
import 'package:alma/core/engine/health_engine.dart';
import 'package:alma/core/engine/education_engine.dart';
import 'package:alma/core/engine/work_engine.dart';
import 'package:alma/core/engine/social_engine.dart';
import 'package:alma/core/engine/npc_factory.dart';
import 'package:alma/core/engine/probability_engine.dart';
import 'package:alma/core/engine/life_engine.dart';
import 'package:alma/core/rules/trait_rules.dart';
import 'package:alma/core/rules/habit_rules.dart';
import 'package:alma/core/rules/evaluation_rules.dart';
import 'package:alma/core/simulation/action_processor.dart';
import 'package:alma/core/simulation/relationship_processor.dart';
import 'package:alma/core/simulation/habit_processor.dart';
import 'package:alma/core/evaluation/soul_evaluator.dart';

final databaseProvider = Provider<AppDatabase>((ref) {
  final db = AppDatabase();
  ref.onDispose(() => db.close());
  return db;
});

final seedLoaderProvider = Provider<SeedLoader>((ref) {
  return SeedLoader();
});

final soulRepositoryProvider = Provider<SoulRepository>((ref) {
  return SoulRepository(database: ref.watch(databaseProvider));
});

final lifeRepositoryProvider = Provider<LifeRepository>((ref) {
  return LifeRepository(database: ref.watch(databaseProvider));
});

final achievementRepositoryProvider = Provider<AchievementRepository>((ref) {
  return AchievementRepository(database: ref.watch(databaseProvider));
});

final healthEngineProvider = Provider<HealthEngine>((ref) {
  return HealthEngine();
});

final timeEngineProvider = Provider<TimeEngine>((ref) {
  return TimeEngine(healthEngine: ref.watch(healthEngineProvider));
});

final probabilityEngineProvider = Provider<ProbabilityEngine>((ref) {
  return ProbabilityEngine();
});

final eventEngineProvider = Provider<EventEngine>((ref) {
  return EventEngine(
    probabilityEngine: ref.watch(probabilityEngineProvider),
  );
});

final traitRulesProvider = Provider<TraitRules>((ref) {
  return TraitRules();
});

final habitRulesProvider = Provider<HabitRules>((ref) {
  return HabitRules();
});

final evaluationRulesProvider = Provider<EvaluationRules>((ref) {
  return EvaluationRules();
});

final relationshipProcessorProvider = Provider<RelationshipProcessor>((ref) {
  return RelationshipProcessor(socialEngine: ref.watch(socialEngineProvider));
});

final habitProcessorProvider = Provider<HabitProcessor>((ref) {
  return HabitProcessor(habitRules: ref.watch(habitRulesProvider));
});

final educationEngineProvider = Provider<EducationEngine>((ref) {
  return EducationEngine();
});

final workEngineProvider = Provider<WorkEngine>((ref) {
  return WorkEngine();
});

final npcFactoryProvider = Provider<NpcFactory>((ref) {
  return NpcFactory();
});

final socialEngineProvider = Provider<SocialEngine>((ref) {
  return SocialEngine();
});

final actionProcessorProvider = Provider<ActionProcessor>((ref) {
  return ActionProcessor(
    timeEngine: ref.watch(timeEngineProvider),
    healthEngine: ref.watch(healthEngineProvider),
    eventEngine: ref.watch(eventEngineProvider),
    educationEngine: ref.watch(educationEngineProvider),
    workEngine: ref.watch(workEngineProvider),
    socialEngine: ref.watch(socialEngineProvider),
    traitRules: ref.watch(traitRulesProvider),
    relationshipProcessor: ref.watch(relationshipProcessorProvider),
    habitProcessor: ref.watch(habitProcessorProvider),
  );
});

final lifeEngineProvider = Provider<LifeEngine>((ref) {
  return LifeEngine(
    actionProcessor: ref.watch(actionProcessorProvider),
    healthEngine: ref.watch(healthEngineProvider),
    eventEngine: ref.watch(eventEngineProvider),
    educationEngine: ref.watch(educationEngineProvider),
    workEngine: ref.watch(workEngineProvider),
    socialEngine: ref.watch(socialEngineProvider),
  );
});

final soulEvaluatorProvider = Provider<SoulEvaluator>((ref) {
  return SoulEvaluator(evaluationRules: ref.watch(evaluationRulesProvider));
});
