// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $SoulsTableTable extends SoulsTable
    with TableInfo<$SoulsTableTable, SoulsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SoulsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 1,
      maxTextLength: 50,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _remainingLivesMeta = const VerificationMeta(
    'remainingLives',
  );
  @override
  late final GeneratedColumn<int> remainingLives = GeneratedColumn<int>(
    'remaining_lives',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(7),
  );
  static const VerificationMeta _subjectsJsonMeta = const VerificationMeta(
    'subjectsJson',
  );
  @override
  late final GeneratedColumn<String> subjectsJson = GeneratedColumn<String>(
    'subjects_json',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _metaStatsJsonMeta = const VerificationMeta(
    'metaStatsJson',
  );
  @override
  late final GeneratedColumn<String> metaStatsJson = GeneratedColumn<String>(
    'meta_stats_json',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('{}'),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _currentLifeIdMeta = const VerificationMeta(
    'currentLifeId',
  );
  @override
  late final GeneratedColumn<String> currentLifeId = GeneratedColumn<String>(
    'current_life_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    remainingLives,
    subjectsJson,
    metaStatsJson,
    createdAt,
    currentLifeId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'souls_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<SoulsTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('remaining_lives')) {
      context.handle(
        _remainingLivesMeta,
        remainingLives.isAcceptableOrUnknown(
          data['remaining_lives']!,
          _remainingLivesMeta,
        ),
      );
    }
    if (data.containsKey('subjects_json')) {
      context.handle(
        _subjectsJsonMeta,
        subjectsJson.isAcceptableOrUnknown(
          data['subjects_json']!,
          _subjectsJsonMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_subjectsJsonMeta);
    }
    if (data.containsKey('meta_stats_json')) {
      context.handle(
        _metaStatsJsonMeta,
        metaStatsJson.isAcceptableOrUnknown(
          data['meta_stats_json']!,
          _metaStatsJsonMeta,
        ),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('current_life_id')) {
      context.handle(
        _currentLifeIdMeta,
        currentLifeId.isAcceptableOrUnknown(
          data['current_life_id']!,
          _currentLifeIdMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SoulsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SoulsTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      remainingLives: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}remaining_lives'],
      )!,
      subjectsJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}subjects_json'],
      )!,
      metaStatsJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}meta_stats_json'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      currentLifeId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}current_life_id'],
      ),
    );
  }

  @override
  $SoulsTableTable createAlias(String alias) {
    return $SoulsTableTable(attachedDatabase, alias);
  }
}

