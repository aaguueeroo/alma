import 'package:drift/drift.dart';
import 'package:alma/data/database/app_database.dart';
import 'package:alma/core/models/achievement/achievement.dart';

class AchievementRepository {
  AchievementRepository({required this.database});

  final AppDatabase database;

  Future<List<Achievement>> getAllAchievements() async {
    final List<AchievementsTableData> rows = await database
        .getAllAchievements();
    return rows.map(_rowToAchievement).toList();
  }

  Future<void> unlockAchievement(String key) async {
    final List<AchievementsTableData> rows = await database
        .getAllAchievements();
    final match = rows.where((r) => r.key == key);
    if (match.isEmpty) return;
    final AchievementsTableData row = match.first;
    if (row.unlockedAt != null) return;
    await database.updateAchievement(
      AchievementsTableCompanion(
        id: Value(row.id),
        key: Value(row.key),
        name: Value(row.name),
        description: Value(row.description),
        unlockedAt: Value(DateTime.now()),
      ),
    );
  }

  Future<void> seedAchievements(List<Achievement> achievements) async {
    final List<AchievementsTableData> existing = await database
        .getAllAchievements();
    final Set<String> existingKeys = existing.map((a) => a.key).toSet();
    for (final achievement in achievements) {
      if (!existingKeys.contains(achievement.key)) {
        await database.insertAchievement(
          AchievementsTableCompanion(
            id: Value(achievement.id),
            key: Value(achievement.key),
            name: Value(achievement.name),
            description: Value(achievement.description),
            unlockedAt: Value(achievement.unlockedAt),
          ),
        );
      }
    }
  }

  Achievement _rowToAchievement(AchievementsTableData row) {
    return Achievement(
      id: row.id,
      key: row.key,
      name: row.name,
      description: row.description,
      unlockedAt: row.unlockedAt,
    );
  }
}
