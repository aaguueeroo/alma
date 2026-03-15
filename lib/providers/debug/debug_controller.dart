import 'package:alma/core/models/action.dart';
import 'package:alma/core/models/event.dart';
import 'package:alma/core/models/health/condition.dart';
import 'package:alma/core/models/health/condition_definition.dart';
import 'package:alma/core/models/health/health_predisposition.dart';
import 'package:alma/core/models/health/health_state.dart';
import 'package:alma/core/models/hidden_metrics.dart';
import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/section.dart';
import 'package:alma/core/models/soul.dart';
import 'package:alma/core/models/soul_subject.dart';
import 'package:alma/core/models/skill.dart';
import 'package:alma/core/models/social/relationship.dart';
import 'package:alma/core/models/social/social_state.dart';
import 'package:alma/core/models/work/employment.dart';
import 'package:alma/core/models/work/work_state.dart';
import 'package:alma/core/models/enums/hidden_metric_type.dart';
import 'package:alma/core/models/enums/section_type.dart';
import 'package:alma/core/models/enums/skill_type.dart';
import 'package:alma/core/models/enums/soul_subject_type.dart';
import 'package:alma/app/constants/game_constants.dart';
import 'package:alma/core/engine/event_engine.dart';
import 'package:alma/providers/life/life_controller.dart';
import 'package:alma/providers/soul/soul_controller.dart';
import 'package:alma/core/engine/health_engine.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:alma/data/seed/seed_loader.dart';
import 'package:alma/providers/game/game_state_provider.dart';

class DebugController {
  DebugController({
    required this.lifeController,
    required this.soulController,
    required this.seedLoader,
    required this.healthEngine,
    required this.eventEngine,
  });

  final LifeController lifeController;
  final SoulController soulController;
  final SeedLoader seedLoader;
  final HealthEngine healthEngine;
  final EventEngine eventEngine;

  Life? get currentLife => lifeController.debugCurrentLife;
  Soul? get currentSoul => soulController.currentSoul;

  Future<List<ConditionDefinition>> getConditionDefinitions() async {
    if (healthEngine.isLoaded) {
      return healthEngine.getConditionDefinitions();
    }
    try {
      return await seedLoader.loadConditions();
    } catch (_) {
      return [];
    }
  }

  Future<List<GameEvent>> getAllEvents() async {
    final List<GameEvent> events = eventEngine.getAllEvents();
    if (events.isNotEmpty) return events;
    try {
      final List<GameEvent> mainEvents = await seedLoader.loadEvents();
      List<GameEvent> healthEvents = [];
      try {
        healthEvents = await seedLoader.loadHealthEvents();
      } catch (_) {}
      return [...mainEvents, ...healthEvents];
    } catch (_) {
      return [];
    }
  }

  Future<GameEvent?> getEventById(String id) async {
    final GameEvent? fromEngine = eventEngine.getEventById(id);
    if (fromEngine != null) return fromEngine;
    final List<GameEvent> events = await getAllEvents();
    try {
      return events.firstWhere((e) => e.id == id);
    } catch (_) {
      return null;
    }
  }

  Future<void> debugSetName(String value) async {
    final Life? life = currentLife;
    if (life == null) return;
    final Map<String, dynamic> updatedLifeData =
        Map<String, dynamic>.from(life.state.lifeData);
    updatedLifeData['name'] = value.isEmpty ? 'Unknown' : value;
    final LifeState newState = life.state.copyWith(lifeData: updatedLifeData);
    await lifeController.debugReplaceLife(life.copyWith(state: newState));
  }

  Future<void> debugSetMoney(int value) async {
    final Life? life = currentLife;
    if (life == null) return;
    final LifeState newState = life.state.copyWith(money: value);
    await lifeController.debugReplaceLife(life.copyWith(state: newState));
  }

  Future<void> debugSetHealth(int value) async {
    final Life? life = currentLife;
    if (life == null) return;
    final int clamped = value.clamp(kMinHealthValue, kMaxHealthValue);
    final LifeState newState = life.state.copyWith(health: clamped);
    await lifeController.debugReplaceLife(life.copyWith(state: newState));
  }

  Future<void> debugSetPhysicalHealth(double value) async {
    final Life? life = currentLife;
    if (life == null) return;
    final HealthState? healthState = life.state.healthState;
    if (healthState == null) return;
    final double clamped = value.clamp(0.0, kMaxHealthValue.toDouble());
    final HealthState newHealthState = healthState.copyWith(
      physicalHealth: clamped,
    );
    final LifeState newState = life.state.copyWith(
      healthState: newHealthState,
      health: clamped.round(),
    );
    await lifeController.debugReplaceLife(life.copyWith(state: newState));
  }

  Future<void> debugSetMentalHealth(double value) async {
    final Life? life = currentLife;
    if (life == null) return;
    final HealthState? healthState = life.state.healthState;
    if (healthState == null) return;
    final double clamped = value.clamp(0.0, kMaxHealthValue.toDouble());
    final HealthState newHealthState = healthState.copyWith(
      mentalHealth: clamped,
    );
    final LifeState newState = life.state.copyWith(
      healthState: newHealthState,
      health: clamped.round(),
    );
    await lifeController.debugReplaceLife(life.copyWith(state: newState));
  }

