import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:alma/core/models/enums/skill_type.dart';
import 'package:alma/core/models/enums/trait_type.dart';
import 'package:alma/core/models/enums/hidden_metric_type.dart';
import 'package:alma/core/models/moral_impact.dart';

part 'event_option.freezed.dart';
part 'event_option.g.dart';

@freezed
sealed class EventOption with _$EventOption {
  const factory EventOption({
    required String description,
    required EventConsequences consequences,
    String? logMessage,
  }) = _EventOption;

  factory EventOption.fromJson(Map<String, dynamic> json) =>
      _$EventOptionFromJson(json);
}

@freezed
sealed class EventConsequences with _$EventConsequences {
  const factory EventConsequences({
    @Default({}) Map<SkillType, int> skillChanges,
    @Default({}) Map<HiddenMetricType, double> hiddenMetricChanges,
    @Default(0) int healthChange,
    @Default(0) int moneyChange,
    @Default({}) Map<TraitType, double> traitChance,
    String? relationshipTargetId,
    @Default(0) int relationshipChange,
    String? unlockEventId,
    @Default(false) bool causesDeath,
    @Default([]) List<MoralImpactTemplate> moralImpactTemplates,
  }) = _EventConsequences;

  factory EventConsequences.fromJson(Map<String, dynamic> json) =>
      _$EventConsequencesFromJson(json);
}
