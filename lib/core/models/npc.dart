import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:alma/core/models/enums/npc_role.dart';
import 'package:alma/core/models/enums/trait_type.dart';

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
  }) = _Npc;

  factory Npc.fromJson(Map<String, dynamic> json) => _$NpcFromJson(json);
}