  Future<void> debugSetStress(double value) async {
    final Life? life = currentLife;
    if (life == null) return;
    final HealthState? healthState = life.state.healthState;
    if (healthState == null) return;
    final double clamped = value.clamp(0.0, 100.0);
    final HealthState newHealthState = healthState.copyWith(stress: clamped);
    final LifeState newState = life.state.copyWith(healthState: newHealthState);
    await lifeController.debugReplaceLife(life.copyWith(state: newState));
  }

  Future<void> debugSetSkill(SkillType type, int value) async {
    final Life? life = currentLife;
    if (life == null) return;
    final int clamped = value.clamp(kMinSkillValue, kMaxSkillValue);
    SkillSet newSkills = life.state.skills;
    switch (type) {
      case SkillType.intelligence:
        newSkills = newSkills.copyWith(intelligence: clamped);
        break;
      case SkillType.creativity:
        newSkills = newSkills.copyWith(creativity: clamped);
        break;
      case SkillType.communication:
        newSkills = newSkills.copyWith(communication: clamped);
        break;
      case SkillType.emotionalStability:
        newSkills = newSkills.copyWith(emotionalStability: clamped);
        break;
      case SkillType.fitness:
        newSkills = newSkills.copyWith(fitness: clamped);
        break;
    }
    final LifeState newState = life.state.copyWith(skills: newSkills);
    await lifeController.debugReplaceLife(life.copyWith(state: newState));
  }

  Future<void> debugSetHiddenMetric(HiddenMetricType type, double value) async {
    final Life? life = currentLife;
    if (life == null) return;
    HiddenMetrics newMetrics = life.state.hiddenMetrics;
    switch (type) {
      case HiddenMetricType.loyalty:
        newMetrics = newMetrics.copyWith(loyalty: value);
        break;
      case HiddenMetricType.compassion:
        newMetrics = newMetrics.copyWith(compassion: value);
        break;
      case HiddenMetricType.integrity:
        newMetrics = newMetrics.copyWith(integrity: value);
        break;
      case HiddenMetricType.ambition:
        newMetrics = newMetrics.copyWith(ambition: value);
        break;
      case HiddenMetricType.courage:
        newMetrics = newMetrics.copyWith(courage: value);
        break;
      case HiddenMetricType.humility:
        newMetrics = newMetrics.copyWith(humility: value);
        break;
      case HiddenMetricType.discipline:
        newMetrics = newMetrics.copyWith(discipline: value);
        break;
      case HiddenMetricType.curiosity:
        newMetrics = newMetrics.copyWith(curiosity: value);
        break;
    }
    final LifeState newState = life.state.copyWith(hiddenMetrics: newMetrics);
    await lifeController.debugReplaceLife(life.copyWith(state: newState));
  }

  Future<void> debugSetTimeRemaining(int value) async {
    final Life? life = currentLife;
    if (life == null) return;
    final int clamped = value.clamp(0, 365);
    final LifeState newState = life.state.copyWith(timeRemaining: clamped);
    await lifeController.debugReplaceLife(life.copyWith(state: newState));
  }

  Future<void> debugSetAge(int value) async {
    final Life? life = currentLife;
    if (life == null) return;
    final int clamped = value.clamp(0, kMaxAge);
    final LifeState newState = life.state.copyWith(age: clamped);
    await lifeController.debugReplaceLife(life.copyWith(state: newState));
  }

  Future<void> debugSetCurrentYear(int value) async {
    final Life? life = currentLife;
    if (life == null) return;
    final int clamped = value.clamp(1, 100);
    final LifeState newState = life.state.copyWith(currentYear: clamped);
    await lifeController.debugReplaceLife(life.copyWith(state: newState));
  }

  Future<void> debugSetSectionPerformance(SectionType type, int value) async {
    final Life? life = currentLife;
    if (life == null) return;
    final int clamped = value.clamp(
      kMinSectionPerformance,
      kMaxSectionPerformance,
    );
    final List<Section> sections = life.state.sections.map((s) {
      if (s.type == type) return s.copyWith(performance: clamped);
      return s;
    }).toList();
    final LifeState newState = life.state.copyWith(sections: sections);
    await lifeController.debugReplaceLife(life.copyWith(state: newState));
  }

  Future<void> debugSetWorkPerformance(String jobId, int value) async {
    final Life? life = currentLife;
    if (life == null) return;
    final workState = life.state.workState;
    if (workState == null) return;
    final int clamped = value.clamp(
      kMinSectionPerformance,
      kMaxSectionPerformance,
    );
    final List<Employment> employments = workState.currentEmployments.map((e) {
      if (e.jobId == jobId) return e.copyWith(performance: clamped);
      return e;
    }).toList();
    final WorkState newWorkState = workState.copyWith(
      currentEmployments: employments,
    );
    final LifeState newState = life.state.copyWith(workState: newWorkState);
    await lifeController.debugReplaceLife(life.copyWith(state: newState));
  }

