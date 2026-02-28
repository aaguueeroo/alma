import 'package:drift/drift.dart';

class SoulsTable extends Table {
  TextColumn get id => text()();
  TextColumn get name => text().withLength(min: 1, max: 50)();
  IntColumn get remainingLives => integer().withDefault(const Constant(7))();
  TextColumn get subjectsJson => text()();
  TextColumn get metaStatsJson => text().withDefault(const Constant('{}'))();
  DateTimeColumn get createdAt => dateTime()();
  TextColumn get currentLifeId => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
