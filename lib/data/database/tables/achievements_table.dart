import 'package:drift/drift.dart';

class AchievementsTable extends Table {
  TextColumn get id => text()();
  TextColumn get key => text()();
  TextColumn get name => text()();
  TextColumn get description => text()();
  DateTimeColumn get unlockedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
