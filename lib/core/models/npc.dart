import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:alma/core/models/enums/npc_role.dart';
import 'package:alma/core/models/enums/trait_type.dart';
import 'package:alma/core/models/enums/gender.dart';
import 'package:alma/core/models/enums/pronoun.dart';

part 'npc.freezed.dart';
part 'npc.g.dart';

@freezed
sealed class Npc with _$Npc {
  const factory Npc({
    required String id,
    required String name,
    required NpcRole role,
    @Default([]) List<TraitType> visibleTraits,
    @Default([]) List<TraitType> hiddenTraits,
    @Default(0.5) double compatibilityFactor,
    String? relationshipTypeId,
    int? age,
    Gender? gender,
    Pronoun? pronoun,
    /// Optional. Use only for clear familial roles (e.g. Mother, Brother) or
    /// nicknames earned in the relationship. Not for relationship descriptions
    /// like "Neighborhood Friend"; use [name] for those.
    String? alias,
    String? jobId,
    String? country,
    @Default(true) bool isAlive,
  }) = _Npc;

  const Npc._();

  factory Npc.fromJson(Map<String, dynamic> json) => _$NpcFromJson(json);

  Pronoun get effectivePronoun => pronoun ?? _pronounFromGender;
  Pronoun get _pronounFromGender {
    switch (gender) {
      case Gender.male:
        return Pronoun.he;
      case Gender.female:
        return Pronoun.she;
      case Gender.other:
      case null:
        return Pronoun.they;
    }
  }
}
