import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:alma/core/models/soul_subject.dart';
import 'package:alma/app/constants/game_constants.dart';

part 'soul.freezed.dart';
part 'soul.g.dart';

@freezed
sealed class Soul with _$Soul {
  const factory Soul({
    required String id,
    required String name,
    @Default(kDefaultMaxLives) int remainingLives,
    required List<SoulSubject> subjects,
    @Default({}) Map<String, int> metaStats,
    required DateTime createdAt,
    String? currentLifeId,
  }) = _Soul;

  factory Soul.fromJson(Map<String, dynamic> json) => _$SoulFromJson(json);
}

extension SoulExtension on Soul {
  bool get hasAchievedNirvana => subjects.every((s) => s.isPassed);
  bool get isGameOver => remainingLives <= 0 && !hasAchievedNirvana;
  bool get canStartNewLife => remainingLives > 0 && currentLifeId == null;
}
