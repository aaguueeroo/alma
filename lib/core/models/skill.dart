import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:alma/core/models/enums/skill_type.dart';
import 'package:alma/app/constants/game_constants.dart';

part 'skill.freezed.dart';
part 'skill.g.dart';

@freezed
sealed class SkillSet with _$SkillSet {
  const factory SkillSet({
    @Default(kDefaultSkillValue) int intelligence,
    @Default(kDefaultSkillValue) int creativity,
    @Default(kDefaultSkillValue) int communication,
    @Default(kDefaultSkillValue) int emotionalStability,
    @Default(kDefaultSkillValue) int fitness,
  }) = _SkillSet;

  factory SkillSet.fromJson(Map<String, dynamic> json) =>
      _$SkillSetFromJson(json);
}

extension SkillSetExtension on SkillSet {
  int getValue(SkillType type) {
    switch (type) {
      case SkillType.intelligence:
        return intelligence;
      case SkillType.creativity:
        return creativity;
      case SkillType.communication:
        return communication;
      case SkillType.emotionalStability:
        return emotionalStability;
      case SkillType.fitness:
        return fitness;
    }
  }

  SkillSet withChange(SkillType type, int delta) {
    int clamp(int value) => value.clamp(kMinSkillValue, kMaxSkillValue);
    switch (type) {
      case SkillType.intelligence:
        return copyWith(intelligence: clamp(intelligence + delta));
      case SkillType.creativity:
        return copyWith(creativity: clamp(creativity + delta));
      case SkillType.communication:
        return copyWith(communication: clamp(communication + delta));
      case SkillType.emotionalStability:
        return copyWith(emotionalStability: clamp(emotionalStability + delta));
      case SkillType.fitness:
        return copyWith(fitness: clamp(fitness + delta));
    }
  }
}
