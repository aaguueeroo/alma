import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:alma/core/models/achievement.dart';
import 'package:alma/core/models/soul.dart';
import 'package:alma/core/models/life.dart';
import 'package:alma/data/repositories/achievement_repository.dart';
import 'package:alma/data/seed/seed_loader.dart';
import 'package:alma/providers/game/game_state_provider.dart';

class AchievementState {
  const AchievementState({
    this.achievements = const [],
    this.isLoading = false,
  });

  final List<Achievement> achievements;
  final bool isLoading;

  AchievementState copyWith({
    List<Achievement>? achievements,
    bool? isLoading,
  }) {
    return AchievementState(
      achievements: achievements ?? this.achievements,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}

class AchievementController extends StateNotifier<AchievementState> {
  AchievementController({
    required this.achievementRepository,
    required this.seedLoader,
  }) : super(const AchievementState());

  final AchievementRepository achievementRepository;
  final SeedLoader seedLoader;

  Future<void> loadAchievements() async {
    state = state.copyWith(isLoading: true);
    try {
      final List<Achievement> seedAchievements =
          await seedLoader.loadAchievements();
      await achievementRepository.seedAchievements(seedAchievements);
      final List<Achievement> achievements =
          await achievementRepository.getAllAchievements();
      state = state.copyWith(achievements: achievements, isLoading: false);
    } catch (e) {
      print('Error loading achievements: $e');
      state = state.copyWith(isLoading: false);
    }
  }

  Future<void> checkLifeAchievements(Life life, Soul soul) async {
    if (life.isComplete) {
      await _tryUnlock('first_life');
    }
    if (soul.hasAchievedNirvana) {
      await _tryUnlock('nirvana');
    }
    if (life.state.age >= 100) {
      await _tryUnlock('centenarian');
    }
    if (life.state.relationships.length >= 5) {
      await _tryUnlock('social_butterfly');
    }
    if (_allSkillsAbove50(life)) {
      await _tryUnlock('jack_of_all_trades');
    }
    final int formedHabits =
        life.state.habits.where((h) => h.strength > 0).length;
    if (formedHabits >= 3) {
      await _tryUnlock('creature_of_habit');
    }
    for (final subject in soul.subjects) {
      if (subject.isPassed) {
        switch (subject.type.name) {
          case 'compassion':
            await _tryUnlock('compassionate_soul');
          case 'courage':
            await _tryUnlock('brave_soul');
          case 'wisdom':
            await _tryUnlock('wise_soul');
        }
      }
    }
  }

  Future<void> _tryUnlock(String key) async {
    try {
      await achievementRepository.unlockAchievement(key);
      final List<Achievement> updated =
          await achievementRepository.getAllAchievements();
      state = state.copyWith(achievements: updated);
    } catch (e) {
      print('Error unlocking achievement $key: $e');
    }
  }

  bool _allSkillsAbove50(Life life) {
    final s = life.state.skills;
    return s.intelligence >= 50 &&
        s.creativity >= 50 &&
        s.communication >= 50 &&
        s.emotionalStability >= 50 &&
        s.fitness >= 50;
  }
}

final achievementControllerProvider =
    StateNotifierProvider<AchievementController, AchievementState>((ref) {
  return AchievementController(
    achievementRepository: ref.watch(achievementRepositoryProvider),
    seedLoader: ref.watch(seedLoaderProvider),
  );
});
