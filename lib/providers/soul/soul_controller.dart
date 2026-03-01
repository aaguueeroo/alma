import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:alma/core/models/soul.dart';
import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/life_maintenance_item.dart';
import 'package:alma/core/models/life_template.dart';
import 'package:alma/core/engine/life_engine.dart';
import 'package:alma/core/engine/time_engine.dart';
import 'package:alma/core/evaluation/soul_evaluator.dart';
import 'package:alma/data/repositories/soul_repository.dart';
import 'package:alma/data/repositories/life_repository.dart';
import 'package:alma/data/seed/seed_loader.dart';
import 'package:alma/core/engine/seeded_random.dart';
import 'package:alma/providers/game/game_state_provider.dart';

class LifePreview {
  const LifePreview({
    required this.templateName,
    required this.currentYear,
    required this.age,
  });

  final String templateName;
  final int currentYear;
  final int age;
}

class SoulState {
  const SoulState({
    this.souls = const [],
    this.currentSoul,
    this.lifeTemplates = const [],
    this.currentLifePreviews = const {},
    this.isLoading = false,
    this.error,
  });

  final List<Soul> souls;
  final Soul? currentSoul;
  final List<LifeTemplate> lifeTemplates;
  final Map<String, LifePreview> currentLifePreviews;
  final bool isLoading;
  final String? error;

  SoulState copyWith({
    List<Soul>? souls,
    Soul? currentSoul,
    bool clearCurrentSoul = false,
    List<LifeTemplate>? lifeTemplates,
    Map<String, LifePreview>? currentLifePreviews,
    bool? isLoading,
    String? error,
    bool clearError = false,
  }) {
    return SoulState(
      souls: souls ?? this.souls,
      currentSoul: clearCurrentSoul ? null : (currentSoul ?? this.currentSoul),
      lifeTemplates: lifeTemplates ?? this.lifeTemplates,
      currentLifePreviews: currentLifePreviews ?? this.currentLifePreviews,
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
    required this.timeEngine,
    required this.soulEvaluator,
    required this.seedLoader,
  }) : super(const SoulState());

  final SoulRepository soulRepository;
  final LifeRepository lifeRepository;
  final LifeEngine lifeEngine;
  final TimeEngine timeEngine;
  final SoulEvaluator soulEvaluator;
  final SeedLoader seedLoader;

  Future<void> loadSouls() async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final List<Soul> souls = await soulRepository.getAllSouls();
      final List<LifeTemplate> templates = await seedLoader.loadLifeTemplates();
      final Map<String, LifePreview> previews = {};
      for (final soul in souls) {
        if (soul.currentLifeId != null) {
          final Life? life = await lifeRepository.getLifeById(soul.currentLifeId!);
          if (life != null && !life.isComplete) {
            final matching = templates.where((t) => t.id == life.templateId);
            final String templateName =
                matching.isEmpty ? life.templateId : matching.first.name;
            previews[soul.id] = LifePreview(
              templateName: templateName,
              currentYear: life.state.currentYear,
              age: life.state.age,
            );
          }
        }
      }
      state = state.copyWith(
        souls: souls,
        lifeTemplates: templates,
        currentLifePreviews: previews,
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
    final List<LifeMaintenanceItem> maintenance =
        await seedLoader.loadLifeMaintenance();
    timeEngine.loadLifeMaintenance(maintenance);
    final int initialTime = timeEngine.getInitialTimeRemainingForNewLife();
    final SeededRandom rng = SeededRandom(DateTime.now().millisecondsSinceEpoch);
    final Life life = lifeEngine.createLife(
      soulId: soul.id,
      template: template,
      seed: rng.nextInt(999999999),
      initialTimeRemaining: initialTime,
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

  /// Clears currentLifeId from the current soul if the life is complete or missing.
  Future<void> clearCurrentLifeIfStale(String lifeId) async {
    final Soul? soul = state.currentSoul;
    if (soul == null || soul.currentLifeId != lifeId) return;
    final Life? life = await lifeRepository.getLifeById(lifeId);
    if (life != null && !life.isComplete) return;
    final Soul updated = soul.copyWith(currentLifeId: null);
    await soulRepository.updateSoul(updated);
    state = state.copyWith(currentSoul: updated);
  }
}

final soulControllerProvider =
    StateNotifierProvider<SoulController, SoulState>((ref) {
  return SoulController(
    soulRepository: ref.watch(soulRepositoryProvider),
    lifeRepository: ref.watch(lifeRepositoryProvider),
    lifeEngine: ref.watch(lifeEngineProvider),
    timeEngine: ref.watch(timeEngineProvider),
    soulEvaluator: ref.watch(soulEvaluatorProvider),
    seedLoader: ref.watch(seedLoaderProvider),
  );
});
