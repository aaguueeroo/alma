import 'package:flutter_riverpod/legacy.dart';
import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/life_template.dart';
import 'package:alma/core/models/name_repository.dart';
import 'package:alma/core/models/action.dart';
import 'package:alma/core/models/health/health_state.dart';
import 'package:alma/core/models/health/health_predisposition.dart';
import 'package:alma/core/models/health/health_action.dart';
import 'package:alma/core/models/health/health_action_type.dart';
import 'package:alma/core/models/health/health_log_templates.dart';
import 'package:alma/core/models/enums/action_category.dart';
import 'package:alma/core/models/event.dart';
import 'package:alma/core/models/social/relationship.dart';
import 'package:alma/core/models/education/education_program.dart';
import 'package:alma/core/models/education/enrollment.dart';
import 'package:alma/core/models/work/job.dart';
import 'package:alma/core/models/work/employment.dart';
import 'package:alma/core/models/social/social_action_result.dart';
import 'package:alma/core/models/social/social_state.dart';
import 'package:alma/core/engine/life_engine.dart';
import 'package:alma/core/engine/education_engine.dart';
import 'package:alma/core/engine/health_engine.dart';
import 'package:alma/core/engine/work_engine.dart';
import 'package:alma/core/engine/social_engine.dart';
import 'package:alma/core/engine/npc_factory.dart';
import 'package:alma/core/engine/time_engine.dart';
import 'package:alma/core/engine/seeded_random.dart';
import 'package:alma/data/repositories/life_repository.dart';
import 'package:alma/data/seed/seed_loader.dart';
import 'package:alma/core/engine/event_engine.dart';
import 'package:alma/core/engine/game_logger.dart';
import 'package:alma/core/engine/player_name_generator.dart';
import 'package:alma/core/models/enums/log_category.dart';
import 'package:alma/providers/game/game_state_provider.dart';
import 'package:alma/app/utils/error_logger.dart';

class LifeControllerState {
  const LifeControllerState({
    this.currentLife,
    this.availableActions = const [],
    this.educationActions = const [],
    this.workActions = const [],
    this.socialActions = const [],
    this.isLoading = false,
    this.error,
  });

  final Life? currentLife;
  final List<GameAction> availableActions;
  final List<GameAction> educationActions;
  final List<GameAction> workActions;
  final List<GameAction> socialActions;
  final bool isLoading;
  final String? error;

  LifeControllerState copyWith({
    Life? currentLife,
    bool clearLife = false,
    List<GameAction>? availableActions,
    List<GameAction>? educationActions,
    List<GameAction>? workActions,
    List<GameAction>? socialActions,
    bool? isLoading,
    String? error,
    bool clearError = false,
  }) {
    return LifeControllerState(
      currentLife: clearLife ? null : (currentLife ?? this.currentLife),
      availableActions: availableActions ?? this.availableActions,
      educationActions: educationActions ?? this.educationActions,
      workActions: workActions ?? this.workActions,
      socialActions: socialActions ?? this.socialActions,
      isLoading: isLoading ?? this.isLoading,
      error: clearError ? null : (error ?? this.error),
    );
  }
}

class LifeController extends StateNotifier<LifeControllerState> {
  LifeController({
    required this.lifeEngine,
    required this.lifeRepository,
    required this.seedLoader,
    required this.healthEngine,
    required this.eventEngine,
    required this.educationEngine,
    required this.workEngine,
    required this.socialEngine,
    required this.npcFactory,
    required this.timeEngine,
  }) : super(const LifeControllerState());

  final LifeEngine lifeEngine;
  final LifeRepository lifeRepository;
  final SeedLoader seedLoader;
  final HealthEngine healthEngine;
  final EventEngine eventEngine;
  final EducationEngine educationEngine;
  final WorkEngine workEngine;
  final SocialEngine socialEngine;
  final NpcFactory npcFactory;
  final TimeEngine timeEngine;

