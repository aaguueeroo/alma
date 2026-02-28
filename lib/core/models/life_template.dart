import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:alma/core/models/skill.dart';
import 'package:alma/core/models/section.dart';
import 'package:alma/core/models/npc.dart';
import 'package:alma/core/models/enums/trait_type.dart';

part 'life_template.freezed.dart';
part 'life_template.g.dart';

@freezed
sealed class LifeTemplate with _$LifeTemplate {
  const factory LifeTemplate({
    required String id,
    required String name,
    required String description,
    required String country,
    required String familyBackground,
    required SkillSet startingSkills,
    required List<TraitType> startingTraits,
    required List<Section> startingSections,
    required List<Npc> startingNpcs,
    @Default(80) int startingHealth,
    @Default(0) int startingMoney,
  }) = _LifeTemplate;

  factory LifeTemplate.fromJson(Map<String, dynamic> json) =>
      _$LifeTemplateFromJson(json);
}
