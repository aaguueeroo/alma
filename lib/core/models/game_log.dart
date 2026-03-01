import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:alma/core/models/enums/log_category.dart';

part 'game_log.freezed.dart';
part 'game_log.g.dart';

@freezed
sealed class GameLog with _$GameLog {
  const factory GameLog({
    required int age,
    required String message,
    required LogCategory category,
    @Default([]) List<String> tags,
  }) = _GameLog;

  factory GameLog.fromJson(Map<String, dynamic> json) =>
      _$GameLogFromJson(json);
}