  Future<void> loadLife(Life life) async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final List<GameAction> actions = await seedLoader.loadActions();
      final List<GameEvent> events = await seedLoader.loadEvents();
      try {
        final List<GameEvent> healthEvents = await seedLoader
            .loadHealthEvents();
        eventEngine.loadEvents([...events, ...healthEvents]);
        eventEngine.loadHealthEventIds(healthEvents.map((e) => e.id).toSet());
      } catch (_) {
        eventEngine.loadEvents(events);
      }
      final String country = 'default';
      final programs = await seedLoader.loadEducationPrograms();
      final countryConfig = await seedLoader.loadEducationCountryConfig(
        country,
      );
      final eduActions = await seedLoader.loadEducationActions();
      educationEngine.loadData(
        countryConfig: countryConfig,
        programs: programs,
        educationActions: eduActions,
      );
      final lifeMaintenance = await seedLoader.loadLifeMaintenance();
      timeEngine.loadLifeMaintenance(lifeMaintenance);
      List<GameAction> workActions = [];
      try {
        final jobs = await seedLoader.loadJobs();
        final workCountryConfig = await seedLoader.loadWorkCountryConfig(
          country,
        );
        final workActs = await seedLoader.loadWorkActions();
        workEngine.loadData(
          countryConfig: workCountryConfig,
          jobs: jobs,
          workActions: workActs,
        );
        workActions = workActs;
      } catch (e) {
        print('Work data not loaded (asset missing or invalid): $e');
      }
      List<GameAction> socialActions = [];
      try {
        final socialActs = await seedLoader.loadSocialActions();
        final relationshipTypes = await seedLoader.loadRelationshipTypes();
        final socialCountryConfig = await seedLoader.loadSocialCountryConfig(
          country,
        );
        final nameRepo = await seedLoader.loadNameRepository(country);
        npcFactory.loadNameRepository(nameRepo);
        final defaultNameRepo = await seedLoader.loadNameRepository('default');
        npcFactory.loadNameRepository(defaultNameRepo);
        socialEngine.loadData(
          countryConfig: socialCountryConfig,
          relationshipTypes: relationshipTypes,
          socialActions: socialActs,
          npcFactory: npcFactory,
        );
        socialActions = socialActs;
      } catch (e) {
        print('Social data not loaded (asset missing or invalid): $e');
      }
      try {
        final conditions = await seedLoader.loadConditions();
        final symptoms = await seedLoader.loadSymptoms();
        final healthActions = await seedLoader.loadHealthActions();
        final logTemplates = await seedLoader.loadHealthLogTemplates();
        healthEngine.loadData(
          conditionDefinitions: conditions,
          symptoms: symptoms,
          healthActions: healthActions,
          logTemplates: logTemplates,
        );
        eventEngine.loadLogTemplates(logTemplates);
      } catch (e) {
        print('Health data not loaded (asset missing or invalid): $e');
      }
      Life lifeToSet = life;
      final String? existingName = life.state.lifeData['name'] as String?;
      if (existingName == null ||
          existingName.isEmpty ||
          existingName == 'Unknown') {
        try {
          final List<LifeTemplate> templates =
              await seedLoader.loadLifeTemplates();
          final LifeTemplate? template = templates
              .where((LifeTemplate t) => t.id == life.templateId)
              .firstOrNull;
          final String country = template?.country ?? 'default';
          final NameRepository nameRepo =
              await seedLoader.loadNameRepository(country);
          final String name = PlayerNameGenerator.generate(
            nameRepo,
            SeededRandom(life.seed),
          );
          final Map<String, dynamic> updatedLifeData =
              Map<String, dynamic>.from(life.state.lifeData);
          updatedLifeData['name'] = name;
          lifeToSet = life.copyWith(
            state: life.state.copyWith(lifeData: updatedLifeData),
          );
          await lifeRepository.saveLife(lifeToSet);
        } catch (e, stackTrace) {
          ErrorLogger.logError(e, stackTrace, 'loadLife: backfillName');
        }
      }
      if (lifeToSet.state.healthState == null && healthEngine.isLoaded) {
        final double h = lifeToSet.state.health.toDouble().clamp(0.0, 100.0);
        final healthState = HealthState(
          physicalHealth: h,
          mentalHealth: h,
          predisposition: const HealthPredisposition(),
        );
        lifeToSet = lifeToSet.copyWith(
          state: lifeToSet.state.copyWith(healthState: healthState),
        );
        await lifeRepository.saveLife(lifeToSet);
      }
      final SocialState? loadedSocial = lifeToSet.state.socialState;
      if (loadedSocial != null &&
          socialEngine.isLoaded &&
          loadedSocial.relationships.any(
            (Relationship r) => r.actionIdsThisYear.isEmpty,
          )) {
        final SeededRandom rng = SeededRandom(
          lifeToSet.seed +
              lifeToSet.state.currentYear * 700 +
              lifeToSet.state.age,
        );
        final List<Relationship> updatedRels = loadedSocial.relationships.map((
          Relationship rel,
        ) {
          if (rel.actionIdsThisYear.isNotEmpty) return rel;
          final List<String> ids = socialEngine.pickYearlyActionIdsForNpc(
            rel,
            lifeToSet.state,
            rng,
          );
          return rel.copyWith(actionIdsThisYear: ids);
        }).toList();
        lifeToSet = lifeToSet.copyWith(
          state: lifeToSet.state.copyWith(
            socialState: loadedSocial.copyWith(relationships: updatedRels),
          ),
        );
        await lifeRepository.saveLife(lifeToSet);
      }
      // Migrate legacy lives that have relationships but no socialState (e.g. created before social engine was loaded).
      if (loadedSocial == null &&
          socialEngine.isLoaded &&
          lifeToSet.state.relationships.isNotEmpty) {
        final SeededRandom rng = SeededRandom(
          lifeToSet.seed +
              lifeToSet.state.currentYear * 700 +
              lifeToSet.state.age,
        );
        SocialState initialized = socialEngine.initializeSocial(
          lifeToSet.state.relationships,
        );
        final List<String> genericIds = socialEngine.pickYearlyGenericActionIds(
          lifeToSet.state,
          rng,
        );
        initialized = initialized.copyWith(
          genericActionIdsThisYear: genericIds,
        );
        final List<Relationship> relsWithActions = initialized.relationships
            .map((Relationship rel) {
              final List<String> ids = socialEngine.pickYearlyActionIdsForNpc(
                rel,
                lifeToSet.state,
                rng,
              );
              return rel.copyWith(actionIdsThisYear: ids);
            })
            .toList();
        initialized = initialized.copyWith(relationships: relsWithActions);
        lifeToSet = lifeToSet.copyWith(
          state: lifeToSet.state.copyWith(socialState: initialized),
        );
        await lifeRepository.saveLife(lifeToSet);
      }
      state = state.copyWith(
        currentLife: lifeToSet,
        availableActions: actions,
        educationActions: eduActions,
        workActions: workActions,
        socialActions: socialActions,
        isLoading: false,
      );
    } catch (e, stackTrace) {
      ErrorLogger.logError(e, stackTrace, 'loadLife');
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<bool> loadLifeById(String lifeId) async {
    try {
      final Life? life = await lifeRepository.getLifeById(lifeId);
      if (life == null || life.isComplete) return false;
      await loadLife(life);
      return true;
    } catch (e, stackTrace) {
      ErrorLogger.logError(e, stackTrace, 'loadLifeById');
      return false;
    }
  }

  Future<void> performAction(
    GameAction action, {
    String? workJobContext,
  }) async {
    if (state.currentLife == null) return;
    if (action.category == ActionCategory.work && isWorkBlockedByHealth) {
      return;
    }
    if (action.category == ActionCategory.education && isStudyBlockedByHealth) {
      return;
    }
    try {
      final Life updatedLife = lifeEngine.performAction(
        state.currentLife!,
        action,
        workJobContext: workJobContext,
      );
      await lifeRepository.saveLife(updatedLife);
      state = state.copyWith(currentLife: updatedLife);
    } catch (e, stackTrace) {
      ErrorLogger.logError(e, stackTrace, 'performAction');
      state = state.copyWith(error: e.toString());
    }
  }

  Future<void> resolveEvent(int choiceIndex) async {
    if (state.currentLife == null) return;
    try {
      final Life updatedLife = lifeEngine.resolveEvent(
        state.currentLife!,
        choiceIndex,
      );
      await lifeRepository.saveLife(updatedLife);
      state = state.copyWith(currentLife: updatedLife);
    } catch (e, stackTrace) {
      ErrorLogger.logError(e, stackTrace, 'resolveEvent');
      state = state.copyWith(error: e.toString());
    }
  }

  Future<void> progressYear() async {
    if (state.currentLife == null) return;
    try {
      final Life updatedLife = lifeEngine.progressYear(state.currentLife!);
      await lifeRepository.saveLife(updatedLife);
      state = state.copyWith(currentLife: updatedLife);
    } catch (e, stackTrace) {
      ErrorLogger.logError(e, stackTrace, 'progressYear');
      state = state.copyWith(error: e.toString());
    }
  }

  Future<void> enrollInProgram(
    EducationProgram program, {
    int? initialPerformance,
  }) async {
    if (state.currentLife == null) return;
    try {
      final LifeState newState = educationEngine.enrollInProgram(
        state.currentLife!.state,
        program,
        initialPerformance: initialPerformance,
      );
      final Life updatedLife = state.currentLife!.copyWith(state: newState);
      await lifeRepository.saveLife(updatedLife);
      state = state.copyWith(currentLife: updatedLife);
    } catch (e) {
      print('Error enrolling in program: $e');
      state = state.copyWith(error: e.toString());
    }
  }

  Future<void> declineEnrollment() async {
    if (state.currentLife == null) return;
    try {
      final LifeState newState = educationEngine.declineEnrollment(
        state.currentLife!.state,
      );
      final Life updatedLife = state.currentLife!.copyWith(state: newState);
      await lifeRepository.saveLife(updatedLife);
      state = state.copyWith(currentLife: updatedLife);
    } catch (e) {
      print('Error declining enrollment: $e');
      state = state.copyWith(error: e.toString());
    }
  }

  bool get canDropOutFromCurrentEnrollment {
    final Enrollment? enrollment = currentEnrollment;
    if (enrollment == null) return false;
    return educationEngine.canDropOut(enrollment.level);
  }

  Future<void> dropOut() async {
    if (state.currentLife == null) return;
    try {
      final LifeState newState = educationEngine.dropOut(
        state.currentLife!.state,
      );
      final Life updatedLife = state.currentLife!.copyWith(state: newState);
      await lifeRepository.saveLife(updatedLife);
      state = state.copyWith(currentLife: updatedLife);
    } catch (e) {
      print('Error dropping out: $e');
      state = state.copyWith(error: e.toString());
    }
  }

  List<GameAction> getEducationActions() {
    final Life? life = state.currentLife;
    if (life == null) return [];
    final Enrollment? enrollment = life.state.educationState?.currentEnrollment;
    if (enrollment == null) return [];
    final SeededRandom rng = SeededRandom(
      life.seed + life.state.currentYear * 100 + life.state.age,
    );
    return educationEngine.pickYearlyActions(enrollment, rng);
  }

  List<EducationProgram> getAvailableProgramsForEnrollment() {
    final Life? life = state.currentLife;
    if (life == null) return [];
    if (healthEngine.isLoaded &&
        healthEngine.blocksStudy(life.state.healthState)) {
      return [];
    }
    return educationEngine.getAvailableProgramsForEnrollment(life.state);
  }

  bool get isLifeOver => state.currentLife?.state.isDead ?? false;

  bool get hasPendingEvent => state.currentLife?.state.pendingEvent != null;

  bool get hasEducationPrompt =>
      state.currentLife?.state.educationState?.pendingPrompt != null;

  Enrollment? get currentEnrollment =>
      state.currentLife?.state.educationState?.currentEnrollment;

  bool get hasTimeRemaining =>
      (state.currentLife?.state.timeRemaining ?? 0) > 0;

  bool get isWorkBlockedByHealth {
    final Life? life = state.currentLife;
    if (life == null || !healthEngine.isLoaded) return false;
    return healthEngine.blocksWork(life.state.healthState);
  }

  bool get isStudyBlockedByHealth {
    final Life? life = state.currentLife;
    if (life == null || !healthEngine.isLoaded) return false;
    return healthEngine.blocksStudy(life.state.healthState);
  }

  int get workPerformancePenalty {
    final Life? life = state.currentLife;
    if (life == null || !healthEngine.isLoaded) return 0;
    return healthEngine.getWorkPerformancePenalty(life.state.healthState);
  }

  int get studyPerformancePenalty {
    final Life? life = state.currentLife;
    if (life == null || !healthEngine.isLoaded) return 0;
    return healthEngine.getStudyPerformancePenalty(life.state.healthState);
  }

  List<Job> getAvailableJobs() {
    final Life? life = state.currentLife;
    if (life == null) return [];
    if (healthEngine.isLoaded &&
        healthEngine.blocksWork(life.state.healthState)) {
      return [];
    }
    final SeededRandom rng = SeededRandom(
      life.seed + life.state.currentYear * 200 + life.state.age,
    );
    return workEngine.getAvailableJobs(life.state, rng);
  }

  Future<void> applyToJob(Job job) async {
    if (state.currentLife == null) return;
    try {
      final SeededRandom rng = SeededRandom(
        state.currentLife!.seed +
            state.currentLife!.state.currentYear * 300 +
            state.currentLife!.state.age,
      );
      final LifeState newState = workEngine.applyToJob(
        state.currentLife!.state,
        job,
        rng,
      );
      final Life updatedLife = state.currentLife!.copyWith(state: newState);
      await lifeRepository.saveLife(updatedLife);
      state = state.copyWith(currentLife: updatedLife);
    } catch (e) {
      print('Error applying to job: $e');
      state = state.copyWith(error: e.toString());
    }
  }

  Future<void> quitJob(String jobId) async {
    if (state.currentLife == null) return;
    try {
      final LifeState newState = workEngine.quitJob(
        state.currentLife!.state,
        jobId,
      );
      final Life updatedLife = state.currentLife!.copyWith(state: newState);
      await lifeRepository.saveLife(updatedLife);
      state = state.copyWith(currentLife: updatedLife);
    } catch (e) {
      print('Error quitting job: $e');
      state = state.copyWith(error: e.toString());
    }
  }

  Future<void> requestPromotion(String jobId) async {
    if (state.currentLife == null) return;
    try {
      final SeededRandom rng = SeededRandom(
        state.currentLife!.seed +
            state.currentLife!.state.currentYear * 400 +
            state.currentLife!.state.age,
      );
      final LifeState newState = workEngine.requestPromotion(
        state.currentLife!.state,
        jobId,
        rng,
      );
      final Life updatedLife = state.currentLife!.copyWith(state: newState);
      await lifeRepository.saveLife(updatedLife);
      state = state.copyWith(currentLife: updatedLife);
    } catch (e) {
      print('Error requesting promotion: $e');
      state = state.copyWith(error: e.toString());
    }
  }

  Future<void> dismissWorkPrompt() async {
    if (state.currentLife == null) return;
    try {
      final LifeState newState = workEngine.dismissPrompt(
        state.currentLife!.state,
      );
      final Life updatedLife = state.currentLife!.copyWith(state: newState);
      await lifeRepository.saveLife(updatedLife);
      state = state.copyWith(currentLife: updatedLife);
    } catch (e) {
      print('Error dismissing work prompt: $e');
      state = state.copyWith(error: e.toString());
    }
  }

  Map<String, List<GameAction>> getWorkActions() {
    final Life? life = state.currentLife;
    if (life == null) return {};
    final List<Employment> employments =
        life.state.workState?.currentEmployments ?? [];
    if (employments.isEmpty) return {};
    final SeededRandom rng = SeededRandom(
      life.seed + life.state.currentYear * 500 + life.state.age,
    );
    final Map<String, List<GameAction>> allByJob = workEngine.pickYearlyActions(
      employments,
      rng,
    );
    final Map<String, List<GameAction>> performedByJob =
        life.state.workState?.performedActionsByJobIdThisYear ?? {};
    final Map<String, List<GameAction>> result = {};
    for (final MapEntry<String, List<GameAction>> entry in allByJob.entries) {
      final Set<String> performedIds = (performedByJob[entry.key] ?? [])
          .map((GameAction a) => a.id)
          .toSet();
      result[entry.key] = entry.value
          .where((GameAction a) => !performedIds.contains(a.id))
          .toList();
    }
    return result;
  }

  bool get hasWorkPrompt =>
      state.currentLife?.state.workState?.pendingPrompt != null;

  List<Employment> get currentEmployments =>
      state.currentLife?.state.workState?.currentEmployments ?? [];

  List<GameAction> getSocialGenericActions() {
    final Life? life = state.currentLife;
    if (life == null) return [];
    final SeededRandom rng = SeededRandom(
      life.seed + life.state.currentYear * 600 + life.state.age,
    );
    return socialEngine.pickYearlyGenericActions(life.state, rng);
  }

  List<GameAction> getNpcActions(String npcId) {
    final Life? life = state.currentLife;
    if (life == null) return [];
    final List<Relationship> relationships =
        life.state.socialState?.relationships ?? life.state.relationships;
    final Relationship? rel = relationships
        .where((Relationship r) => r.npc.id == npcId)
        .firstOrNull;
    if (rel == null) return [];
    final SeededRandom rng = SeededRandom(
      life.seed +
          life.state.currentYear * 700 +
          life.state.age +
          npcId.hashCode,
    );
    return socialEngine.pickYearlyActionsForNpc(rel, life.state, rng);
  }

  /// Returns the actions performed with this NPC this year (for display; resets each year).
  List<GameAction> getPerformedActionsThisYear(String npcId) {
    final Life? life = state.currentLife;
    if (life == null) return [];
    final List<Relationship> relationships =
        life.state.socialState?.relationships ?? life.state.relationships;
    final Relationship? rel = relationships
        .where((Relationship r) => r.npc.id == npcId)
        .firstOrNull;
    if (rel == null || rel.usedActionIdsThisYear.isEmpty) return [];
    final Map<String, GameAction> byId = {
      for (final GameAction a in state.socialActions) a.id: a,
    };
    return rel.usedActionIdsThisYear
        .map((String id) => byId[id])
        .whereType<GameAction>()
        .toList();
  }

  Future<SocialActionResult?> performSocialAction(
    GameAction action,
    List<String> targetNpcIds,
  ) async {
    if (state.currentLife == null) return null;
    try {
      final SeededRandom rng = SeededRandom(
        state.currentLife!.seed +
            state.currentLife!.state.currentYear * 800 +
            state.currentLife!.state.age,
      );
      final (LifeState newState, SocialActionResult? result) =
          socialEngine.performSocialAction(
        state.currentLife!.state,
        action,
        targetNpcIds,
        rng,
        seed: state.currentLife!.seed,
      );
      final Life updatedLife = state.currentLife!.copyWith(state: newState);
      final Life finalLife = lifeEngine.performAction(updatedLife, action);
      await lifeRepository.saveLife(finalLife);
      state = state.copyWith(currentLife: finalLife);
      return result;
    } catch (e, stackTrace) {
      ErrorLogger.logError(e, stackTrace, 'performSocialAction');
      state = state.copyWith(error: e.toString());
      return null;
    }
  }

  List<Relationship> get socialRelationships {
    return state.currentLife?.state.socialState?.relationships ??
        state.currentLife?.state.relationships ??
        [];
  }

  /// Returns the relationship type label (e.g. "Mother", "Father") when available; null to fall back to role-based l10n.
  String? getRelationshipTypeLabel(String typeId) {
    if (!socialEngine.isLoaded) return null;
    return socialEngine.getSubtype(typeId)?.label;
  }

  /// When false, attraction is not applicable (e.g. family); chart should show 0 for attraction.
  bool isAttractionAllowedForRelationshipType(String typeId) {
    if (!socialEngine.isLoaded) return true;
    return socialEngine.getSubtype(typeId)?.attractionAllowed ?? true;
  }

  void clearLife() {
    state = state.copyWith(clearLife: true);
  }

  /// Replaces the current life with the given one (for debug use).
  /// Saves to repository and updates state.
  Future<void> debugReplaceLife(Life life) async {
    try {
      await lifeRepository.saveLife(life);
      state = state.copyWith(currentLife: life);
    } catch (e, stackTrace) {
      ErrorLogger.logError(e, stackTrace, 'debugReplaceLife');
      state = state.copyWith(error: e.toString());
    }
  }

  /// Clears the current error message (e.g. after the user has acknowledged it).
  void clearError() {
    state = state.copyWith(clearError: true);
  }

  /// Returns the current life (for debug use).
  Life? get debugCurrentLife => state.currentLife;

  List<HealthAction> getHospitalActions() {
    if (state.currentLife == null || !healthEngine.isLoaded) return [];
    return healthEngine.getAvailableHospitalActions(
      state.currentLife!.state.healthState,
    );
  }

  List<HealthAction> getGeneralHealthActions() {
    final Life? life = state.currentLife;
    if (life == null || !healthEngine.isLoaded) return [];
    final HealthState? healthState = life.state.healthState;
    if (healthState == null) return [];
    final Set<String> diagnosedButNotTreatedIds = healthState.conditions
        .where((c) => c.isDiagnosed && !c.isTreated)
        .map((c) => c.id)
        .toSet();
    final List<String> ids = healthState.generalActionIdsThisYear;
    final List<String> performed =
        healthState.performedGeneralActionIdsThisYear;
    return healthEngine
        .getHealthActionsByIds(ids)
        .where((a) => !performed.contains(a.id))
        .where((a) {
          if (a.requiresDiagnosedConditionIds.isEmpty) return true;
          return a.requiresDiagnosedConditionIds.any(
            (id) => diagnosedButNotTreatedIds.contains(id),
          );
        })
        .toList();
  }

  String _resolveHealthActionLogMessage(
    HealthAction action, {
    required int newlyDiagnosedCount,
    required int newlyTreatedCount,
  }) {
    final bool canDiagnose = action.canDiagnoseConditionIds.isNotEmpty;
    final bool hasFindings =
        newlyDiagnosedCount > 0 || newlyTreatedCount > 0;
    if (canDiagnose && newlyDiagnosedCount > 0 &&
        action.logMessageWhenDiagnosed != null) {
      return action.logMessageWhenDiagnosed!;
    }
    if (hasFindings && newlyTreatedCount > 0 &&
        action.logMessageWhenTreated != null) {
      return action.logMessageWhenTreated!;
    }
    if (canDiagnose && !hasFindings &&
        action.logMessageWhenAllClear != null) {
      return action.logMessageWhenAllClear!;
    }
    return action.logMessage ?? 'You took a step to care for your health.';
  }

  Future<void> performHealthAction(HealthAction action) async {
    if (state.currentLife == null || !healthEngine.isLoaded) return;
    try {
      final Life life = state.currentLife!;
      final SeededRandom rng = SeededRandom(
        life.seed + life.state.currentYear * 1000 + life.state.age,
      );
      HealthState? healthState = life.state.healthState;
      if (healthState == null) return;
      final Set<String> diagnosedBefore = healthState.diagnosedConditionIds
          .toSet();
      final Map<String, bool> treatedBefore = {
        for (final c in healthState.conditions) c.id: c.isTreated,
      };
      if (action.type == HealthActionType.hospital) {
        healthState = healthEngine.performHospitalAction(
          healthState,
          action,
          life.state,
          rng,
        );
      } else {
        healthState = healthEngine.performGeneralAction(
          healthState,
          action,
          rng,
        );
      }
      final int newlyDiagnosedCount = healthState.diagnosedConditionIds
          .where((id) => !diagnosedBefore.contains(id))
          .length;
      final int newlyTreatedCount = healthState.conditions
          .where((c) => c.isTreated && (treatedBefore[c.id] != true))
          .length;
      final String actionLogMessage = _resolveHealthActionLogMessage(
        action,
        newlyDiagnosedCount: newlyDiagnosedCount,
        newlyTreatedCount: newlyTreatedCount,
      );
      LifeState newLifeState = life.state.copyWith(healthState: healthState);
      newLifeState = GameLogger.addLog(
        newLifeState,
        message: actionLogMessage,
        category: LogCategory.health,
        tags: ['health_action:${action.id}'],
      );
      final HealthLogTemplates? templates = healthEngine.logTemplates;
      for (final condId in healthState.diagnosedConditionIds) {
        if (!diagnosedBefore.contains(condId)) {
          final String condName =
              healthState.conditions
                  .where((c) => c.id == condId)
                  .firstOrNull
                  ?.name ??
              condId;
          final String message = templates != null
              ? templates.resolveHealth(
                  'conditionDiagnosed',
                  {'name': condName},
                )
              : '$condName was diagnosed.';
          newLifeState = GameLogger.addLog(
            newLifeState,
            message: message,
            category: LogCategory.health,
            tags: ['condition_diagnosed:$condId'],
          );
        }
      }
      for (final cond in healthState.conditions) {
        if (cond.isTreated && (treatedBefore[cond.id] != true)) {
          final String message = templates != null
              ? templates.resolveHealth(
                  'conditionTreated',
                  {'name': cond.name},
                )
              : 'You began treatment for ${cond.name}.';
          newLifeState = GameLogger.addLog(
            newLifeState,
            message: message,
            category: LogCategory.health,
            tags: ['condition_treated:${cond.id}'],
          );
        }
      }
      final Life updatedLife = life.copyWith(state: newLifeState);
      await lifeRepository.saveLife(updatedLife);
      state = state.copyWith(currentLife: updatedLife);
    } catch (e, stackTrace) {
      ErrorLogger.logError(e, stackTrace, 'performHealthAction');
      state = state.copyWith(error: e.toString());
    }
  }
}

final lifeControllerProvider =
    StateNotifierProvider<LifeController, LifeControllerState>((ref) {
      return LifeController(
        lifeEngine: ref.watch(lifeEngineProvider),
        lifeRepository: ref.watch(lifeRepositoryProvider),
        seedLoader: ref.watch(seedLoaderProvider),
        healthEngine: ref.watch(healthEngineProvider),
        eventEngine: ref.watch(eventEngineProvider),
        educationEngine: ref.watch(educationEngineProvider),
        workEngine: ref.watch(workEngineProvider),
        socialEngine: ref.watch(socialEngineProvider),
        npcFactory: ref.watch(npcFactoryProvider),
        timeEngine: ref.watch(timeEngineProvider),
      );
    });
