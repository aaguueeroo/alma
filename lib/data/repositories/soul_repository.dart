import 'dart:convert';
import 'package:drift/drift.dart';
import 'package:alma/data/database/app_database.dart';
import 'package:alma/core/models/soul.dart';
import 'package:alma/core/models/soul_subject.dart';
import 'package:alma/core/models/enums/soul_subject_type.dart';
import 'package:uuid/uuid.dart';

class SoulRepository {
  SoulRepository({required this.database});

  final AppDatabase database;
  static const Uuid _uuid = Uuid();

  Future<List<Soul>> getAllSouls() async {
    final List<SoulsTableData> rows = await database.getAllSouls();
    return rows.map(_rowToSoul).toList();
  }

  Future<Soul?> getSoulById(String id) async {
    final SoulsTableData? row = await database.getSoulById(id);
    if (row == null) return null;
    return _rowToSoul(row);
  }

  Future<Soul> createSoul(String name) async {
    final String id = _uuid.v4();
    final List<SoulSubject> subjects = SoulSubjectType.values
        .map((type) => SoulSubject(type: type))
        .toList();
    final Soul soul = Soul(
      id: id,
      name: name,
      subjects: subjects,
      createdAt: DateTime.now(),
    );
    await database.insertSoul(_soulToCompanion(soul));
    return soul;
  }

  Future<void> updateSoul(Soul soul) async {
    await database.updateSoul(_soulToCompanion(soul));
  }

  Future<void> deleteSoul(String id) async {
    await database.deleteLifesBySoulId(id);
    await database.deleteSoul(id);
  }

  Soul _rowToSoul(SoulsTableData row) {
    final List<dynamic> subjectsList = jsonDecode(row.subjectsJson) as List<dynamic>;
    final List<SoulSubject> subjects = subjectsList
        .map((s) => SoulSubject.fromJson(s as Map<String, dynamic>))
        .toList();
    final Map<String, dynamic> metaStatsRaw =
        jsonDecode(row.metaStatsJson) as Map<String, dynamic>;
    final Map<String, int> metaStats =
        metaStatsRaw.map((key, value) => MapEntry(key, value as int));
    return Soul(
      id: row.id,
      name: row.name,
      remainingLives: row.remainingLives,
      subjects: subjects,
      metaStats: metaStats,
      createdAt: row.createdAt,
      currentLifeId: row.currentLifeId,
    );
  }

  SoulsTableCompanion _soulToCompanion(Soul soul) {
    return SoulsTableCompanion(
      id: Value(soul.id),
      name: Value(soul.name),
      remainingLives: Value(soul.remainingLives),
      subjectsJson: Value(jsonEncode(soul.subjects.map((s) => s.toJson()).toList())),
      metaStatsJson: Value(jsonEncode(soul.metaStats)),
      createdAt: Value(soul.createdAt),
      currentLifeId: Value(soul.currentLifeId),
    );
  }
}
