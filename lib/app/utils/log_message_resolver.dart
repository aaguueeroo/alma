import 'package:alma/core/models/npc.dart';
import 'package:alma/core/models/relationship.dart';

/// Placeholder format in stored messages: {npc:ID}, {npc:ID:subject}, {npc:ID:possessive}.
/// When displaying: if ID == contextNpcId use pronoun form (them/they/their), else use alias ?? name.
String resolveLogMessage(
  String message,
  List<Relationship> relationships,
  String? contextNpcId,
) {
  final RegExp pattern = RegExp(r'\{npc:([^}:]+)(?::(subject|possessive))?\}');
  return message.replaceAllMapped(pattern, (Match match) {
    final String npcId = match.group(1)!;
    final String? form = match.group(2);
    final List<Relationship> found = relationships
        .where((Relationship r) => r.npc.id == npcId)
        .toList();
    if (found.isEmpty) return 'someone';
    final Npc npc = found.first.npc;
    final String displayName = npc.alias ?? npc.name;
    if (npcId == contextNpcId) {
      switch (form) {
        case 'subject':
          return npc.effectivePronoun.subjectForm;
        case 'possessive':
          return npc.effectivePronoun.possessiveForm;
        default:
          return npc.effectivePronoun.objectForm;
      }
    }
    return displayName;
  });
}