  Future<void> debugSetRelationshipValue(String npcId, int value) async {
    final Life? life = currentLife;
    if (life == null) return;
    final int clamped = value.clamp(
      kMinRelationshipValue,
      kMaxRelationshipValue,
    );
    final List<Relationship> relationships =
        (life.state.socialState?.relationships ?? life.state.relationships).map(
          (r) {
            if (r.npc.id == npcId) return r.copyWith(value: clamped);
            return r;
          },
        ).toList();
    if (life.state.socialState != null) {
      final SocialState newSocialState = life.state.socialState!.copyWith(
        relationships: relationships,
      );
      final LifeState newState = life.state.copyWith(
        socialState: newSocialState,
      );
      await lifeController.debugReplaceLife(life.copyWith(state: newState));
    } else {
      final LifeState newState = life.state.copyWith(
        relationships: relationships,
      );
      await lifeController.debugReplaceLife(life.copyWith(state: newState));
    }
  }

  Future<void> debugAddCondition(ConditionDefinition def) async {
    final Life? life = currentLife;
    if (life == null) return;
    HealthState? healthState = life.state.healthState;
    if (healthState == null && healthEngine.isLoaded) {
      healthState = HealthState(
        physicalHealth: life.state.health.toDouble().clamp(0.0, 100.0),
        mentalHealth: life.state.health.toDouble().clamp(0.0, 100.0),
        predisposition: const HealthPredisposition(),
      );
    }
    if (healthState == null) return;
    if (healthState.conditions.any((c) => c.id == def.id)) return;
    final Condition condition = def.toCondition(
      startAge: life.state.age,
      isDiagnosed: true,
    );
    final HealthState newHealthState = healthState.copyWith(
      conditions: [...healthState.conditions, condition],
      diagnosedConditionIds: [...healthState.diagnosedConditionIds, def.id],
    );
    final LifeState newState = life.state.copyWith(healthState: newHealthState);
    await lifeController.debugReplaceLife(life.copyWith(state: newState));
  }

  Future<void> debugRemoveCondition(String conditionId) async {
    final Life? life = currentLife;
    if (life == null) return;
    final HealthState? healthState = life.state.healthState;
    if (healthState == null) return;
    final List<Condition> newConditions = healthState.conditions
        .where((c) => c.id != conditionId)
        .toList();
    final List<String> newDiagnosed = healthState.diagnosedConditionIds
        .where((id) => id != conditionId)
        .toList();
    final HealthState newHealthState = healthState.copyWith(
      conditions: newConditions,
      diagnosedConditionIds: newDiagnosed,
    );
    final LifeState newState = life.state.copyWith(healthState: newHealthState);
    await lifeController.debugReplaceLife(life.copyWith(state: newState));
  }

  Future<void> debugTriggerEvent(String eventId) async {
    final Life? life = currentLife;
    if (life == null) return;
    final GameEvent? event = await getEventById(eventId);
    if (event == null) return;
    final LifeState newState = life.state.copyWith(pendingEvent: event);
    await lifeController.debugReplaceLife(life.copyWith(state: newState));
  }

  Future<void> debugPerformAction(
    GameAction action, {
    String? workJobContext,
  }) async {
    await lifeController.performAction(action, workJobContext: workJobContext);
  }

  Future<void> debugSetRemainingLives(int value) async {
    final Soul? soul = currentSoul;
    if (soul == null) return;
    final int clamped = value.clamp(0, kDefaultMaxLives);
    await soulController.debugReplaceSoul(
      soul.copyWith(remainingLives: clamped),
    );
  }

  Future<void> debugSetSubjectPassed(
    SoulSubjectType type,
    bool isPassed,
  ) async {
    final Soul? soul = currentSoul;
    if (soul == null) return;
    final List<SoulSubject> newSubjects = soul.subjects.map((s) {
      if (s.type == type) return s.copyWith(isPassed: isPassed);
      return s;
    }).toList();
    await soulController.debugReplaceSoul(soul.copyWith(subjects: newSubjects));
  }

  Future<void> debugSetMetaStat(String key, int value) async {
    final Soul? soul = currentSoul;
    if (soul == null) return;
    final Map<String, int> newMetaStats = Map<String, int>.from(soul.metaStats);
    newMetaStats[key] = value;
    await soulController.debugReplaceSoul(
      soul.copyWith(metaStats: newMetaStats),
    );
  }

  Future<void> debugClearCurrentLife() async {
    final Soul? soul = currentSoul;
    if (soul == null) return;
    await soulController.debugReplaceSoul(soul.copyWith(currentLifeId: null));
  }
}

final debugControllerProvider = Provider<DebugController>((ref) {
  return DebugController(
    lifeController: ref.watch(lifeControllerProvider.notifier),
    soulController: ref.watch(soulControllerProvider.notifier),
    seedLoader: ref.watch(seedLoaderProvider),
    healthEngine: ref.watch(healthEngineProvider),
    eventEngine: ref.watch(eventEngineProvider),
  );
});
