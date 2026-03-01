import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/game_log.dart';
import 'package:alma/core/models/enums/log_category.dart';

class GameLogger {
  static LifeState addLog(
    LifeState state, {
    required String message,
    required LogCategory category,
    List<String> tags = const [],
  }) {
    final GameLog log = GameLog(
      age: state.age,
      message: message,
      category: category,
      tags: tags,
    );
    return state.copyWith(logs: [...state.logs, log]);
  }
}