class SoulsTableData extends DataClass implements Insertable<SoulsTableData> {
  final String id;
  final String name;
  final int remainingLives;
  final String subjectsJson;
  final String metaStatsJson;
  final DateTime createdAt;
  final String? currentLifeId;
  const SoulsTableData({
    required this.id,
    required this.name,
    required this.remainingLives,
    required this.subjectsJson,
    required this.metaStatsJson,
    required this.createdAt,
    this.currentLifeId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['remaining_lives'] = Variable<int>(remainingLives);
    map['subjects_json'] = Variable<String>(subjectsJson);
    map['meta_stats_json'] = Variable<String>(metaStatsJson);
    map['created_at'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || currentLifeId != null) {
      map['current_life_id'] = Variable<String>(currentLifeId);
    }
    return map;
  }

  SoulsTableCompanion toCompanion(bool nullToAbsent) {
    return SoulsTableCompanion(
      id: Value(id),
      name: Value(name),
      remainingLives: Value(remainingLives),
      subjectsJson: Value(subjectsJson),
      metaStatsJson: Value(metaStatsJson),
      createdAt: Value(createdAt),
      currentLifeId: currentLifeId == null && nullToAbsent
          ? const Value.absent()
          : Value(currentLifeId),
    );
  }

  factory SoulsTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SoulsTableData(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      remainingLives: serializer.fromJson<int>(json['remainingLives']),
      subjectsJson: serializer.fromJson<String>(json['subjectsJson']),
      metaStatsJson: serializer.fromJson<String>(json['metaStatsJson']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      currentLifeId: serializer.fromJson<String?>(json['currentLifeId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'remainingLives': serializer.toJson<int>(remainingLives),
      'subjectsJson': serializer.toJson<String>(subjectsJson),
      'metaStatsJson': serializer.toJson<String>(metaStatsJson),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'currentLifeId': serializer.toJson<String?>(currentLifeId),
    };
  }

  SoulsTableData copyWith({
    String? id,
    String? name,
    int? remainingLives,
    String? subjectsJson,
    String? metaStatsJson,
    DateTime? createdAt,
    Value<String?> currentLifeId = const Value.absent(),
  }) => SoulsTableData(
    id: id ?? this.id,
    name: name ?? this.name,
    remainingLives: remainingLives ?? this.remainingLives,
    subjectsJson: subjectsJson ?? this.subjectsJson,
    metaStatsJson: metaStatsJson ?? this.metaStatsJson,
    createdAt: createdAt ?? this.createdAt,
    currentLifeId: currentLifeId.present
        ? currentLifeId.value
        : this.currentLifeId,
  );
  SoulsTableData copyWithCompanion(SoulsTableCompanion data) {
    return SoulsTableData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      remainingLives: data.remainingLives.present
          ? data.remainingLives.value
          : this.remainingLives,
      subjectsJson: data.subjectsJson.present
          ? data.subjectsJson.value
          : this.subjectsJson,
      metaStatsJson: data.metaStatsJson.present
          ? data.metaStatsJson.value
          : this.metaStatsJson,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      currentLifeId: data.currentLifeId.present
          ? data.currentLifeId.value
          : this.currentLifeId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SoulsTableData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('remainingLives: $remainingLives, ')
          ..write('subjectsJson: $subjectsJson, ')
          ..write('metaStatsJson: $metaStatsJson, ')
          ..write('createdAt: $createdAt, ')
          ..write('currentLifeId: $currentLifeId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    name,
    remainingLives,
    subjectsJson,
    metaStatsJson,
    createdAt,
    currentLifeId,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SoulsTableData &&
          other.id == this.id &&
          other.name == this.name &&
          other.remainingLives == this.remainingLives &&
          other.subjectsJson == this.subjectsJson &&
          other.metaStatsJson == this.metaStatsJson &&
          other.createdAt == this.createdAt &&
          other.currentLifeId == this.currentLifeId);
}

class SoulsTableCompanion extends UpdateCompanion<SoulsTableData> {
  final Value<String> id;
  final Value<String> name;
  final Value<int> remainingLives;
  final Value<String> subjectsJson;
  final Value<String> metaStatsJson;
  final Value<DateTime> createdAt;
  final Value<String?> currentLifeId;
  final Value<int> rowid;
  const SoulsTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.remainingLives = const Value.absent(),
    this.subjectsJson = const Value.absent(),
    this.metaStatsJson = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.currentLifeId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SoulsTableCompanion.insert({
    required String id,
    required String name,
    this.remainingLives = const Value.absent(),
    required String subjectsJson,
    this.metaStatsJson = const Value.absent(),
    required DateTime createdAt,
    this.currentLifeId = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name),
       subjectsJson = Value(subjectsJson),
       createdAt = Value(createdAt);
  static Insertable<SoulsTableData> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<int>? remainingLives,
    Expression<String>? subjectsJson,
    Expression<String>? metaStatsJson,
    Expression<DateTime>? createdAt,
    Expression<String>? currentLifeId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (remainingLives != null) 'remaining_lives': remainingLives,
      if (subjectsJson != null) 'subjects_json': subjectsJson,
      if (metaStatsJson != null) 'meta_stats_json': metaStatsJson,
      if (createdAt != null) 'created_at': createdAt,
      if (currentLifeId != null) 'current_life_id': currentLifeId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SoulsTableCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<int>? remainingLives,
    Value<String>? subjectsJson,
    Value<String>? metaStatsJson,
    Value<DateTime>? createdAt,
    Value<String?>? currentLifeId,
    Value<int>? rowid,
  }) {
    return SoulsTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      remainingLives: remainingLives ?? this.remainingLives,
      subjectsJson: subjectsJson ?? this.subjectsJson,
      metaStatsJson: metaStatsJson ?? this.metaStatsJson,
      createdAt: createdAt ?? this.createdAt,
      currentLifeId: currentLifeId ?? this.currentLifeId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (remainingLives.present) {
      map['remaining_lives'] = Variable<int>(remainingLives.value);
    }
    if (subjectsJson.present) {
      map['subjects_json'] = Variable<String>(subjectsJson.value);
    }
    if (metaStatsJson.present) {
      map['meta_stats_json'] = Variable<String>(metaStatsJson.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (currentLifeId.present) {
      map['current_life_id'] = Variable<String>(currentLifeId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SoulsTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('remainingLives: $remainingLives, ')
          ..write('subjectsJson: $subjectsJson, ')
          ..write('metaStatsJson: $metaStatsJson, ')
          ..write('createdAt: $createdAt, ')
          ..write('currentLifeId: $currentLifeId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LivesTableTable extends LivesTable
    with TableInfo<$LivesTableTable, LivesTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LivesTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _soulIdMeta = const VerificationMeta('soulId');
  @override
  late final GeneratedColumn<String> soulId = GeneratedColumn<String>(
    'soul_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _seedMeta = const VerificationMeta('seed');
  @override
  late final GeneratedColumn<int> seed = GeneratedColumn<int>(
    'seed',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _templateIdMeta = const VerificationMeta(
    'templateId',
  );
  @override
  late final GeneratedColumn<String> templateId = GeneratedColumn<String>(
    'template_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _stateJsonMeta = const VerificationMeta(
    'stateJson',
  );
  @override
  late final GeneratedColumn<String> stateJson = GeneratedColumn<String>(
    'state_json',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isCompleteMeta = const VerificationMeta(
    'isComplete',
  );
  @override
  late final GeneratedColumn<bool> isComplete = GeneratedColumn<bool>(
    'is_complete',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_complete" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _summaryJsonMeta = const VerificationMeta(
    'summaryJson',
  );
  @override
  late final GeneratedColumn<String> summaryJson = GeneratedColumn<String>(
    'summary_json',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    soulId,
    seed,
    templateId,
    stateJson,
    isComplete,
    summaryJson,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'lives_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<LivesTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('soul_id')) {
      context.handle(
        _soulIdMeta,
        soulId.isAcceptableOrUnknown(data['soul_id']!, _soulIdMeta),
      );
    } else if (isInserting) {
      context.missing(_soulIdMeta);
    }
    if (data.containsKey('seed')) {
      context.handle(
        _seedMeta,
        seed.isAcceptableOrUnknown(data['seed']!, _seedMeta),
      );
    } else if (isInserting) {
      context.missing(_seedMeta);
    }
    if (data.containsKey('template_id')) {
      context.handle(
        _templateIdMeta,
        templateId.isAcceptableOrUnknown(data['template_id']!, _templateIdMeta),
      );
    } else if (isInserting) {
      context.missing(_templateIdMeta);
    }
    if (data.containsKey('state_json')) {
      context.handle(
        _stateJsonMeta,
        stateJson.isAcceptableOrUnknown(data['state_json']!, _stateJsonMeta),
      );
    } else if (isInserting) {
      context.missing(_stateJsonMeta);
    }
    if (data.containsKey('is_complete')) {
      context.handle(
        _isCompleteMeta,
        isComplete.isAcceptableOrUnknown(data['is_complete']!, _isCompleteMeta),
      );
    }
    if (data.containsKey('summary_json')) {
      context.handle(
        _summaryJsonMeta,
        summaryJson.isAcceptableOrUnknown(
          data['summary_json']!,
          _summaryJsonMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LivesTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LivesTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      soulId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}soul_id'],
      )!,
      seed: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}seed'],
      )!,
      templateId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}template_id'],
      )!,
      stateJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}state_json'],
      )!,
      isComplete: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_complete'],
      )!,
      summaryJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}summary_json'],
      ),
    );
  }

  @override
  $LivesTableTable createAlias(String alias) {
    return $LivesTableTable(attachedDatabase, alias);
  }
}

class LivesTableData extends DataClass implements Insertable<LivesTableData> {
  final String id;
  final String soulId;
  final int seed;
  final String templateId;
  final String stateJson;
  final bool isComplete;
  final String? summaryJson;
  const LivesTableData({
    required this.id,
    required this.soulId,
    required this.seed,
    required this.templateId,
    required this.stateJson,
    required this.isComplete,
    this.summaryJson,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['soul_id'] = Variable<String>(soulId);
    map['seed'] = Variable<int>(seed);
    map['template_id'] = Variable<String>(templateId);
    map['state_json'] = Variable<String>(stateJson);
    map['is_complete'] = Variable<bool>(isComplete);
    if (!nullToAbsent || summaryJson != null) {
      map['summary_json'] = Variable<String>(summaryJson);
    }
    return map;
  }

  LivesTableCompanion toCompanion(bool nullToAbsent) {
    return LivesTableCompanion(
      id: Value(id),
      soulId: Value(soulId),
      seed: Value(seed),
      templateId: Value(templateId),
      stateJson: Value(stateJson),
      isComplete: Value(isComplete),
      summaryJson: summaryJson == null && nullToAbsent
          ? const Value.absent()
          : Value(summaryJson),
    );
  }

  factory LivesTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LivesTableData(
      id: serializer.fromJson<String>(json['id']),
      soulId: serializer.fromJson<String>(json['soulId']),
      seed: serializer.fromJson<int>(json['seed']),
      templateId: serializer.fromJson<String>(json['templateId']),
      stateJson: serializer.fromJson<String>(json['stateJson']),
      isComplete: serializer.fromJson<bool>(json['isComplete']),
      summaryJson: serializer.fromJson<String?>(json['summaryJson']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'soulId': serializer.toJson<String>(soulId),
      'seed': serializer.toJson<int>(seed),
      'templateId': serializer.toJson<String>(templateId),
      'stateJson': serializer.toJson<String>(stateJson),
      'isComplete': serializer.toJson<bool>(isComplete),
      'summaryJson': serializer.toJson<String?>(summaryJson),
    };
  }

  LivesTableData copyWith({
    String? id,
    String? soulId,
    int? seed,
    String? templateId,
    String? stateJson,
    bool? isComplete,
    Value<String?> summaryJson = const Value.absent(),
  }) => LivesTableData(
    id: id ?? this.id,
    soulId: soulId ?? this.soulId,
    seed: seed ?? this.seed,
    templateId: templateId ?? this.templateId,
    stateJson: stateJson ?? this.stateJson,
    isComplete: isComplete ?? this.isComplete,
    summaryJson: summaryJson.present ? summaryJson.value : this.summaryJson,
  );
  LivesTableData copyWithCompanion(LivesTableCompanion data) {
    return LivesTableData(
      id: data.id.present ? data.id.value : this.id,
      soulId: data.soulId.present ? data.soulId.value : this.soulId,
      seed: data.seed.present ? data.seed.value : this.seed,
      templateId: data.templateId.present
          ? data.templateId.value
          : this.templateId,
      stateJson: data.stateJson.present ? data.stateJson.value : this.stateJson,
      isComplete: data.isComplete.present
          ? data.isComplete.value
          : this.isComplete,
      summaryJson: data.summaryJson.present
          ? data.summaryJson.value
          : this.summaryJson,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LivesTableData(')
          ..write('id: $id, ')
          ..write('soulId: $soulId, ')
          ..write('seed: $seed, ')
          ..write('templateId: $templateId, ')
          ..write('stateJson: $stateJson, ')
          ..write('isComplete: $isComplete, ')
          ..write('summaryJson: $summaryJson')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    soulId,
    seed,
    templateId,
    stateJson,
    isComplete,
    summaryJson,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LivesTableData &&
          other.id == this.id &&
          other.soulId == this.soulId &&
          other.seed == this.seed &&
          other.templateId == this.templateId &&
          other.stateJson == this.stateJson &&
          other.isComplete == this.isComplete &&
          other.summaryJson == this.summaryJson);
}

class LivesTableCompanion extends UpdateCompanion<LivesTableData> {
  final Value<String> id;
  final Value<String> soulId;
  final Value<int> seed;
  final Value<String> templateId;
  final Value<String> stateJson;
  final Value<bool> isComplete;
  final Value<String?> summaryJson;
  final Value<int> rowid;
  const LivesTableCompanion({
    this.id = const Value.absent(),
    this.soulId = const Value.absent(),
    this.seed = const Value.absent(),
    this.templateId = const Value.absent(),
    this.stateJson = const Value.absent(),
    this.isComplete = const Value.absent(),
    this.summaryJson = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LivesTableCompanion.insert({
    required String id,
    required String soulId,
    required int seed,
    required String templateId,
    required String stateJson,
    this.isComplete = const Value.absent(),
    this.summaryJson = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       soulId = Value(soulId),
       seed = Value(seed),
       templateId = Value(templateId),
       stateJson = Value(stateJson);
  static Insertable<LivesTableData> custom({
    Expression<String>? id,
    Expression<String>? soulId,
    Expression<int>? seed,
    Expression<String>? templateId,
    Expression<String>? stateJson,
    Expression<bool>? isComplete,
    Expression<String>? summaryJson,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (soulId != null) 'soul_id': soulId,
      if (seed != null) 'seed': seed,
      if (templateId != null) 'template_id': templateId,
      if (stateJson != null) 'state_json': stateJson,
      if (isComplete != null) 'is_complete': isComplete,
      if (summaryJson != null) 'summary_json': summaryJson,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LivesTableCompanion copyWith({
    Value<String>? id,
    Value<String>? soulId,
    Value<int>? seed,
    Value<String>? templateId,
    Value<String>? stateJson,
    Value<bool>? isComplete,
    Value<String?>? summaryJson,
    Value<int>? rowid,
  }) {
    return LivesTableCompanion(
      id: id ?? this.id,
      soulId: soulId ?? this.soulId,
      seed: seed ?? this.seed,
      templateId: templateId ?? this.templateId,
      stateJson: stateJson ?? this.stateJson,
      isComplete: isComplete ?? this.isComplete,
      summaryJson: summaryJson ?? this.summaryJson,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (soulId.present) {
      map['soul_id'] = Variable<String>(soulId.value);
    }
    if (seed.present) {
      map['seed'] = Variable<int>(seed.value);
    }
    if (templateId.present) {
      map['template_id'] = Variable<String>(templateId.value);
    }
    if (stateJson.present) {
      map['state_json'] = Variable<String>(stateJson.value);
    }
    if (isComplete.present) {
      map['is_complete'] = Variable<bool>(isComplete.value);
    }
    if (summaryJson.present) {
      map['summary_json'] = Variable<String>(summaryJson.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LivesTableCompanion(')
          ..write('id: $id, ')
          ..write('soulId: $soulId, ')
          ..write('seed: $seed, ')
          ..write('templateId: $templateId, ')
          ..write('stateJson: $stateJson, ')
          ..write('isComplete: $isComplete, ')
          ..write('summaryJson: $summaryJson, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $AchievementsTableTable extends AchievementsTable
    with TableInfo<$AchievementsTableTable, AchievementsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AchievementsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
    'key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _unlockedAtMeta = const VerificationMeta(
    'unlockedAt',
  );
  @override
  late final GeneratedColumn<DateTime> unlockedAt = GeneratedColumn<DateTime>(
    'unlocked_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    key,
    name,
    description,
    unlockedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'achievements_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<AchievementsTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('key')) {
      context.handle(
        _keyMeta,
        key.isAcceptableOrUnknown(data['key']!, _keyMeta),
      );
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('unlocked_at')) {
      context.handle(
        _unlockedAtMeta,
        unlockedAt.isAcceptableOrUnknown(data['unlocked_at']!, _unlockedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AchievementsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AchievementsTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      key: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}key'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      )!,
      unlockedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}unlocked_at'],
      ),
    );
  }

  @override
  $AchievementsTableTable createAlias(String alias) {
    return $AchievementsTableTable(attachedDatabase, alias);
  }
}

class AchievementsTableData extends DataClass
    implements Insertable<AchievementsTableData> {
  final String id;
  final String key;
  final String name;
  final String description;
  final DateTime? unlockedAt;
  const AchievementsTableData({
    required this.id,
    required this.key,
    required this.name,
    required this.description,
    this.unlockedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['key'] = Variable<String>(key);
    map['name'] = Variable<String>(name);
    map['description'] = Variable<String>(description);
    if (!nullToAbsent || unlockedAt != null) {
      map['unlocked_at'] = Variable<DateTime>(unlockedAt);
    }
    return map;
  }

  AchievementsTableCompanion toCompanion(bool nullToAbsent) {
    return AchievementsTableCompanion(
      id: Value(id),
      key: Value(key),
      name: Value(name),
      description: Value(description),
      unlockedAt: unlockedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(unlockedAt),
    );
  }

  factory AchievementsTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AchievementsTableData(
      id: serializer.fromJson<String>(json['id']),
      key: serializer.fromJson<String>(json['key']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String>(json['description']),
      unlockedAt: serializer.fromJson<DateTime?>(json['unlockedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'key': serializer.toJson<String>(key),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String>(description),
      'unlockedAt': serializer.toJson<DateTime?>(unlockedAt),
    };
  }

  AchievementsTableData copyWith({
    String? id,
    String? key,
    String? name,
    String? description,
    Value<DateTime?> unlockedAt = const Value.absent(),
  }) => AchievementsTableData(
    id: id ?? this.id,
    key: key ?? this.key,
    name: name ?? this.name,
    description: description ?? this.description,
    unlockedAt: unlockedAt.present ? unlockedAt.value : this.unlockedAt,
  );
  AchievementsTableData copyWithCompanion(AchievementsTableCompanion data) {
    return AchievementsTableData(
      id: data.id.present ? data.id.value : this.id,
      key: data.key.present ? data.key.value : this.key,
      name: data.name.present ? data.name.value : this.name,
      description: data.description.present
          ? data.description.value
          : this.description,
      unlockedAt: data.unlockedAt.present
          ? data.unlockedAt.value
          : this.unlockedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AchievementsTableData(')
          ..write('id: $id, ')
          ..write('key: $key, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('unlockedAt: $unlockedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, key, name, description, unlockedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AchievementsTableData &&
          other.id == this.id &&
          other.key == this.key &&
          other.name == this.name &&
          other.description == this.description &&
          other.unlockedAt == this.unlockedAt);
}

class AchievementsTableCompanion
    extends UpdateCompanion<AchievementsTableData> {
  final Value<String> id;
  final Value<String> key;
  final Value<String> name;
  final Value<String> description;
  final Value<DateTime?> unlockedAt;
  final Value<int> rowid;
  const AchievementsTableCompanion({
    this.id = const Value.absent(),
    this.key = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.unlockedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AchievementsTableCompanion.insert({
    required String id,
    required String key,
    required String name,
    required String description,
    this.unlockedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       key = Value(key),
       name = Value(name),
       description = Value(description);
  static Insertable<AchievementsTableData> custom({
    Expression<String>? id,
    Expression<String>? key,
    Expression<String>? name,
    Expression<String>? description,
    Expression<DateTime>? unlockedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (key != null) 'key': key,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (unlockedAt != null) 'unlocked_at': unlockedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AchievementsTableCompanion copyWith({
    Value<String>? id,
    Value<String>? key,
    Value<String>? name,
    Value<String>? description,
    Value<DateTime?>? unlockedAt,
    Value<int>? rowid,
  }) {
    return AchievementsTableCompanion(
      id: id ?? this.id,
      key: key ?? this.key,
      name: name ?? this.name,
      description: description ?? this.description,
      unlockedAt: unlockedAt ?? this.unlockedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (unlockedAt.present) {
      map['unlocked_at'] = Variable<DateTime>(unlockedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AchievementsTableCompanion(')
          ..write('id: $id, ')
          ..write('key: $key, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('unlockedAt: $unlockedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $SoulsTableTable soulsTable = $SoulsTableTable(this);
  late final $LivesTableTable livesTable = $LivesTableTable(this);
  late final $AchievementsTableTable achievementsTable =
      $AchievementsTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    soulsTable,
    livesTable,
    achievementsTable,
  ];
}

typedef $$SoulsTableTableCreateCompanionBuilder =
    SoulsTableCompanion Function({
      required String id,
      required String name,
      Value<int> remainingLives,
      required String subjectsJson,
      Value<String> metaStatsJson,
      required DateTime createdAt,
      Value<String?> currentLifeId,
      Value<int> rowid,
    });
typedef $$SoulsTableTableUpdateCompanionBuilder =
    SoulsTableCompanion Function({
      Value<String> id,
      Value<String> name,
      Value<int> remainingLives,
      Value<String> subjectsJson,
      Value<String> metaStatsJson,
      Value<DateTime> createdAt,
      Value<String?> currentLifeId,
      Value<int> rowid,
    });

class $$SoulsTableTableFilterComposer
    extends Composer<_$AppDatabase, $SoulsTableTable> {
  $$SoulsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get remainingLives => $composableBuilder(
    column: $table.remainingLives,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get subjectsJson => $composableBuilder(
    column: $table.subjectsJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get metaStatsJson => $composableBuilder(
    column: $table.metaStatsJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get currentLifeId => $composableBuilder(
    column: $table.currentLifeId,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SoulsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $SoulsTableTable> {
  $$SoulsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get remainingLives => $composableBuilder(
    column: $table.remainingLives,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get subjectsJson => $composableBuilder(
    column: $table.subjectsJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get metaStatsJson => $composableBuilder(
    column: $table.metaStatsJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get currentLifeId => $composableBuilder(
    column: $table.currentLifeId,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SoulsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $SoulsTableTable> {
  $$SoulsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<int> get remainingLives => $composableBuilder(
    column: $table.remainingLives,
    builder: (column) => column,
  );

  GeneratedColumn<String> get subjectsJson => $composableBuilder(
    column: $table.subjectsJson,
    builder: (column) => column,
  );

  GeneratedColumn<String> get metaStatsJson => $composableBuilder(
    column: $table.metaStatsJson,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<String> get currentLifeId => $composableBuilder(
    column: $table.currentLifeId,
    builder: (column) => column,
  );
}

class $$SoulsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SoulsTableTable,
          SoulsTableData,
          $$SoulsTableTableFilterComposer,
          $$SoulsTableTableOrderingComposer,
          $$SoulsTableTableAnnotationComposer,
          $$SoulsTableTableCreateCompanionBuilder,
          $$SoulsTableTableUpdateCompanionBuilder,
          (
            SoulsTableData,
            BaseReferences<_$AppDatabase, $SoulsTableTable, SoulsTableData>,
          ),
          SoulsTableData,
          PrefetchHooks Function()
        > {
  $$SoulsTableTableTableManager(_$AppDatabase db, $SoulsTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SoulsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SoulsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SoulsTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<int> remainingLives = const Value.absent(),
                Value<String> subjectsJson = const Value.absent(),
                Value<String> metaStatsJson = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<String?> currentLifeId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SoulsTableCompanion(
                id: id,
                name: name,
                remainingLives: remainingLives,
                subjectsJson: subjectsJson,
                metaStatsJson: metaStatsJson,
                createdAt: createdAt,
                currentLifeId: currentLifeId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String name,
                Value<int> remainingLives = const Value.absent(),
                required String subjectsJson,
                Value<String> metaStatsJson = const Value.absent(),
                required DateTime createdAt,
                Value<String?> currentLifeId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SoulsTableCompanion.insert(
                id: id,
                name: name,
                remainingLives: remainingLives,
                subjectsJson: subjectsJson,
                metaStatsJson: metaStatsJson,
                createdAt: createdAt,
                currentLifeId: currentLifeId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SoulsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SoulsTableTable,
      SoulsTableData,
      $$SoulsTableTableFilterComposer,
      $$SoulsTableTableOrderingComposer,
      $$SoulsTableTableAnnotationComposer,
      $$SoulsTableTableCreateCompanionBuilder,
      $$SoulsTableTableUpdateCompanionBuilder,
      (
        SoulsTableData,
        BaseReferences<_$AppDatabase, $SoulsTableTable, SoulsTableData>,
      ),
      SoulsTableData,
      PrefetchHooks Function()
    >;
typedef $$LivesTableTableCreateCompanionBuilder =
    LivesTableCompanion Function({
      required String id,
      required String soulId,
      required int seed,
      required String templateId,
      required String stateJson,
      Value<bool> isComplete,
      Value<String?> summaryJson,
      Value<int> rowid,
    });
typedef $$LivesTableTableUpdateCompanionBuilder =
    LivesTableCompanion Function({
      Value<String> id,
      Value<String> soulId,
      Value<int> seed,
      Value<String> templateId,
      Value<String> stateJson,
      Value<bool> isComplete,
      Value<String?> summaryJson,
      Value<int> rowid,
    });

class $$LivesTableTableFilterComposer
    extends Composer<_$AppDatabase, $LivesTableTable> {
  $$LivesTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get soulId => $composableBuilder(
    column: $table.soulId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get seed => $composableBuilder(
    column: $table.seed,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get templateId => $composableBuilder(
    column: $table.templateId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get stateJson => $composableBuilder(
    column: $table.stateJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isComplete => $composableBuilder(
    column: $table.isComplete,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get summaryJson => $composableBuilder(
    column: $table.summaryJson,
    builder: (column) => ColumnFilters(column),
  );
}

class $$LivesTableTableOrderingComposer
    extends Composer<_$AppDatabase, $LivesTableTable> {
  $$LivesTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get soulId => $composableBuilder(
    column: $table.soulId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get seed => $composableBuilder(
    column: $table.seed,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get templateId => $composableBuilder(
    column: $table.templateId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get stateJson => $composableBuilder(
    column: $table.stateJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isComplete => $composableBuilder(
    column: $table.isComplete,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get summaryJson => $composableBuilder(
    column: $table.summaryJson,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$LivesTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $LivesTableTable> {
  $$LivesTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get soulId =>
      $composableBuilder(column: $table.soulId, builder: (column) => column);

  GeneratedColumn<int> get seed =>
      $composableBuilder(column: $table.seed, builder: (column) => column);

  GeneratedColumn<String> get templateId => $composableBuilder(
    column: $table.templateId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get stateJson =>
      $composableBuilder(column: $table.stateJson, builder: (column) => column);

  GeneratedColumn<bool> get isComplete => $composableBuilder(
    column: $table.isComplete,
    builder: (column) => column,
  );

  GeneratedColumn<String> get summaryJson => $composableBuilder(
    column: $table.summaryJson,
    builder: (column) => column,
  );
}

class $$LivesTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $LivesTableTable,
          LivesTableData,
          $$LivesTableTableFilterComposer,
          $$LivesTableTableOrderingComposer,
          $$LivesTableTableAnnotationComposer,
          $$LivesTableTableCreateCompanionBuilder,
          $$LivesTableTableUpdateCompanionBuilder,
          (
            LivesTableData,
            BaseReferences<_$AppDatabase, $LivesTableTable, LivesTableData>,
          ),
          LivesTableData,
          PrefetchHooks Function()
        > {
  $$LivesTableTableTableManager(_$AppDatabase db, $LivesTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LivesTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LivesTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LivesTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> soulId = const Value.absent(),
                Value<int> seed = const Value.absent(),
                Value<String> templateId = const Value.absent(),
                Value<String> stateJson = const Value.absent(),
                Value<bool> isComplete = const Value.absent(),
                Value<String?> summaryJson = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => LivesTableCompanion(
                id: id,
                soulId: soulId,
                seed: seed,
                templateId: templateId,
                stateJson: stateJson,
                isComplete: isComplete,
                summaryJson: summaryJson,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String soulId,
                required int seed,
                required String templateId,
                required String stateJson,
                Value<bool> isComplete = const Value.absent(),
                Value<String?> summaryJson = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => LivesTableCompanion.insert(
                id: id,
                soulId: soulId,
                seed: seed,
                templateId: templateId,
                stateJson: stateJson,
                isComplete: isComplete,
                summaryJson: summaryJson,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$LivesTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $LivesTableTable,
      LivesTableData,
      $$LivesTableTableFilterComposer,
      $$LivesTableTableOrderingComposer,
      $$LivesTableTableAnnotationComposer,
      $$LivesTableTableCreateCompanionBuilder,
      $$LivesTableTableUpdateCompanionBuilder,
      (
        LivesTableData,
        BaseReferences<_$AppDatabase, $LivesTableTable, LivesTableData>,
      ),
      LivesTableData,
      PrefetchHooks Function()
    >;
typedef $$AchievementsTableTableCreateCompanionBuilder =
    AchievementsTableCompanion Function({
      required String id,
      required String key,
      required String name,
      required String description,
      Value<DateTime?> unlockedAt,
      Value<int> rowid,
    });
typedef $$AchievementsTableTableUpdateCompanionBuilder =
    AchievementsTableCompanion Function({
      Value<String> id,
      Value<String> key,
      Value<String> name,
      Value<String> description,
      Value<DateTime?> unlockedAt,
      Value<int> rowid,
    });

class $$AchievementsTableTableFilterComposer
    extends Composer<_$AppDatabase, $AchievementsTableTable> {
  $$AchievementsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get key => $composableBuilder(
    column: $table.key,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get unlockedAt => $composableBuilder(
    column: $table.unlockedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$AchievementsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $AchievementsTableTable> {
  $$AchievementsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get key => $composableBuilder(
    column: $table.key,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get unlockedAt => $composableBuilder(
    column: $table.unlockedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$AchievementsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $AchievementsTableTable> {
  $$AchievementsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get key =>
      $composableBuilder(column: $table.key, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get unlockedAt => $composableBuilder(
    column: $table.unlockedAt,
    builder: (column) => column,
  );
}

class $$AchievementsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $AchievementsTableTable,
          AchievementsTableData,
          $$AchievementsTableTableFilterComposer,
          $$AchievementsTableTableOrderingComposer,
          $$AchievementsTableTableAnnotationComposer,
          $$AchievementsTableTableCreateCompanionBuilder,
          $$AchievementsTableTableUpdateCompanionBuilder,
          (
            AchievementsTableData,
            BaseReferences<
              _$AppDatabase,
              $AchievementsTableTable,
              AchievementsTableData
            >,
          ),
          AchievementsTableData,
          PrefetchHooks Function()
        > {
  $$AchievementsTableTableTableManager(
    _$AppDatabase db,
    $AchievementsTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AchievementsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AchievementsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AchievementsTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> key = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<DateTime?> unlockedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => AchievementsTableCompanion(
                id: id,
                key: key,
                name: name,
                description: description,
                unlockedAt: unlockedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String key,
                required String name,
                required String description,
                Value<DateTime?> unlockedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => AchievementsTableCompanion.insert(
                id: id,
                key: key,
                name: name,
                description: description,
                unlockedAt: unlockedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$AchievementsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $AchievementsTableTable,
      AchievementsTableData,
      $$AchievementsTableTableFilterComposer,
      $$AchievementsTableTableOrderingComposer,
      $$AchievementsTableTableAnnotationComposer,
      $$AchievementsTableTableCreateCompanionBuilder,
      $$AchievementsTableTableUpdateCompanionBuilder,
      (
        AchievementsTableData,
        BaseReferences<
          _$AppDatabase,
          $AchievementsTableTable,
          AchievementsTableData
        >,
      ),
      AchievementsTableData,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$SoulsTableTableTableManager get soulsTable =>
      $$SoulsTableTableTableManager(_db, _db.soulsTable);
  $$LivesTableTableTableManager get livesTable =>
      $$LivesTableTableTableManager(_db, _db.livesTable);
  $$AchievementsTableTableTableManager get achievementsTable =>
      $$AchievementsTableTableTableManager(_db, _db.achievementsTable);
}
