import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/action.dart';
import 'package:alma/core/models/event.dart';
import 'package:alma/core/models/education_program.dart';
import 'package:alma/core/models/enrollment.dart';
import 'package:alma/core/engine/life_engine.dart';
import 'package:alma/core/engine/education_engine.dart';
import 'package:alma/core/engine/seeded_random.dart';
import 'package:alma/data/repositories/life_repository.dart';
import 'package:alma/data/seed/seed_loader.dart';
import 'package:alma/core/engine/event_engine.dart';
import 'package:alma/providers/game/game_state_provider.dart';

class LifeControllerState {
  const LifeControllerState({
    this.currentLife,
    this.availableActions = const [],
    this.educationActions = const [],
    this.isLoading = false,
    this.error,
  });

  final Life? currentLife;
  final List<GameAction> availableActions;
  final List<GameAction> educationActions;
  final bool isLoading;
  final String? error;

  LifeControllerState copyWith({
    Life? currentLife,
    bool clearLife = false,
    List<GameAction>? availableActions,
    List<GameAction>? educationActions,
    bool? isLoading,
    String? error,
    bool clearError = false,
  }) {
    return LifeControllerState(
      currentLife: clearLife ? null : (currentLife ?? this.currentLife),
      availableActions: availableActions ?? this.availableActions,
      educationActions: educationActions ?? this.educationActions,
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
    required this.eventEngine,
    required this.educationEngine,
  }) : super(const LifeControllerState());

  final LifeEngine lifeEngine;
  final LifeRepository lifeRepository;
  final SeedLoader seedLoader;
  final EventEngine eventEngine;
  final EducationEngine educationEngine;

  Future<void> loadLife(Life life) async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final List<GameAction> actions = await seedLoader.loadActions();
      final List<GameEvent> events = await seedLoader.loadEvents();
      eventEngine.loadEvents(events);
      final String country = 'default';
      final programs = await seedLoader.loadEducationPrograms();
      final countryConfig = await seedLoader.loadEducationCountryConfig(country);
      final eduActions = await seedLoader.loadEducationActions();
      educationEngine.loadData(
        countryConfig: countryConfig,
        programs: programs,
        educationActions: eduActions,
      );
      state = state.copyWith(
        currentLife: life,
        availableActions: actions,
        educationActions: eduActions,
        isLoading: false,
      );
    } catch (e) {
      print('Error loading life: $e');
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<bool> loadLifeById(String lifeId) async {
    try {
      final Life? life = await lifeRepository.getLifeById(lifeId);
      if (life == null || life.isComplete) return false;
      await loadLife(life);
      return true;
    } catch (e) {
      print('Error loading life by id: $e');
      return false;
    }
  }

  Future<void> performAction(GameAction action) async {
    if (state.currentLife == null) return;
    try {
      final Life updatedLife = lifeEngine.performAction(
        state.currentLife!,
        action,
      );
      await lifeRepository.saveLife(updatedLife);
      state = state.copyWith(currentLife: updatedLife);
    } catch (e) {
      print('Error performing action: $e');
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
    } catch (e) {
      print('Error resolving event: $e');
      state = state.copyWith(error: e.toString());
    }
  }

  Future<void> progressYear() async {
    if (state.currentLife == null) return;
    try {
      final Life updatedLife = lifeEngine.progressYear(state.currentLife!);
      await lifeRepository.saveLife(updatedLife);
      state = state.copyWith(currentLife: updatedLife);
    } catch (e) {
      print('Error progressing year: $e');
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
      final LifeState newState = educationEngine.dropOut(state.currentLife!.state);
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

  void clearLife() {
    state = state.copyWith(clearLife: true);
  }
}

final lifeControllerProvider =
    StateNotifierProvider<LifeController, LifeControllerState>((ref) {
  return LifeController(
    lifeEngine: ref.watch(lifeEngineProvider),
    lifeRepository: ref.watch(lifeRepositoryProvider),
    seedLoader: ref.watch(seedLoaderProvider),
    eventEngine: ref.watch(eventEngineProvider),
    educationEngine: ref.watch(educationEngineProvider),
  );
});
