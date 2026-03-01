import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/action.dart';
import 'package:alma/core/models/event.dart';
import 'package:alma/core/engine/life_engine.dart';
import 'package:alma/data/repositories/life_repository.dart';
import 'package:alma/data/seed/seed_loader.dart';
import 'package:alma/core/engine/event_engine.dart';
import 'package:alma/providers/game/game_state_provider.dart';

class LifeControllerState {
  const LifeControllerState({
    this.currentLife,
    this.availableActions = const [],
    this.isLoading = false,
    this.error,
  });

  final Life? currentLife;
  final List<GameAction> availableActions;
  final bool isLoading;
  final String? error;

  LifeControllerState copyWith({
    Life? currentLife,
    bool clearLife = false,
    List<GameAction>? availableActions,
    bool? isLoading,
    String? error,
    bool clearError = false,
  }) {
    return LifeControllerState(
      currentLife: clearLife ? null : (currentLife ?? this.currentLife),
      availableActions: availableActions ?? this.availableActions,
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
  }) : super(const LifeControllerState());

  final LifeEngine lifeEngine;
  final LifeRepository lifeRepository;
  final SeedLoader seedLoader;
  final EventEngine eventEngine;

  Future<void> loadLife(Life life) async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final List<GameAction> actions = await seedLoader.loadActions();
      final List<GameEvent> events = await seedLoader.loadEvents();
      eventEngine.loadEvents(events);
      state = state.copyWith(
        currentLife: life,
        availableActions: actions,
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

  bool get isLifeOver => state.currentLife?.state.isDead ?? false;

  bool get hasPendingEvent => state.currentLife?.state.pendingEvent != null;

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
  );
});
