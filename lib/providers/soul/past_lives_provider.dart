import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/soul.dart';
import 'package:alma/providers/game/game_state_provider.dart';
import 'package:alma/providers/soul/soul_controller.dart';

/// Provides the list of completed (past) lives for the current soul.
final pastLivesProvider = FutureProvider<List<Life>>((ref) async {
  final Soul? soul = ref.watch(soulControllerProvider).currentSoul;
  if (soul == null) return [];
  final List<Life> lives =
      await ref.read(lifeRepositoryProvider).getLivesBySoulId(soul.id);
  return lives.where((Life l) => l.isComplete).toList();
});
