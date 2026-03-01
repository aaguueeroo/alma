import 'dart:convert';
import 'package:drift/drift.dart';
import 'package:alma/data/database/app_database.dart';
import 'package:alma/core/models/life.dart';
import 'package:alma/app/constants/time_constants.dart';

class LifeRepository {
  LifeRepository({required this.database});

  final AppDatabase database;

  Future<List<Life>> getLivesBySoulId(String soulId) async {
    final List<LivesTableData> rows = await database.getLivesBySoulId(soulId);
    return rows.map(_rowToLife).toList();
  }

  Future<Life?> getLifeById(String id) async {
    final LivesTableData? row = await database.getLifeById(id);
    if (row == null) return null;
    return _rowToLife(row);
  }

  Future<void> saveLife(Life life) async {
    final LivesTableData? existing = await database.getLifeById(life.id);
    if (existing != null) {
      await database.updateLife(_lifeToCompanion(life));
    } else {
      await database.insertLife(_lifeToCompanion(life));
    }
  }

  Future<void> deleteLifesBySoulId(String soulId) async {
    await database.deleteLifesBySoulId(soulId);
  }

  Life _rowToLife(LivesTableData row) {
    final Map<String, dynamic> stateMap =
        jsonDecode(row.stateJson) as Map<String, dynamic>;
    LifeState state = LifeState.fromJson(stateMap);
    if (state.timeRemaining <= 100) {
      final int migratedDays =
          (state.timeRemaining * kDaysPerYear / 100).round();
      state = state.copyWith(timeRemaining: migratedDays);
    }
    LifeSummary? summary;
    if (row.summaryJson != null) {
      summary = LifeSummary.fromJson(
          jsonDecode(row.summaryJson!) as Map<String, dynamic>);
    }
    return Life(
      id: row.id,
      soulId: row.soulId,
      seed: row.seed,
      templateId: row.templateId,
      state: state,
      isComplete: row.isComplete,
      summary: summary,
    );
  }

  LivesTableCompanion _lifeToCompanion(Life life) {
    return LivesTableCompanion(
      id: Value(life.id),
      soulId: Value(life.soulId),
      seed: Value(life.seed),
      templateId: Value(life.templateId),
      stateJson: Value(jsonEncode(life.state.toJson())),
      isComplete: Value(life.isComplete),
      summaryJson: Value(
        life.summary != null ? jsonEncode(life.summary!.toJson()) : null,
      ),
    );
  }
}
