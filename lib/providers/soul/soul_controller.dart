import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:alma/core/models/soul.dart';
import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/life_template.dart';
import 'package:alma/core/engine/life_engine.dart';
import 'package:alma/core/evaluation/soul_evaluator.dart';
import 'package:alma/data/repositories/soul_repository.dart';
import 'package:alma/data/repositories/life_repository.dart';
import 'package:alma/data/seed/seed_loader.dart';
import 'package:alma/core/engine/seeded_random.dart';
import 'package:alma/providers/game/game_state_provider.dart';

class SoulState {
  const SoulState({
    this.souls = const [],
    this.currentSoul,
    this.lifeTemplates = const [],
    this.isLoading = false,
    this.error,
  });

  final List<Soul> souls;
  final Soul? currentSoul;
  final List<LifeTemplate> lifeTemplates;
  final bool isLoading;
  final String? error;

  SoulState copyWith({
    List<Soul>? souls,
    Soul? currentSoul,
    bool clearCurrentSoul = false,
    List<LifeTemplate>? lifeTemplates,
    bool? isLoading,
    String? error,
    bool clearError = false,
  }) {
    return SoulState(
      souls: souls ?? this.souls,
      currentSoul: clearCurrentSoul ? null : (currentSoul ?? this.currentSoul),
      lifeTemplates: lifeTemplates ?? this.lifeTemplates,
      isLoading: isLoading ?? this.isLoading,
      error: clearError ? null : (error ?? this.error),
    );
  }
}

class SoulController extends StateNotifier<SoulState> {
  SoulController({
    required this.soulRepository,
    required this.lifeRepository,
    required this.lifeEngine,
    required this.soulEvaluator,
    required this.seedLoader,
  }) : super(const SoulState());

  final SoulRepository soulRepository;
  final LifeRepository lifeRepository;
  final LifeEngine lifeEngine;
  final SoulEvaluator soulEvaluator;
  final SeedLoader seedLoader;

  Future<void> loadSouls() async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final List<Soul> souls = await soulRepository.getAllSouls();
      final List<LifeTemplate> templates = await seedLoader.loadLifeTemplates();
      state = state.copyWith(
        souls: souls,
        lifeTemplates: templates,
        isLoading: false,
      );
    } catch (e) {
      print('Error loading souls: $e');
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> createSoul(String name) async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final Soul soul = await soulRepository.createSoul(name);
      final List<LifeTemplate> templates = state.lifeTemplates.isEmpty
          ? await seedLoader.loadLifeTemplates()
          : state.lifeTemplates;
      state = state.copyWith(
        souls: [...state.souls, soul],
        currentSoul: soul,
        lifeTemplates: templates,
        isLoading: false,
      );
    } catch (e) {
      print('Error creating soul: $e');
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> selectSoul(String soulId) async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final Soul? soul = await soulRepository.getSoulById(soulId);
      state = state.copyWith(currentSoul: soul, isLoading: false);
    } catch (e) {
      print('Error selecting soul: $e');
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> deleteSoul(String soulId) async {
    try {
      await soulRepository.deleteSoul(soulId);
      final List<Soul> remaining =
          state.souls.where((s) => s.id != soulId).toList();
      state = state.copyWith(
        souls: remaining,
        clearCurrentSoul: state.currentSoul?.id == soulId,
      );
    } catch (e) {
      print('Error deleting soul: $e');
      state = state.copyWith(error: e.toString());
    }
  }

  Future<Life> startLife(LifeTemplate template) async {
    final Soul soul = state.currentSoul!;
    final SeededRandom rng = SeededRandom(DateTime.now().millisecondsSinceEpoch);
    final Life life = lifeEngine.createLife(
      soulId: soul.id,
      template: template,
      seed: rng.nextInt(999999999),
    );
    await lifeRepository.saveLife(life);
    final Soul updatedSoul = soul.copyWith(currentLifeId: life.id);
    await soulRepository.updateSoul(updatedSoul);
    state = state.copyWith(currentSoul: updatedSoul);
    return life;
  }

  Future<void> completeLife(Life life) async {
    final Soul soul = state.currentSoul!;
    final LifeSummary summary = soulEvaluator.generateLifeSummary(life.state);
    final Life completedLife = life.copyWith(
      isComplete: true,
      summary: summary,
    );
    await lifeRepository.saveLife(completedLife);
    final Soul updatedSoul = soulEvaluator.applySoulProgress(soul, summary);
    await soulRepository.updateSoul(updatedSoul);
    state = state.copyWith(currentSoul: updatedSoul);
  }

  void clearSoul() {
    state = state.copyWith(clearCurrentSoul: true);
  }
}

final soulControllerProvider =
    StateNotifierProvider<SoulController, SoulState>((ref) {
  return SoulController(
    soulRepository: ref.watch(soulRepositoryProvider),
    lifeRepository: ref.watch(lifeRepositoryProvider),
    lifeEngine: ref.watch(lifeEngineProvider),
    soulEvaluator: ref.watch(soulEvaluatorProvider),
    seedLoader: ref.watch(seedLoaderProvider),
  );
});
