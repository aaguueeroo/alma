import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:alma/data/database/tables/souls_table.dart';
import 'package:alma/data/database/tables/lives_table.dart';
import 'package:alma/data/database/tables/achievements_table.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [SoulsTable, LivesTable, AchievementsTable])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  AppDatabase.forTesting(super.e);

  @override
  int get schemaVersion => 1;

  // --- Soul operations ---

  Future<List<SoulsTableData>> getAllSouls() => select(soulsTable).get();

  Future<SoulsTableData?> getSoulById(String id) =>
      (select(soulsTable)..where((t) => t.id.equals(id))).getSingleOrNull();

  Future<int> insertSoul(SoulsTableCompanion soul) =>
      into(soulsTable).insert(soul);

  Future<bool> updateSoul(SoulsTableCompanion soul) =>
      update(soulsTable).replace(soul);

  Future<int> deleteSoul(String id) =>
      (delete(soulsTable)..where((t) => t.id.equals(id))).go();

  // --- Life operations ---

  Future<List<LivesTableData>> getLivesBySoulId(String soulId) =>
      (select(livesTable)..where((t) => t.soulId.equals(soulId))).get();

  Future<LivesTableData?> getLifeById(String id) =>
      (select(livesTable)..where((t) => t.id.equals(id))).getSingleOrNull();

  Future<int> insertLife(LivesTableCompanion life) =>
      into(livesTable).insert(life);

  Future<bool> updateLife(LivesTableCompanion life) =>
      update(livesTable).replace(life);

  Future<int> deleteLifesBySoulId(String soulId) =>
      (delete(livesTable)..where((t) => t.soulId.equals(soulId))).go();

  // --- Achievement operations ---

  Future<List<AchievementsTableData>> getAllAchievements() =>
      select(achievementsTable).get();

  Future<int> insertAchievement(AchievementsTableCompanion achievement) =>
      into(achievementsTable).insert(achievement);

  Future<bool> updateAchievement(AchievementsTableCompanion achievement) =>
      update(achievementsTable).replace(achievement);
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final Directory dbFolder = await getApplicationDocumentsDirectory();
    final File file = File(p.join(dbFolder.path, 'alma.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}
