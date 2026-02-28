import 'package:drift/drift.dart';

class LivesTable extends Table {
  TextColumn get id => text()();
  TextColumn get soulId => text()();
  IntColumn get seed => integer()();
  TextColumn get templateId => text()();
  TextColumn get stateJson => text()();
  BoolColumn get isComplete => boolean().withDefault(const Constant(false))();
  TextColumn get summaryJson => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
