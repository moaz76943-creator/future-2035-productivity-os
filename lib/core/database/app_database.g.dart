// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $ProjectsTable extends Projects
    with TableInfo<$ProjectsTable, ProjectRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProjectsTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
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
      maxTextLength: 200,
    ),
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
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<int> color = GeneratedColumn<int>(
    'color',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _iconMeta = const VerificationMeta('icon');
  @override
  late final GeneratedColumn<String> icon = GeneratedColumn<String>(
    'icon',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('spark'),
  );
  static const VerificationMeta _goalMeta = const VerificationMeta('goal');
  @override
  late final GeneratedColumn<String> goal = GeneratedColumn<String>(
    'goal',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _deadlineMeta = const VerificationMeta(
    'deadline',
  );
  @override
  late final GeneratedColumn<DateTime> deadline = GeneratedColumn<DateTime>(
    'deadline',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
    'notes',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _archivedMeta = const VerificationMeta(
    'archived',
  );
  @override
  late final GeneratedColumn<bool> archived = GeneratedColumn<bool>(
    'archived',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("archived" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    createdAt,
    updatedAt,
    id,
    name,
    description,
    color,
    icon,
    goal,
    deadline,
    notes,
    archived,
    deletedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'projects';
  @override
  VerificationContext validateIntegrity(
    Insertable<ProjectRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
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
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('color')) {
      context.handle(
        _colorMeta,
        color.isAcceptableOrUnknown(data['color']!, _colorMeta),
      );
    } else if (isInserting) {
      context.missing(_colorMeta);
    }
    if (data.containsKey('icon')) {
      context.handle(
        _iconMeta,
        icon.isAcceptableOrUnknown(data['icon']!, _iconMeta),
      );
    }
    if (data.containsKey('goal')) {
      context.handle(
        _goalMeta,
        goal.isAcceptableOrUnknown(data['goal']!, _goalMeta),
      );
    }
    if (data.containsKey('deadline')) {
      context.handle(
        _deadlineMeta,
        deadline.isAcceptableOrUnknown(data['deadline']!, _deadlineMeta),
      );
    }
    if (data.containsKey('notes')) {
      context.handle(
        _notesMeta,
        notes.isAcceptableOrUnknown(data['notes']!, _notesMeta),
      );
    }
    if (data.containsKey('archived')) {
      context.handle(
        _archivedMeta,
        archived.isAcceptableOrUnknown(data['archived']!, _archivedMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ProjectRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProjectRow(
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      )!,
      color: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}color'],
      )!,
      icon: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}icon'],
      )!,
      goal: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}goal'],
      )!,
      deadline: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deadline'],
      ),
      notes: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}notes'],
      )!,
      archived: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}archived'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
    );
  }

  @override
  $ProjectsTable createAlias(String alias) {
    return $ProjectsTable(attachedDatabase, alias);
  }
}

class ProjectRow extends DataClass implements Insertable<ProjectRow> {
  final DateTime createdAt;
  final DateTime updatedAt;
  final String id;
  final String name;
  final String description;
  final int color;
  final String icon;
  final String goal;
  final DateTime? deadline;
  final String notes;
  final bool archived;
  final DateTime? deletedAt;
  const ProjectRow({
    required this.createdAt,
    required this.updatedAt,
    required this.id,
    required this.name,
    required this.description,
    required this.color,
    required this.icon,
    required this.goal,
    this.deadline,
    required this.notes,
    required this.archived,
    this.deletedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['description'] = Variable<String>(description);
    map['color'] = Variable<int>(color);
    map['icon'] = Variable<String>(icon);
    map['goal'] = Variable<String>(goal);
    if (!nullToAbsent || deadline != null) {
      map['deadline'] = Variable<DateTime>(deadline);
    }
    map['notes'] = Variable<String>(notes);
    map['archived'] = Variable<bool>(archived);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    return map;
  }

  ProjectsCompanion toCompanion(bool nullToAbsent) {
    return ProjectsCompanion(
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      id: Value(id),
      name: Value(name),
      description: Value(description),
      color: Value(color),
      icon: Value(icon),
      goal: Value(goal),
      deadline: deadline == null && nullToAbsent
          ? const Value.absent()
          : Value(deadline),
      notes: Value(notes),
      archived: Value(archived),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    );
  }

  factory ProjectRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProjectRow(
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String>(json['description']),
      color: serializer.fromJson<int>(json['color']),
      icon: serializer.fromJson<String>(json['icon']),
      goal: serializer.fromJson<String>(json['goal']),
      deadline: serializer.fromJson<DateTime?>(json['deadline']),
      notes: serializer.fromJson<String>(json['notes']),
      archived: serializer.fromJson<bool>(json['archived']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String>(description),
      'color': serializer.toJson<int>(color),
      'icon': serializer.toJson<String>(icon),
      'goal': serializer.toJson<String>(goal),
      'deadline': serializer.toJson<DateTime?>(deadline),
      'notes': serializer.toJson<String>(notes),
      'archived': serializer.toJson<bool>(archived),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
    };
  }

  ProjectRow copyWith({
    DateTime? createdAt,
    DateTime? updatedAt,
    String? id,
    String? name,
    String? description,
    int? color,
    String? icon,
    String? goal,
    Value<DateTime?> deadline = const Value.absent(),
    String? notes,
    bool? archived,
    Value<DateTime?> deletedAt = const Value.absent(),
  }) => ProjectRow(
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    id: id ?? this.id,
    name: name ?? this.name,
    description: description ?? this.description,
    color: color ?? this.color,
    icon: icon ?? this.icon,
    goal: goal ?? this.goal,
    deadline: deadline.present ? deadline.value : this.deadline,
    notes: notes ?? this.notes,
    archived: archived ?? this.archived,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
  );
  ProjectRow copyWithCompanion(ProjectsCompanion data) {
    return ProjectRow(
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      description: data.description.present
          ? data.description.value
          : this.description,
      color: data.color.present ? data.color.value : this.color,
      icon: data.icon.present ? data.icon.value : this.icon,
      goal: data.goal.present ? data.goal.value : this.goal,
      deadline: data.deadline.present ? data.deadline.value : this.deadline,
      notes: data.notes.present ? data.notes.value : this.notes,
      archived: data.archived.present ? data.archived.value : this.archived,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ProjectRow(')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('color: $color, ')
          ..write('icon: $icon, ')
          ..write('goal: $goal, ')
          ..write('deadline: $deadline, ')
          ..write('notes: $notes, ')
          ..write('archived: $archived, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    createdAt,
    updatedAt,
    id,
    name,
    description,
    color,
    icon,
    goal,
    deadline,
    notes,
    archived,
    deletedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProjectRow &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.id == this.id &&
          other.name == this.name &&
          other.description == this.description &&
          other.color == this.color &&
          other.icon == this.icon &&
          other.goal == this.goal &&
          other.deadline == this.deadline &&
          other.notes == this.notes &&
          other.archived == this.archived &&
          other.deletedAt == this.deletedAt);
}

class ProjectsCompanion extends UpdateCompanion<ProjectRow> {
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<String> id;
  final Value<String> name;
  final Value<String> description;
  final Value<int> color;
  final Value<String> icon;
  final Value<String> goal;
  final Value<DateTime?> deadline;
  final Value<String> notes;
  final Value<bool> archived;
  final Value<DateTime?> deletedAt;
  final Value<int> rowid;
  const ProjectsCompanion({
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.color = const Value.absent(),
    this.icon = const Value.absent(),
    this.goal = const Value.absent(),
    this.deadline = const Value.absent(),
    this.notes = const Value.absent(),
    this.archived = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ProjectsCompanion.insert({
    required DateTime createdAt,
    required DateTime updatedAt,
    required String id,
    required String name,
    this.description = const Value.absent(),
    required int color,
    this.icon = const Value.absent(),
    this.goal = const Value.absent(),
    this.deadline = const Value.absent(),
    this.notes = const Value.absent(),
    this.archived = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : createdAt = Value(createdAt),
       updatedAt = Value(updatedAt),
       id = Value(id),
       name = Value(name),
       color = Value(color);
  static Insertable<ProjectRow> custom({
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? description,
    Expression<int>? color,
    Expression<String>? icon,
    Expression<String>? goal,
    Expression<DateTime>? deadline,
    Expression<String>? notes,
    Expression<bool>? archived,
    Expression<DateTime>? deletedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (color != null) 'color': color,
      if (icon != null) 'icon': icon,
      if (goal != null) 'goal': goal,
      if (deadline != null) 'deadline': deadline,
      if (notes != null) 'notes': notes,
      if (archived != null) 'archived': archived,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ProjectsCompanion copyWith({
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<String>? id,
    Value<String>? name,
    Value<String>? description,
    Value<int>? color,
    Value<String>? icon,
    Value<String>? goal,
    Value<DateTime?>? deadline,
    Value<String>? notes,
    Value<bool>? archived,
    Value<DateTime?>? deletedAt,
    Value<int>? rowid,
  }) {
    return ProjectsCompanion(
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      color: color ?? this.color,
      icon: icon ?? this.icon,
      goal: goal ?? this.goal,
      deadline: deadline ?? this.deadline,
      notes: notes ?? this.notes,
      archived: archived ?? this.archived,
      deletedAt: deletedAt ?? this.deletedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (color.present) {
      map['color'] = Variable<int>(color.value);
    }
    if (icon.present) {
      map['icon'] = Variable<String>(icon.value);
    }
    if (goal.present) {
      map['goal'] = Variable<String>(goal.value);
    }
    if (deadline.present) {
      map['deadline'] = Variable<DateTime>(deadline.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (archived.present) {
      map['archived'] = Variable<bool>(archived.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProjectsCompanion(')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('color: $color, ')
          ..write('icon: $icon, ')
          ..write('goal: $goal, ')
          ..write('deadline: $deadline, ')
          ..write('notes: $notes, ')
          ..write('archived: $archived, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TasksTable extends Tasks with TableInfo<$TasksTable, TaskRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TasksTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 1,
      maxTextLength: 500,
    ),
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
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
    'notes',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _projectIdMeta = const VerificationMeta(
    'projectId',
  );
  @override
  late final GeneratedColumn<String> projectId = GeneratedColumn<String>(
    'project_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES projects (id) ON DELETE SET NULL',
    ),
  );
  static const VerificationMeta _parentIdMeta = const VerificationMeta(
    'parentId',
  );
  @override
  late final GeneratedColumn<String> parentId = GeneratedColumn<String>(
    'parent_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES tasks (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _categoryMeta = const VerificationMeta(
    'category',
  );
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
    'category',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _priorityMeta = const VerificationMeta(
    'priority',
  );
  @override
  late final GeneratedColumn<int> priority = GeneratedColumn<int>(
    'priority',
    aliasedName,
    false,
    check: () => ComparableExpr(priority).isBetweenValues(0, 4),
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _doneMeta = const VerificationMeta('done');
  @override
  late final GeneratedColumn<bool> done = GeneratedColumn<bool>(
    'done',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("done" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _completedAtMeta = const VerificationMeta(
    'completedAt',
  );
  @override
  late final GeneratedColumn<DateTime> completedAt = GeneratedColumn<DateTime>(
    'completed_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _startAtMeta = const VerificationMeta(
    'startAt',
  );
  @override
  late final GeneratedColumn<DateTime> startAt = GeneratedColumn<DateTime>(
    'start_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _dueAtMeta = const VerificationMeta('dueAt');
  @override
  late final GeneratedColumn<DateTime> dueAt = GeneratedColumn<DateTime>(
    'due_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _dueHasTimeMeta = const VerificationMeta(
    'dueHasTime',
  );
  @override
  late final GeneratedColumn<bool> dueHasTime = GeneratedColumn<bool>(
    'due_has_time',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("due_has_time" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _reminderAtMeta = const VerificationMeta(
    'reminderAt',
  );
  @override
  late final GeneratedColumn<DateTime> reminderAt = GeneratedColumn<DateTime>(
    'reminder_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _recurrenceMeta = const VerificationMeta(
    'recurrence',
  );
  @override
  late final GeneratedColumn<String> recurrence = GeneratedColumn<String>(
    'recurrence',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _estimateMinutesMeta = const VerificationMeta(
    'estimateMinutes',
  );
  @override
  late final GeneratedColumn<int> estimateMinutes = GeneratedColumn<int>(
    'estimate_minutes',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _sortOrderMeta = const VerificationMeta(
    'sortOrder',
  );
  @override
  late final GeneratedColumn<int> sortOrder = GeneratedColumn<int>(
    'sort_order',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    createdAt,
    updatedAt,
    id,
    title,
    description,
    notes,
    projectId,
    parentId,
    category,
    priority,
    done,
    completedAt,
    startAt,
    dueAt,
    dueHasTime,
    reminderAt,
    recurrence,
    estimateMinutes,
    sortOrder,
    deletedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tasks';
  @override
  VerificationContext validateIntegrity(
    Insertable<TaskRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('notes')) {
      context.handle(
        _notesMeta,
        notes.isAcceptableOrUnknown(data['notes']!, _notesMeta),
      );
    }
    if (data.containsKey('project_id')) {
      context.handle(
        _projectIdMeta,
        projectId.isAcceptableOrUnknown(data['project_id']!, _projectIdMeta),
      );
    }
    if (data.containsKey('parent_id')) {
      context.handle(
        _parentIdMeta,
        parentId.isAcceptableOrUnknown(data['parent_id']!, _parentIdMeta),
      );
    }
    if (data.containsKey('category')) {
      context.handle(
        _categoryMeta,
        category.isAcceptableOrUnknown(data['category']!, _categoryMeta),
      );
    }
    if (data.containsKey('priority')) {
      context.handle(
        _priorityMeta,
        priority.isAcceptableOrUnknown(data['priority']!, _priorityMeta),
      );
    }
    if (data.containsKey('done')) {
      context.handle(
        _doneMeta,
        done.isAcceptableOrUnknown(data['done']!, _doneMeta),
      );
    }
    if (data.containsKey('completed_at')) {
      context.handle(
        _completedAtMeta,
        completedAt.isAcceptableOrUnknown(
          data['completed_at']!,
          _completedAtMeta,
        ),
      );
    }
    if (data.containsKey('start_at')) {
      context.handle(
        _startAtMeta,
        startAt.isAcceptableOrUnknown(data['start_at']!, _startAtMeta),
      );
    }
    if (data.containsKey('due_at')) {
      context.handle(
        _dueAtMeta,
        dueAt.isAcceptableOrUnknown(data['due_at']!, _dueAtMeta),
      );
    }
    if (data.containsKey('due_has_time')) {
      context.handle(
        _dueHasTimeMeta,
        dueHasTime.isAcceptableOrUnknown(
          data['due_has_time']!,
          _dueHasTimeMeta,
        ),
      );
    }
    if (data.containsKey('reminder_at')) {
      context.handle(
        _reminderAtMeta,
        reminderAt.isAcceptableOrUnknown(data['reminder_at']!, _reminderAtMeta),
      );
    }
    if (data.containsKey('recurrence')) {
      context.handle(
        _recurrenceMeta,
        recurrence.isAcceptableOrUnknown(data['recurrence']!, _recurrenceMeta),
      );
    }
    if (data.containsKey('estimate_minutes')) {
      context.handle(
        _estimateMinutesMeta,
        estimateMinutes.isAcceptableOrUnknown(
          data['estimate_minutes']!,
          _estimateMinutesMeta,
        ),
      );
    }
    if (data.containsKey('sort_order')) {
      context.handle(
        _sortOrderMeta,
        sortOrder.isAcceptableOrUnknown(data['sort_order']!, _sortOrderMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TaskRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TaskRow(
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      )!,
      notes: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}notes'],
      )!,
      projectId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}project_id'],
      ),
      parentId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}parent_id'],
      ),
      category: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}category'],
      )!,
      priority: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}priority'],
      )!,
      done: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}done'],
      )!,
      completedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}completed_at'],
      ),
      startAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}start_at'],
      ),
      dueAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}due_at'],
      ),
      dueHasTime: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}due_has_time'],
      )!,
      reminderAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}reminder_at'],
      ),
      recurrence: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}recurrence'],
      ),
      estimateMinutes: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}estimate_minutes'],
      ),
      sortOrder: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}sort_order'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
    );
  }

  @override
  $TasksTable createAlias(String alias) {
    return $TasksTable(attachedDatabase, alias);
  }
}

class TaskRow extends DataClass implements Insertable<TaskRow> {
  final DateTime createdAt;
  final DateTime updatedAt;
  final String id;
  final String title;
  final String description;
  final String notes;
  final String? projectId;
  final String? parentId;
  final String category;

  /// 0 = none, 1 = low, 2 = medium, 3 = high, 4 = urgent.
  final int priority;
  final bool done;
  final DateTime? completedAt;
  final DateTime? startAt;
  final DateTime? dueAt;

  /// True when [dueAt] carries a meaningful time of day.
  final bool dueHasTime;
  final DateTime? reminderAt;

  /// RFC 5545 RRULE subset, see `core/recurrence/recurrence_rule.dart`.
  final String? recurrence;
  final int? estimateMinutes;
  final int sortOrder;
  final DateTime? deletedAt;
  const TaskRow({
    required this.createdAt,
    required this.updatedAt,
    required this.id,
    required this.title,
    required this.description,
    required this.notes,
    this.projectId,
    this.parentId,
    required this.category,
    required this.priority,
    required this.done,
    this.completedAt,
    this.startAt,
    this.dueAt,
    required this.dueHasTime,
    this.reminderAt,
    this.recurrence,
    this.estimateMinutes,
    required this.sortOrder,
    this.deletedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['id'] = Variable<String>(id);
    map['title'] = Variable<String>(title);
    map['description'] = Variable<String>(description);
    map['notes'] = Variable<String>(notes);
    if (!nullToAbsent || projectId != null) {
      map['project_id'] = Variable<String>(projectId);
    }
    if (!nullToAbsent || parentId != null) {
      map['parent_id'] = Variable<String>(parentId);
    }
    map['category'] = Variable<String>(category);
    map['priority'] = Variable<int>(priority);
    map['done'] = Variable<bool>(done);
    if (!nullToAbsent || completedAt != null) {
      map['completed_at'] = Variable<DateTime>(completedAt);
    }
    if (!nullToAbsent || startAt != null) {
      map['start_at'] = Variable<DateTime>(startAt);
    }
    if (!nullToAbsent || dueAt != null) {
      map['due_at'] = Variable<DateTime>(dueAt);
    }
    map['due_has_time'] = Variable<bool>(dueHasTime);
    if (!nullToAbsent || reminderAt != null) {
      map['reminder_at'] = Variable<DateTime>(reminderAt);
    }
    if (!nullToAbsent || recurrence != null) {
      map['recurrence'] = Variable<String>(recurrence);
    }
    if (!nullToAbsent || estimateMinutes != null) {
      map['estimate_minutes'] = Variable<int>(estimateMinutes);
    }
    map['sort_order'] = Variable<int>(sortOrder);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    return map;
  }

  TasksCompanion toCompanion(bool nullToAbsent) {
    return TasksCompanion(
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      id: Value(id),
      title: Value(title),
      description: Value(description),
      notes: Value(notes),
      projectId: projectId == null && nullToAbsent
          ? const Value.absent()
          : Value(projectId),
      parentId: parentId == null && nullToAbsent
          ? const Value.absent()
          : Value(parentId),
      category: Value(category),
      priority: Value(priority),
      done: Value(done),
      completedAt: completedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(completedAt),
      startAt: startAt == null && nullToAbsent
          ? const Value.absent()
          : Value(startAt),
      dueAt: dueAt == null && nullToAbsent
          ? const Value.absent()
          : Value(dueAt),
      dueHasTime: Value(dueHasTime),
      reminderAt: reminderAt == null && nullToAbsent
          ? const Value.absent()
          : Value(reminderAt),
      recurrence: recurrence == null && nullToAbsent
          ? const Value.absent()
          : Value(recurrence),
      estimateMinutes: estimateMinutes == null && nullToAbsent
          ? const Value.absent()
          : Value(estimateMinutes),
      sortOrder: Value(sortOrder),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    );
  }

  factory TaskRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TaskRow(
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      id: serializer.fromJson<String>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String>(json['description']),
      notes: serializer.fromJson<String>(json['notes']),
      projectId: serializer.fromJson<String?>(json['projectId']),
      parentId: serializer.fromJson<String?>(json['parentId']),
      category: serializer.fromJson<String>(json['category']),
      priority: serializer.fromJson<int>(json['priority']),
      done: serializer.fromJson<bool>(json['done']),
      completedAt: serializer.fromJson<DateTime?>(json['completedAt']),
      startAt: serializer.fromJson<DateTime?>(json['startAt']),
      dueAt: serializer.fromJson<DateTime?>(json['dueAt']),
      dueHasTime: serializer.fromJson<bool>(json['dueHasTime']),
      reminderAt: serializer.fromJson<DateTime?>(json['reminderAt']),
      recurrence: serializer.fromJson<String?>(json['recurrence']),
      estimateMinutes: serializer.fromJson<int?>(json['estimateMinutes']),
      sortOrder: serializer.fromJson<int>(json['sortOrder']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'id': serializer.toJson<String>(id),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String>(description),
      'notes': serializer.toJson<String>(notes),
      'projectId': serializer.toJson<String?>(projectId),
      'parentId': serializer.toJson<String?>(parentId),
      'category': serializer.toJson<String>(category),
      'priority': serializer.toJson<int>(priority),
      'done': serializer.toJson<bool>(done),
      'completedAt': serializer.toJson<DateTime?>(completedAt),
      'startAt': serializer.toJson<DateTime?>(startAt),
      'dueAt': serializer.toJson<DateTime?>(dueAt),
      'dueHasTime': serializer.toJson<bool>(dueHasTime),
      'reminderAt': serializer.toJson<DateTime?>(reminderAt),
      'recurrence': serializer.toJson<String?>(recurrence),
      'estimateMinutes': serializer.toJson<int?>(estimateMinutes),
      'sortOrder': serializer.toJson<int>(sortOrder),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
    };
  }

  TaskRow copyWith({
    DateTime? createdAt,
    DateTime? updatedAt,
    String? id,
    String? title,
    String? description,
    String? notes,
    Value<String?> projectId = const Value.absent(),
    Value<String?> parentId = const Value.absent(),
    String? category,
    int? priority,
    bool? done,
    Value<DateTime?> completedAt = const Value.absent(),
    Value<DateTime?> startAt = const Value.absent(),
    Value<DateTime?> dueAt = const Value.absent(),
    bool? dueHasTime,
    Value<DateTime?> reminderAt = const Value.absent(),
    Value<String?> recurrence = const Value.absent(),
    Value<int?> estimateMinutes = const Value.absent(),
    int? sortOrder,
    Value<DateTime?> deletedAt = const Value.absent(),
  }) => TaskRow(
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    id: id ?? this.id,
    title: title ?? this.title,
    description: description ?? this.description,
    notes: notes ?? this.notes,
    projectId: projectId.present ? projectId.value : this.projectId,
    parentId: parentId.present ? parentId.value : this.parentId,
    category: category ?? this.category,
    priority: priority ?? this.priority,
    done: done ?? this.done,
    completedAt: completedAt.present ? completedAt.value : this.completedAt,
    startAt: startAt.present ? startAt.value : this.startAt,
    dueAt: dueAt.present ? dueAt.value : this.dueAt,
    dueHasTime: dueHasTime ?? this.dueHasTime,
    reminderAt: reminderAt.present ? reminderAt.value : this.reminderAt,
    recurrence: recurrence.present ? recurrence.value : this.recurrence,
    estimateMinutes: estimateMinutes.present
        ? estimateMinutes.value
        : this.estimateMinutes,
    sortOrder: sortOrder ?? this.sortOrder,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
  );
  TaskRow copyWithCompanion(TasksCompanion data) {
    return TaskRow(
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      description: data.description.present
          ? data.description.value
          : this.description,
      notes: data.notes.present ? data.notes.value : this.notes,
      projectId: data.projectId.present ? data.projectId.value : this.projectId,
      parentId: data.parentId.present ? data.parentId.value : this.parentId,
      category: data.category.present ? data.category.value : this.category,
      priority: data.priority.present ? data.priority.value : this.priority,
      done: data.done.present ? data.done.value : this.done,
      completedAt: data.completedAt.present
          ? data.completedAt.value
          : this.completedAt,
      startAt: data.startAt.present ? data.startAt.value : this.startAt,
      dueAt: data.dueAt.present ? data.dueAt.value : this.dueAt,
      dueHasTime: data.dueHasTime.present
          ? data.dueHasTime.value
          : this.dueHasTime,
      reminderAt: data.reminderAt.present
          ? data.reminderAt.value
          : this.reminderAt,
      recurrence: data.recurrence.present
          ? data.recurrence.value
          : this.recurrence,
      estimateMinutes: data.estimateMinutes.present
          ? data.estimateMinutes.value
          : this.estimateMinutes,
      sortOrder: data.sortOrder.present ? data.sortOrder.value : this.sortOrder,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TaskRow(')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('notes: $notes, ')
          ..write('projectId: $projectId, ')
          ..write('parentId: $parentId, ')
          ..write('category: $category, ')
          ..write('priority: $priority, ')
          ..write('done: $done, ')
          ..write('completedAt: $completedAt, ')
          ..write('startAt: $startAt, ')
          ..write('dueAt: $dueAt, ')
          ..write('dueHasTime: $dueHasTime, ')
          ..write('reminderAt: $reminderAt, ')
          ..write('recurrence: $recurrence, ')
          ..write('estimateMinutes: $estimateMinutes, ')
          ..write('sortOrder: $sortOrder, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    createdAt,
    updatedAt,
    id,
    title,
    description,
    notes,
    projectId,
    parentId,
    category,
    priority,
    done,
    completedAt,
    startAt,
    dueAt,
    dueHasTime,
    reminderAt,
    recurrence,
    estimateMinutes,
    sortOrder,
    deletedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TaskRow &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.id == this.id &&
          other.title == this.title &&
          other.description == this.description &&
          other.notes == this.notes &&
          other.projectId == this.projectId &&
          other.parentId == this.parentId &&
          other.category == this.category &&
          other.priority == this.priority &&
          other.done == this.done &&
          other.completedAt == this.completedAt &&
          other.startAt == this.startAt &&
          other.dueAt == this.dueAt &&
          other.dueHasTime == this.dueHasTime &&
          other.reminderAt == this.reminderAt &&
          other.recurrence == this.recurrence &&
          other.estimateMinutes == this.estimateMinutes &&
          other.sortOrder == this.sortOrder &&
          other.deletedAt == this.deletedAt);
}

class TasksCompanion extends UpdateCompanion<TaskRow> {
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<String> id;
  final Value<String> title;
  final Value<String> description;
  final Value<String> notes;
  final Value<String?> projectId;
  final Value<String?> parentId;
  final Value<String> category;
  final Value<int> priority;
  final Value<bool> done;
  final Value<DateTime?> completedAt;
  final Value<DateTime?> startAt;
  final Value<DateTime?> dueAt;
  final Value<bool> dueHasTime;
  final Value<DateTime?> reminderAt;
  final Value<String?> recurrence;
  final Value<int?> estimateMinutes;
  final Value<int> sortOrder;
  final Value<DateTime?> deletedAt;
  final Value<int> rowid;
  const TasksCompanion({
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.notes = const Value.absent(),
    this.projectId = const Value.absent(),
    this.parentId = const Value.absent(),
    this.category = const Value.absent(),
    this.priority = const Value.absent(),
    this.done = const Value.absent(),
    this.completedAt = const Value.absent(),
    this.startAt = const Value.absent(),
    this.dueAt = const Value.absent(),
    this.dueHasTime = const Value.absent(),
    this.reminderAt = const Value.absent(),
    this.recurrence = const Value.absent(),
    this.estimateMinutes = const Value.absent(),
    this.sortOrder = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TasksCompanion.insert({
    required DateTime createdAt,
    required DateTime updatedAt,
    required String id,
    required String title,
    this.description = const Value.absent(),
    this.notes = const Value.absent(),
    this.projectId = const Value.absent(),
    this.parentId = const Value.absent(),
    this.category = const Value.absent(),
    this.priority = const Value.absent(),
    this.done = const Value.absent(),
    this.completedAt = const Value.absent(),
    this.startAt = const Value.absent(),
    this.dueAt = const Value.absent(),
    this.dueHasTime = const Value.absent(),
    this.reminderAt = const Value.absent(),
    this.recurrence = const Value.absent(),
    this.estimateMinutes = const Value.absent(),
    this.sortOrder = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : createdAt = Value(createdAt),
       updatedAt = Value(updatedAt),
       id = Value(id),
       title = Value(title);
  static Insertable<TaskRow> custom({
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? id,
    Expression<String>? title,
    Expression<String>? description,
    Expression<String>? notes,
    Expression<String>? projectId,
    Expression<String>? parentId,
    Expression<String>? category,
    Expression<int>? priority,
    Expression<bool>? done,
    Expression<DateTime>? completedAt,
    Expression<DateTime>? startAt,
    Expression<DateTime>? dueAt,
    Expression<bool>? dueHasTime,
    Expression<DateTime>? reminderAt,
    Expression<String>? recurrence,
    Expression<int>? estimateMinutes,
    Expression<int>? sortOrder,
    Expression<DateTime>? deletedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (notes != null) 'notes': notes,
      if (projectId != null) 'project_id': projectId,
      if (parentId != null) 'parent_id': parentId,
      if (category != null) 'category': category,
      if (priority != null) 'priority': priority,
      if (done != null) 'done': done,
      if (completedAt != null) 'completed_at': completedAt,
      if (startAt != null) 'start_at': startAt,
      if (dueAt != null) 'due_at': dueAt,
      if (dueHasTime != null) 'due_has_time': dueHasTime,
      if (reminderAt != null) 'reminder_at': reminderAt,
      if (recurrence != null) 'recurrence': recurrence,
      if (estimateMinutes != null) 'estimate_minutes': estimateMinutes,
      if (sortOrder != null) 'sort_order': sortOrder,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TasksCompanion copyWith({
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<String>? id,
    Value<String>? title,
    Value<String>? description,
    Value<String>? notes,
    Value<String?>? projectId,
    Value<String?>? parentId,
    Value<String>? category,
    Value<int>? priority,
    Value<bool>? done,
    Value<DateTime?>? completedAt,
    Value<DateTime?>? startAt,
    Value<DateTime?>? dueAt,
    Value<bool>? dueHasTime,
    Value<DateTime?>? reminderAt,
    Value<String?>? recurrence,
    Value<int?>? estimateMinutes,
    Value<int>? sortOrder,
    Value<DateTime?>? deletedAt,
    Value<int>? rowid,
  }) {
    return TasksCompanion(
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      notes: notes ?? this.notes,
      projectId: projectId ?? this.projectId,
      parentId: parentId ?? this.parentId,
      category: category ?? this.category,
      priority: priority ?? this.priority,
      done: done ?? this.done,
      completedAt: completedAt ?? this.completedAt,
      startAt: startAt ?? this.startAt,
      dueAt: dueAt ?? this.dueAt,
      dueHasTime: dueHasTime ?? this.dueHasTime,
      reminderAt: reminderAt ?? this.reminderAt,
      recurrence: recurrence ?? this.recurrence,
      estimateMinutes: estimateMinutes ?? this.estimateMinutes,
      sortOrder: sortOrder ?? this.sortOrder,
      deletedAt: deletedAt ?? this.deletedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (projectId.present) {
      map['project_id'] = Variable<String>(projectId.value);
    }
    if (parentId.present) {
      map['parent_id'] = Variable<String>(parentId.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (priority.present) {
      map['priority'] = Variable<int>(priority.value);
    }
    if (done.present) {
      map['done'] = Variable<bool>(done.value);
    }
    if (completedAt.present) {
      map['completed_at'] = Variable<DateTime>(completedAt.value);
    }
    if (startAt.present) {
      map['start_at'] = Variable<DateTime>(startAt.value);
    }
    if (dueAt.present) {
      map['due_at'] = Variable<DateTime>(dueAt.value);
    }
    if (dueHasTime.present) {
      map['due_has_time'] = Variable<bool>(dueHasTime.value);
    }
    if (reminderAt.present) {
      map['reminder_at'] = Variable<DateTime>(reminderAt.value);
    }
    if (recurrence.present) {
      map['recurrence'] = Variable<String>(recurrence.value);
    }
    if (estimateMinutes.present) {
      map['estimate_minutes'] = Variable<int>(estimateMinutes.value);
    }
    if (sortOrder.present) {
      map['sort_order'] = Variable<int>(sortOrder.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TasksCompanion(')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('notes: $notes, ')
          ..write('projectId: $projectId, ')
          ..write('parentId: $parentId, ')
          ..write('category: $category, ')
          ..write('priority: $priority, ')
          ..write('done: $done, ')
          ..write('completedAt: $completedAt, ')
          ..write('startAt: $startAt, ')
          ..write('dueAt: $dueAt, ')
          ..write('dueHasTime: $dueHasTime, ')
          ..write('reminderAt: $reminderAt, ')
          ..write('recurrence: $recurrence, ')
          ..write('estimateMinutes: $estimateMinutes, ')
          ..write('sortOrder: $sortOrder, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ChecklistItemsTable extends ChecklistItems
    with TableInfo<$ChecklistItemsTable, ChecklistItemRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ChecklistItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _taskIdMeta = const VerificationMeta('taskId');
  @override
  late final GeneratedColumn<String> taskId = GeneratedColumn<String>(
    'task_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES tasks (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
    'label',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _doneMeta = const VerificationMeta('done');
  @override
  late final GeneratedColumn<bool> done = GeneratedColumn<bool>(
    'done',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("done" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _positionMeta = const VerificationMeta(
    'position',
  );
  @override
  late final GeneratedColumn<int> position = GeneratedColumn<int>(
    'position',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  @override
  List<GeneratedColumn> get $columns => [id, taskId, label, done, position];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'checklist_items';
  @override
  VerificationContext validateIntegrity(
    Insertable<ChecklistItemRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('task_id')) {
      context.handle(
        _taskIdMeta,
        taskId.isAcceptableOrUnknown(data['task_id']!, _taskIdMeta),
      );
    } else if (isInserting) {
      context.missing(_taskIdMeta);
    }
    if (data.containsKey('label')) {
      context.handle(
        _labelMeta,
        label.isAcceptableOrUnknown(data['label']!, _labelMeta),
      );
    } else if (isInserting) {
      context.missing(_labelMeta);
    }
    if (data.containsKey('done')) {
      context.handle(
        _doneMeta,
        done.isAcceptableOrUnknown(data['done']!, _doneMeta),
      );
    }
    if (data.containsKey('position')) {
      context.handle(
        _positionMeta,
        position.isAcceptableOrUnknown(data['position']!, _positionMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ChecklistItemRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ChecklistItemRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      taskId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}task_id'],
      )!,
      label: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}label'],
      )!,
      done: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}done'],
      )!,
      position: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}position'],
      )!,
    );
  }

  @override
  $ChecklistItemsTable createAlias(String alias) {
    return $ChecklistItemsTable(attachedDatabase, alias);
  }
}

class ChecklistItemRow extends DataClass
    implements Insertable<ChecklistItemRow> {
  final String id;
  final String taskId;
  final String label;
  final bool done;
  final int position;
  const ChecklistItemRow({
    required this.id,
    required this.taskId,
    required this.label,
    required this.done,
    required this.position,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['task_id'] = Variable<String>(taskId);
    map['label'] = Variable<String>(label);
    map['done'] = Variable<bool>(done);
    map['position'] = Variable<int>(position);
    return map;
  }

  ChecklistItemsCompanion toCompanion(bool nullToAbsent) {
    return ChecklistItemsCompanion(
      id: Value(id),
      taskId: Value(taskId),
      label: Value(label),
      done: Value(done),
      position: Value(position),
    );
  }

  factory ChecklistItemRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ChecklistItemRow(
      id: serializer.fromJson<String>(json['id']),
      taskId: serializer.fromJson<String>(json['taskId']),
      label: serializer.fromJson<String>(json['label']),
      done: serializer.fromJson<bool>(json['done']),
      position: serializer.fromJson<int>(json['position']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'taskId': serializer.toJson<String>(taskId),
      'label': serializer.toJson<String>(label),
      'done': serializer.toJson<bool>(done),
      'position': serializer.toJson<int>(position),
    };
  }

  ChecklistItemRow copyWith({
    String? id,
    String? taskId,
    String? label,
    bool? done,
    int? position,
  }) => ChecklistItemRow(
    id: id ?? this.id,
    taskId: taskId ?? this.taskId,
    label: label ?? this.label,
    done: done ?? this.done,
    position: position ?? this.position,
  );
  ChecklistItemRow copyWithCompanion(ChecklistItemsCompanion data) {
    return ChecklistItemRow(
      id: data.id.present ? data.id.value : this.id,
      taskId: data.taskId.present ? data.taskId.value : this.taskId,
      label: data.label.present ? data.label.value : this.label,
      done: data.done.present ? data.done.value : this.done,
      position: data.position.present ? data.position.value : this.position,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ChecklistItemRow(')
          ..write('id: $id, ')
          ..write('taskId: $taskId, ')
          ..write('label: $label, ')
          ..write('done: $done, ')
          ..write('position: $position')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, taskId, label, done, position);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ChecklistItemRow &&
          other.id == this.id &&
          other.taskId == this.taskId &&
          other.label == this.label &&
          other.done == this.done &&
          other.position == this.position);
}

class ChecklistItemsCompanion extends UpdateCompanion<ChecklistItemRow> {
  final Value<String> id;
  final Value<String> taskId;
  final Value<String> label;
  final Value<bool> done;
  final Value<int> position;
  final Value<int> rowid;
  const ChecklistItemsCompanion({
    this.id = const Value.absent(),
    this.taskId = const Value.absent(),
    this.label = const Value.absent(),
    this.done = const Value.absent(),
    this.position = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ChecklistItemsCompanion.insert({
    required String id,
    required String taskId,
    required String label,
    this.done = const Value.absent(),
    this.position = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       taskId = Value(taskId),
       label = Value(label);
  static Insertable<ChecklistItemRow> custom({
    Expression<String>? id,
    Expression<String>? taskId,
    Expression<String>? label,
    Expression<bool>? done,
    Expression<int>? position,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (taskId != null) 'task_id': taskId,
      if (label != null) 'label': label,
      if (done != null) 'done': done,
      if (position != null) 'position': position,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ChecklistItemsCompanion copyWith({
    Value<String>? id,
    Value<String>? taskId,
    Value<String>? label,
    Value<bool>? done,
    Value<int>? position,
    Value<int>? rowid,
  }) {
    return ChecklistItemsCompanion(
      id: id ?? this.id,
      taskId: taskId ?? this.taskId,
      label: label ?? this.label,
      done: done ?? this.done,
      position: position ?? this.position,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (taskId.present) {
      map['task_id'] = Variable<String>(taskId.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (done.present) {
      map['done'] = Variable<bool>(done.value);
    }
    if (position.present) {
      map['position'] = Variable<int>(position.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ChecklistItemsCompanion(')
          ..write('id: $id, ')
          ..write('taskId: $taskId, ')
          ..write('label: $label, ')
          ..write('done: $done, ')
          ..write('position: $position, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LabelsTable extends Labels with TableInfo<$LabelsTable, LabelRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LabelsTable(this.attachedDatabase, [this._alias]);
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
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
  );
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<int> color = GeneratedColumn<int>(
    'color',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, name, color];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'labels';
  @override
  VerificationContext validateIntegrity(
    Insertable<LabelRow> instance, {
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
    if (data.containsKey('color')) {
      context.handle(
        _colorMeta,
        color.isAcceptableOrUnknown(data['color']!, _colorMeta),
      );
    } else if (isInserting) {
      context.missing(_colorMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LabelRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LabelRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      color: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}color'],
      )!,
    );
  }

  @override
  $LabelsTable createAlias(String alias) {
    return $LabelsTable(attachedDatabase, alias);
  }
}

class LabelRow extends DataClass implements Insertable<LabelRow> {
  final String id;
  final String name;
  final int color;
  const LabelRow({required this.id, required this.name, required this.color});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['color'] = Variable<int>(color);
    return map;
  }

  LabelsCompanion toCompanion(bool nullToAbsent) {
    return LabelsCompanion(
      id: Value(id),
      name: Value(name),
      color: Value(color),
    );
  }

  factory LabelRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LabelRow(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      color: serializer.fromJson<int>(json['color']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'color': serializer.toJson<int>(color),
    };
  }

  LabelRow copyWith({String? id, String? name, int? color}) => LabelRow(
    id: id ?? this.id,
    name: name ?? this.name,
    color: color ?? this.color,
  );
  LabelRow copyWithCompanion(LabelsCompanion data) {
    return LabelRow(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      color: data.color.present ? data.color.value : this.color,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LabelRow(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('color: $color')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, color);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LabelRow &&
          other.id == this.id &&
          other.name == this.name &&
          other.color == this.color);
}

class LabelsCompanion extends UpdateCompanion<LabelRow> {
  final Value<String> id;
  final Value<String> name;
  final Value<int> color;
  final Value<int> rowid;
  const LabelsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.color = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LabelsCompanion.insert({
    required String id,
    required String name,
    required int color,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name),
       color = Value(color);
  static Insertable<LabelRow> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<int>? color,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (color != null) 'color': color,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LabelsCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<int>? color,
    Value<int>? rowid,
  }) {
    return LabelsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      color: color ?? this.color,
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
    if (color.present) {
      map['color'] = Variable<int>(color.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LabelsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('color: $color, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TaskLabelsTable extends TaskLabels
    with TableInfo<$TaskLabelsTable, TaskLabel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TaskLabelsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _taskIdMeta = const VerificationMeta('taskId');
  @override
  late final GeneratedColumn<String> taskId = GeneratedColumn<String>(
    'task_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES tasks (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _labelIdMeta = const VerificationMeta(
    'labelId',
  );
  @override
  late final GeneratedColumn<String> labelId = GeneratedColumn<String>(
    'label_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES labels (id) ON DELETE CASCADE',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [taskId, labelId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'task_labels';
  @override
  VerificationContext validateIntegrity(
    Insertable<TaskLabel> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('task_id')) {
      context.handle(
        _taskIdMeta,
        taskId.isAcceptableOrUnknown(data['task_id']!, _taskIdMeta),
      );
    } else if (isInserting) {
      context.missing(_taskIdMeta);
    }
    if (data.containsKey('label_id')) {
      context.handle(
        _labelIdMeta,
        labelId.isAcceptableOrUnknown(data['label_id']!, _labelIdMeta),
      );
    } else if (isInserting) {
      context.missing(_labelIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {taskId, labelId};
  @override
  TaskLabel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TaskLabel(
      taskId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}task_id'],
      )!,
      labelId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}label_id'],
      )!,
    );
  }

  @override
  $TaskLabelsTable createAlias(String alias) {
    return $TaskLabelsTable(attachedDatabase, alias);
  }
}

class TaskLabel extends DataClass implements Insertable<TaskLabel> {
  final String taskId;
  final String labelId;
  const TaskLabel({required this.taskId, required this.labelId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['task_id'] = Variable<String>(taskId);
    map['label_id'] = Variable<String>(labelId);
    return map;
  }

  TaskLabelsCompanion toCompanion(bool nullToAbsent) {
    return TaskLabelsCompanion(taskId: Value(taskId), labelId: Value(labelId));
  }

  factory TaskLabel.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TaskLabel(
      taskId: serializer.fromJson<String>(json['taskId']),
      labelId: serializer.fromJson<String>(json['labelId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'taskId': serializer.toJson<String>(taskId),
      'labelId': serializer.toJson<String>(labelId),
    };
  }

  TaskLabel copyWith({String? taskId, String? labelId}) => TaskLabel(
    taskId: taskId ?? this.taskId,
    labelId: labelId ?? this.labelId,
  );
  TaskLabel copyWithCompanion(TaskLabelsCompanion data) {
    return TaskLabel(
      taskId: data.taskId.present ? data.taskId.value : this.taskId,
      labelId: data.labelId.present ? data.labelId.value : this.labelId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TaskLabel(')
          ..write('taskId: $taskId, ')
          ..write('labelId: $labelId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(taskId, labelId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TaskLabel &&
          other.taskId == this.taskId &&
          other.labelId == this.labelId);
}

class TaskLabelsCompanion extends UpdateCompanion<TaskLabel> {
  final Value<String> taskId;
  final Value<String> labelId;
  final Value<int> rowid;
  const TaskLabelsCompanion({
    this.taskId = const Value.absent(),
    this.labelId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TaskLabelsCompanion.insert({
    required String taskId,
    required String labelId,
    this.rowid = const Value.absent(),
  }) : taskId = Value(taskId),
       labelId = Value(labelId);
  static Insertable<TaskLabel> custom({
    Expression<String>? taskId,
    Expression<String>? labelId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (taskId != null) 'task_id': taskId,
      if (labelId != null) 'label_id': labelId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TaskLabelsCompanion copyWith({
    Value<String>? taskId,
    Value<String>? labelId,
    Value<int>? rowid,
  }) {
    return TaskLabelsCompanion(
      taskId: taskId ?? this.taskId,
      labelId: labelId ?? this.labelId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (taskId.present) {
      map['task_id'] = Variable<String>(taskId.value);
    }
    if (labelId.present) {
      map['label_id'] = Variable<String>(labelId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TaskLabelsCompanion(')
          ..write('taskId: $taskId, ')
          ..write('labelId: $labelId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TaskDependenciesTable extends TaskDependencies
    with TableInfo<$TaskDependenciesTable, TaskDependency> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TaskDependenciesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _taskIdMeta = const VerificationMeta('taskId');
  @override
  late final GeneratedColumn<String> taskId = GeneratedColumn<String>(
    'task_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES tasks (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _dependsOnIdMeta = const VerificationMeta(
    'dependsOnId',
  );
  @override
  late final GeneratedColumn<String> dependsOnId = GeneratedColumn<String>(
    'depends_on_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES tasks (id) ON DELETE CASCADE',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [taskId, dependsOnId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'task_dependencies';
  @override
  VerificationContext validateIntegrity(
    Insertable<TaskDependency> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('task_id')) {
      context.handle(
        _taskIdMeta,
        taskId.isAcceptableOrUnknown(data['task_id']!, _taskIdMeta),
      );
    } else if (isInserting) {
      context.missing(_taskIdMeta);
    }
    if (data.containsKey('depends_on_id')) {
      context.handle(
        _dependsOnIdMeta,
        dependsOnId.isAcceptableOrUnknown(
          data['depends_on_id']!,
          _dependsOnIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_dependsOnIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {taskId, dependsOnId};
  @override
  TaskDependency map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TaskDependency(
      taskId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}task_id'],
      )!,
      dependsOnId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}depends_on_id'],
      )!,
    );
  }

  @override
  $TaskDependenciesTable createAlias(String alias) {
    return $TaskDependenciesTable(attachedDatabase, alias);
  }
}

class TaskDependency extends DataClass implements Insertable<TaskDependency> {
  final String taskId;
  final String dependsOnId;
  const TaskDependency({required this.taskId, required this.dependsOnId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['task_id'] = Variable<String>(taskId);
    map['depends_on_id'] = Variable<String>(dependsOnId);
    return map;
  }

  TaskDependenciesCompanion toCompanion(bool nullToAbsent) {
    return TaskDependenciesCompanion(
      taskId: Value(taskId),
      dependsOnId: Value(dependsOnId),
    );
  }

  factory TaskDependency.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TaskDependency(
      taskId: serializer.fromJson<String>(json['taskId']),
      dependsOnId: serializer.fromJson<String>(json['dependsOnId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'taskId': serializer.toJson<String>(taskId),
      'dependsOnId': serializer.toJson<String>(dependsOnId),
    };
  }

  TaskDependency copyWith({String? taskId, String? dependsOnId}) =>
      TaskDependency(
        taskId: taskId ?? this.taskId,
        dependsOnId: dependsOnId ?? this.dependsOnId,
      );
  TaskDependency copyWithCompanion(TaskDependenciesCompanion data) {
    return TaskDependency(
      taskId: data.taskId.present ? data.taskId.value : this.taskId,
      dependsOnId: data.dependsOnId.present
          ? data.dependsOnId.value
          : this.dependsOnId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TaskDependency(')
          ..write('taskId: $taskId, ')
          ..write('dependsOnId: $dependsOnId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(taskId, dependsOnId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TaskDependency &&
          other.taskId == this.taskId &&
          other.dependsOnId == this.dependsOnId);
}

class TaskDependenciesCompanion extends UpdateCompanion<TaskDependency> {
  final Value<String> taskId;
  final Value<String> dependsOnId;
  final Value<int> rowid;
  const TaskDependenciesCompanion({
    this.taskId = const Value.absent(),
    this.dependsOnId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TaskDependenciesCompanion.insert({
    required String taskId,
    required String dependsOnId,
    this.rowid = const Value.absent(),
  }) : taskId = Value(taskId),
       dependsOnId = Value(dependsOnId);
  static Insertable<TaskDependency> custom({
    Expression<String>? taskId,
    Expression<String>? dependsOnId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (taskId != null) 'task_id': taskId,
      if (dependsOnId != null) 'depends_on_id': dependsOnId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TaskDependenciesCompanion copyWith({
    Value<String>? taskId,
    Value<String>? dependsOnId,
    Value<int>? rowid,
  }) {
    return TaskDependenciesCompanion(
      taskId: taskId ?? this.taskId,
      dependsOnId: dependsOnId ?? this.dependsOnId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (taskId.present) {
      map['task_id'] = Variable<String>(taskId.value);
    }
    if (dependsOnId.present) {
      map['depends_on_id'] = Variable<String>(dependsOnId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TaskDependenciesCompanion(')
          ..write('taskId: $taskId, ')
          ..write('dependsOnId: $dependsOnId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FocusSessionsTable extends FocusSessions
    with TableInfo<$FocusSessionsTable, FocusSessionRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FocusSessionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _modeMeta = const VerificationMeta('mode');
  @override
  late final GeneratedColumn<String> mode = GeneratedColumn<String>(
    'mode',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _phaseMeta = const VerificationMeta('phase');
  @override
  late final GeneratedColumn<String> phase = GeneratedColumn<String>(
    'phase',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('work'),
  );
  static const VerificationMeta _plannedSecondsMeta = const VerificationMeta(
    'plannedSeconds',
  );
  @override
  late final GeneratedColumn<int> plannedSeconds = GeneratedColumn<int>(
    'planned_seconds',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _activeSecondsMeta = const VerificationMeta(
    'activeSeconds',
  );
  @override
  late final GeneratedColumn<int> activeSeconds = GeneratedColumn<int>(
    'active_seconds',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _startedAtMeta = const VerificationMeta(
    'startedAt',
  );
  @override
  late final GeneratedColumn<DateTime> startedAt = GeneratedColumn<DateTime>(
    'started_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _endedAtMeta = const VerificationMeta(
    'endedAt',
  );
  @override
  late final GeneratedColumn<DateTime> endedAt = GeneratedColumn<DateTime>(
    'ended_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _outcomeMeta = const VerificationMeta(
    'outcome',
  );
  @override
  late final GeneratedColumn<String> outcome = GeneratedColumn<String>(
    'outcome',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _taskIdMeta = const VerificationMeta('taskId');
  @override
  late final GeneratedColumn<String> taskId = GeneratedColumn<String>(
    'task_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES tasks (id) ON DELETE SET NULL',
    ),
  );
  static const VerificationMeta _projectIdMeta = const VerificationMeta(
    'projectId',
  );
  @override
  late final GeneratedColumn<String> projectId = GeneratedColumn<String>(
    'project_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES projects (id) ON DELETE SET NULL',
    ),
  );
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
    'note',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    mode,
    phase,
    plannedSeconds,
    activeSeconds,
    startedAt,
    endedAt,
    outcome,
    taskId,
    projectId,
    note,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'focus_sessions';
  @override
  VerificationContext validateIntegrity(
    Insertable<FocusSessionRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('mode')) {
      context.handle(
        _modeMeta,
        mode.isAcceptableOrUnknown(data['mode']!, _modeMeta),
      );
    } else if (isInserting) {
      context.missing(_modeMeta);
    }
    if (data.containsKey('phase')) {
      context.handle(
        _phaseMeta,
        phase.isAcceptableOrUnknown(data['phase']!, _phaseMeta),
      );
    }
    if (data.containsKey('planned_seconds')) {
      context.handle(
        _plannedSecondsMeta,
        plannedSeconds.isAcceptableOrUnknown(
          data['planned_seconds']!,
          _plannedSecondsMeta,
        ),
      );
    }
    if (data.containsKey('active_seconds')) {
      context.handle(
        _activeSecondsMeta,
        activeSeconds.isAcceptableOrUnknown(
          data['active_seconds']!,
          _activeSecondsMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_activeSecondsMeta);
    }
    if (data.containsKey('started_at')) {
      context.handle(
        _startedAtMeta,
        startedAt.isAcceptableOrUnknown(data['started_at']!, _startedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_startedAtMeta);
    }
    if (data.containsKey('ended_at')) {
      context.handle(
        _endedAtMeta,
        endedAt.isAcceptableOrUnknown(data['ended_at']!, _endedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_endedAtMeta);
    }
    if (data.containsKey('outcome')) {
      context.handle(
        _outcomeMeta,
        outcome.isAcceptableOrUnknown(data['outcome']!, _outcomeMeta),
      );
    } else if (isInserting) {
      context.missing(_outcomeMeta);
    }
    if (data.containsKey('task_id')) {
      context.handle(
        _taskIdMeta,
        taskId.isAcceptableOrUnknown(data['task_id']!, _taskIdMeta),
      );
    }
    if (data.containsKey('project_id')) {
      context.handle(
        _projectIdMeta,
        projectId.isAcceptableOrUnknown(data['project_id']!, _projectIdMeta),
      );
    }
    if (data.containsKey('note')) {
      context.handle(
        _noteMeta,
        note.isAcceptableOrUnknown(data['note']!, _noteMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FocusSessionRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FocusSessionRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      mode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}mode'],
      )!,
      phase: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}phase'],
      )!,
      plannedSeconds: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}planned_seconds'],
      ),
      activeSeconds: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}active_seconds'],
      )!,
      startedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}started_at'],
      )!,
      endedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}ended_at'],
      )!,
      outcome: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}outcome'],
      )!,
      taskId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}task_id'],
      ),
      projectId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}project_id'],
      ),
      note: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}note'],
      )!,
    );
  }

  @override
  $FocusSessionsTable createAlias(String alias) {
    return $FocusSessionsTable(attachedDatabase, alias);
  }
}

class FocusSessionRow extends DataClass implements Insertable<FocusSessionRow> {
  final String id;

  /// pomodoro | countdown | countup | open
  final String mode;

  /// work | shortBreak | longBreak
  final String phase;
  final int? plannedSeconds;
  final int activeSeconds;
  final DateTime startedAt;
  final DateTime endedAt;

  /// completed | interrupted
  final String outcome;
  final String? taskId;
  final String? projectId;
  final String note;
  const FocusSessionRow({
    required this.id,
    required this.mode,
    required this.phase,
    this.plannedSeconds,
    required this.activeSeconds,
    required this.startedAt,
    required this.endedAt,
    required this.outcome,
    this.taskId,
    this.projectId,
    required this.note,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['mode'] = Variable<String>(mode);
    map['phase'] = Variable<String>(phase);
    if (!nullToAbsent || plannedSeconds != null) {
      map['planned_seconds'] = Variable<int>(plannedSeconds);
    }
    map['active_seconds'] = Variable<int>(activeSeconds);
    map['started_at'] = Variable<DateTime>(startedAt);
    map['ended_at'] = Variable<DateTime>(endedAt);
    map['outcome'] = Variable<String>(outcome);
    if (!nullToAbsent || taskId != null) {
      map['task_id'] = Variable<String>(taskId);
    }
    if (!nullToAbsent || projectId != null) {
      map['project_id'] = Variable<String>(projectId);
    }
    map['note'] = Variable<String>(note);
    return map;
  }

  FocusSessionsCompanion toCompanion(bool nullToAbsent) {
    return FocusSessionsCompanion(
      id: Value(id),
      mode: Value(mode),
      phase: Value(phase),
      plannedSeconds: plannedSeconds == null && nullToAbsent
          ? const Value.absent()
          : Value(plannedSeconds),
      activeSeconds: Value(activeSeconds),
      startedAt: Value(startedAt),
      endedAt: Value(endedAt),
      outcome: Value(outcome),
      taskId: taskId == null && nullToAbsent
          ? const Value.absent()
          : Value(taskId),
      projectId: projectId == null && nullToAbsent
          ? const Value.absent()
          : Value(projectId),
      note: Value(note),
    );
  }

  factory FocusSessionRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FocusSessionRow(
      id: serializer.fromJson<String>(json['id']),
      mode: serializer.fromJson<String>(json['mode']),
      phase: serializer.fromJson<String>(json['phase']),
      plannedSeconds: serializer.fromJson<int?>(json['plannedSeconds']),
      activeSeconds: serializer.fromJson<int>(json['activeSeconds']),
      startedAt: serializer.fromJson<DateTime>(json['startedAt']),
      endedAt: serializer.fromJson<DateTime>(json['endedAt']),
      outcome: serializer.fromJson<String>(json['outcome']),
      taskId: serializer.fromJson<String?>(json['taskId']),
      projectId: serializer.fromJson<String?>(json['projectId']),
      note: serializer.fromJson<String>(json['note']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'mode': serializer.toJson<String>(mode),
      'phase': serializer.toJson<String>(phase),
      'plannedSeconds': serializer.toJson<int?>(plannedSeconds),
      'activeSeconds': serializer.toJson<int>(activeSeconds),
      'startedAt': serializer.toJson<DateTime>(startedAt),
      'endedAt': serializer.toJson<DateTime>(endedAt),
      'outcome': serializer.toJson<String>(outcome),
      'taskId': serializer.toJson<String?>(taskId),
      'projectId': serializer.toJson<String?>(projectId),
      'note': serializer.toJson<String>(note),
    };
  }

  FocusSessionRow copyWith({
    String? id,
    String? mode,
    String? phase,
    Value<int?> plannedSeconds = const Value.absent(),
    int? activeSeconds,
    DateTime? startedAt,
    DateTime? endedAt,
    String? outcome,
    Value<String?> taskId = const Value.absent(),
    Value<String?> projectId = const Value.absent(),
    String? note,
  }) => FocusSessionRow(
    id: id ?? this.id,
    mode: mode ?? this.mode,
    phase: phase ?? this.phase,
    plannedSeconds: plannedSeconds.present
        ? plannedSeconds.value
        : this.plannedSeconds,
    activeSeconds: activeSeconds ?? this.activeSeconds,
    startedAt: startedAt ?? this.startedAt,
    endedAt: endedAt ?? this.endedAt,
    outcome: outcome ?? this.outcome,
    taskId: taskId.present ? taskId.value : this.taskId,
    projectId: projectId.present ? projectId.value : this.projectId,
    note: note ?? this.note,
  );
  FocusSessionRow copyWithCompanion(FocusSessionsCompanion data) {
    return FocusSessionRow(
      id: data.id.present ? data.id.value : this.id,
      mode: data.mode.present ? data.mode.value : this.mode,
      phase: data.phase.present ? data.phase.value : this.phase,
      plannedSeconds: data.plannedSeconds.present
          ? data.plannedSeconds.value
          : this.plannedSeconds,
      activeSeconds: data.activeSeconds.present
          ? data.activeSeconds.value
          : this.activeSeconds,
      startedAt: data.startedAt.present ? data.startedAt.value : this.startedAt,
      endedAt: data.endedAt.present ? data.endedAt.value : this.endedAt,
      outcome: data.outcome.present ? data.outcome.value : this.outcome,
      taskId: data.taskId.present ? data.taskId.value : this.taskId,
      projectId: data.projectId.present ? data.projectId.value : this.projectId,
      note: data.note.present ? data.note.value : this.note,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FocusSessionRow(')
          ..write('id: $id, ')
          ..write('mode: $mode, ')
          ..write('phase: $phase, ')
          ..write('plannedSeconds: $plannedSeconds, ')
          ..write('activeSeconds: $activeSeconds, ')
          ..write('startedAt: $startedAt, ')
          ..write('endedAt: $endedAt, ')
          ..write('outcome: $outcome, ')
          ..write('taskId: $taskId, ')
          ..write('projectId: $projectId, ')
          ..write('note: $note')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    mode,
    phase,
    plannedSeconds,
    activeSeconds,
    startedAt,
    endedAt,
    outcome,
    taskId,
    projectId,
    note,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FocusSessionRow &&
          other.id == this.id &&
          other.mode == this.mode &&
          other.phase == this.phase &&
          other.plannedSeconds == this.plannedSeconds &&
          other.activeSeconds == this.activeSeconds &&
          other.startedAt == this.startedAt &&
          other.endedAt == this.endedAt &&
          other.outcome == this.outcome &&
          other.taskId == this.taskId &&
          other.projectId == this.projectId &&
          other.note == this.note);
}

class FocusSessionsCompanion extends UpdateCompanion<FocusSessionRow> {
  final Value<String> id;
  final Value<String> mode;
  final Value<String> phase;
  final Value<int?> plannedSeconds;
  final Value<int> activeSeconds;
  final Value<DateTime> startedAt;
  final Value<DateTime> endedAt;
  final Value<String> outcome;
  final Value<String?> taskId;
  final Value<String?> projectId;
  final Value<String> note;
  final Value<int> rowid;
  const FocusSessionsCompanion({
    this.id = const Value.absent(),
    this.mode = const Value.absent(),
    this.phase = const Value.absent(),
    this.plannedSeconds = const Value.absent(),
    this.activeSeconds = const Value.absent(),
    this.startedAt = const Value.absent(),
    this.endedAt = const Value.absent(),
    this.outcome = const Value.absent(),
    this.taskId = const Value.absent(),
    this.projectId = const Value.absent(),
    this.note = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FocusSessionsCompanion.insert({
    required String id,
    required String mode,
    this.phase = const Value.absent(),
    this.plannedSeconds = const Value.absent(),
    required int activeSeconds,
    required DateTime startedAt,
    required DateTime endedAt,
    required String outcome,
    this.taskId = const Value.absent(),
    this.projectId = const Value.absent(),
    this.note = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       mode = Value(mode),
       activeSeconds = Value(activeSeconds),
       startedAt = Value(startedAt),
       endedAt = Value(endedAt),
       outcome = Value(outcome);
  static Insertable<FocusSessionRow> custom({
    Expression<String>? id,
    Expression<String>? mode,
    Expression<String>? phase,
    Expression<int>? plannedSeconds,
    Expression<int>? activeSeconds,
    Expression<DateTime>? startedAt,
    Expression<DateTime>? endedAt,
    Expression<String>? outcome,
    Expression<String>? taskId,
    Expression<String>? projectId,
    Expression<String>? note,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (mode != null) 'mode': mode,
      if (phase != null) 'phase': phase,
      if (plannedSeconds != null) 'planned_seconds': plannedSeconds,
      if (activeSeconds != null) 'active_seconds': activeSeconds,
      if (startedAt != null) 'started_at': startedAt,
      if (endedAt != null) 'ended_at': endedAt,
      if (outcome != null) 'outcome': outcome,
      if (taskId != null) 'task_id': taskId,
      if (projectId != null) 'project_id': projectId,
      if (note != null) 'note': note,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FocusSessionsCompanion copyWith({
    Value<String>? id,
    Value<String>? mode,
    Value<String>? phase,
    Value<int?>? plannedSeconds,
    Value<int>? activeSeconds,
    Value<DateTime>? startedAt,
    Value<DateTime>? endedAt,
    Value<String>? outcome,
    Value<String?>? taskId,
    Value<String?>? projectId,
    Value<String>? note,
    Value<int>? rowid,
  }) {
    return FocusSessionsCompanion(
      id: id ?? this.id,
      mode: mode ?? this.mode,
      phase: phase ?? this.phase,
      plannedSeconds: plannedSeconds ?? this.plannedSeconds,
      activeSeconds: activeSeconds ?? this.activeSeconds,
      startedAt: startedAt ?? this.startedAt,
      endedAt: endedAt ?? this.endedAt,
      outcome: outcome ?? this.outcome,
      taskId: taskId ?? this.taskId,
      projectId: projectId ?? this.projectId,
      note: note ?? this.note,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (mode.present) {
      map['mode'] = Variable<String>(mode.value);
    }
    if (phase.present) {
      map['phase'] = Variable<String>(phase.value);
    }
    if (plannedSeconds.present) {
      map['planned_seconds'] = Variable<int>(plannedSeconds.value);
    }
    if (activeSeconds.present) {
      map['active_seconds'] = Variable<int>(activeSeconds.value);
    }
    if (startedAt.present) {
      map['started_at'] = Variable<DateTime>(startedAt.value);
    }
    if (endedAt.present) {
      map['ended_at'] = Variable<DateTime>(endedAt.value);
    }
    if (outcome.present) {
      map['outcome'] = Variable<String>(outcome.value);
    }
    if (taskId.present) {
      map['task_id'] = Variable<String>(taskId.value);
    }
    if (projectId.present) {
      map['project_id'] = Variable<String>(projectId.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FocusSessionsCompanion(')
          ..write('id: $id, ')
          ..write('mode: $mode, ')
          ..write('phase: $phase, ')
          ..write('plannedSeconds: $plannedSeconds, ')
          ..write('activeSeconds: $activeSeconds, ')
          ..write('startedAt: $startedAt, ')
          ..write('endedAt: $endedAt, ')
          ..write('outcome: $outcome, ')
          ..write('taskId: $taskId, ')
          ..write('projectId: $projectId, ')
          ..write('note: $note, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $EventsTable extends Events with TableInfo<$EventsTable, EventRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EventsTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 1,
      maxTextLength: 300,
    ),
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
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _startAtMeta = const VerificationMeta(
    'startAt',
  );
  @override
  late final GeneratedColumn<DateTime> startAt = GeneratedColumn<DateTime>(
    'start_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _endAtMeta = const VerificationMeta('endAt');
  @override
  late final GeneratedColumn<DateTime> endAt = GeneratedColumn<DateTime>(
    'end_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _allDayMeta = const VerificationMeta('allDay');
  @override
  late final GeneratedColumn<bool> allDay = GeneratedColumn<bool>(
    'all_day',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("all_day" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _timeZoneMeta = const VerificationMeta(
    'timeZone',
  );
  @override
  late final GeneratedColumn<String> timeZone = GeneratedColumn<String>(
    'time_zone',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('UTC'),
  );
  static const VerificationMeta _kindMeta = const VerificationMeta('kind');
  @override
  late final GeneratedColumn<String> kind = GeneratedColumn<String>(
    'kind',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('event'),
  );
  static const VerificationMeta _recurrenceMeta = const VerificationMeta(
    'recurrence',
  );
  @override
  late final GeneratedColumn<String> recurrence = GeneratedColumn<String>(
    'recurrence',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _reminderMinutesMeta = const VerificationMeta(
    'reminderMinutes',
  );
  @override
  late final GeneratedColumn<int> reminderMinutes = GeneratedColumn<int>(
    'reminder_minutes',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _taskIdMeta = const VerificationMeta('taskId');
  @override
  late final GeneratedColumn<String> taskId = GeneratedColumn<String>(
    'task_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES tasks (id) ON DELETE SET NULL',
    ),
  );
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<int> color = GeneratedColumn<int>(
    'color',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    createdAt,
    updatedAt,
    id,
    title,
    description,
    startAt,
    endAt,
    allDay,
    timeZone,
    kind,
    recurrence,
    reminderMinutes,
    taskId,
    color,
    deletedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'events';
  @override
  VerificationContext validateIntegrity(
    Insertable<EventRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('start_at')) {
      context.handle(
        _startAtMeta,
        startAt.isAcceptableOrUnknown(data['start_at']!, _startAtMeta),
      );
    } else if (isInserting) {
      context.missing(_startAtMeta);
    }
    if (data.containsKey('end_at')) {
      context.handle(
        _endAtMeta,
        endAt.isAcceptableOrUnknown(data['end_at']!, _endAtMeta),
      );
    } else if (isInserting) {
      context.missing(_endAtMeta);
    }
    if (data.containsKey('all_day')) {
      context.handle(
        _allDayMeta,
        allDay.isAcceptableOrUnknown(data['all_day']!, _allDayMeta),
      );
    }
    if (data.containsKey('time_zone')) {
      context.handle(
        _timeZoneMeta,
        timeZone.isAcceptableOrUnknown(data['time_zone']!, _timeZoneMeta),
      );
    }
    if (data.containsKey('kind')) {
      context.handle(
        _kindMeta,
        kind.isAcceptableOrUnknown(data['kind']!, _kindMeta),
      );
    }
    if (data.containsKey('recurrence')) {
      context.handle(
        _recurrenceMeta,
        recurrence.isAcceptableOrUnknown(data['recurrence']!, _recurrenceMeta),
      );
    }
    if (data.containsKey('reminder_minutes')) {
      context.handle(
        _reminderMinutesMeta,
        reminderMinutes.isAcceptableOrUnknown(
          data['reminder_minutes']!,
          _reminderMinutesMeta,
        ),
      );
    }
    if (data.containsKey('task_id')) {
      context.handle(
        _taskIdMeta,
        taskId.isAcceptableOrUnknown(data['task_id']!, _taskIdMeta),
      );
    }
    if (data.containsKey('color')) {
      context.handle(
        _colorMeta,
        color.isAcceptableOrUnknown(data['color']!, _colorMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  EventRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return EventRow(
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      )!,
      startAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}start_at'],
      )!,
      endAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}end_at'],
      )!,
      allDay: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}all_day'],
      )!,
      timeZone: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}time_zone'],
      )!,
      kind: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}kind'],
      )!,
      recurrence: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}recurrence'],
      ),
      reminderMinutes: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}reminder_minutes'],
      ),
      taskId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}task_id'],
      ),
      color: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}color'],
      ),
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
    );
  }

  @override
  $EventsTable createAlias(String alias) {
    return $EventsTable(attachedDatabase, alias);
  }
}

class EventRow extends DataClass implements Insertable<EventRow> {
  final DateTime createdAt;
  final DateTime updatedAt;
  final String id;
  final String title;
  final String description;

  /// Stored in UTC.
  final DateTime startAt;
  final DateTime endAt;
  final bool allDay;

  /// IANA zone the event was created in; recurrence expands in this zone.
  final String timeZone;

  /// event | timeBlock | focus | goal
  final String kind;
  final String? recurrence;
  final int? reminderMinutes;
  final String? taskId;
  final int? color;
  final DateTime? deletedAt;
  const EventRow({
    required this.createdAt,
    required this.updatedAt,
    required this.id,
    required this.title,
    required this.description,
    required this.startAt,
    required this.endAt,
    required this.allDay,
    required this.timeZone,
    required this.kind,
    this.recurrence,
    this.reminderMinutes,
    this.taskId,
    this.color,
    this.deletedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['id'] = Variable<String>(id);
    map['title'] = Variable<String>(title);
    map['description'] = Variable<String>(description);
    map['start_at'] = Variable<DateTime>(startAt);
    map['end_at'] = Variable<DateTime>(endAt);
    map['all_day'] = Variable<bool>(allDay);
    map['time_zone'] = Variable<String>(timeZone);
    map['kind'] = Variable<String>(kind);
    if (!nullToAbsent || recurrence != null) {
      map['recurrence'] = Variable<String>(recurrence);
    }
    if (!nullToAbsent || reminderMinutes != null) {
      map['reminder_minutes'] = Variable<int>(reminderMinutes);
    }
    if (!nullToAbsent || taskId != null) {
      map['task_id'] = Variable<String>(taskId);
    }
    if (!nullToAbsent || color != null) {
      map['color'] = Variable<int>(color);
    }
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    return map;
  }

  EventsCompanion toCompanion(bool nullToAbsent) {
    return EventsCompanion(
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      id: Value(id),
      title: Value(title),
      description: Value(description),
      startAt: Value(startAt),
      endAt: Value(endAt),
      allDay: Value(allDay),
      timeZone: Value(timeZone),
      kind: Value(kind),
      recurrence: recurrence == null && nullToAbsent
          ? const Value.absent()
          : Value(recurrence),
      reminderMinutes: reminderMinutes == null && nullToAbsent
          ? const Value.absent()
          : Value(reminderMinutes),
      taskId: taskId == null && nullToAbsent
          ? const Value.absent()
          : Value(taskId),
      color: color == null && nullToAbsent
          ? const Value.absent()
          : Value(color),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    );
  }

  factory EventRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return EventRow(
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      id: serializer.fromJson<String>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String>(json['description']),
      startAt: serializer.fromJson<DateTime>(json['startAt']),
      endAt: serializer.fromJson<DateTime>(json['endAt']),
      allDay: serializer.fromJson<bool>(json['allDay']),
      timeZone: serializer.fromJson<String>(json['timeZone']),
      kind: serializer.fromJson<String>(json['kind']),
      recurrence: serializer.fromJson<String?>(json['recurrence']),
      reminderMinutes: serializer.fromJson<int?>(json['reminderMinutes']),
      taskId: serializer.fromJson<String?>(json['taskId']),
      color: serializer.fromJson<int?>(json['color']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'id': serializer.toJson<String>(id),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String>(description),
      'startAt': serializer.toJson<DateTime>(startAt),
      'endAt': serializer.toJson<DateTime>(endAt),
      'allDay': serializer.toJson<bool>(allDay),
      'timeZone': serializer.toJson<String>(timeZone),
      'kind': serializer.toJson<String>(kind),
      'recurrence': serializer.toJson<String?>(recurrence),
      'reminderMinutes': serializer.toJson<int?>(reminderMinutes),
      'taskId': serializer.toJson<String?>(taskId),
      'color': serializer.toJson<int?>(color),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
    };
  }

  EventRow copyWith({
    DateTime? createdAt,
    DateTime? updatedAt,
    String? id,
    String? title,
    String? description,
    DateTime? startAt,
    DateTime? endAt,
    bool? allDay,
    String? timeZone,
    String? kind,
    Value<String?> recurrence = const Value.absent(),
    Value<int?> reminderMinutes = const Value.absent(),
    Value<String?> taskId = const Value.absent(),
    Value<int?> color = const Value.absent(),
    Value<DateTime?> deletedAt = const Value.absent(),
  }) => EventRow(
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    id: id ?? this.id,
    title: title ?? this.title,
    description: description ?? this.description,
    startAt: startAt ?? this.startAt,
    endAt: endAt ?? this.endAt,
    allDay: allDay ?? this.allDay,
    timeZone: timeZone ?? this.timeZone,
    kind: kind ?? this.kind,
    recurrence: recurrence.present ? recurrence.value : this.recurrence,
    reminderMinutes: reminderMinutes.present
        ? reminderMinutes.value
        : this.reminderMinutes,
    taskId: taskId.present ? taskId.value : this.taskId,
    color: color.present ? color.value : this.color,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
  );
  EventRow copyWithCompanion(EventsCompanion data) {
    return EventRow(
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      description: data.description.present
          ? data.description.value
          : this.description,
      startAt: data.startAt.present ? data.startAt.value : this.startAt,
      endAt: data.endAt.present ? data.endAt.value : this.endAt,
      allDay: data.allDay.present ? data.allDay.value : this.allDay,
      timeZone: data.timeZone.present ? data.timeZone.value : this.timeZone,
      kind: data.kind.present ? data.kind.value : this.kind,
      recurrence: data.recurrence.present
          ? data.recurrence.value
          : this.recurrence,
      reminderMinutes: data.reminderMinutes.present
          ? data.reminderMinutes.value
          : this.reminderMinutes,
      taskId: data.taskId.present ? data.taskId.value : this.taskId,
      color: data.color.present ? data.color.value : this.color,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('EventRow(')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('startAt: $startAt, ')
          ..write('endAt: $endAt, ')
          ..write('allDay: $allDay, ')
          ..write('timeZone: $timeZone, ')
          ..write('kind: $kind, ')
          ..write('recurrence: $recurrence, ')
          ..write('reminderMinutes: $reminderMinutes, ')
          ..write('taskId: $taskId, ')
          ..write('color: $color, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    createdAt,
    updatedAt,
    id,
    title,
    description,
    startAt,
    endAt,
    allDay,
    timeZone,
    kind,
    recurrence,
    reminderMinutes,
    taskId,
    color,
    deletedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EventRow &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.id == this.id &&
          other.title == this.title &&
          other.description == this.description &&
          other.startAt == this.startAt &&
          other.endAt == this.endAt &&
          other.allDay == this.allDay &&
          other.timeZone == this.timeZone &&
          other.kind == this.kind &&
          other.recurrence == this.recurrence &&
          other.reminderMinutes == this.reminderMinutes &&
          other.taskId == this.taskId &&
          other.color == this.color &&
          other.deletedAt == this.deletedAt);
}

class EventsCompanion extends UpdateCompanion<EventRow> {
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<String> id;
  final Value<String> title;
  final Value<String> description;
  final Value<DateTime> startAt;
  final Value<DateTime> endAt;
  final Value<bool> allDay;
  final Value<String> timeZone;
  final Value<String> kind;
  final Value<String?> recurrence;
  final Value<int?> reminderMinutes;
  final Value<String?> taskId;
  final Value<int?> color;
  final Value<DateTime?> deletedAt;
  final Value<int> rowid;
  const EventsCompanion({
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.startAt = const Value.absent(),
    this.endAt = const Value.absent(),
    this.allDay = const Value.absent(),
    this.timeZone = const Value.absent(),
    this.kind = const Value.absent(),
    this.recurrence = const Value.absent(),
    this.reminderMinutes = const Value.absent(),
    this.taskId = const Value.absent(),
    this.color = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  EventsCompanion.insert({
    required DateTime createdAt,
    required DateTime updatedAt,
    required String id,
    required String title,
    this.description = const Value.absent(),
    required DateTime startAt,
    required DateTime endAt,
    this.allDay = const Value.absent(),
    this.timeZone = const Value.absent(),
    this.kind = const Value.absent(),
    this.recurrence = const Value.absent(),
    this.reminderMinutes = const Value.absent(),
    this.taskId = const Value.absent(),
    this.color = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : createdAt = Value(createdAt),
       updatedAt = Value(updatedAt),
       id = Value(id),
       title = Value(title),
       startAt = Value(startAt),
       endAt = Value(endAt);
  static Insertable<EventRow> custom({
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? id,
    Expression<String>? title,
    Expression<String>? description,
    Expression<DateTime>? startAt,
    Expression<DateTime>? endAt,
    Expression<bool>? allDay,
    Expression<String>? timeZone,
    Expression<String>? kind,
    Expression<String>? recurrence,
    Expression<int>? reminderMinutes,
    Expression<String>? taskId,
    Expression<int>? color,
    Expression<DateTime>? deletedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (startAt != null) 'start_at': startAt,
      if (endAt != null) 'end_at': endAt,
      if (allDay != null) 'all_day': allDay,
      if (timeZone != null) 'time_zone': timeZone,
      if (kind != null) 'kind': kind,
      if (recurrence != null) 'recurrence': recurrence,
      if (reminderMinutes != null) 'reminder_minutes': reminderMinutes,
      if (taskId != null) 'task_id': taskId,
      if (color != null) 'color': color,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  EventsCompanion copyWith({
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<String>? id,
    Value<String>? title,
    Value<String>? description,
    Value<DateTime>? startAt,
    Value<DateTime>? endAt,
    Value<bool>? allDay,
    Value<String>? timeZone,
    Value<String>? kind,
    Value<String?>? recurrence,
    Value<int?>? reminderMinutes,
    Value<String?>? taskId,
    Value<int?>? color,
    Value<DateTime?>? deletedAt,
    Value<int>? rowid,
  }) {
    return EventsCompanion(
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      startAt: startAt ?? this.startAt,
      endAt: endAt ?? this.endAt,
      allDay: allDay ?? this.allDay,
      timeZone: timeZone ?? this.timeZone,
      kind: kind ?? this.kind,
      recurrence: recurrence ?? this.recurrence,
      reminderMinutes: reminderMinutes ?? this.reminderMinutes,
      taskId: taskId ?? this.taskId,
      color: color ?? this.color,
      deletedAt: deletedAt ?? this.deletedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (startAt.present) {
      map['start_at'] = Variable<DateTime>(startAt.value);
    }
    if (endAt.present) {
      map['end_at'] = Variable<DateTime>(endAt.value);
    }
    if (allDay.present) {
      map['all_day'] = Variable<bool>(allDay.value);
    }
    if (timeZone.present) {
      map['time_zone'] = Variable<String>(timeZone.value);
    }
    if (kind.present) {
      map['kind'] = Variable<String>(kind.value);
    }
    if (recurrence.present) {
      map['recurrence'] = Variable<String>(recurrence.value);
    }
    if (reminderMinutes.present) {
      map['reminder_minutes'] = Variable<int>(reminderMinutes.value);
    }
    if (taskId.present) {
      map['task_id'] = Variable<String>(taskId.value);
    }
    if (color.present) {
      map['color'] = Variable<int>(color.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EventsCompanion(')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('startAt: $startAt, ')
          ..write('endAt: $endAt, ')
          ..write('allDay: $allDay, ')
          ..write('timeZone: $timeZone, ')
          ..write('kind: $kind, ')
          ..write('recurrence: $recurrence, ')
          ..write('reminderMinutes: $reminderMinutes, ')
          ..write('taskId: $taskId, ')
          ..write('color: $color, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $NotebooksTable extends Notebooks
    with TableInfo<$NotebooksTable, NotebookRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NotebooksTable(this.attachedDatabase, [this._alias]);
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
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<int> color = GeneratedColumn<int>(
    'color',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
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
  @override
  List<GeneratedColumn> get $columns => [id, name, color, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'notebooks';
  @override
  VerificationContext validateIntegrity(
    Insertable<NotebookRow> instance, {
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
    if (data.containsKey('color')) {
      context.handle(
        _colorMeta,
        color.isAcceptableOrUnknown(data['color']!, _colorMeta),
      );
    } else if (isInserting) {
      context.missing(_colorMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  NotebookRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return NotebookRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      color: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}color'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $NotebooksTable createAlias(String alias) {
    return $NotebooksTable(attachedDatabase, alias);
  }
}

class NotebookRow extends DataClass implements Insertable<NotebookRow> {
  final String id;
  final String name;
  final int color;
  final DateTime createdAt;
  const NotebookRow({
    required this.id,
    required this.name,
    required this.color,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['color'] = Variable<int>(color);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  NotebooksCompanion toCompanion(bool nullToAbsent) {
    return NotebooksCompanion(
      id: Value(id),
      name: Value(name),
      color: Value(color),
      createdAt: Value(createdAt),
    );
  }

  factory NotebookRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return NotebookRow(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      color: serializer.fromJson<int>(json['color']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'color': serializer.toJson<int>(color),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  NotebookRow copyWith({
    String? id,
    String? name,
    int? color,
    DateTime? createdAt,
  }) => NotebookRow(
    id: id ?? this.id,
    name: name ?? this.name,
    color: color ?? this.color,
    createdAt: createdAt ?? this.createdAt,
  );
  NotebookRow copyWithCompanion(NotebooksCompanion data) {
    return NotebookRow(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      color: data.color.present ? data.color.value : this.color,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('NotebookRow(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('color: $color, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, color, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is NotebookRow &&
          other.id == this.id &&
          other.name == this.name &&
          other.color == this.color &&
          other.createdAt == this.createdAt);
}

class NotebooksCompanion extends UpdateCompanion<NotebookRow> {
  final Value<String> id;
  final Value<String> name;
  final Value<int> color;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const NotebooksCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.color = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  NotebooksCompanion.insert({
    required String id,
    required String name,
    required int color,
    required DateTime createdAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name),
       color = Value(color),
       createdAt = Value(createdAt);
  static Insertable<NotebookRow> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<int>? color,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (color != null) 'color': color,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  NotebooksCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<int>? color,
    Value<DateTime>? createdAt,
    Value<int>? rowid,
  }) {
    return NotebooksCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      color: color ?? this.color,
      createdAt: createdAt ?? this.createdAt,
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
    if (color.present) {
      map['color'] = Variable<int>(color.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NotebooksCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('color: $color, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $NotesTable extends Notes with TableInfo<$NotesTable, NoteRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NotesTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _bodyMeta = const VerificationMeta('body');
  @override
  late final GeneratedColumn<String> body = GeneratedColumn<String>(
    'body',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _notebookIdMeta = const VerificationMeta(
    'notebookId',
  );
  @override
  late final GeneratedColumn<String> notebookId = GeneratedColumn<String>(
    'notebook_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES notebooks (id) ON DELETE SET NULL',
    ),
  );
  static const VerificationMeta _projectIdMeta = const VerificationMeta(
    'projectId',
  );
  @override
  late final GeneratedColumn<String> projectId = GeneratedColumn<String>(
    'project_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES projects (id) ON DELETE SET NULL',
    ),
  );
  static const VerificationMeta _categoryMeta = const VerificationMeta(
    'category',
  );
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
    'category',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _pinnedMeta = const VerificationMeta('pinned');
  @override
  late final GeneratedColumn<bool> pinned = GeneratedColumn<bool>(
    'pinned',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("pinned" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _favoriteMeta = const VerificationMeta(
    'favorite',
  );
  @override
  late final GeneratedColumn<bool> favorite = GeneratedColumn<bool>(
    'favorite',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("favorite" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _archivedMeta = const VerificationMeta(
    'archived',
  );
  @override
  late final GeneratedColumn<bool> archived = GeneratedColumn<bool>(
    'archived',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("archived" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    createdAt,
    updatedAt,
    id,
    title,
    body,
    notebookId,
    projectId,
    category,
    pinned,
    favorite,
    archived,
    deletedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'notes';
  @override
  VerificationContext validateIntegrity(
    Insertable<NoteRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    }
    if (data.containsKey('body')) {
      context.handle(
        _bodyMeta,
        body.isAcceptableOrUnknown(data['body']!, _bodyMeta),
      );
    }
    if (data.containsKey('notebook_id')) {
      context.handle(
        _notebookIdMeta,
        notebookId.isAcceptableOrUnknown(data['notebook_id']!, _notebookIdMeta),
      );
    }
    if (data.containsKey('project_id')) {
      context.handle(
        _projectIdMeta,
        projectId.isAcceptableOrUnknown(data['project_id']!, _projectIdMeta),
      );
    }
    if (data.containsKey('category')) {
      context.handle(
        _categoryMeta,
        category.isAcceptableOrUnknown(data['category']!, _categoryMeta),
      );
    }
    if (data.containsKey('pinned')) {
      context.handle(
        _pinnedMeta,
        pinned.isAcceptableOrUnknown(data['pinned']!, _pinnedMeta),
      );
    }
    if (data.containsKey('favorite')) {
      context.handle(
        _favoriteMeta,
        favorite.isAcceptableOrUnknown(data['favorite']!, _favoriteMeta),
      );
    }
    if (data.containsKey('archived')) {
      context.handle(
        _archivedMeta,
        archived.isAcceptableOrUnknown(data['archived']!, _archivedMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  NoteRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return NoteRow(
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      body: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}body'],
      )!,
      notebookId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}notebook_id'],
      ),
      projectId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}project_id'],
      ),
      category: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}category'],
      )!,
      pinned: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}pinned'],
      )!,
      favorite: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}favorite'],
      )!,
      archived: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}archived'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
    );
  }

  @override
  $NotesTable createAlias(String alias) {
    return $NotesTable(attachedDatabase, alias);
  }
}

class NoteRow extends DataClass implements Insertable<NoteRow> {
  final DateTime createdAt;
  final DateTime updatedAt;
  final String id;
  final String title;

  /// Lightweight Markdown subset (headings, lists, checklists, bold,
  /// italic, links, [[note links]]).
  final String body;
  final String? notebookId;
  final String? projectId;
  final String category;
  final bool pinned;
  final bool favorite;
  final bool archived;
  final DateTime? deletedAt;
  const NoteRow({
    required this.createdAt,
    required this.updatedAt,
    required this.id,
    required this.title,
    required this.body,
    this.notebookId,
    this.projectId,
    required this.category,
    required this.pinned,
    required this.favorite,
    required this.archived,
    this.deletedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['id'] = Variable<String>(id);
    map['title'] = Variable<String>(title);
    map['body'] = Variable<String>(body);
    if (!nullToAbsent || notebookId != null) {
      map['notebook_id'] = Variable<String>(notebookId);
    }
    if (!nullToAbsent || projectId != null) {
      map['project_id'] = Variable<String>(projectId);
    }
    map['category'] = Variable<String>(category);
    map['pinned'] = Variable<bool>(pinned);
    map['favorite'] = Variable<bool>(favorite);
    map['archived'] = Variable<bool>(archived);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    return map;
  }

  NotesCompanion toCompanion(bool nullToAbsent) {
    return NotesCompanion(
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      id: Value(id),
      title: Value(title),
      body: Value(body),
      notebookId: notebookId == null && nullToAbsent
          ? const Value.absent()
          : Value(notebookId),
      projectId: projectId == null && nullToAbsent
          ? const Value.absent()
          : Value(projectId),
      category: Value(category),
      pinned: Value(pinned),
      favorite: Value(favorite),
      archived: Value(archived),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    );
  }

  factory NoteRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return NoteRow(
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      id: serializer.fromJson<String>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      body: serializer.fromJson<String>(json['body']),
      notebookId: serializer.fromJson<String?>(json['notebookId']),
      projectId: serializer.fromJson<String?>(json['projectId']),
      category: serializer.fromJson<String>(json['category']),
      pinned: serializer.fromJson<bool>(json['pinned']),
      favorite: serializer.fromJson<bool>(json['favorite']),
      archived: serializer.fromJson<bool>(json['archived']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'id': serializer.toJson<String>(id),
      'title': serializer.toJson<String>(title),
      'body': serializer.toJson<String>(body),
      'notebookId': serializer.toJson<String?>(notebookId),
      'projectId': serializer.toJson<String?>(projectId),
      'category': serializer.toJson<String>(category),
      'pinned': serializer.toJson<bool>(pinned),
      'favorite': serializer.toJson<bool>(favorite),
      'archived': serializer.toJson<bool>(archived),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
    };
  }

  NoteRow copyWith({
    DateTime? createdAt,
    DateTime? updatedAt,
    String? id,
    String? title,
    String? body,
    Value<String?> notebookId = const Value.absent(),
    Value<String?> projectId = const Value.absent(),
    String? category,
    bool? pinned,
    bool? favorite,
    bool? archived,
    Value<DateTime?> deletedAt = const Value.absent(),
  }) => NoteRow(
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    id: id ?? this.id,
    title: title ?? this.title,
    body: body ?? this.body,
    notebookId: notebookId.present ? notebookId.value : this.notebookId,
    projectId: projectId.present ? projectId.value : this.projectId,
    category: category ?? this.category,
    pinned: pinned ?? this.pinned,
    favorite: favorite ?? this.favorite,
    archived: archived ?? this.archived,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
  );
  NoteRow copyWithCompanion(NotesCompanion data) {
    return NoteRow(
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      body: data.body.present ? data.body.value : this.body,
      notebookId: data.notebookId.present
          ? data.notebookId.value
          : this.notebookId,
      projectId: data.projectId.present ? data.projectId.value : this.projectId,
      category: data.category.present ? data.category.value : this.category,
      pinned: data.pinned.present ? data.pinned.value : this.pinned,
      favorite: data.favorite.present ? data.favorite.value : this.favorite,
      archived: data.archived.present ? data.archived.value : this.archived,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('NoteRow(')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('body: $body, ')
          ..write('notebookId: $notebookId, ')
          ..write('projectId: $projectId, ')
          ..write('category: $category, ')
          ..write('pinned: $pinned, ')
          ..write('favorite: $favorite, ')
          ..write('archived: $archived, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    createdAt,
    updatedAt,
    id,
    title,
    body,
    notebookId,
    projectId,
    category,
    pinned,
    favorite,
    archived,
    deletedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is NoteRow &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.id == this.id &&
          other.title == this.title &&
          other.body == this.body &&
          other.notebookId == this.notebookId &&
          other.projectId == this.projectId &&
          other.category == this.category &&
          other.pinned == this.pinned &&
          other.favorite == this.favorite &&
          other.archived == this.archived &&
          other.deletedAt == this.deletedAt);
}

class NotesCompanion extends UpdateCompanion<NoteRow> {
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<String> id;
  final Value<String> title;
  final Value<String> body;
  final Value<String?> notebookId;
  final Value<String?> projectId;
  final Value<String> category;
  final Value<bool> pinned;
  final Value<bool> favorite;
  final Value<bool> archived;
  final Value<DateTime?> deletedAt;
  final Value<int> rowid;
  const NotesCompanion({
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.body = const Value.absent(),
    this.notebookId = const Value.absent(),
    this.projectId = const Value.absent(),
    this.category = const Value.absent(),
    this.pinned = const Value.absent(),
    this.favorite = const Value.absent(),
    this.archived = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  NotesCompanion.insert({
    required DateTime createdAt,
    required DateTime updatedAt,
    required String id,
    this.title = const Value.absent(),
    this.body = const Value.absent(),
    this.notebookId = const Value.absent(),
    this.projectId = const Value.absent(),
    this.category = const Value.absent(),
    this.pinned = const Value.absent(),
    this.favorite = const Value.absent(),
    this.archived = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : createdAt = Value(createdAt),
       updatedAt = Value(updatedAt),
       id = Value(id);
  static Insertable<NoteRow> custom({
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? id,
    Expression<String>? title,
    Expression<String>? body,
    Expression<String>? notebookId,
    Expression<String>? projectId,
    Expression<String>? category,
    Expression<bool>? pinned,
    Expression<bool>? favorite,
    Expression<bool>? archived,
    Expression<DateTime>? deletedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (body != null) 'body': body,
      if (notebookId != null) 'notebook_id': notebookId,
      if (projectId != null) 'project_id': projectId,
      if (category != null) 'category': category,
      if (pinned != null) 'pinned': pinned,
      if (favorite != null) 'favorite': favorite,
      if (archived != null) 'archived': archived,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  NotesCompanion copyWith({
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<String>? id,
    Value<String>? title,
    Value<String>? body,
    Value<String?>? notebookId,
    Value<String?>? projectId,
    Value<String>? category,
    Value<bool>? pinned,
    Value<bool>? favorite,
    Value<bool>? archived,
    Value<DateTime?>? deletedAt,
    Value<int>? rowid,
  }) {
    return NotesCompanion(
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
      notebookId: notebookId ?? this.notebookId,
      projectId: projectId ?? this.projectId,
      category: category ?? this.category,
      pinned: pinned ?? this.pinned,
      favorite: favorite ?? this.favorite,
      archived: archived ?? this.archived,
      deletedAt: deletedAt ?? this.deletedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (body.present) {
      map['body'] = Variable<String>(body.value);
    }
    if (notebookId.present) {
      map['notebook_id'] = Variable<String>(notebookId.value);
    }
    if (projectId.present) {
      map['project_id'] = Variable<String>(projectId.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (pinned.present) {
      map['pinned'] = Variable<bool>(pinned.value);
    }
    if (favorite.present) {
      map['favorite'] = Variable<bool>(favorite.value);
    }
    if (archived.present) {
      map['archived'] = Variable<bool>(archived.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NotesCompanion(')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('body: $body, ')
          ..write('notebookId: $notebookId, ')
          ..write('projectId: $projectId, ')
          ..write('category: $category, ')
          ..write('pinned: $pinned, ')
          ..write('favorite: $favorite, ')
          ..write('archived: $archived, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $NoteTagsTable extends NoteTags with TableInfo<$NoteTagsTable, NoteTag> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NoteTagsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _noteIdMeta = const VerificationMeta('noteId');
  @override
  late final GeneratedColumn<String> noteId = GeneratedColumn<String>(
    'note_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES notes (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _tagMeta = const VerificationMeta('tag');
  @override
  late final GeneratedColumn<String> tag = GeneratedColumn<String>(
    'tag',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [noteId, tag];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'note_tags';
  @override
  VerificationContext validateIntegrity(
    Insertable<NoteTag> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('note_id')) {
      context.handle(
        _noteIdMeta,
        noteId.isAcceptableOrUnknown(data['note_id']!, _noteIdMeta),
      );
    } else if (isInserting) {
      context.missing(_noteIdMeta);
    }
    if (data.containsKey('tag')) {
      context.handle(
        _tagMeta,
        tag.isAcceptableOrUnknown(data['tag']!, _tagMeta),
      );
    } else if (isInserting) {
      context.missing(_tagMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {noteId, tag};
  @override
  NoteTag map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return NoteTag(
      noteId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}note_id'],
      )!,
      tag: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}tag'],
      )!,
    );
  }

  @override
  $NoteTagsTable createAlias(String alias) {
    return $NoteTagsTable(attachedDatabase, alias);
  }
}

class NoteTag extends DataClass implements Insertable<NoteTag> {
  final String noteId;
  final String tag;
  const NoteTag({required this.noteId, required this.tag});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['note_id'] = Variable<String>(noteId);
    map['tag'] = Variable<String>(tag);
    return map;
  }

  NoteTagsCompanion toCompanion(bool nullToAbsent) {
    return NoteTagsCompanion(noteId: Value(noteId), tag: Value(tag));
  }

  factory NoteTag.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return NoteTag(
      noteId: serializer.fromJson<String>(json['noteId']),
      tag: serializer.fromJson<String>(json['tag']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'noteId': serializer.toJson<String>(noteId),
      'tag': serializer.toJson<String>(tag),
    };
  }

  NoteTag copyWith({String? noteId, String? tag}) =>
      NoteTag(noteId: noteId ?? this.noteId, tag: tag ?? this.tag);
  NoteTag copyWithCompanion(NoteTagsCompanion data) {
    return NoteTag(
      noteId: data.noteId.present ? data.noteId.value : this.noteId,
      tag: data.tag.present ? data.tag.value : this.tag,
    );
  }

  @override
  String toString() {
    return (StringBuffer('NoteTag(')
          ..write('noteId: $noteId, ')
          ..write('tag: $tag')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(noteId, tag);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is NoteTag &&
          other.noteId == this.noteId &&
          other.tag == this.tag);
}

class NoteTagsCompanion extends UpdateCompanion<NoteTag> {
  final Value<String> noteId;
  final Value<String> tag;
  final Value<int> rowid;
  const NoteTagsCompanion({
    this.noteId = const Value.absent(),
    this.tag = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  NoteTagsCompanion.insert({
    required String noteId,
    required String tag,
    this.rowid = const Value.absent(),
  }) : noteId = Value(noteId),
       tag = Value(tag);
  static Insertable<NoteTag> custom({
    Expression<String>? noteId,
    Expression<String>? tag,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (noteId != null) 'note_id': noteId,
      if (tag != null) 'tag': tag,
      if (rowid != null) 'rowid': rowid,
    });
  }

  NoteTagsCompanion copyWith({
    Value<String>? noteId,
    Value<String>? tag,
    Value<int>? rowid,
  }) {
    return NoteTagsCompanion(
      noteId: noteId ?? this.noteId,
      tag: tag ?? this.tag,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (noteId.present) {
      map['note_id'] = Variable<String>(noteId.value);
    }
    if (tag.present) {
      map['tag'] = Variable<String>(tag.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NoteTagsCompanion(')
          ..write('noteId: $noteId, ')
          ..write('tag: $tag, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $NoteTaskLinksTable extends NoteTaskLinks
    with TableInfo<$NoteTaskLinksTable, NoteTaskLink> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NoteTaskLinksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _noteIdMeta = const VerificationMeta('noteId');
  @override
  late final GeneratedColumn<String> noteId = GeneratedColumn<String>(
    'note_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES notes (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _taskIdMeta = const VerificationMeta('taskId');
  @override
  late final GeneratedColumn<String> taskId = GeneratedColumn<String>(
    'task_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES tasks (id) ON DELETE CASCADE',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [noteId, taskId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'note_task_links';
  @override
  VerificationContext validateIntegrity(
    Insertable<NoteTaskLink> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('note_id')) {
      context.handle(
        _noteIdMeta,
        noteId.isAcceptableOrUnknown(data['note_id']!, _noteIdMeta),
      );
    } else if (isInserting) {
      context.missing(_noteIdMeta);
    }
    if (data.containsKey('task_id')) {
      context.handle(
        _taskIdMeta,
        taskId.isAcceptableOrUnknown(data['task_id']!, _taskIdMeta),
      );
    } else if (isInserting) {
      context.missing(_taskIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {noteId, taskId};
  @override
  NoteTaskLink map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return NoteTaskLink(
      noteId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}note_id'],
      )!,
      taskId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}task_id'],
      )!,
    );
  }

  @override
  $NoteTaskLinksTable createAlias(String alias) {
    return $NoteTaskLinksTable(attachedDatabase, alias);
  }
}

class NoteTaskLink extends DataClass implements Insertable<NoteTaskLink> {
  final String noteId;
  final String taskId;
  const NoteTaskLink({required this.noteId, required this.taskId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['note_id'] = Variable<String>(noteId);
    map['task_id'] = Variable<String>(taskId);
    return map;
  }

  NoteTaskLinksCompanion toCompanion(bool nullToAbsent) {
    return NoteTaskLinksCompanion(noteId: Value(noteId), taskId: Value(taskId));
  }

  factory NoteTaskLink.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return NoteTaskLink(
      noteId: serializer.fromJson<String>(json['noteId']),
      taskId: serializer.fromJson<String>(json['taskId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'noteId': serializer.toJson<String>(noteId),
      'taskId': serializer.toJson<String>(taskId),
    };
  }

  NoteTaskLink copyWith({String? noteId, String? taskId}) => NoteTaskLink(
    noteId: noteId ?? this.noteId,
    taskId: taskId ?? this.taskId,
  );
  NoteTaskLink copyWithCompanion(NoteTaskLinksCompanion data) {
    return NoteTaskLink(
      noteId: data.noteId.present ? data.noteId.value : this.noteId,
      taskId: data.taskId.present ? data.taskId.value : this.taskId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('NoteTaskLink(')
          ..write('noteId: $noteId, ')
          ..write('taskId: $taskId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(noteId, taskId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is NoteTaskLink &&
          other.noteId == this.noteId &&
          other.taskId == this.taskId);
}

class NoteTaskLinksCompanion extends UpdateCompanion<NoteTaskLink> {
  final Value<String> noteId;
  final Value<String> taskId;
  final Value<int> rowid;
  const NoteTaskLinksCompanion({
    this.noteId = const Value.absent(),
    this.taskId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  NoteTaskLinksCompanion.insert({
    required String noteId,
    required String taskId,
    this.rowid = const Value.absent(),
  }) : noteId = Value(noteId),
       taskId = Value(taskId);
  static Insertable<NoteTaskLink> custom({
    Expression<String>? noteId,
    Expression<String>? taskId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (noteId != null) 'note_id': noteId,
      if (taskId != null) 'task_id': taskId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  NoteTaskLinksCompanion copyWith({
    Value<String>? noteId,
    Value<String>? taskId,
    Value<int>? rowid,
  }) {
    return NoteTaskLinksCompanion(
      noteId: noteId ?? this.noteId,
      taskId: taskId ?? this.taskId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (noteId.present) {
      map['note_id'] = Variable<String>(noteId.value);
    }
    if (taskId.present) {
      map['task_id'] = Variable<String>(taskId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NoteTaskLinksCompanion(')
          ..write('noteId: $noteId, ')
          ..write('taskId: $taskId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $DecksTable extends Decks with TableInfo<$DecksTable, DeckRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DecksTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
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
      maxTextLength: 200,
    ),
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
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _categoryMeta = const VerificationMeta(
    'category',
  );
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
    'category',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<int> color = GeneratedColumn<int>(
    'color',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dailyNewLimitMeta = const VerificationMeta(
    'dailyNewLimit',
  );
  @override
  late final GeneratedColumn<int> dailyNewLimit = GeneratedColumn<int>(
    'daily_new_limit',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(20),
  );
  static const VerificationMeta _dailyReviewTargetMeta = const VerificationMeta(
    'dailyReviewTarget',
  );
  @override
  late final GeneratedColumn<int> dailyReviewTarget = GeneratedColumn<int>(
    'daily_review_target',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(50),
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    createdAt,
    updatedAt,
    id,
    name,
    description,
    category,
    color,
    dailyNewLimit,
    dailyReviewTarget,
    deletedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'decks';
  @override
  VerificationContext validateIntegrity(
    Insertable<DeckRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
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
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('category')) {
      context.handle(
        _categoryMeta,
        category.isAcceptableOrUnknown(data['category']!, _categoryMeta),
      );
    }
    if (data.containsKey('color')) {
      context.handle(
        _colorMeta,
        color.isAcceptableOrUnknown(data['color']!, _colorMeta),
      );
    } else if (isInserting) {
      context.missing(_colorMeta);
    }
    if (data.containsKey('daily_new_limit')) {
      context.handle(
        _dailyNewLimitMeta,
        dailyNewLimit.isAcceptableOrUnknown(
          data['daily_new_limit']!,
          _dailyNewLimitMeta,
        ),
      );
    }
    if (data.containsKey('daily_review_target')) {
      context.handle(
        _dailyReviewTargetMeta,
        dailyReviewTarget.isAcceptableOrUnknown(
          data['daily_review_target']!,
          _dailyReviewTargetMeta,
        ),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DeckRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DeckRow(
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      )!,
      category: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}category'],
      )!,
      color: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}color'],
      )!,
      dailyNewLimit: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}daily_new_limit'],
      )!,
      dailyReviewTarget: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}daily_review_target'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
    );
  }

  @override
  $DecksTable createAlias(String alias) {
    return $DecksTable(attachedDatabase, alias);
  }
}

class DeckRow extends DataClass implements Insertable<DeckRow> {
  final DateTime createdAt;
  final DateTime updatedAt;
  final String id;
  final String name;
  final String description;
  final String category;
  final int color;
  final int dailyNewLimit;
  final int dailyReviewTarget;
  final DateTime? deletedAt;
  const DeckRow({
    required this.createdAt,
    required this.updatedAt,
    required this.id,
    required this.name,
    required this.description,
    required this.category,
    required this.color,
    required this.dailyNewLimit,
    required this.dailyReviewTarget,
    this.deletedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['description'] = Variable<String>(description);
    map['category'] = Variable<String>(category);
    map['color'] = Variable<int>(color);
    map['daily_new_limit'] = Variable<int>(dailyNewLimit);
    map['daily_review_target'] = Variable<int>(dailyReviewTarget);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    return map;
  }

  DecksCompanion toCompanion(bool nullToAbsent) {
    return DecksCompanion(
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      id: Value(id),
      name: Value(name),
      description: Value(description),
      category: Value(category),
      color: Value(color),
      dailyNewLimit: Value(dailyNewLimit),
      dailyReviewTarget: Value(dailyReviewTarget),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    );
  }

  factory DeckRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DeckRow(
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String>(json['description']),
      category: serializer.fromJson<String>(json['category']),
      color: serializer.fromJson<int>(json['color']),
      dailyNewLimit: serializer.fromJson<int>(json['dailyNewLimit']),
      dailyReviewTarget: serializer.fromJson<int>(json['dailyReviewTarget']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String>(description),
      'category': serializer.toJson<String>(category),
      'color': serializer.toJson<int>(color),
      'dailyNewLimit': serializer.toJson<int>(dailyNewLimit),
      'dailyReviewTarget': serializer.toJson<int>(dailyReviewTarget),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
    };
  }

  DeckRow copyWith({
    DateTime? createdAt,
    DateTime? updatedAt,
    String? id,
    String? name,
    String? description,
    String? category,
    int? color,
    int? dailyNewLimit,
    int? dailyReviewTarget,
    Value<DateTime?> deletedAt = const Value.absent(),
  }) => DeckRow(
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    id: id ?? this.id,
    name: name ?? this.name,
    description: description ?? this.description,
    category: category ?? this.category,
    color: color ?? this.color,
    dailyNewLimit: dailyNewLimit ?? this.dailyNewLimit,
    dailyReviewTarget: dailyReviewTarget ?? this.dailyReviewTarget,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
  );
  DeckRow copyWithCompanion(DecksCompanion data) {
    return DeckRow(
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      description: data.description.present
          ? data.description.value
          : this.description,
      category: data.category.present ? data.category.value : this.category,
      color: data.color.present ? data.color.value : this.color,
      dailyNewLimit: data.dailyNewLimit.present
          ? data.dailyNewLimit.value
          : this.dailyNewLimit,
      dailyReviewTarget: data.dailyReviewTarget.present
          ? data.dailyReviewTarget.value
          : this.dailyReviewTarget,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DeckRow(')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('category: $category, ')
          ..write('color: $color, ')
          ..write('dailyNewLimit: $dailyNewLimit, ')
          ..write('dailyReviewTarget: $dailyReviewTarget, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    createdAt,
    updatedAt,
    id,
    name,
    description,
    category,
    color,
    dailyNewLimit,
    dailyReviewTarget,
    deletedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DeckRow &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.id == this.id &&
          other.name == this.name &&
          other.description == this.description &&
          other.category == this.category &&
          other.color == this.color &&
          other.dailyNewLimit == this.dailyNewLimit &&
          other.dailyReviewTarget == this.dailyReviewTarget &&
          other.deletedAt == this.deletedAt);
}

class DecksCompanion extends UpdateCompanion<DeckRow> {
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<String> id;
  final Value<String> name;
  final Value<String> description;
  final Value<String> category;
  final Value<int> color;
  final Value<int> dailyNewLimit;
  final Value<int> dailyReviewTarget;
  final Value<DateTime?> deletedAt;
  final Value<int> rowid;
  const DecksCompanion({
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.category = const Value.absent(),
    this.color = const Value.absent(),
    this.dailyNewLimit = const Value.absent(),
    this.dailyReviewTarget = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DecksCompanion.insert({
    required DateTime createdAt,
    required DateTime updatedAt,
    required String id,
    required String name,
    this.description = const Value.absent(),
    this.category = const Value.absent(),
    required int color,
    this.dailyNewLimit = const Value.absent(),
    this.dailyReviewTarget = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : createdAt = Value(createdAt),
       updatedAt = Value(updatedAt),
       id = Value(id),
       name = Value(name),
       color = Value(color);
  static Insertable<DeckRow> custom({
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? description,
    Expression<String>? category,
    Expression<int>? color,
    Expression<int>? dailyNewLimit,
    Expression<int>? dailyReviewTarget,
    Expression<DateTime>? deletedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (category != null) 'category': category,
      if (color != null) 'color': color,
      if (dailyNewLimit != null) 'daily_new_limit': dailyNewLimit,
      if (dailyReviewTarget != null) 'daily_review_target': dailyReviewTarget,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DecksCompanion copyWith({
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<String>? id,
    Value<String>? name,
    Value<String>? description,
    Value<String>? category,
    Value<int>? color,
    Value<int>? dailyNewLimit,
    Value<int>? dailyReviewTarget,
    Value<DateTime?>? deletedAt,
    Value<int>? rowid,
  }) {
    return DecksCompanion(
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      category: category ?? this.category,
      color: color ?? this.color,
      dailyNewLimit: dailyNewLimit ?? this.dailyNewLimit,
      dailyReviewTarget: dailyReviewTarget ?? this.dailyReviewTarget,
      deletedAt: deletedAt ?? this.deletedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (color.present) {
      map['color'] = Variable<int>(color.value);
    }
    if (dailyNewLimit.present) {
      map['daily_new_limit'] = Variable<int>(dailyNewLimit.value);
    }
    if (dailyReviewTarget.present) {
      map['daily_review_target'] = Variable<int>(dailyReviewTarget.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DecksCompanion(')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('category: $category, ')
          ..write('color: $color, ')
          ..write('dailyNewLimit: $dailyNewLimit, ')
          ..write('dailyReviewTarget: $dailyReviewTarget, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FlashcardsTable extends Flashcards
    with TableInfo<$FlashcardsTable, CardRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FlashcardsTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _deckIdMeta = const VerificationMeta('deckId');
  @override
  late final GeneratedColumn<String> deckId = GeneratedColumn<String>(
    'deck_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES decks (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _frontMeta = const VerificationMeta('front');
  @override
  late final GeneratedColumn<String> front = GeneratedColumn<String>(
    'front',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _backMeta = const VerificationMeta('back');
  @override
  late final GeneratedColumn<String> back = GeneratedColumn<String>(
    'back',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _tagsMeta = const VerificationMeta('tags');
  @override
  late final GeneratedColumn<String> tags = GeneratedColumn<String>(
    'tags',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _extraMeta = const VerificationMeta('extra');
  @override
  late final GeneratedColumn<String> extra = GeneratedColumn<String>(
    'extra',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _stateMeta = const VerificationMeta('state');
  @override
  late final GeneratedColumn<String> state = GeneratedColumn<String>(
    'state',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('new'),
  );
  static const VerificationMeta _easeMeta = const VerificationMeta('ease');
  @override
  late final GeneratedColumn<int> ease = GeneratedColumn<int>(
    'ease',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(2500),
  );
  static const VerificationMeta _intervalDaysMeta = const VerificationMeta(
    'intervalDays',
  );
  @override
  late final GeneratedColumn<int> intervalDays = GeneratedColumn<int>(
    'interval_days',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _repetitionsMeta = const VerificationMeta(
    'repetitions',
  );
  @override
  late final GeneratedColumn<int> repetitions = GeneratedColumn<int>(
    'repetitions',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _lapsesMeta = const VerificationMeta('lapses');
  @override
  late final GeneratedColumn<int> lapses = GeneratedColumn<int>(
    'lapses',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _learningStepMeta = const VerificationMeta(
    'learningStep',
  );
  @override
  late final GeneratedColumn<int> learningStep = GeneratedColumn<int>(
    'learning_step',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _dueAtMeta = const VerificationMeta('dueAt');
  @override
  late final GeneratedColumn<DateTime> dueAt = GeneratedColumn<DateTime>(
    'due_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    createdAt,
    updatedAt,
    id,
    deckId,
    front,
    back,
    tags,
    extra,
    state,
    ease,
    intervalDays,
    repetitions,
    lapses,
    learningStep,
    dueAt,
    deletedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'flashcards';
  @override
  VerificationContext validateIntegrity(
    Insertable<CardRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('deck_id')) {
      context.handle(
        _deckIdMeta,
        deckId.isAcceptableOrUnknown(data['deck_id']!, _deckIdMeta),
      );
    } else if (isInserting) {
      context.missing(_deckIdMeta);
    }
    if (data.containsKey('front')) {
      context.handle(
        _frontMeta,
        front.isAcceptableOrUnknown(data['front']!, _frontMeta),
      );
    } else if (isInserting) {
      context.missing(_frontMeta);
    }
    if (data.containsKey('back')) {
      context.handle(
        _backMeta,
        back.isAcceptableOrUnknown(data['back']!, _backMeta),
      );
    } else if (isInserting) {
      context.missing(_backMeta);
    }
    if (data.containsKey('tags')) {
      context.handle(
        _tagsMeta,
        tags.isAcceptableOrUnknown(data['tags']!, _tagsMeta),
      );
    }
    if (data.containsKey('extra')) {
      context.handle(
        _extraMeta,
        extra.isAcceptableOrUnknown(data['extra']!, _extraMeta),
      );
    }
    if (data.containsKey('state')) {
      context.handle(
        _stateMeta,
        state.isAcceptableOrUnknown(data['state']!, _stateMeta),
      );
    }
    if (data.containsKey('ease')) {
      context.handle(
        _easeMeta,
        ease.isAcceptableOrUnknown(data['ease']!, _easeMeta),
      );
    }
    if (data.containsKey('interval_days')) {
      context.handle(
        _intervalDaysMeta,
        intervalDays.isAcceptableOrUnknown(
          data['interval_days']!,
          _intervalDaysMeta,
        ),
      );
    }
    if (data.containsKey('repetitions')) {
      context.handle(
        _repetitionsMeta,
        repetitions.isAcceptableOrUnknown(
          data['repetitions']!,
          _repetitionsMeta,
        ),
      );
    }
    if (data.containsKey('lapses')) {
      context.handle(
        _lapsesMeta,
        lapses.isAcceptableOrUnknown(data['lapses']!, _lapsesMeta),
      );
    }
    if (data.containsKey('learning_step')) {
      context.handle(
        _learningStepMeta,
        learningStep.isAcceptableOrUnknown(
          data['learning_step']!,
          _learningStepMeta,
        ),
      );
    }
    if (data.containsKey('due_at')) {
      context.handle(
        _dueAtMeta,
        dueAt.isAcceptableOrUnknown(data['due_at']!, _dueAtMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CardRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CardRow(
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      deckId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}deck_id'],
      )!,
      front: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}front'],
      )!,
      back: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}back'],
      )!,
      tags: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}tags'],
      )!,
      extra: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}extra'],
      )!,
      state: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}state'],
      )!,
      ease: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}ease'],
      )!,
      intervalDays: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}interval_days'],
      )!,
      repetitions: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}repetitions'],
      )!,
      lapses: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}lapses'],
      )!,
      learningStep: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}learning_step'],
      )!,
      dueAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}due_at'],
      ),
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
    );
  }

  @override
  $FlashcardsTable createAlias(String alias) {
    return $FlashcardsTable(attachedDatabase, alias);
  }
}

class CardRow extends DataClass implements Insertable<CardRow> {
  final DateTime createdAt;
  final DateTime updatedAt;
  final String id;
  final String deckId;
  final String front;
  final String back;
  final String tags;

  /// Optional fields (example, explanation, pronunciation, notes) as JSON; see
  /// CardExtras. Added in schema v2.
  final String extra;

  /// new | learning | review | relearning
  final String state;

  /// Ease factor ×1000 (SM-2 style), starts at 2500.
  final int ease;
  final int intervalDays;
  final int repetitions;
  final int lapses;
  final int learningStep;
  final DateTime? dueAt;
  final DateTime? deletedAt;
  const CardRow({
    required this.createdAt,
    required this.updatedAt,
    required this.id,
    required this.deckId,
    required this.front,
    required this.back,
    required this.tags,
    required this.extra,
    required this.state,
    required this.ease,
    required this.intervalDays,
    required this.repetitions,
    required this.lapses,
    required this.learningStep,
    this.dueAt,
    this.deletedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['id'] = Variable<String>(id);
    map['deck_id'] = Variable<String>(deckId);
    map['front'] = Variable<String>(front);
    map['back'] = Variable<String>(back);
    map['tags'] = Variable<String>(tags);
    map['extra'] = Variable<String>(extra);
    map['state'] = Variable<String>(state);
    map['ease'] = Variable<int>(ease);
    map['interval_days'] = Variable<int>(intervalDays);
    map['repetitions'] = Variable<int>(repetitions);
    map['lapses'] = Variable<int>(lapses);
    map['learning_step'] = Variable<int>(learningStep);
    if (!nullToAbsent || dueAt != null) {
      map['due_at'] = Variable<DateTime>(dueAt);
    }
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    return map;
  }

  FlashcardsCompanion toCompanion(bool nullToAbsent) {
    return FlashcardsCompanion(
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      id: Value(id),
      deckId: Value(deckId),
      front: Value(front),
      back: Value(back),
      tags: Value(tags),
      extra: Value(extra),
      state: Value(state),
      ease: Value(ease),
      intervalDays: Value(intervalDays),
      repetitions: Value(repetitions),
      lapses: Value(lapses),
      learningStep: Value(learningStep),
      dueAt: dueAt == null && nullToAbsent
          ? const Value.absent()
          : Value(dueAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    );
  }

  factory CardRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CardRow(
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      id: serializer.fromJson<String>(json['id']),
      deckId: serializer.fromJson<String>(json['deckId']),
      front: serializer.fromJson<String>(json['front']),
      back: serializer.fromJson<String>(json['back']),
      tags: serializer.fromJson<String>(json['tags']),
      extra: serializer.fromJson<String>(json['extra']),
      state: serializer.fromJson<String>(json['state']),
      ease: serializer.fromJson<int>(json['ease']),
      intervalDays: serializer.fromJson<int>(json['intervalDays']),
      repetitions: serializer.fromJson<int>(json['repetitions']),
      lapses: serializer.fromJson<int>(json['lapses']),
      learningStep: serializer.fromJson<int>(json['learningStep']),
      dueAt: serializer.fromJson<DateTime?>(json['dueAt']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'id': serializer.toJson<String>(id),
      'deckId': serializer.toJson<String>(deckId),
      'front': serializer.toJson<String>(front),
      'back': serializer.toJson<String>(back),
      'tags': serializer.toJson<String>(tags),
      'extra': serializer.toJson<String>(extra),
      'state': serializer.toJson<String>(state),
      'ease': serializer.toJson<int>(ease),
      'intervalDays': serializer.toJson<int>(intervalDays),
      'repetitions': serializer.toJson<int>(repetitions),
      'lapses': serializer.toJson<int>(lapses),
      'learningStep': serializer.toJson<int>(learningStep),
      'dueAt': serializer.toJson<DateTime?>(dueAt),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
    };
  }

  CardRow copyWith({
    DateTime? createdAt,
    DateTime? updatedAt,
    String? id,
    String? deckId,
    String? front,
    String? back,
    String? tags,
    String? extra,
    String? state,
    int? ease,
    int? intervalDays,
    int? repetitions,
    int? lapses,
    int? learningStep,
    Value<DateTime?> dueAt = const Value.absent(),
    Value<DateTime?> deletedAt = const Value.absent(),
  }) => CardRow(
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    id: id ?? this.id,
    deckId: deckId ?? this.deckId,
    front: front ?? this.front,
    back: back ?? this.back,
    tags: tags ?? this.tags,
    extra: extra ?? this.extra,
    state: state ?? this.state,
    ease: ease ?? this.ease,
    intervalDays: intervalDays ?? this.intervalDays,
    repetitions: repetitions ?? this.repetitions,
    lapses: lapses ?? this.lapses,
    learningStep: learningStep ?? this.learningStep,
    dueAt: dueAt.present ? dueAt.value : this.dueAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
  );
  CardRow copyWithCompanion(FlashcardsCompanion data) {
    return CardRow(
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      id: data.id.present ? data.id.value : this.id,
      deckId: data.deckId.present ? data.deckId.value : this.deckId,
      front: data.front.present ? data.front.value : this.front,
      back: data.back.present ? data.back.value : this.back,
      tags: data.tags.present ? data.tags.value : this.tags,
      extra: data.extra.present ? data.extra.value : this.extra,
      state: data.state.present ? data.state.value : this.state,
      ease: data.ease.present ? data.ease.value : this.ease,
      intervalDays: data.intervalDays.present
          ? data.intervalDays.value
          : this.intervalDays,
      repetitions: data.repetitions.present
          ? data.repetitions.value
          : this.repetitions,
      lapses: data.lapses.present ? data.lapses.value : this.lapses,
      learningStep: data.learningStep.present
          ? data.learningStep.value
          : this.learningStep,
      dueAt: data.dueAt.present ? data.dueAt.value : this.dueAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CardRow(')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('id: $id, ')
          ..write('deckId: $deckId, ')
          ..write('front: $front, ')
          ..write('back: $back, ')
          ..write('tags: $tags, ')
          ..write('extra: $extra, ')
          ..write('state: $state, ')
          ..write('ease: $ease, ')
          ..write('intervalDays: $intervalDays, ')
          ..write('repetitions: $repetitions, ')
          ..write('lapses: $lapses, ')
          ..write('learningStep: $learningStep, ')
          ..write('dueAt: $dueAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    createdAt,
    updatedAt,
    id,
    deckId,
    front,
    back,
    tags,
    extra,
    state,
    ease,
    intervalDays,
    repetitions,
    lapses,
    learningStep,
    dueAt,
    deletedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CardRow &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.id == this.id &&
          other.deckId == this.deckId &&
          other.front == this.front &&
          other.back == this.back &&
          other.tags == this.tags &&
          other.extra == this.extra &&
          other.state == this.state &&
          other.ease == this.ease &&
          other.intervalDays == this.intervalDays &&
          other.repetitions == this.repetitions &&
          other.lapses == this.lapses &&
          other.learningStep == this.learningStep &&
          other.dueAt == this.dueAt &&
          other.deletedAt == this.deletedAt);
}

class FlashcardsCompanion extends UpdateCompanion<CardRow> {
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<String> id;
  final Value<String> deckId;
  final Value<String> front;
  final Value<String> back;
  final Value<String> tags;
  final Value<String> extra;
  final Value<String> state;
  final Value<int> ease;
  final Value<int> intervalDays;
  final Value<int> repetitions;
  final Value<int> lapses;
  final Value<int> learningStep;
  final Value<DateTime?> dueAt;
  final Value<DateTime?> deletedAt;
  final Value<int> rowid;
  const FlashcardsCompanion({
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.id = const Value.absent(),
    this.deckId = const Value.absent(),
    this.front = const Value.absent(),
    this.back = const Value.absent(),
    this.tags = const Value.absent(),
    this.extra = const Value.absent(),
    this.state = const Value.absent(),
    this.ease = const Value.absent(),
    this.intervalDays = const Value.absent(),
    this.repetitions = const Value.absent(),
    this.lapses = const Value.absent(),
    this.learningStep = const Value.absent(),
    this.dueAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FlashcardsCompanion.insert({
    required DateTime createdAt,
    required DateTime updatedAt,
    required String id,
    required String deckId,
    required String front,
    required String back,
    this.tags = const Value.absent(),
    this.extra = const Value.absent(),
    this.state = const Value.absent(),
    this.ease = const Value.absent(),
    this.intervalDays = const Value.absent(),
    this.repetitions = const Value.absent(),
    this.lapses = const Value.absent(),
    this.learningStep = const Value.absent(),
    this.dueAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : createdAt = Value(createdAt),
       updatedAt = Value(updatedAt),
       id = Value(id),
       deckId = Value(deckId),
       front = Value(front),
       back = Value(back);
  static Insertable<CardRow> custom({
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? id,
    Expression<String>? deckId,
    Expression<String>? front,
    Expression<String>? back,
    Expression<String>? tags,
    Expression<String>? extra,
    Expression<String>? state,
    Expression<int>? ease,
    Expression<int>? intervalDays,
    Expression<int>? repetitions,
    Expression<int>? lapses,
    Expression<int>? learningStep,
    Expression<DateTime>? dueAt,
    Expression<DateTime>? deletedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (id != null) 'id': id,
      if (deckId != null) 'deck_id': deckId,
      if (front != null) 'front': front,
      if (back != null) 'back': back,
      if (tags != null) 'tags': tags,
      if (extra != null) 'extra': extra,
      if (state != null) 'state': state,
      if (ease != null) 'ease': ease,
      if (intervalDays != null) 'interval_days': intervalDays,
      if (repetitions != null) 'repetitions': repetitions,
      if (lapses != null) 'lapses': lapses,
      if (learningStep != null) 'learning_step': learningStep,
      if (dueAt != null) 'due_at': dueAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FlashcardsCompanion copyWith({
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<String>? id,
    Value<String>? deckId,
    Value<String>? front,
    Value<String>? back,
    Value<String>? tags,
    Value<String>? extra,
    Value<String>? state,
    Value<int>? ease,
    Value<int>? intervalDays,
    Value<int>? repetitions,
    Value<int>? lapses,
    Value<int>? learningStep,
    Value<DateTime?>? dueAt,
    Value<DateTime?>? deletedAt,
    Value<int>? rowid,
  }) {
    return FlashcardsCompanion(
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      id: id ?? this.id,
      deckId: deckId ?? this.deckId,
      front: front ?? this.front,
      back: back ?? this.back,
      tags: tags ?? this.tags,
      extra: extra ?? this.extra,
      state: state ?? this.state,
      ease: ease ?? this.ease,
      intervalDays: intervalDays ?? this.intervalDays,
      repetitions: repetitions ?? this.repetitions,
      lapses: lapses ?? this.lapses,
      learningStep: learningStep ?? this.learningStep,
      dueAt: dueAt ?? this.dueAt,
      deletedAt: deletedAt ?? this.deletedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (deckId.present) {
      map['deck_id'] = Variable<String>(deckId.value);
    }
    if (front.present) {
      map['front'] = Variable<String>(front.value);
    }
    if (back.present) {
      map['back'] = Variable<String>(back.value);
    }
    if (tags.present) {
      map['tags'] = Variable<String>(tags.value);
    }
    if (extra.present) {
      map['extra'] = Variable<String>(extra.value);
    }
    if (state.present) {
      map['state'] = Variable<String>(state.value);
    }
    if (ease.present) {
      map['ease'] = Variable<int>(ease.value);
    }
    if (intervalDays.present) {
      map['interval_days'] = Variable<int>(intervalDays.value);
    }
    if (repetitions.present) {
      map['repetitions'] = Variable<int>(repetitions.value);
    }
    if (lapses.present) {
      map['lapses'] = Variable<int>(lapses.value);
    }
    if (learningStep.present) {
      map['learning_step'] = Variable<int>(learningStep.value);
    }
    if (dueAt.present) {
      map['due_at'] = Variable<DateTime>(dueAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FlashcardsCompanion(')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('id: $id, ')
          ..write('deckId: $deckId, ')
          ..write('front: $front, ')
          ..write('back: $back, ')
          ..write('tags: $tags, ')
          ..write('extra: $extra, ')
          ..write('state: $state, ')
          ..write('ease: $ease, ')
          ..write('intervalDays: $intervalDays, ')
          ..write('repetitions: $repetitions, ')
          ..write('lapses: $lapses, ')
          ..write('learningStep: $learningStep, ')
          ..write('dueAt: $dueAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CardReviewsTable extends CardReviews
    with TableInfo<$CardReviewsTable, ReviewRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CardReviewsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _cardIdMeta = const VerificationMeta('cardId');
  @override
  late final GeneratedColumn<String> cardId = GeneratedColumn<String>(
    'card_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES flashcards (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _reviewedAtMeta = const VerificationMeta(
    'reviewedAt',
  );
  @override
  late final GeneratedColumn<DateTime> reviewedAt = GeneratedColumn<DateTime>(
    'reviewed_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _ratingMeta = const VerificationMeta('rating');
  @override
  late final GeneratedColumn<int> rating = GeneratedColumn<int>(
    'rating',
    aliasedName,
    false,
    check: () => ComparableExpr(rating).isBetweenValues(1, 4),
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _stateBeforeMeta = const VerificationMeta(
    'stateBefore',
  );
  @override
  late final GeneratedColumn<String> stateBefore = GeneratedColumn<String>(
    'state_before',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _intervalBeforeMeta = const VerificationMeta(
    'intervalBefore',
  );
  @override
  late final GeneratedColumn<int> intervalBefore = GeneratedColumn<int>(
    'interval_before',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _intervalAfterMeta = const VerificationMeta(
    'intervalAfter',
  );
  @override
  late final GeneratedColumn<int> intervalAfter = GeneratedColumn<int>(
    'interval_after',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _easeBeforeMeta = const VerificationMeta(
    'easeBefore',
  );
  @override
  late final GeneratedColumn<int> easeBefore = GeneratedColumn<int>(
    'ease_before',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _easeAfterMeta = const VerificationMeta(
    'easeAfter',
  );
  @override
  late final GeneratedColumn<int> easeAfter = GeneratedColumn<int>(
    'ease_after',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    cardId,
    reviewedAt,
    rating,
    stateBefore,
    intervalBefore,
    intervalAfter,
    easeBefore,
    easeAfter,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'card_reviews';
  @override
  VerificationContext validateIntegrity(
    Insertable<ReviewRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('card_id')) {
      context.handle(
        _cardIdMeta,
        cardId.isAcceptableOrUnknown(data['card_id']!, _cardIdMeta),
      );
    } else if (isInserting) {
      context.missing(_cardIdMeta);
    }
    if (data.containsKey('reviewed_at')) {
      context.handle(
        _reviewedAtMeta,
        reviewedAt.isAcceptableOrUnknown(data['reviewed_at']!, _reviewedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_reviewedAtMeta);
    }
    if (data.containsKey('rating')) {
      context.handle(
        _ratingMeta,
        rating.isAcceptableOrUnknown(data['rating']!, _ratingMeta),
      );
    } else if (isInserting) {
      context.missing(_ratingMeta);
    }
    if (data.containsKey('state_before')) {
      context.handle(
        _stateBeforeMeta,
        stateBefore.isAcceptableOrUnknown(
          data['state_before']!,
          _stateBeforeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_stateBeforeMeta);
    }
    if (data.containsKey('interval_before')) {
      context.handle(
        _intervalBeforeMeta,
        intervalBefore.isAcceptableOrUnknown(
          data['interval_before']!,
          _intervalBeforeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_intervalBeforeMeta);
    }
    if (data.containsKey('interval_after')) {
      context.handle(
        _intervalAfterMeta,
        intervalAfter.isAcceptableOrUnknown(
          data['interval_after']!,
          _intervalAfterMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_intervalAfterMeta);
    }
    if (data.containsKey('ease_before')) {
      context.handle(
        _easeBeforeMeta,
        easeBefore.isAcceptableOrUnknown(data['ease_before']!, _easeBeforeMeta),
      );
    } else if (isInserting) {
      context.missing(_easeBeforeMeta);
    }
    if (data.containsKey('ease_after')) {
      context.handle(
        _easeAfterMeta,
        easeAfter.isAcceptableOrUnknown(data['ease_after']!, _easeAfterMeta),
      );
    } else if (isInserting) {
      context.missing(_easeAfterMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ReviewRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ReviewRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      cardId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}card_id'],
      )!,
      reviewedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}reviewed_at'],
      )!,
      rating: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}rating'],
      )!,
      stateBefore: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}state_before'],
      )!,
      intervalBefore: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}interval_before'],
      )!,
      intervalAfter: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}interval_after'],
      )!,
      easeBefore: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}ease_before'],
      )!,
      easeAfter: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}ease_after'],
      )!,
    );
  }

  @override
  $CardReviewsTable createAlias(String alias) {
    return $CardReviewsTable(attachedDatabase, alias);
  }
}

class ReviewRow extends DataClass implements Insertable<ReviewRow> {
  final String id;
  final String cardId;
  final DateTime reviewedAt;

  /// 1 = again, 2 = hard, 3 = good, 4 = easy
  final int rating;
  final String stateBefore;
  final int intervalBefore;
  final int intervalAfter;
  final int easeBefore;
  final int easeAfter;
  const ReviewRow({
    required this.id,
    required this.cardId,
    required this.reviewedAt,
    required this.rating,
    required this.stateBefore,
    required this.intervalBefore,
    required this.intervalAfter,
    required this.easeBefore,
    required this.easeAfter,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['card_id'] = Variable<String>(cardId);
    map['reviewed_at'] = Variable<DateTime>(reviewedAt);
    map['rating'] = Variable<int>(rating);
    map['state_before'] = Variable<String>(stateBefore);
    map['interval_before'] = Variable<int>(intervalBefore);
    map['interval_after'] = Variable<int>(intervalAfter);
    map['ease_before'] = Variable<int>(easeBefore);
    map['ease_after'] = Variable<int>(easeAfter);
    return map;
  }

  CardReviewsCompanion toCompanion(bool nullToAbsent) {
    return CardReviewsCompanion(
      id: Value(id),
      cardId: Value(cardId),
      reviewedAt: Value(reviewedAt),
      rating: Value(rating),
      stateBefore: Value(stateBefore),
      intervalBefore: Value(intervalBefore),
      intervalAfter: Value(intervalAfter),
      easeBefore: Value(easeBefore),
      easeAfter: Value(easeAfter),
    );
  }

  factory ReviewRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ReviewRow(
      id: serializer.fromJson<String>(json['id']),
      cardId: serializer.fromJson<String>(json['cardId']),
      reviewedAt: serializer.fromJson<DateTime>(json['reviewedAt']),
      rating: serializer.fromJson<int>(json['rating']),
      stateBefore: serializer.fromJson<String>(json['stateBefore']),
      intervalBefore: serializer.fromJson<int>(json['intervalBefore']),
      intervalAfter: serializer.fromJson<int>(json['intervalAfter']),
      easeBefore: serializer.fromJson<int>(json['easeBefore']),
      easeAfter: serializer.fromJson<int>(json['easeAfter']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'cardId': serializer.toJson<String>(cardId),
      'reviewedAt': serializer.toJson<DateTime>(reviewedAt),
      'rating': serializer.toJson<int>(rating),
      'stateBefore': serializer.toJson<String>(stateBefore),
      'intervalBefore': serializer.toJson<int>(intervalBefore),
      'intervalAfter': serializer.toJson<int>(intervalAfter),
      'easeBefore': serializer.toJson<int>(easeBefore),
      'easeAfter': serializer.toJson<int>(easeAfter),
    };
  }

  ReviewRow copyWith({
    String? id,
    String? cardId,
    DateTime? reviewedAt,
    int? rating,
    String? stateBefore,
    int? intervalBefore,
    int? intervalAfter,
    int? easeBefore,
    int? easeAfter,
  }) => ReviewRow(
    id: id ?? this.id,
    cardId: cardId ?? this.cardId,
    reviewedAt: reviewedAt ?? this.reviewedAt,
    rating: rating ?? this.rating,
    stateBefore: stateBefore ?? this.stateBefore,
    intervalBefore: intervalBefore ?? this.intervalBefore,
    intervalAfter: intervalAfter ?? this.intervalAfter,
    easeBefore: easeBefore ?? this.easeBefore,
    easeAfter: easeAfter ?? this.easeAfter,
  );
  ReviewRow copyWithCompanion(CardReviewsCompanion data) {
    return ReviewRow(
      id: data.id.present ? data.id.value : this.id,
      cardId: data.cardId.present ? data.cardId.value : this.cardId,
      reviewedAt: data.reviewedAt.present
          ? data.reviewedAt.value
          : this.reviewedAt,
      rating: data.rating.present ? data.rating.value : this.rating,
      stateBefore: data.stateBefore.present
          ? data.stateBefore.value
          : this.stateBefore,
      intervalBefore: data.intervalBefore.present
          ? data.intervalBefore.value
          : this.intervalBefore,
      intervalAfter: data.intervalAfter.present
          ? data.intervalAfter.value
          : this.intervalAfter,
      easeBefore: data.easeBefore.present
          ? data.easeBefore.value
          : this.easeBefore,
      easeAfter: data.easeAfter.present ? data.easeAfter.value : this.easeAfter,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ReviewRow(')
          ..write('id: $id, ')
          ..write('cardId: $cardId, ')
          ..write('reviewedAt: $reviewedAt, ')
          ..write('rating: $rating, ')
          ..write('stateBefore: $stateBefore, ')
          ..write('intervalBefore: $intervalBefore, ')
          ..write('intervalAfter: $intervalAfter, ')
          ..write('easeBefore: $easeBefore, ')
          ..write('easeAfter: $easeAfter')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    cardId,
    reviewedAt,
    rating,
    stateBefore,
    intervalBefore,
    intervalAfter,
    easeBefore,
    easeAfter,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ReviewRow &&
          other.id == this.id &&
          other.cardId == this.cardId &&
          other.reviewedAt == this.reviewedAt &&
          other.rating == this.rating &&
          other.stateBefore == this.stateBefore &&
          other.intervalBefore == this.intervalBefore &&
          other.intervalAfter == this.intervalAfter &&
          other.easeBefore == this.easeBefore &&
          other.easeAfter == this.easeAfter);
}

class CardReviewsCompanion extends UpdateCompanion<ReviewRow> {
  final Value<String> id;
  final Value<String> cardId;
  final Value<DateTime> reviewedAt;
  final Value<int> rating;
  final Value<String> stateBefore;
  final Value<int> intervalBefore;
  final Value<int> intervalAfter;
  final Value<int> easeBefore;
  final Value<int> easeAfter;
  final Value<int> rowid;
  const CardReviewsCompanion({
    this.id = const Value.absent(),
    this.cardId = const Value.absent(),
    this.reviewedAt = const Value.absent(),
    this.rating = const Value.absent(),
    this.stateBefore = const Value.absent(),
    this.intervalBefore = const Value.absent(),
    this.intervalAfter = const Value.absent(),
    this.easeBefore = const Value.absent(),
    this.easeAfter = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CardReviewsCompanion.insert({
    required String id,
    required String cardId,
    required DateTime reviewedAt,
    required int rating,
    required String stateBefore,
    required int intervalBefore,
    required int intervalAfter,
    required int easeBefore,
    required int easeAfter,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       cardId = Value(cardId),
       reviewedAt = Value(reviewedAt),
       rating = Value(rating),
       stateBefore = Value(stateBefore),
       intervalBefore = Value(intervalBefore),
       intervalAfter = Value(intervalAfter),
       easeBefore = Value(easeBefore),
       easeAfter = Value(easeAfter);
  static Insertable<ReviewRow> custom({
    Expression<String>? id,
    Expression<String>? cardId,
    Expression<DateTime>? reviewedAt,
    Expression<int>? rating,
    Expression<String>? stateBefore,
    Expression<int>? intervalBefore,
    Expression<int>? intervalAfter,
    Expression<int>? easeBefore,
    Expression<int>? easeAfter,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (cardId != null) 'card_id': cardId,
      if (reviewedAt != null) 'reviewed_at': reviewedAt,
      if (rating != null) 'rating': rating,
      if (stateBefore != null) 'state_before': stateBefore,
      if (intervalBefore != null) 'interval_before': intervalBefore,
      if (intervalAfter != null) 'interval_after': intervalAfter,
      if (easeBefore != null) 'ease_before': easeBefore,
      if (easeAfter != null) 'ease_after': easeAfter,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CardReviewsCompanion copyWith({
    Value<String>? id,
    Value<String>? cardId,
    Value<DateTime>? reviewedAt,
    Value<int>? rating,
    Value<String>? stateBefore,
    Value<int>? intervalBefore,
    Value<int>? intervalAfter,
    Value<int>? easeBefore,
    Value<int>? easeAfter,
    Value<int>? rowid,
  }) {
    return CardReviewsCompanion(
      id: id ?? this.id,
      cardId: cardId ?? this.cardId,
      reviewedAt: reviewedAt ?? this.reviewedAt,
      rating: rating ?? this.rating,
      stateBefore: stateBefore ?? this.stateBefore,
      intervalBefore: intervalBefore ?? this.intervalBefore,
      intervalAfter: intervalAfter ?? this.intervalAfter,
      easeBefore: easeBefore ?? this.easeBefore,
      easeAfter: easeAfter ?? this.easeAfter,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (cardId.present) {
      map['card_id'] = Variable<String>(cardId.value);
    }
    if (reviewedAt.present) {
      map['reviewed_at'] = Variable<DateTime>(reviewedAt.value);
    }
    if (rating.present) {
      map['rating'] = Variable<int>(rating.value);
    }
    if (stateBefore.present) {
      map['state_before'] = Variable<String>(stateBefore.value);
    }
    if (intervalBefore.present) {
      map['interval_before'] = Variable<int>(intervalBefore.value);
    }
    if (intervalAfter.present) {
      map['interval_after'] = Variable<int>(intervalAfter.value);
    }
    if (easeBefore.present) {
      map['ease_before'] = Variable<int>(easeBefore.value);
    }
    if (easeAfter.present) {
      map['ease_after'] = Variable<int>(easeAfter.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CardReviewsCompanion(')
          ..write('id: $id, ')
          ..write('cardId: $cardId, ')
          ..write('reviewedAt: $reviewedAt, ')
          ..write('rating: $rating, ')
          ..write('stateBefore: $stateBefore, ')
          ..write('intervalBefore: $intervalBefore, ')
          ..write('intervalAfter: $intervalAfter, ')
          ..write('easeBefore: $easeBefore, ')
          ..write('easeAfter: $easeAfter, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $GoalsTable extends Goals with TableInfo<$GoalsTable, GoalRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GoalsTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 1,
      maxTextLength: 300,
    ),
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
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _periodMeta = const VerificationMeta('period');
  @override
  late final GeneratedColumn<String> period = GeneratedColumn<String>(
    'period',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _targetMeta = const VerificationMeta('target');
  @override
  late final GeneratedColumn<double> target = GeneratedColumn<double>(
    'target',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  static const VerificationMeta _unitMeta = const VerificationMeta('unit');
  @override
  late final GeneratedColumn<String> unit = GeneratedColumn<String>(
    'unit',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('active'),
  );
  static const VerificationMeta _dueDateMeta = const VerificationMeta(
    'dueDate',
  );
  @override
  late final GeneratedColumn<DateTime> dueDate = GeneratedColumn<DateTime>(
    'due_date',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _projectIdMeta = const VerificationMeta(
    'projectId',
  );
  @override
  late final GeneratedColumn<String> projectId = GeneratedColumn<String>(
    'project_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES projects (id) ON DELETE SET NULL',
    ),
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    createdAt,
    updatedAt,
    id,
    title,
    description,
    period,
    target,
    unit,
    status,
    dueDate,
    projectId,
    deletedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'goals';
  @override
  VerificationContext validateIntegrity(
    Insertable<GoalRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('period')) {
      context.handle(
        _periodMeta,
        period.isAcceptableOrUnknown(data['period']!, _periodMeta),
      );
    } else if (isInserting) {
      context.missing(_periodMeta);
    }
    if (data.containsKey('target')) {
      context.handle(
        _targetMeta,
        target.isAcceptableOrUnknown(data['target']!, _targetMeta),
      );
    }
    if (data.containsKey('unit')) {
      context.handle(
        _unitMeta,
        unit.isAcceptableOrUnknown(data['unit']!, _unitMeta),
      );
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    }
    if (data.containsKey('due_date')) {
      context.handle(
        _dueDateMeta,
        dueDate.isAcceptableOrUnknown(data['due_date']!, _dueDateMeta),
      );
    }
    if (data.containsKey('project_id')) {
      context.handle(
        _projectIdMeta,
        projectId.isAcceptableOrUnknown(data['project_id']!, _projectIdMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GoalRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GoalRow(
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      )!,
      period: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}period'],
      )!,
      target: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}target'],
      )!,
      unit: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}unit'],
      )!,
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
      dueDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}due_date'],
      ),
      projectId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}project_id'],
      ),
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
    );
  }

  @override
  $GoalsTable createAlias(String alias) {
    return $GoalsTable(attachedDatabase, alias);
  }
}

class GoalRow extends DataClass implements Insertable<GoalRow> {
  final DateTime createdAt;
  final DateTime updatedAt;
  final String id;
  final String title;
  final String description;

  /// daily | weekly | monthly | longTerm
  final String period;
  final double target;
  final String unit;

  /// active | paused | achieved
  final String status;
  final DateTime? dueDate;
  final String? projectId;
  final DateTime? deletedAt;
  const GoalRow({
    required this.createdAt,
    required this.updatedAt,
    required this.id,
    required this.title,
    required this.description,
    required this.period,
    required this.target,
    required this.unit,
    required this.status,
    this.dueDate,
    this.projectId,
    this.deletedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['id'] = Variable<String>(id);
    map['title'] = Variable<String>(title);
    map['description'] = Variable<String>(description);
    map['period'] = Variable<String>(period);
    map['target'] = Variable<double>(target);
    map['unit'] = Variable<String>(unit);
    map['status'] = Variable<String>(status);
    if (!nullToAbsent || dueDate != null) {
      map['due_date'] = Variable<DateTime>(dueDate);
    }
    if (!nullToAbsent || projectId != null) {
      map['project_id'] = Variable<String>(projectId);
    }
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    return map;
  }

  GoalsCompanion toCompanion(bool nullToAbsent) {
    return GoalsCompanion(
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      id: Value(id),
      title: Value(title),
      description: Value(description),
      period: Value(period),
      target: Value(target),
      unit: Value(unit),
      status: Value(status),
      dueDate: dueDate == null && nullToAbsent
          ? const Value.absent()
          : Value(dueDate),
      projectId: projectId == null && nullToAbsent
          ? const Value.absent()
          : Value(projectId),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    );
  }

  factory GoalRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GoalRow(
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      id: serializer.fromJson<String>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String>(json['description']),
      period: serializer.fromJson<String>(json['period']),
      target: serializer.fromJson<double>(json['target']),
      unit: serializer.fromJson<String>(json['unit']),
      status: serializer.fromJson<String>(json['status']),
      dueDate: serializer.fromJson<DateTime?>(json['dueDate']),
      projectId: serializer.fromJson<String?>(json['projectId']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'id': serializer.toJson<String>(id),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String>(description),
      'period': serializer.toJson<String>(period),
      'target': serializer.toJson<double>(target),
      'unit': serializer.toJson<String>(unit),
      'status': serializer.toJson<String>(status),
      'dueDate': serializer.toJson<DateTime?>(dueDate),
      'projectId': serializer.toJson<String?>(projectId),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
    };
  }

  GoalRow copyWith({
    DateTime? createdAt,
    DateTime? updatedAt,
    String? id,
    String? title,
    String? description,
    String? period,
    double? target,
    String? unit,
    String? status,
    Value<DateTime?> dueDate = const Value.absent(),
    Value<String?> projectId = const Value.absent(),
    Value<DateTime?> deletedAt = const Value.absent(),
  }) => GoalRow(
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    id: id ?? this.id,
    title: title ?? this.title,
    description: description ?? this.description,
    period: period ?? this.period,
    target: target ?? this.target,
    unit: unit ?? this.unit,
    status: status ?? this.status,
    dueDate: dueDate.present ? dueDate.value : this.dueDate,
    projectId: projectId.present ? projectId.value : this.projectId,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
  );
  GoalRow copyWithCompanion(GoalsCompanion data) {
    return GoalRow(
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      description: data.description.present
          ? data.description.value
          : this.description,
      period: data.period.present ? data.period.value : this.period,
      target: data.target.present ? data.target.value : this.target,
      unit: data.unit.present ? data.unit.value : this.unit,
      status: data.status.present ? data.status.value : this.status,
      dueDate: data.dueDate.present ? data.dueDate.value : this.dueDate,
      projectId: data.projectId.present ? data.projectId.value : this.projectId,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('GoalRow(')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('period: $period, ')
          ..write('target: $target, ')
          ..write('unit: $unit, ')
          ..write('status: $status, ')
          ..write('dueDate: $dueDate, ')
          ..write('projectId: $projectId, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    createdAt,
    updatedAt,
    id,
    title,
    description,
    period,
    target,
    unit,
    status,
    dueDate,
    projectId,
    deletedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GoalRow &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.id == this.id &&
          other.title == this.title &&
          other.description == this.description &&
          other.period == this.period &&
          other.target == this.target &&
          other.unit == this.unit &&
          other.status == this.status &&
          other.dueDate == this.dueDate &&
          other.projectId == this.projectId &&
          other.deletedAt == this.deletedAt);
}

class GoalsCompanion extends UpdateCompanion<GoalRow> {
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<String> id;
  final Value<String> title;
  final Value<String> description;
  final Value<String> period;
  final Value<double> target;
  final Value<String> unit;
  final Value<String> status;
  final Value<DateTime?> dueDate;
  final Value<String?> projectId;
  final Value<DateTime?> deletedAt;
  final Value<int> rowid;
  const GoalsCompanion({
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.period = const Value.absent(),
    this.target = const Value.absent(),
    this.unit = const Value.absent(),
    this.status = const Value.absent(),
    this.dueDate = const Value.absent(),
    this.projectId = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  GoalsCompanion.insert({
    required DateTime createdAt,
    required DateTime updatedAt,
    required String id,
    required String title,
    this.description = const Value.absent(),
    required String period,
    this.target = const Value.absent(),
    this.unit = const Value.absent(),
    this.status = const Value.absent(),
    this.dueDate = const Value.absent(),
    this.projectId = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : createdAt = Value(createdAt),
       updatedAt = Value(updatedAt),
       id = Value(id),
       title = Value(title),
       period = Value(period);
  static Insertable<GoalRow> custom({
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? id,
    Expression<String>? title,
    Expression<String>? description,
    Expression<String>? period,
    Expression<double>? target,
    Expression<String>? unit,
    Expression<String>? status,
    Expression<DateTime>? dueDate,
    Expression<String>? projectId,
    Expression<DateTime>? deletedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (period != null) 'period': period,
      if (target != null) 'target': target,
      if (unit != null) 'unit': unit,
      if (status != null) 'status': status,
      if (dueDate != null) 'due_date': dueDate,
      if (projectId != null) 'project_id': projectId,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  GoalsCompanion copyWith({
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<String>? id,
    Value<String>? title,
    Value<String>? description,
    Value<String>? period,
    Value<double>? target,
    Value<String>? unit,
    Value<String>? status,
    Value<DateTime?>? dueDate,
    Value<String?>? projectId,
    Value<DateTime?>? deletedAt,
    Value<int>? rowid,
  }) {
    return GoalsCompanion(
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      period: period ?? this.period,
      target: target ?? this.target,
      unit: unit ?? this.unit,
      status: status ?? this.status,
      dueDate: dueDate ?? this.dueDate,
      projectId: projectId ?? this.projectId,
      deletedAt: deletedAt ?? this.deletedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (period.present) {
      map['period'] = Variable<String>(period.value);
    }
    if (target.present) {
      map['target'] = Variable<double>(target.value);
    }
    if (unit.present) {
      map['unit'] = Variable<String>(unit.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (dueDate.present) {
      map['due_date'] = Variable<DateTime>(dueDate.value);
    }
    if (projectId.present) {
      map['project_id'] = Variable<String>(projectId.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GoalsCompanion(')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('period: $period, ')
          ..write('target: $target, ')
          ..write('unit: $unit, ')
          ..write('status: $status, ')
          ..write('dueDate: $dueDate, ')
          ..write('projectId: $projectId, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $GoalEntriesTable extends GoalEntries
    with TableInfo<$GoalEntriesTable, GoalEntryRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GoalEntriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _goalIdMeta = const VerificationMeta('goalId');
  @override
  late final GeneratedColumn<String> goalId = GeneratedColumn<String>(
    'goal_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES goals (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
    'amount',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _atMeta = const VerificationMeta('at');
  @override
  late final GeneratedColumn<DateTime> at = GeneratedColumn<DateTime>(
    'at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
    'note',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  @override
  List<GeneratedColumn> get $columns => [id, goalId, amount, at, note];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'goal_entries';
  @override
  VerificationContext validateIntegrity(
    Insertable<GoalEntryRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('goal_id')) {
      context.handle(
        _goalIdMeta,
        goalId.isAcceptableOrUnknown(data['goal_id']!, _goalIdMeta),
      );
    } else if (isInserting) {
      context.missing(_goalIdMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(
        _amountMeta,
        amount.isAcceptableOrUnknown(data['amount']!, _amountMeta),
      );
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('at')) {
      context.handle(_atMeta, at.isAcceptableOrUnknown(data['at']!, _atMeta));
    } else if (isInserting) {
      context.missing(_atMeta);
    }
    if (data.containsKey('note')) {
      context.handle(
        _noteMeta,
        note.isAcceptableOrUnknown(data['note']!, _noteMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GoalEntryRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GoalEntryRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      goalId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}goal_id'],
      )!,
      amount: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}amount'],
      )!,
      at: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}at'],
      )!,
      note: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}note'],
      )!,
    );
  }

  @override
  $GoalEntriesTable createAlias(String alias) {
    return $GoalEntriesTable(attachedDatabase, alias);
  }
}

class GoalEntryRow extends DataClass implements Insertable<GoalEntryRow> {
  final String id;
  final String goalId;
  final double amount;
  final DateTime at;
  final String note;
  const GoalEntryRow({
    required this.id,
    required this.goalId,
    required this.amount,
    required this.at,
    required this.note,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['goal_id'] = Variable<String>(goalId);
    map['amount'] = Variable<double>(amount);
    map['at'] = Variable<DateTime>(at);
    map['note'] = Variable<String>(note);
    return map;
  }

  GoalEntriesCompanion toCompanion(bool nullToAbsent) {
    return GoalEntriesCompanion(
      id: Value(id),
      goalId: Value(goalId),
      amount: Value(amount),
      at: Value(at),
      note: Value(note),
    );
  }

  factory GoalEntryRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GoalEntryRow(
      id: serializer.fromJson<String>(json['id']),
      goalId: serializer.fromJson<String>(json['goalId']),
      amount: serializer.fromJson<double>(json['amount']),
      at: serializer.fromJson<DateTime>(json['at']),
      note: serializer.fromJson<String>(json['note']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'goalId': serializer.toJson<String>(goalId),
      'amount': serializer.toJson<double>(amount),
      'at': serializer.toJson<DateTime>(at),
      'note': serializer.toJson<String>(note),
    };
  }

  GoalEntryRow copyWith({
    String? id,
    String? goalId,
    double? amount,
    DateTime? at,
    String? note,
  }) => GoalEntryRow(
    id: id ?? this.id,
    goalId: goalId ?? this.goalId,
    amount: amount ?? this.amount,
    at: at ?? this.at,
    note: note ?? this.note,
  );
  GoalEntryRow copyWithCompanion(GoalEntriesCompanion data) {
    return GoalEntryRow(
      id: data.id.present ? data.id.value : this.id,
      goalId: data.goalId.present ? data.goalId.value : this.goalId,
      amount: data.amount.present ? data.amount.value : this.amount,
      at: data.at.present ? data.at.value : this.at,
      note: data.note.present ? data.note.value : this.note,
    );
  }

  @override
  String toString() {
    return (StringBuffer('GoalEntryRow(')
          ..write('id: $id, ')
          ..write('goalId: $goalId, ')
          ..write('amount: $amount, ')
          ..write('at: $at, ')
          ..write('note: $note')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, goalId, amount, at, note);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GoalEntryRow &&
          other.id == this.id &&
          other.goalId == this.goalId &&
          other.amount == this.amount &&
          other.at == this.at &&
          other.note == this.note);
}

class GoalEntriesCompanion extends UpdateCompanion<GoalEntryRow> {
  final Value<String> id;
  final Value<String> goalId;
  final Value<double> amount;
  final Value<DateTime> at;
  final Value<String> note;
  final Value<int> rowid;
  const GoalEntriesCompanion({
    this.id = const Value.absent(),
    this.goalId = const Value.absent(),
    this.amount = const Value.absent(),
    this.at = const Value.absent(),
    this.note = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  GoalEntriesCompanion.insert({
    required String id,
    required String goalId,
    required double amount,
    required DateTime at,
    this.note = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       goalId = Value(goalId),
       amount = Value(amount),
       at = Value(at);
  static Insertable<GoalEntryRow> custom({
    Expression<String>? id,
    Expression<String>? goalId,
    Expression<double>? amount,
    Expression<DateTime>? at,
    Expression<String>? note,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (goalId != null) 'goal_id': goalId,
      if (amount != null) 'amount': amount,
      if (at != null) 'at': at,
      if (note != null) 'note': note,
      if (rowid != null) 'rowid': rowid,
    });
  }

  GoalEntriesCompanion copyWith({
    Value<String>? id,
    Value<String>? goalId,
    Value<double>? amount,
    Value<DateTime>? at,
    Value<String>? note,
    Value<int>? rowid,
  }) {
    return GoalEntriesCompanion(
      id: id ?? this.id,
      goalId: goalId ?? this.goalId,
      amount: amount ?? this.amount,
      at: at ?? this.at,
      note: note ?? this.note,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (goalId.present) {
      map['goal_id'] = Variable<String>(goalId.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (at.present) {
      map['at'] = Variable<DateTime>(at.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GoalEntriesCompanion(')
          ..write('id: $id, ')
          ..write('goalId: $goalId, ')
          ..write('amount: $amount, ')
          ..write('at: $at, ')
          ..write('note: $note, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $GoalTasksTable extends GoalTasks
    with TableInfo<$GoalTasksTable, GoalTask> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GoalTasksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _goalIdMeta = const VerificationMeta('goalId');
  @override
  late final GeneratedColumn<String> goalId = GeneratedColumn<String>(
    'goal_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES goals (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _taskIdMeta = const VerificationMeta('taskId');
  @override
  late final GeneratedColumn<String> taskId = GeneratedColumn<String>(
    'task_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES tasks (id) ON DELETE CASCADE',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [goalId, taskId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'goal_tasks';
  @override
  VerificationContext validateIntegrity(
    Insertable<GoalTask> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('goal_id')) {
      context.handle(
        _goalIdMeta,
        goalId.isAcceptableOrUnknown(data['goal_id']!, _goalIdMeta),
      );
    } else if (isInserting) {
      context.missing(_goalIdMeta);
    }
    if (data.containsKey('task_id')) {
      context.handle(
        _taskIdMeta,
        taskId.isAcceptableOrUnknown(data['task_id']!, _taskIdMeta),
      );
    } else if (isInserting) {
      context.missing(_taskIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {goalId, taskId};
  @override
  GoalTask map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GoalTask(
      goalId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}goal_id'],
      )!,
      taskId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}task_id'],
      )!,
    );
  }

  @override
  $GoalTasksTable createAlias(String alias) {
    return $GoalTasksTable(attachedDatabase, alias);
  }
}

class GoalTask extends DataClass implements Insertable<GoalTask> {
  final String goalId;
  final String taskId;
  const GoalTask({required this.goalId, required this.taskId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['goal_id'] = Variable<String>(goalId);
    map['task_id'] = Variable<String>(taskId);
    return map;
  }

  GoalTasksCompanion toCompanion(bool nullToAbsent) {
    return GoalTasksCompanion(goalId: Value(goalId), taskId: Value(taskId));
  }

  factory GoalTask.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GoalTask(
      goalId: serializer.fromJson<String>(json['goalId']),
      taskId: serializer.fromJson<String>(json['taskId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'goalId': serializer.toJson<String>(goalId),
      'taskId': serializer.toJson<String>(taskId),
    };
  }

  GoalTask copyWith({String? goalId, String? taskId}) =>
      GoalTask(goalId: goalId ?? this.goalId, taskId: taskId ?? this.taskId);
  GoalTask copyWithCompanion(GoalTasksCompanion data) {
    return GoalTask(
      goalId: data.goalId.present ? data.goalId.value : this.goalId,
      taskId: data.taskId.present ? data.taskId.value : this.taskId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('GoalTask(')
          ..write('goalId: $goalId, ')
          ..write('taskId: $taskId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(goalId, taskId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GoalTask &&
          other.goalId == this.goalId &&
          other.taskId == this.taskId);
}

class GoalTasksCompanion extends UpdateCompanion<GoalTask> {
  final Value<String> goalId;
  final Value<String> taskId;
  final Value<int> rowid;
  const GoalTasksCompanion({
    this.goalId = const Value.absent(),
    this.taskId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  GoalTasksCompanion.insert({
    required String goalId,
    required String taskId,
    this.rowid = const Value.absent(),
  }) : goalId = Value(goalId),
       taskId = Value(taskId);
  static Insertable<GoalTask> custom({
    Expression<String>? goalId,
    Expression<String>? taskId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (goalId != null) 'goal_id': goalId,
      if (taskId != null) 'task_id': taskId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  GoalTasksCompanion copyWith({
    Value<String>? goalId,
    Value<String>? taskId,
    Value<int>? rowid,
  }) {
    return GoalTasksCompanion(
      goalId: goalId ?? this.goalId,
      taskId: taskId ?? this.taskId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (goalId.present) {
      map['goal_id'] = Variable<String>(goalId.value);
    }
    if (taskId.present) {
      map['task_id'] = Variable<String>(taskId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GoalTasksCompanion(')
          ..write('goalId: $goalId, ')
          ..write('taskId: $taskId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $HabitsTable extends Habits with TableInfo<$HabitsTable, HabitRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HabitsTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
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
      maxTextLength: 200,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<int> color = GeneratedColumn<int>(
    'color',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _iconMeta = const VerificationMeta('icon');
  @override
  late final GeneratedColumn<String> icon = GeneratedColumn<String>(
    'icon',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('spark'),
  );
  static const VerificationMeta _weekdaysMeta = const VerificationMeta(
    'weekdays',
  );
  @override
  late final GeneratedColumn<int> weekdays = GeneratedColumn<int>(
    'weekdays',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(127),
  );
  static const VerificationMeta _targetPerDayMeta = const VerificationMeta(
    'targetPerDay',
  );
  @override
  late final GeneratedColumn<int> targetPerDay = GeneratedColumn<int>(
    'target_per_day',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  static const VerificationMeta _reminderMinuteMeta = const VerificationMeta(
    'reminderMinute',
  );
  @override
  late final GeneratedColumn<int> reminderMinute = GeneratedColumn<int>(
    'reminder_minute',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _pausedMeta = const VerificationMeta('paused');
  @override
  late final GeneratedColumn<bool> paused = GeneratedColumn<bool>(
    'paused',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("paused" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _archivedMeta = const VerificationMeta(
    'archived',
  );
  @override
  late final GeneratedColumn<bool> archived = GeneratedColumn<bool>(
    'archived',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("archived" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  @override
  List<GeneratedColumn> get $columns => [
    createdAt,
    updatedAt,
    id,
    name,
    color,
    icon,
    weekdays,
    targetPerDay,
    reminderMinute,
    paused,
    archived,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'habits';
  @override
  VerificationContext validateIntegrity(
    Insertable<HabitRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
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
    if (data.containsKey('color')) {
      context.handle(
        _colorMeta,
        color.isAcceptableOrUnknown(data['color']!, _colorMeta),
      );
    } else if (isInserting) {
      context.missing(_colorMeta);
    }
    if (data.containsKey('icon')) {
      context.handle(
        _iconMeta,
        icon.isAcceptableOrUnknown(data['icon']!, _iconMeta),
      );
    }
    if (data.containsKey('weekdays')) {
      context.handle(
        _weekdaysMeta,
        weekdays.isAcceptableOrUnknown(data['weekdays']!, _weekdaysMeta),
      );
    }
    if (data.containsKey('target_per_day')) {
      context.handle(
        _targetPerDayMeta,
        targetPerDay.isAcceptableOrUnknown(
          data['target_per_day']!,
          _targetPerDayMeta,
        ),
      );
    }
    if (data.containsKey('reminder_minute')) {
      context.handle(
        _reminderMinuteMeta,
        reminderMinute.isAcceptableOrUnknown(
          data['reminder_minute']!,
          _reminderMinuteMeta,
        ),
      );
    }
    if (data.containsKey('paused')) {
      context.handle(
        _pausedMeta,
        paused.isAcceptableOrUnknown(data['paused']!, _pausedMeta),
      );
    }
    if (data.containsKey('archived')) {
      context.handle(
        _archivedMeta,
        archived.isAcceptableOrUnknown(data['archived']!, _archivedMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  HabitRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return HabitRow(
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      color: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}color'],
      )!,
      icon: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}icon'],
      )!,
      weekdays: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}weekdays'],
      )!,
      targetPerDay: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}target_per_day'],
      )!,
      reminderMinute: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}reminder_minute'],
      ),
      paused: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}paused'],
      )!,
      archived: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}archived'],
      )!,
    );
  }

  @override
  $HabitsTable createAlias(String alias) {
    return $HabitsTable(attachedDatabase, alias);
  }
}

class HabitRow extends DataClass implements Insertable<HabitRow> {
  final DateTime createdAt;
  final DateTime updatedAt;
  final String id;
  final String name;
  final int color;
  final String icon;

  /// Bit mask, bit 0 = Monday … bit 6 = Sunday. 127 = every day.
  final int weekdays;
  final int targetPerDay;

  /// Minutes after midnight, local time.
  final int? reminderMinute;
  final bool paused;
  final bool archived;
  const HabitRow({
    required this.createdAt,
    required this.updatedAt,
    required this.id,
    required this.name,
    required this.color,
    required this.icon,
    required this.weekdays,
    required this.targetPerDay,
    this.reminderMinute,
    required this.paused,
    required this.archived,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['color'] = Variable<int>(color);
    map['icon'] = Variable<String>(icon);
    map['weekdays'] = Variable<int>(weekdays);
    map['target_per_day'] = Variable<int>(targetPerDay);
    if (!nullToAbsent || reminderMinute != null) {
      map['reminder_minute'] = Variable<int>(reminderMinute);
    }
    map['paused'] = Variable<bool>(paused);
    map['archived'] = Variable<bool>(archived);
    return map;
  }

  HabitsCompanion toCompanion(bool nullToAbsent) {
    return HabitsCompanion(
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      id: Value(id),
      name: Value(name),
      color: Value(color),
      icon: Value(icon),
      weekdays: Value(weekdays),
      targetPerDay: Value(targetPerDay),
      reminderMinute: reminderMinute == null && nullToAbsent
          ? const Value.absent()
          : Value(reminderMinute),
      paused: Value(paused),
      archived: Value(archived),
    );
  }

  factory HabitRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return HabitRow(
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      color: serializer.fromJson<int>(json['color']),
      icon: serializer.fromJson<String>(json['icon']),
      weekdays: serializer.fromJson<int>(json['weekdays']),
      targetPerDay: serializer.fromJson<int>(json['targetPerDay']),
      reminderMinute: serializer.fromJson<int?>(json['reminderMinute']),
      paused: serializer.fromJson<bool>(json['paused']),
      archived: serializer.fromJson<bool>(json['archived']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'color': serializer.toJson<int>(color),
      'icon': serializer.toJson<String>(icon),
      'weekdays': serializer.toJson<int>(weekdays),
      'targetPerDay': serializer.toJson<int>(targetPerDay),
      'reminderMinute': serializer.toJson<int?>(reminderMinute),
      'paused': serializer.toJson<bool>(paused),
      'archived': serializer.toJson<bool>(archived),
    };
  }

  HabitRow copyWith({
    DateTime? createdAt,
    DateTime? updatedAt,
    String? id,
    String? name,
    int? color,
    String? icon,
    int? weekdays,
    int? targetPerDay,
    Value<int?> reminderMinute = const Value.absent(),
    bool? paused,
    bool? archived,
  }) => HabitRow(
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    id: id ?? this.id,
    name: name ?? this.name,
    color: color ?? this.color,
    icon: icon ?? this.icon,
    weekdays: weekdays ?? this.weekdays,
    targetPerDay: targetPerDay ?? this.targetPerDay,
    reminderMinute: reminderMinute.present
        ? reminderMinute.value
        : this.reminderMinute,
    paused: paused ?? this.paused,
    archived: archived ?? this.archived,
  );
  HabitRow copyWithCompanion(HabitsCompanion data) {
    return HabitRow(
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      color: data.color.present ? data.color.value : this.color,
      icon: data.icon.present ? data.icon.value : this.icon,
      weekdays: data.weekdays.present ? data.weekdays.value : this.weekdays,
      targetPerDay: data.targetPerDay.present
          ? data.targetPerDay.value
          : this.targetPerDay,
      reminderMinute: data.reminderMinute.present
          ? data.reminderMinute.value
          : this.reminderMinute,
      paused: data.paused.present ? data.paused.value : this.paused,
      archived: data.archived.present ? data.archived.value : this.archived,
    );
  }

  @override
  String toString() {
    return (StringBuffer('HabitRow(')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('color: $color, ')
          ..write('icon: $icon, ')
          ..write('weekdays: $weekdays, ')
          ..write('targetPerDay: $targetPerDay, ')
          ..write('reminderMinute: $reminderMinute, ')
          ..write('paused: $paused, ')
          ..write('archived: $archived')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    createdAt,
    updatedAt,
    id,
    name,
    color,
    icon,
    weekdays,
    targetPerDay,
    reminderMinute,
    paused,
    archived,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HabitRow &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.id == this.id &&
          other.name == this.name &&
          other.color == this.color &&
          other.icon == this.icon &&
          other.weekdays == this.weekdays &&
          other.targetPerDay == this.targetPerDay &&
          other.reminderMinute == this.reminderMinute &&
          other.paused == this.paused &&
          other.archived == this.archived);
}

class HabitsCompanion extends UpdateCompanion<HabitRow> {
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<String> id;
  final Value<String> name;
  final Value<int> color;
  final Value<String> icon;
  final Value<int> weekdays;
  final Value<int> targetPerDay;
  final Value<int?> reminderMinute;
  final Value<bool> paused;
  final Value<bool> archived;
  final Value<int> rowid;
  const HabitsCompanion({
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.color = const Value.absent(),
    this.icon = const Value.absent(),
    this.weekdays = const Value.absent(),
    this.targetPerDay = const Value.absent(),
    this.reminderMinute = const Value.absent(),
    this.paused = const Value.absent(),
    this.archived = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  HabitsCompanion.insert({
    required DateTime createdAt,
    required DateTime updatedAt,
    required String id,
    required String name,
    required int color,
    this.icon = const Value.absent(),
    this.weekdays = const Value.absent(),
    this.targetPerDay = const Value.absent(),
    this.reminderMinute = const Value.absent(),
    this.paused = const Value.absent(),
    this.archived = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : createdAt = Value(createdAt),
       updatedAt = Value(updatedAt),
       id = Value(id),
       name = Value(name),
       color = Value(color);
  static Insertable<HabitRow> custom({
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? id,
    Expression<String>? name,
    Expression<int>? color,
    Expression<String>? icon,
    Expression<int>? weekdays,
    Expression<int>? targetPerDay,
    Expression<int>? reminderMinute,
    Expression<bool>? paused,
    Expression<bool>? archived,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (color != null) 'color': color,
      if (icon != null) 'icon': icon,
      if (weekdays != null) 'weekdays': weekdays,
      if (targetPerDay != null) 'target_per_day': targetPerDay,
      if (reminderMinute != null) 'reminder_minute': reminderMinute,
      if (paused != null) 'paused': paused,
      if (archived != null) 'archived': archived,
      if (rowid != null) 'rowid': rowid,
    });
  }

  HabitsCompanion copyWith({
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<String>? id,
    Value<String>? name,
    Value<int>? color,
    Value<String>? icon,
    Value<int>? weekdays,
    Value<int>? targetPerDay,
    Value<int?>? reminderMinute,
    Value<bool>? paused,
    Value<bool>? archived,
    Value<int>? rowid,
  }) {
    return HabitsCompanion(
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      id: id ?? this.id,
      name: name ?? this.name,
      color: color ?? this.color,
      icon: icon ?? this.icon,
      weekdays: weekdays ?? this.weekdays,
      targetPerDay: targetPerDay ?? this.targetPerDay,
      reminderMinute: reminderMinute ?? this.reminderMinute,
      paused: paused ?? this.paused,
      archived: archived ?? this.archived,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (color.present) {
      map['color'] = Variable<int>(color.value);
    }
    if (icon.present) {
      map['icon'] = Variable<String>(icon.value);
    }
    if (weekdays.present) {
      map['weekdays'] = Variable<int>(weekdays.value);
    }
    if (targetPerDay.present) {
      map['target_per_day'] = Variable<int>(targetPerDay.value);
    }
    if (reminderMinute.present) {
      map['reminder_minute'] = Variable<int>(reminderMinute.value);
    }
    if (paused.present) {
      map['paused'] = Variable<bool>(paused.value);
    }
    if (archived.present) {
      map['archived'] = Variable<bool>(archived.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HabitsCompanion(')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('color: $color, ')
          ..write('icon: $icon, ')
          ..write('weekdays: $weekdays, ')
          ..write('targetPerDay: $targetPerDay, ')
          ..write('reminderMinute: $reminderMinute, ')
          ..write('paused: $paused, ')
          ..write('archived: $archived, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $HabitLogsTable extends HabitLogs
    with TableInfo<$HabitLogsTable, HabitLogRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HabitLogsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _habitIdMeta = const VerificationMeta(
    'habitId',
  );
  @override
  late final GeneratedColumn<String> habitId = GeneratedColumn<String>(
    'habit_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES habits (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _dayMeta = const VerificationMeta('day');
  @override
  late final GeneratedColumn<int> day = GeneratedColumn<int>(
    'day',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _countMeta = const VerificationMeta('count');
  @override
  late final GeneratedColumn<int> count = GeneratedColumn<int>(
    'count',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  @override
  List<GeneratedColumn> get $columns => [habitId, day, count];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'habit_logs';
  @override
  VerificationContext validateIntegrity(
    Insertable<HabitLogRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('habit_id')) {
      context.handle(
        _habitIdMeta,
        habitId.isAcceptableOrUnknown(data['habit_id']!, _habitIdMeta),
      );
    } else if (isInserting) {
      context.missing(_habitIdMeta);
    }
    if (data.containsKey('day')) {
      context.handle(
        _dayMeta,
        day.isAcceptableOrUnknown(data['day']!, _dayMeta),
      );
    } else if (isInserting) {
      context.missing(_dayMeta);
    }
    if (data.containsKey('count')) {
      context.handle(
        _countMeta,
        count.isAcceptableOrUnknown(data['count']!, _countMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {habitId, day};
  @override
  HabitLogRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return HabitLogRow(
      habitId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}habit_id'],
      )!,
      day: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}day'],
      )!,
      count: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}count'],
      )!,
    );
  }

  @override
  $HabitLogsTable createAlias(String alias) {
    return $HabitLogsTable(attachedDatabase, alias);
  }
}

class HabitLogRow extends DataClass implements Insertable<HabitLogRow> {
  final String habitId;

  /// Local calendar day encoded as yyyymmdd.
  final int day;
  final int count;
  const HabitLogRow({
    required this.habitId,
    required this.day,
    required this.count,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['habit_id'] = Variable<String>(habitId);
    map['day'] = Variable<int>(day);
    map['count'] = Variable<int>(count);
    return map;
  }

  HabitLogsCompanion toCompanion(bool nullToAbsent) {
    return HabitLogsCompanion(
      habitId: Value(habitId),
      day: Value(day),
      count: Value(count),
    );
  }

  factory HabitLogRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return HabitLogRow(
      habitId: serializer.fromJson<String>(json['habitId']),
      day: serializer.fromJson<int>(json['day']),
      count: serializer.fromJson<int>(json['count']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'habitId': serializer.toJson<String>(habitId),
      'day': serializer.toJson<int>(day),
      'count': serializer.toJson<int>(count),
    };
  }

  HabitLogRow copyWith({String? habitId, int? day, int? count}) => HabitLogRow(
    habitId: habitId ?? this.habitId,
    day: day ?? this.day,
    count: count ?? this.count,
  );
  HabitLogRow copyWithCompanion(HabitLogsCompanion data) {
    return HabitLogRow(
      habitId: data.habitId.present ? data.habitId.value : this.habitId,
      day: data.day.present ? data.day.value : this.day,
      count: data.count.present ? data.count.value : this.count,
    );
  }

  @override
  String toString() {
    return (StringBuffer('HabitLogRow(')
          ..write('habitId: $habitId, ')
          ..write('day: $day, ')
          ..write('count: $count')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(habitId, day, count);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HabitLogRow &&
          other.habitId == this.habitId &&
          other.day == this.day &&
          other.count == this.count);
}

class HabitLogsCompanion extends UpdateCompanion<HabitLogRow> {
  final Value<String> habitId;
  final Value<int> day;
  final Value<int> count;
  final Value<int> rowid;
  const HabitLogsCompanion({
    this.habitId = const Value.absent(),
    this.day = const Value.absent(),
    this.count = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  HabitLogsCompanion.insert({
    required String habitId,
    required int day,
    this.count = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : habitId = Value(habitId),
       day = Value(day);
  static Insertable<HabitLogRow> custom({
    Expression<String>? habitId,
    Expression<int>? day,
    Expression<int>? count,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (habitId != null) 'habit_id': habitId,
      if (day != null) 'day': day,
      if (count != null) 'count': count,
      if (rowid != null) 'rowid': rowid,
    });
  }

  HabitLogsCompanion copyWith({
    Value<String>? habitId,
    Value<int>? day,
    Value<int>? count,
    Value<int>? rowid,
  }) {
    return HabitLogsCompanion(
      habitId: habitId ?? this.habitId,
      day: day ?? this.day,
      count: count ?? this.count,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (habitId.present) {
      map['habit_id'] = Variable<String>(habitId.value);
    }
    if (day.present) {
      map['day'] = Variable<int>(day.value);
    }
    if (count.present) {
      map['count'] = Variable<int>(count.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HabitLogsCompanion(')
          ..write('habitId: $habitId, ')
          ..write('day: $day, ')
          ..write('count: $count, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $KeyValuesTable extends KeyValues
    with TableInfo<$KeyValuesTable, KeyValueRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $KeyValuesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
    'key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
    'value',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [key, value];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'key_values';
  @override
  VerificationContext validateIntegrity(
    Insertable<KeyValueRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('key')) {
      context.handle(
        _keyMeta,
        key.isAcceptableOrUnknown(data['key']!, _keyMeta),
      );
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
        _valueMeta,
        value.isAcceptableOrUnknown(data['value']!, _valueMeta),
      );
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {key};
  @override
  KeyValueRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return KeyValueRow(
      key: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}key'],
      )!,
      value: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}value'],
      )!,
    );
  }

  @override
  $KeyValuesTable createAlias(String alias) {
    return $KeyValuesTable(attachedDatabase, alias);
  }
}

class KeyValueRow extends DataClass implements Insertable<KeyValueRow> {
  final String key;
  final String value;
  const KeyValueRow({required this.key, required this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['key'] = Variable<String>(key);
    map['value'] = Variable<String>(value);
    return map;
  }

  KeyValuesCompanion toCompanion(bool nullToAbsent) {
    return KeyValuesCompanion(key: Value(key), value: Value(value));
  }

  factory KeyValueRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return KeyValueRow(
      key: serializer.fromJson<String>(json['key']),
      value: serializer.fromJson<String>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'key': serializer.toJson<String>(key),
      'value': serializer.toJson<String>(value),
    };
  }

  KeyValueRow copyWith({String? key, String? value}) =>
      KeyValueRow(key: key ?? this.key, value: value ?? this.value);
  KeyValueRow copyWithCompanion(KeyValuesCompanion data) {
    return KeyValueRow(
      key: data.key.present ? data.key.value : this.key,
      value: data.value.present ? data.value.value : this.value,
    );
  }

  @override
  String toString() {
    return (StringBuffer('KeyValueRow(')
          ..write('key: $key, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(key, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is KeyValueRow &&
          other.key == this.key &&
          other.value == this.value);
}

class KeyValuesCompanion extends UpdateCompanion<KeyValueRow> {
  final Value<String> key;
  final Value<String> value;
  final Value<int> rowid;
  const KeyValuesCompanion({
    this.key = const Value.absent(),
    this.value = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  KeyValuesCompanion.insert({
    required String key,
    required String value,
    this.rowid = const Value.absent(),
  }) : key = Value(key),
       value = Value(value);
  static Insertable<KeyValueRow> custom({
    Expression<String>? key,
    Expression<String>? value,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (key != null) 'key': key,
      if (value != null) 'value': value,
      if (rowid != null) 'rowid': rowid,
    });
  }

  KeyValuesCompanion copyWith({
    Value<String>? key,
    Value<String>? value,
    Value<int>? rowid,
  }) {
    return KeyValuesCompanion(
      key: key ?? this.key,
      value: value ?? this.value,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('KeyValuesCompanion(')
          ..write('key: $key, ')
          ..write('value: $value, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $RecentSearchesTable extends RecentSearches
    with TableInfo<$RecentSearchesTable, RecentSearchRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RecentSearchesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _queryMeta = const VerificationMeta('query');
  @override
  late final GeneratedColumn<String> query = GeneratedColumn<String>(
    'query',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _atMeta = const VerificationMeta('at');
  @override
  late final GeneratedColumn<DateTime> at = GeneratedColumn<DateTime>(
    'at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [query, at];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'recent_searches';
  @override
  VerificationContext validateIntegrity(
    Insertable<RecentSearchRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('query')) {
      context.handle(
        _queryMeta,
        query.isAcceptableOrUnknown(data['query']!, _queryMeta),
      );
    } else if (isInserting) {
      context.missing(_queryMeta);
    }
    if (data.containsKey('at')) {
      context.handle(_atMeta, at.isAcceptableOrUnknown(data['at']!, _atMeta));
    } else if (isInserting) {
      context.missing(_atMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {query};
  @override
  RecentSearchRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RecentSearchRow(
      query: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}query'],
      )!,
      at: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}at'],
      )!,
    );
  }

  @override
  $RecentSearchesTable createAlias(String alias) {
    return $RecentSearchesTable(attachedDatabase, alias);
  }
}

class RecentSearchRow extends DataClass implements Insertable<RecentSearchRow> {
  final String query;
  final DateTime at;
  const RecentSearchRow({required this.query, required this.at});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['query'] = Variable<String>(query);
    map['at'] = Variable<DateTime>(at);
    return map;
  }

  RecentSearchesCompanion toCompanion(bool nullToAbsent) {
    return RecentSearchesCompanion(query: Value(query), at: Value(at));
  }

  factory RecentSearchRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RecentSearchRow(
      query: serializer.fromJson<String>(json['query']),
      at: serializer.fromJson<DateTime>(json['at']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'query': serializer.toJson<String>(query),
      'at': serializer.toJson<DateTime>(at),
    };
  }

  RecentSearchRow copyWith({String? query, DateTime? at}) =>
      RecentSearchRow(query: query ?? this.query, at: at ?? this.at);
  RecentSearchRow copyWithCompanion(RecentSearchesCompanion data) {
    return RecentSearchRow(
      query: data.query.present ? data.query.value : this.query,
      at: data.at.present ? data.at.value : this.at,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RecentSearchRow(')
          ..write('query: $query, ')
          ..write('at: $at')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(query, at);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RecentSearchRow &&
          other.query == this.query &&
          other.at == this.at);
}

class RecentSearchesCompanion extends UpdateCompanion<RecentSearchRow> {
  final Value<String> query;
  final Value<DateTime> at;
  final Value<int> rowid;
  const RecentSearchesCompanion({
    this.query = const Value.absent(),
    this.at = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  RecentSearchesCompanion.insert({
    required String query,
    required DateTime at,
    this.rowid = const Value.absent(),
  }) : query = Value(query),
       at = Value(at);
  static Insertable<RecentSearchRow> custom({
    Expression<String>? query,
    Expression<DateTime>? at,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (query != null) 'query': query,
      if (at != null) 'at': at,
      if (rowid != null) 'rowid': rowid,
    });
  }

  RecentSearchesCompanion copyWith({
    Value<String>? query,
    Value<DateTime>? at,
    Value<int>? rowid,
  }) {
    return RecentSearchesCompanion(
      query: query ?? this.query,
      at: at ?? this.at,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (query.present) {
      map['query'] = Variable<String>(query.value);
    }
    if (at.present) {
      map['at'] = Variable<DateTime>(at.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RecentSearchesCompanion(')
          ..write('query: $query, ')
          ..write('at: $at, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ProjectsTable projects = $ProjectsTable(this);
  late final $TasksTable tasks = $TasksTable(this);
  late final $ChecklistItemsTable checklistItems = $ChecklistItemsTable(this);
  late final $LabelsTable labels = $LabelsTable(this);
  late final $TaskLabelsTable taskLabels = $TaskLabelsTable(this);
  late final $TaskDependenciesTable taskDependencies = $TaskDependenciesTable(
    this,
  );
  late final $FocusSessionsTable focusSessions = $FocusSessionsTable(this);
  late final $EventsTable events = $EventsTable(this);
  late final $NotebooksTable notebooks = $NotebooksTable(this);
  late final $NotesTable notes = $NotesTable(this);
  late final $NoteTagsTable noteTags = $NoteTagsTable(this);
  late final $NoteTaskLinksTable noteTaskLinks = $NoteTaskLinksTable(this);
  late final $DecksTable decks = $DecksTable(this);
  late final $FlashcardsTable flashcards = $FlashcardsTable(this);
  late final $CardReviewsTable cardReviews = $CardReviewsTable(this);
  late final $GoalsTable goals = $GoalsTable(this);
  late final $GoalEntriesTable goalEntries = $GoalEntriesTable(this);
  late final $GoalTasksTable goalTasks = $GoalTasksTable(this);
  late final $HabitsTable habits = $HabitsTable(this);
  late final $HabitLogsTable habitLogs = $HabitLogsTable(this);
  late final $KeyValuesTable keyValues = $KeyValuesTable(this);
  late final $RecentSearchesTable recentSearches = $RecentSearchesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    projects,
    tasks,
    checklistItems,
    labels,
    taskLabels,
    taskDependencies,
    focusSessions,
    events,
    notebooks,
    notes,
    noteTags,
    noteTaskLinks,
    decks,
    flashcards,
    cardReviews,
    goals,
    goalEntries,
    goalTasks,
    habits,
    habitLogs,
    keyValues,
    recentSearches,
  ];
  @override
  StreamQueryUpdateRules get streamUpdateRules => const StreamQueryUpdateRules([
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'projects',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('tasks', kind: UpdateKind.update)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'tasks',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('tasks', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'tasks',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('checklist_items', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'tasks',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('task_labels', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'labels',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('task_labels', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'tasks',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('task_dependencies', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'tasks',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('task_dependencies', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'tasks',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('focus_sessions', kind: UpdateKind.update)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'projects',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('focus_sessions', kind: UpdateKind.update)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'tasks',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('events', kind: UpdateKind.update)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'notebooks',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('notes', kind: UpdateKind.update)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'projects',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('notes', kind: UpdateKind.update)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'notes',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('note_tags', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'notes',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('note_task_links', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'tasks',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('note_task_links', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'decks',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('flashcards', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'flashcards',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('card_reviews', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'projects',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('goals', kind: UpdateKind.update)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'goals',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('goal_entries', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'goals',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('goal_tasks', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'tasks',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('goal_tasks', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'habits',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('habit_logs', kind: UpdateKind.delete)],
    ),
  ]);
  @override
  DriftDatabaseOptions get options =>
      const DriftDatabaseOptions(storeDateTimeAsText: true);
}

typedef $$ProjectsTableCreateCompanionBuilder = ProjectsCompanion Function({
  required DateTime createdAt,
  required DateTime updatedAt,
  required String id,
  required String name,
  Value<String> description,
  required int color,
  Value<String> icon,
  Value<String> goal,
  Value<DateTime?> deadline,
  Value<String> notes,
  Value<bool> archived,
  Value<DateTime?> deletedAt,
  Value<int> rowid,
});
typedef $$ProjectsTableUpdateCompanionBuilder = ProjectsCompanion Function({
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<String> id,
  Value<String> name,
  Value<String> description,
  Value<int> color,
  Value<String> icon,
  Value<String> goal,
  Value<DateTime?> deadline,
  Value<String> notes,
  Value<bool> archived,
  Value<DateTime?> deletedAt,
  Value<int> rowid,
});

final class $$ProjectsTableReferences
    extends BaseReferences<_$AppDatabase, $ProjectsTable, ProjectRow> {
  $$ProjectsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$TasksTable, List<TaskRow>> _tasksRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.tasks,
    aliasName: 'projects__id__tasks__project_id',
  );

  $$TasksTableProcessedTableManager get tasksRefs {
    final manager = $$TasksTableTableManager(
      $_db,
      $_db.tasks,
    ).filter((f) => f.projectId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_tasksRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$FocusSessionsTable, List<FocusSessionRow>>
  _focusSessionsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.focusSessions,
    aliasName: 'projects__id__focus_sessions__project_id',
  );

  $$FocusSessionsTableProcessedTableManager get focusSessionsRefs {
    final manager = $$FocusSessionsTableTableManager(
      $_db,
      $_db.focusSessions,
    ).filter((f) => f.projectId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_focusSessionsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$NotesTable, List<NoteRow>> _notesRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.notes,
    aliasName: 'projects__id__notes__project_id',
  );

  $$NotesTableProcessedTableManager get notesRefs {
    final manager = $$NotesTableTableManager(
      $_db,
      $_db.notes,
    ).filter((f) => f.projectId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_notesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$GoalsTable, List<GoalRow>> _goalsRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.goals,
    aliasName: 'projects__id__goals__project_id',
  );

  $$GoalsTableProcessedTableManager get goalsRefs {
    final manager = $$GoalsTableTableManager(
      $_db,
      $_db.goals,
    ).filter((f) => f.projectId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_goalsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$ProjectsTableFilterComposer
    extends Composer<_$AppDatabase, $ProjectsTable> {
  $$ProjectsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
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

  ColumnFilters<int> get color => $composableBuilder(
    column: $table.color,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get icon => $composableBuilder(
    column: $table.icon,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get goal => $composableBuilder(
    column: $table.goal,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deadline => $composableBuilder(
    column: $table.deadline,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get archived => $composableBuilder(
    column: $table.archived,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> tasksRefs(
    Expression<bool> Function($$TasksTableFilterComposer f) f,
  ) {
    final $$TasksTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.tasks,
      getReferencedColumn: (t) => t.projectId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TasksTableFilterComposer(
            $db: $db,
            $table: $db.tasks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> focusSessionsRefs(
    Expression<bool> Function($$FocusSessionsTableFilterComposer f) f,
  ) {
    final $$FocusSessionsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.focusSessions,
      getReferencedColumn: (t) => t.projectId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FocusSessionsTableFilterComposer(
            $db: $db,
            $table: $db.focusSessions,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> notesRefs(
    Expression<bool> Function($$NotesTableFilterComposer f) f,
  ) {
    final $$NotesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.notes,
      getReferencedColumn: (t) => t.projectId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$NotesTableFilterComposer(
            $db: $db,
            $table: $db.notes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> goalsRefs(
    Expression<bool> Function($$GoalsTableFilterComposer f) f,
  ) {
    final $$GoalsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.goals,
      getReferencedColumn: (t) => t.projectId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$GoalsTableFilterComposer(
            $db: $db,
            $table: $db.goals,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ProjectsTableOrderingComposer
    extends Composer<_$AppDatabase, $ProjectsTable> {
  $$ProjectsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
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

  ColumnOrderings<int> get color => $composableBuilder(
    column: $table.color,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get icon => $composableBuilder(
    column: $table.icon,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get goal => $composableBuilder(
    column: $table.goal,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deadline => $composableBuilder(
    column: $table.deadline,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get archived => $composableBuilder(
    column: $table.archived,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ProjectsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ProjectsTable> {
  $$ProjectsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<int> get color =>
      $composableBuilder(column: $table.color, builder: (column) => column);

  GeneratedColumn<String> get icon =>
      $composableBuilder(column: $table.icon, builder: (column) => column);

  GeneratedColumn<String> get goal =>
      $composableBuilder(column: $table.goal, builder: (column) => column);

  GeneratedColumn<DateTime> get deadline =>
      $composableBuilder(column: $table.deadline, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumn<bool> get archived =>
      $composableBuilder(column: $table.archived, builder: (column) => column);

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  Expression<T> tasksRefs<T extends Object>(
    Expression<T> Function($$TasksTableAnnotationComposer a) f,
  ) {
    final $$TasksTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.tasks,
      getReferencedColumn: (t) => t.projectId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TasksTableAnnotationComposer(
            $db: $db,
            $table: $db.tasks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> focusSessionsRefs<T extends Object>(
    Expression<T> Function($$FocusSessionsTableAnnotationComposer a) f,
  ) {
    final $$FocusSessionsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.focusSessions,
      getReferencedColumn: (t) => t.projectId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FocusSessionsTableAnnotationComposer(
            $db: $db,
            $table: $db.focusSessions,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> notesRefs<T extends Object>(
    Expression<T> Function($$NotesTableAnnotationComposer a) f,
  ) {
    final $$NotesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.notes,
      getReferencedColumn: (t) => t.projectId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$NotesTableAnnotationComposer(
            $db: $db,
            $table: $db.notes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> goalsRefs<T extends Object>(
    Expression<T> Function($$GoalsTableAnnotationComposer a) f,
  ) {
    final $$GoalsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.goals,
      getReferencedColumn: (t) => t.projectId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$GoalsTableAnnotationComposer(
            $db: $db,
            $table: $db.goals,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ProjectsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ProjectsTable,
          ProjectRow,
          $$ProjectsTableFilterComposer,
          $$ProjectsTableOrderingComposer,
          $$ProjectsTableAnnotationComposer,
          $$ProjectsTableCreateCompanionBuilder,
          $$ProjectsTableUpdateCompanionBuilder,
          (ProjectRow, $$ProjectsTableReferences),
          ProjectRow,
          PrefetchHooks Function({
            bool tasksRefs,
            bool focusSessionsRefs,
            bool notesRefs,
            bool goalsRefs,
          })
        > {
  $$ProjectsTableTableManager(_$AppDatabase db, $ProjectsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProjectsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ProjectsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ProjectsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<int> color = const Value.absent(),
                Value<String> icon = const Value.absent(),
                Value<String> goal = const Value.absent(),
                Value<DateTime?> deadline = const Value.absent(),
                Value<String> notes = const Value.absent(),
                Value<bool> archived = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ProjectsCompanion(
                createdAt: createdAt,
                updatedAt: updatedAt,
                id: id,
                name: name,
                description: description,
                color: color,
                icon: icon,
                goal: goal,
                deadline: deadline,
                notes: notes,
                archived: archived,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required DateTime createdAt,
                required DateTime updatedAt,
                required String id,
                required String name,
                Value<String> description = const Value.absent(),
                required int color,
                Value<String> icon = const Value.absent(),
                Value<String> goal = const Value.absent(),
                Value<DateTime?> deadline = const Value.absent(),
                Value<String> notes = const Value.absent(),
                Value<bool> archived = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ProjectsCompanion.insert(
                createdAt: createdAt,
                updatedAt: updatedAt,
                id: id,
                name: name,
                description: description,
                color: color,
                icon: icon,
                goal: goal,
                deadline: deadline,
                notes: notes,
                archived: archived,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$ProjectsTable, ProjectRow>(table),
                  $$ProjectsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                tasksRefs = false,
                focusSessionsRefs = false,
                notesRefs = false,
                goalsRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (tasksRefs) db.tasks,
                    if (focusSessionsRefs) db.focusSessions,
                    if (notesRefs) db.notes,
                    if (goalsRefs) db.goals,
                  ],
                  addJoins: null,
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (tasksRefs)
                        await $_getPrefetchedDataByColumns<
                          ProjectRow,
                          $ProjectsTable,
                          TaskRow,
                          $TasksTable
                        >(
                          currentTable: table,
                          referencedTable: $$ProjectsTableReferences
                              ._tasksRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$ProjectsTableReferences(
                                db,
                                table,
                                p0,
                              ).tasksRefs,
                          currentColumn: 'id',
                          referencedColumn: 'project_id',
                          typedResults: items,
                        ),
                      if (focusSessionsRefs)
                        await $_getPrefetchedDataByColumns<
                          ProjectRow,
                          $ProjectsTable,
                          FocusSessionRow,
                          $FocusSessionsTable
                        >(
                          currentTable: table,
                          referencedTable: $$ProjectsTableReferences
                              ._focusSessionsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$ProjectsTableReferences(
                                db,
                                table,
                                p0,
                              ).focusSessionsRefs,
                          currentColumn: 'id',
                          referencedColumn: 'project_id',
                          typedResults: items,
                        ),
                      if (notesRefs)
                        await $_getPrefetchedDataByColumns<
                          ProjectRow,
                          $ProjectsTable,
                          NoteRow,
                          $NotesTable
                        >(
                          currentTable: table,
                          referencedTable: $$ProjectsTableReferences
                              ._notesRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$ProjectsTableReferences(
                                db,
                                table,
                                p0,
                              ).notesRefs,
                          currentColumn: 'id',
                          referencedColumn: 'project_id',
                          typedResults: items,
                        ),
                      if (goalsRefs)
                        await $_getPrefetchedDataByColumns<
                          ProjectRow,
                          $ProjectsTable,
                          GoalRow,
                          $GoalsTable
                        >(
                          currentTable: table,
                          referencedTable: $$ProjectsTableReferences
                              ._goalsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$ProjectsTableReferences(
                                db,
                                table,
                                p0,
                              ).goalsRefs,
                          currentColumn: 'id',
                          referencedColumn: 'project_id',
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$ProjectsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ProjectsTable,
      ProjectRow,
      $$ProjectsTableFilterComposer,
      $$ProjectsTableOrderingComposer,
      $$ProjectsTableAnnotationComposer,
      $$ProjectsTableCreateCompanionBuilder,
      $$ProjectsTableUpdateCompanionBuilder,
      (ProjectRow, $$ProjectsTableReferences),
      ProjectRow,
      PrefetchHooks Function({
        bool tasksRefs,
        bool focusSessionsRefs,
        bool notesRefs,
        bool goalsRefs,
      })
    >;
typedef $$TasksTableCreateCompanionBuilder = TasksCompanion Function({
  required DateTime createdAt,
  required DateTime updatedAt,
  required String id,
  required String title,
  Value<String> description,
  Value<String> notes,
  Value<String?> projectId,
  Value<String?> parentId,
  Value<String> category,
  Value<int> priority,
  Value<bool> done,
  Value<DateTime?> completedAt,
  Value<DateTime?> startAt,
  Value<DateTime?> dueAt,
  Value<bool> dueHasTime,
  Value<DateTime?> reminderAt,
  Value<String?> recurrence,
  Value<int?> estimateMinutes,
  Value<int> sortOrder,
  Value<DateTime?> deletedAt,
  Value<int> rowid,
});
typedef $$TasksTableUpdateCompanionBuilder = TasksCompanion Function({
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<String> id,
  Value<String> title,
  Value<String> description,
  Value<String> notes,
  Value<String?> projectId,
  Value<String?> parentId,
  Value<String> category,
  Value<int> priority,
  Value<bool> done,
  Value<DateTime?> completedAt,
  Value<DateTime?> startAt,
  Value<DateTime?> dueAt,
  Value<bool> dueHasTime,
  Value<DateTime?> reminderAt,
  Value<String?> recurrence,
  Value<int?> estimateMinutes,
  Value<int> sortOrder,
  Value<DateTime?> deletedAt,
  Value<int> rowid,
});

final class $$TasksTableReferences
    extends BaseReferences<_$AppDatabase, $TasksTable, TaskRow> {
  $$TasksTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ProjectsTable _projectIdTable(_$AppDatabase db) =>
      db.projects.createAlias('tasks__project_id__projects__id');

  $$ProjectsTableProcessedTableManager? get projectId {
    final $_column = $_itemColumn<String>('project_id');
    if ($_column == null) return null;
    final manager = $$ProjectsTableTableManager(
      $_db,
      $_db.projects,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_projectIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $TasksTable _parentIdTable(_$AppDatabase db) =>
      db.tasks.createAlias('tasks__parent_id__tasks__id');

  $$TasksTableProcessedTableManager? get parentId {
    final $_column = $_itemColumn<String>('parent_id');
    if ($_column == null) return null;
    final manager = $$TasksTableTableManager(
      $_db,
      $_db.tasks,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_parentIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$ChecklistItemsTable, List<ChecklistItemRow>>
  _checklistItemsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.checklistItems,
    aliasName: 'tasks__id__checklist_items__task_id',
  );

  $$ChecklistItemsTableProcessedTableManager get checklistItemsRefs {
    final manager = $$ChecklistItemsTableTableManager(
      $_db,
      $_db.checklistItems,
    ).filter((f) => f.taskId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_checklistItemsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$TaskLabelsTable, List<TaskLabel>>
  _taskLabelsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.taskLabels,
    aliasName: 'tasks__id__task_labels__task_id',
  );

  $$TaskLabelsTableProcessedTableManager get taskLabelsRefs {
    final manager = $$TaskLabelsTableTableManager(
      $_db,
      $_db.taskLabels,
    ).filter((f) => f.taskId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_taskLabelsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$TaskDependenciesTable, List<TaskDependency>>
  _taskDependenciesRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.taskDependencies,
    aliasName: 'tasks__id__task_dependencies__task_id',
  );

  $$TaskDependenciesTableProcessedTableManager get taskDependenciesRefs {
    final manager = $$TaskDependenciesTableTableManager(
      $_db,
      $_db.taskDependencies,
    ).filter((f) => f.taskId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _taskDependenciesRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$TaskDependenciesTable, List<TaskDependency>>
  _dependentLinksTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.taskDependencies,
    aliasName: 'tasks__id__task_dependencies__depends_on_id',
  );

  $$TaskDependenciesTableProcessedTableManager get dependentLinks {
    final manager = $$TaskDependenciesTableTableManager(
      $_db,
      $_db.taskDependencies,
    ).filter((f) => f.dependsOnId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_dependentLinksTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$FocusSessionsTable, List<FocusSessionRow>>
  _focusSessionsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.focusSessions,
    aliasName: 'tasks__id__focus_sessions__task_id',
  );

  $$FocusSessionsTableProcessedTableManager get focusSessionsRefs {
    final manager = $$FocusSessionsTableTableManager(
      $_db,
      $_db.focusSessions,
    ).filter((f) => f.taskId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_focusSessionsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$EventsTable, List<EventRow>> _eventsRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.events,
    aliasName: 'tasks__id__events__task_id',
  );

  $$EventsTableProcessedTableManager get eventsRefs {
    final manager = $$EventsTableTableManager(
      $_db,
      $_db.events,
    ).filter((f) => f.taskId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_eventsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$NoteTaskLinksTable, List<NoteTaskLink>>
  _noteTaskLinksRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.noteTaskLinks,
    aliasName: 'tasks__id__note_task_links__task_id',
  );

  $$NoteTaskLinksTableProcessedTableManager get noteTaskLinksRefs {
    final manager = $$NoteTaskLinksTableTableManager(
      $_db,
      $_db.noteTaskLinks,
    ).filter((f) => f.taskId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_noteTaskLinksRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$GoalTasksTable, List<GoalTask>>
  _goalTasksRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.goalTasks,
    aliasName: 'tasks__id__goal_tasks__task_id',
  );

  $$GoalTasksTableProcessedTableManager get goalTasksRefs {
    final manager = $$GoalTasksTableTableManager(
      $_db,
      $_db.goalTasks,
    ).filter((f) => f.taskId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_goalTasksRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$TasksTableFilterComposer extends Composer<_$AppDatabase, $TasksTable> {
  $$TasksTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get priority => $composableBuilder(
    column: $table.priority,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get done => $composableBuilder(
    column: $table.done,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get completedAt => $composableBuilder(
    column: $table.completedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get startAt => $composableBuilder(
    column: $table.startAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get dueAt => $composableBuilder(
    column: $table.dueAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get dueHasTime => $composableBuilder(
    column: $table.dueHasTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get reminderAt => $composableBuilder(
    column: $table.reminderAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get recurrence => $composableBuilder(
    column: $table.recurrence,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get estimateMinutes => $composableBuilder(
    column: $table.estimateMinutes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  $$ProjectsTableFilterComposer get projectId {
    final $$ProjectsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.projects,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectsTableFilterComposer(
            $db: $db,
            $table: $db.projects,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TasksTableFilterComposer get parentId {
    final $$TasksTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.parentId,
      referencedTable: $db.tasks,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TasksTableFilterComposer(
            $db: $db,
            $table: $db.tasks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> checklistItemsRefs(
    Expression<bool> Function($$ChecklistItemsTableFilterComposer f) f,
  ) {
    final $$ChecklistItemsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.checklistItems,
      getReferencedColumn: (t) => t.taskId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ChecklistItemsTableFilterComposer(
            $db: $db,
            $table: $db.checklistItems,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> taskLabelsRefs(
    Expression<bool> Function($$TaskLabelsTableFilterComposer f) f,
  ) {
    final $$TaskLabelsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.taskLabels,
      getReferencedColumn: (t) => t.taskId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TaskLabelsTableFilterComposer(
            $db: $db,
            $table: $db.taskLabels,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> taskDependenciesRefs(
    Expression<bool> Function($$TaskDependenciesTableFilterComposer f) f,
  ) {
    final $$TaskDependenciesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.taskDependencies,
      getReferencedColumn: (t) => t.taskId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TaskDependenciesTableFilterComposer(
            $db: $db,
            $table: $db.taskDependencies,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> dependentLinks(
    Expression<bool> Function($$TaskDependenciesTableFilterComposer f) f,
  ) {
    final $$TaskDependenciesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.taskDependencies,
      getReferencedColumn: (t) => t.dependsOnId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TaskDependenciesTableFilterComposer(
            $db: $db,
            $table: $db.taskDependencies,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> focusSessionsRefs(
    Expression<bool> Function($$FocusSessionsTableFilterComposer f) f,
  ) {
    final $$FocusSessionsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.focusSessions,
      getReferencedColumn: (t) => t.taskId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FocusSessionsTableFilterComposer(
            $db: $db,
            $table: $db.focusSessions,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> eventsRefs(
    Expression<bool> Function($$EventsTableFilterComposer f) f,
  ) {
    final $$EventsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.events,
      getReferencedColumn: (t) => t.taskId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EventsTableFilterComposer(
            $db: $db,
            $table: $db.events,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> noteTaskLinksRefs(
    Expression<bool> Function($$NoteTaskLinksTableFilterComposer f) f,
  ) {
    final $$NoteTaskLinksTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.noteTaskLinks,
      getReferencedColumn: (t) => t.taskId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$NoteTaskLinksTableFilterComposer(
            $db: $db,
            $table: $db.noteTaskLinks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> goalTasksRefs(
    Expression<bool> Function($$GoalTasksTableFilterComposer f) f,
  ) {
    final $$GoalTasksTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.goalTasks,
      getReferencedColumn: (t) => t.taskId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$GoalTasksTableFilterComposer(
            $db: $db,
            $table: $db.goalTasks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$TasksTableOrderingComposer
    extends Composer<_$AppDatabase, $TasksTable> {
  $$TasksTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get priority => $composableBuilder(
    column: $table.priority,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get done => $composableBuilder(
    column: $table.done,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get completedAt => $composableBuilder(
    column: $table.completedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get startAt => $composableBuilder(
    column: $table.startAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get dueAt => $composableBuilder(
    column: $table.dueAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get dueHasTime => $composableBuilder(
    column: $table.dueHasTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get reminderAt => $composableBuilder(
    column: $table.reminderAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get recurrence => $composableBuilder(
    column: $table.recurrence,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get estimateMinutes => $composableBuilder(
    column: $table.estimateMinutes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$ProjectsTableOrderingComposer get projectId {
    final $$ProjectsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.projects,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectsTableOrderingComposer(
            $db: $db,
            $table: $db.projects,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TasksTableOrderingComposer get parentId {
    final $$TasksTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.parentId,
      referencedTable: $db.tasks,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TasksTableOrderingComposer(
            $db: $db,
            $table: $db.tasks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TasksTableAnnotationComposer
    extends Composer<_$AppDatabase, $TasksTable> {
  $$TasksTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumn<String> get category =>
      $composableBuilder(column: $table.category, builder: (column) => column);

  GeneratedColumn<int> get priority =>
      $composableBuilder(column: $table.priority, builder: (column) => column);

  GeneratedColumn<bool> get done =>
      $composableBuilder(column: $table.done, builder: (column) => column);

  GeneratedColumn<DateTime> get completedAt => $composableBuilder(
    column: $table.completedAt,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get startAt =>
      $composableBuilder(column: $table.startAt, builder: (column) => column);

  GeneratedColumn<DateTime> get dueAt =>
      $composableBuilder(column: $table.dueAt, builder: (column) => column);

  GeneratedColumn<bool> get dueHasTime => $composableBuilder(
    column: $table.dueHasTime,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get reminderAt => $composableBuilder(
    column: $table.reminderAt,
    builder: (column) => column,
  );

  GeneratedColumn<String> get recurrence => $composableBuilder(
    column: $table.recurrence,
    builder: (column) => column,
  );

  GeneratedColumn<int> get estimateMinutes => $composableBuilder(
    column: $table.estimateMinutes,
    builder: (column) => column,
  );

  GeneratedColumn<int> get sortOrder =>
      $composableBuilder(column: $table.sortOrder, builder: (column) => column);

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  $$ProjectsTableAnnotationComposer get projectId {
    final $$ProjectsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.projects,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectsTableAnnotationComposer(
            $db: $db,
            $table: $db.projects,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TasksTableAnnotationComposer get parentId {
    final $$TasksTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.parentId,
      referencedTable: $db.tasks,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TasksTableAnnotationComposer(
            $db: $db,
            $table: $db.tasks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> checklistItemsRefs<T extends Object>(
    Expression<T> Function($$ChecklistItemsTableAnnotationComposer a) f,
  ) {
    final $$ChecklistItemsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.checklistItems,
      getReferencedColumn: (t) => t.taskId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ChecklistItemsTableAnnotationComposer(
            $db: $db,
            $table: $db.checklistItems,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> taskLabelsRefs<T extends Object>(
    Expression<T> Function($$TaskLabelsTableAnnotationComposer a) f,
  ) {
    final $$TaskLabelsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.taskLabels,
      getReferencedColumn: (t) => t.taskId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TaskLabelsTableAnnotationComposer(
            $db: $db,
            $table: $db.taskLabels,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> taskDependenciesRefs<T extends Object>(
    Expression<T> Function($$TaskDependenciesTableAnnotationComposer a) f,
  ) {
    final $$TaskDependenciesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.taskDependencies,
      getReferencedColumn: (t) => t.taskId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TaskDependenciesTableAnnotationComposer(
            $db: $db,
            $table: $db.taskDependencies,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> dependentLinks<T extends Object>(
    Expression<T> Function($$TaskDependenciesTableAnnotationComposer a) f,
  ) {
    final $$TaskDependenciesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.taskDependencies,
      getReferencedColumn: (t) => t.dependsOnId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TaskDependenciesTableAnnotationComposer(
            $db: $db,
            $table: $db.taskDependencies,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> focusSessionsRefs<T extends Object>(
    Expression<T> Function($$FocusSessionsTableAnnotationComposer a) f,
  ) {
    final $$FocusSessionsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.focusSessions,
      getReferencedColumn: (t) => t.taskId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FocusSessionsTableAnnotationComposer(
            $db: $db,
            $table: $db.focusSessions,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> eventsRefs<T extends Object>(
    Expression<T> Function($$EventsTableAnnotationComposer a) f,
  ) {
    final $$EventsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.events,
      getReferencedColumn: (t) => t.taskId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EventsTableAnnotationComposer(
            $db: $db,
            $table: $db.events,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> noteTaskLinksRefs<T extends Object>(
    Expression<T> Function($$NoteTaskLinksTableAnnotationComposer a) f,
  ) {
    final $$NoteTaskLinksTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.noteTaskLinks,
      getReferencedColumn: (t) => t.taskId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$NoteTaskLinksTableAnnotationComposer(
            $db: $db,
            $table: $db.noteTaskLinks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> goalTasksRefs<T extends Object>(
    Expression<T> Function($$GoalTasksTableAnnotationComposer a) f,
  ) {
    final $$GoalTasksTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.goalTasks,
      getReferencedColumn: (t) => t.taskId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$GoalTasksTableAnnotationComposer(
            $db: $db,
            $table: $db.goalTasks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$TasksTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TasksTable,
          TaskRow,
          $$TasksTableFilterComposer,
          $$TasksTableOrderingComposer,
          $$TasksTableAnnotationComposer,
          $$TasksTableCreateCompanionBuilder,
          $$TasksTableUpdateCompanionBuilder,
          (TaskRow, $$TasksTableReferences),
          TaskRow,
          PrefetchHooks Function({
            bool projectId,
            bool parentId,
            bool checklistItemsRefs,
            bool taskLabelsRefs,
            bool taskDependenciesRefs,
            bool dependentLinks,
            bool focusSessionsRefs,
            bool eventsRefs,
            bool noteTaskLinksRefs,
            bool goalTasksRefs,
          })
        > {
  $$TasksTableTableManager(_$AppDatabase db, $TasksTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TasksTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TasksTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TasksTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<String> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<String> notes = const Value.absent(),
                Value<String?> projectId = const Value.absent(),
                Value<String?> parentId = const Value.absent(),
                Value<String> category = const Value.absent(),
                Value<int> priority = const Value.absent(),
                Value<bool> done = const Value.absent(),
                Value<DateTime?> completedAt = const Value.absent(),
                Value<DateTime?> startAt = const Value.absent(),
                Value<DateTime?> dueAt = const Value.absent(),
                Value<bool> dueHasTime = const Value.absent(),
                Value<DateTime?> reminderAt = const Value.absent(),
                Value<String?> recurrence = const Value.absent(),
                Value<int?> estimateMinutes = const Value.absent(),
                Value<int> sortOrder = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TasksCompanion(
                createdAt: createdAt,
                updatedAt: updatedAt,
                id: id,
                title: title,
                description: description,
                notes: notes,
                projectId: projectId,
                parentId: parentId,
                category: category,
                priority: priority,
                done: done,
                completedAt: completedAt,
                startAt: startAt,
                dueAt: dueAt,
                dueHasTime: dueHasTime,
                reminderAt: reminderAt,
                recurrence: recurrence,
                estimateMinutes: estimateMinutes,
                sortOrder: sortOrder,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required DateTime createdAt,
                required DateTime updatedAt,
                required String id,
                required String title,
                Value<String> description = const Value.absent(),
                Value<String> notes = const Value.absent(),
                Value<String?> projectId = const Value.absent(),
                Value<String?> parentId = const Value.absent(),
                Value<String> category = const Value.absent(),
                Value<int> priority = const Value.absent(),
                Value<bool> done = const Value.absent(),
                Value<DateTime?> completedAt = const Value.absent(),
                Value<DateTime?> startAt = const Value.absent(),
                Value<DateTime?> dueAt = const Value.absent(),
                Value<bool> dueHasTime = const Value.absent(),
                Value<DateTime?> reminderAt = const Value.absent(),
                Value<String?> recurrence = const Value.absent(),
                Value<int?> estimateMinutes = const Value.absent(),
                Value<int> sortOrder = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TasksCompanion.insert(
                createdAt: createdAt,
                updatedAt: updatedAt,
                id: id,
                title: title,
                description: description,
                notes: notes,
                projectId: projectId,
                parentId: parentId,
                category: category,
                priority: priority,
                done: done,
                completedAt: completedAt,
                startAt: startAt,
                dueAt: dueAt,
                dueHasTime: dueHasTime,
                reminderAt: reminderAt,
                recurrence: recurrence,
                estimateMinutes: estimateMinutes,
                sortOrder: sortOrder,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$TasksTable, TaskRow>(table),
                  $$TasksTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                projectId = false,
                parentId = false,
                checklistItemsRefs = false,
                taskLabelsRefs = false,
                taskDependenciesRefs = false,
                dependentLinks = false,
                focusSessionsRefs = false,
                eventsRefs = false,
                noteTaskLinksRefs = false,
                goalTasksRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (checklistItemsRefs) db.checklistItems,
                    if (taskLabelsRefs) db.taskLabels,
                    if (taskDependenciesRefs) db.taskDependencies,
                    if (dependentLinks) db.taskDependencies,
                    if (focusSessionsRefs) db.focusSessions,
                    if (eventsRefs) db.events,
                    if (noteTaskLinksRefs) db.noteTaskLinks,
                    if (goalTasksRefs) db.goalTasks,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (projectId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.projectId,
                            referencedTable: $$TasksTableReferences
                                ._projectIdTable(db),
                            referencedColumn: $$TasksTableReferences
                                ._projectIdTable(db)
                                .id,
                          ) as T;
                        }
                        if (parentId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.parentId,
                            referencedTable: $$TasksTableReferences
                                ._parentIdTable(db),
                            referencedColumn: $$TasksTableReferences
                                ._parentIdTable(db)
                                .id,
                          ) as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (checklistItemsRefs)
                        await $_getPrefetchedDataByColumns<
                          TaskRow,
                          $TasksTable,
                          ChecklistItemRow,
                          $ChecklistItemsTable
                        >(
                          currentTable: table,
                          referencedTable: $$TasksTableReferences
                              ._checklistItemsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$TasksTableReferences(
                                db,
                                table,
                                p0,
                              ).checklistItemsRefs,
                          currentColumn: 'id',
                          referencedColumn: 'task_id',
                          typedResults: items,
                        ),
                      if (taskLabelsRefs)
                        await $_getPrefetchedDataByColumns<
                          TaskRow,
                          $TasksTable,
                          TaskLabel,
                          $TaskLabelsTable
                        >(
                          currentTable: table,
                          referencedTable: $$TasksTableReferences
                              ._taskLabelsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$TasksTableReferences(
                                db,
                                table,
                                p0,
                              ).taskLabelsRefs,
                          currentColumn: 'id',
                          referencedColumn: 'task_id',
                          typedResults: items,
                        ),
                      if (taskDependenciesRefs)
                        await $_getPrefetchedDataByColumns<
                          TaskRow,
                          $TasksTable,
                          TaskDependency,
                          $TaskDependenciesTable
                        >(
                          currentTable: table,
                          referencedTable: $$TasksTableReferences
                              ._taskDependenciesRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$TasksTableReferences(
                                db,
                                table,
                                p0,
                              ).taskDependenciesRefs,
                          currentColumn: 'id',
                          referencedColumn: 'task_id',
                          typedResults: items,
                        ),
                      if (dependentLinks)
                        await $_getPrefetchedDataByColumns<
                          TaskRow,
                          $TasksTable,
                          TaskDependency,
                          $TaskDependenciesTable
                        >(
                          currentTable: table,
                          referencedTable: $$TasksTableReferences
                              ._dependentLinksTable(db),
                          managerFromTypedResult: (p0) =>
                              $$TasksTableReferences(
                                db,
                                table,
                                p0,
                              ).dependentLinks,
                          currentColumn: 'id',
                          referencedColumn: 'depends_on_id',
                          typedResults: items,
                        ),
                      if (focusSessionsRefs)
                        await $_getPrefetchedDataByColumns<
                          TaskRow,
                          $TasksTable,
                          FocusSessionRow,
                          $FocusSessionsTable
                        >(
                          currentTable: table,
                          referencedTable: $$TasksTableReferences
                              ._focusSessionsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$TasksTableReferences(
                                db,
                                table,
                                p0,
                              ).focusSessionsRefs,
                          currentColumn: 'id',
                          referencedColumn: 'task_id',
                          typedResults: items,
                        ),
                      if (eventsRefs)
                        await $_getPrefetchedDataByColumns<
                          TaskRow,
                          $TasksTable,
                          EventRow,
                          $EventsTable
                        >(
                          currentTable: table,
                          referencedTable: $$TasksTableReferences
                              ._eventsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$TasksTableReferences(db, table, p0).eventsRefs,
                          currentColumn: 'id',
                          referencedColumn: 'task_id',
                          typedResults: items,
                        ),
                      if (noteTaskLinksRefs)
                        await $_getPrefetchedDataByColumns<
                          TaskRow,
                          $TasksTable,
                          NoteTaskLink,
                          $NoteTaskLinksTable
                        >(
                          currentTable: table,
                          referencedTable: $$TasksTableReferences
                              ._noteTaskLinksRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$TasksTableReferences(
                                db,
                                table,
                                p0,
                              ).noteTaskLinksRefs,
                          currentColumn: 'id',
                          referencedColumn: 'task_id',
                          typedResults: items,
                        ),
                      if (goalTasksRefs)
                        await $_getPrefetchedDataByColumns<
                          TaskRow,
                          $TasksTable,
                          GoalTask,
                          $GoalTasksTable
                        >(
                          currentTable: table,
                          referencedTable: $$TasksTableReferences
                              ._goalTasksRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$TasksTableReferences(
                                db,
                                table,
                                p0,
                              ).goalTasksRefs,
                          currentColumn: 'id',
                          referencedColumn: 'task_id',
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$TasksTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TasksTable,
      TaskRow,
      $$TasksTableFilterComposer,
      $$TasksTableOrderingComposer,
      $$TasksTableAnnotationComposer,
      $$TasksTableCreateCompanionBuilder,
      $$TasksTableUpdateCompanionBuilder,
      (TaskRow, $$TasksTableReferences),
      TaskRow,
      PrefetchHooks Function({
        bool projectId,
        bool parentId,
        bool checklistItemsRefs,
        bool taskLabelsRefs,
        bool taskDependenciesRefs,
        bool dependentLinks,
        bool focusSessionsRefs,
        bool eventsRefs,
        bool noteTaskLinksRefs,
        bool goalTasksRefs,
      })
    >;
typedef $$ChecklistItemsTableCreateCompanionBuilder =
    ChecklistItemsCompanion Function({
      required String id,
      required String taskId,
      required String label,
      Value<bool> done,
      Value<int> position,
      Value<int> rowid,
    });
typedef $$ChecklistItemsTableUpdateCompanionBuilder =
    ChecklistItemsCompanion Function({
      Value<String> id,
      Value<String> taskId,
      Value<String> label,
      Value<bool> done,
      Value<int> position,
      Value<int> rowid,
    });

final class $$ChecklistItemsTableReferences
    extends
        BaseReferences<_$AppDatabase, $ChecklistItemsTable, ChecklistItemRow> {
  $$ChecklistItemsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $TasksTable _taskIdTable(_$AppDatabase db) =>
      db.tasks.createAlias('checklist_items__task_id__tasks__id');

  $$TasksTableProcessedTableManager get taskId {
    final $_column = $_itemColumn<String>('task_id')!;

    final manager = $$TasksTableTableManager(
      $_db,
      $_db.tasks,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_taskIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$ChecklistItemsTableFilterComposer
    extends Composer<_$AppDatabase, $ChecklistItemsTable> {
  $$ChecklistItemsTableFilterComposer({
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

  ColumnFilters<String> get label => $composableBuilder(
    column: $table.label,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get done => $composableBuilder(
    column: $table.done,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get position => $composableBuilder(
    column: $table.position,
    builder: (column) => ColumnFilters(column),
  );

  $$TasksTableFilterComposer get taskId {
    final $$TasksTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.taskId,
      referencedTable: $db.tasks,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TasksTableFilterComposer(
            $db: $db,
            $table: $db.tasks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ChecklistItemsTableOrderingComposer
    extends Composer<_$AppDatabase, $ChecklistItemsTable> {
  $$ChecklistItemsTableOrderingComposer({
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

  ColumnOrderings<String> get label => $composableBuilder(
    column: $table.label,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get done => $composableBuilder(
    column: $table.done,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get position => $composableBuilder(
    column: $table.position,
    builder: (column) => ColumnOrderings(column),
  );

  $$TasksTableOrderingComposer get taskId {
    final $$TasksTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.taskId,
      referencedTable: $db.tasks,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TasksTableOrderingComposer(
            $db: $db,
            $table: $db.tasks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ChecklistItemsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ChecklistItemsTable> {
  $$ChecklistItemsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get label =>
      $composableBuilder(column: $table.label, builder: (column) => column);

  GeneratedColumn<bool> get done =>
      $composableBuilder(column: $table.done, builder: (column) => column);

  GeneratedColumn<int> get position =>
      $composableBuilder(column: $table.position, builder: (column) => column);

  $$TasksTableAnnotationComposer get taskId {
    final $$TasksTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.taskId,
      referencedTable: $db.tasks,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TasksTableAnnotationComposer(
            $db: $db,
            $table: $db.tasks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ChecklistItemsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ChecklistItemsTable,
          ChecklistItemRow,
          $$ChecklistItemsTableFilterComposer,
          $$ChecklistItemsTableOrderingComposer,
          $$ChecklistItemsTableAnnotationComposer,
          $$ChecklistItemsTableCreateCompanionBuilder,
          $$ChecklistItemsTableUpdateCompanionBuilder,
          (ChecklistItemRow, $$ChecklistItemsTableReferences),
          ChecklistItemRow,
          PrefetchHooks Function({bool taskId})
        > {
  $$ChecklistItemsTableTableManager(
    _$AppDatabase db,
    $ChecklistItemsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ChecklistItemsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ChecklistItemsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ChecklistItemsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> taskId = const Value.absent(),
                Value<String> label = const Value.absent(),
                Value<bool> done = const Value.absent(),
                Value<int> position = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ChecklistItemsCompanion(
                id: id,
                taskId: taskId,
                label: label,
                done: done,
                position: position,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String taskId,
                required String label,
                Value<bool> done = const Value.absent(),
                Value<int> position = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ChecklistItemsCompanion.insert(
                id: id,
                taskId: taskId,
                label: label,
                done: done,
                position: position,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$ChecklistItemsTable, ChecklistItemRow>(table),
                  $$ChecklistItemsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({taskId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (taskId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.taskId,
                        referencedTable: $$ChecklistItemsTableReferences
                            ._taskIdTable(db),
                        referencedColumn: $$ChecklistItemsTableReferences
                            ._taskIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$ChecklistItemsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ChecklistItemsTable,
      ChecklistItemRow,
      $$ChecklistItemsTableFilterComposer,
      $$ChecklistItemsTableOrderingComposer,
      $$ChecklistItemsTableAnnotationComposer,
      $$ChecklistItemsTableCreateCompanionBuilder,
      $$ChecklistItemsTableUpdateCompanionBuilder,
      (ChecklistItemRow, $$ChecklistItemsTableReferences),
      ChecklistItemRow,
      PrefetchHooks Function({bool taskId})
    >;
typedef $$LabelsTableCreateCompanionBuilder = LabelsCompanion Function({
  required String id,
  required String name,
  required int color,
  Value<int> rowid,
});
typedef $$LabelsTableUpdateCompanionBuilder = LabelsCompanion Function({
  Value<String> id,
  Value<String> name,
  Value<int> color,
  Value<int> rowid,
});

final class $$LabelsTableReferences
    extends BaseReferences<_$AppDatabase, $LabelsTable, LabelRow> {
  $$LabelsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$TaskLabelsTable, List<TaskLabel>>
  _taskLabelsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.taskLabels,
    aliasName: 'labels__id__task_labels__label_id',
  );

  $$TaskLabelsTableProcessedTableManager get taskLabelsRefs {
    final manager = $$TaskLabelsTableTableManager(
      $_db,
      $_db.taskLabels,
    ).filter((f) => f.labelId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_taskLabelsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$LabelsTableFilterComposer
    extends Composer<_$AppDatabase, $LabelsTable> {
  $$LabelsTableFilterComposer({
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

  ColumnFilters<int> get color => $composableBuilder(
    column: $table.color,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> taskLabelsRefs(
    Expression<bool> Function($$TaskLabelsTableFilterComposer f) f,
  ) {
    final $$TaskLabelsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.taskLabels,
      getReferencedColumn: (t) => t.labelId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TaskLabelsTableFilterComposer(
            $db: $db,
            $table: $db.taskLabels,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$LabelsTableOrderingComposer
    extends Composer<_$AppDatabase, $LabelsTable> {
  $$LabelsTableOrderingComposer({
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

  ColumnOrderings<int> get color => $composableBuilder(
    column: $table.color,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$LabelsTableAnnotationComposer
    extends Composer<_$AppDatabase, $LabelsTable> {
  $$LabelsTableAnnotationComposer({
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

  GeneratedColumn<int> get color =>
      $composableBuilder(column: $table.color, builder: (column) => column);

  Expression<T> taskLabelsRefs<T extends Object>(
    Expression<T> Function($$TaskLabelsTableAnnotationComposer a) f,
  ) {
    final $$TaskLabelsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.taskLabels,
      getReferencedColumn: (t) => t.labelId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TaskLabelsTableAnnotationComposer(
            $db: $db,
            $table: $db.taskLabels,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$LabelsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $LabelsTable,
          LabelRow,
          $$LabelsTableFilterComposer,
          $$LabelsTableOrderingComposer,
          $$LabelsTableAnnotationComposer,
          $$LabelsTableCreateCompanionBuilder,
          $$LabelsTableUpdateCompanionBuilder,
          (LabelRow, $$LabelsTableReferences),
          LabelRow,
          PrefetchHooks Function({bool taskLabelsRefs})
        > {
  $$LabelsTableTableManager(_$AppDatabase db, $LabelsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LabelsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LabelsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LabelsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<int> color = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) => LabelsCompanion(id: id, name: name, color: color, rowid: rowid),
          createCompanionCallback:
              ({
                required String id,
                required String name,
                required int color,
                Value<int> rowid = const Value.absent(),
              }) => LabelsCompanion.insert(
                id: id,
                name: name,
                color: color,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$LabelsTable, LabelRow>(table),
                  $$LabelsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({taskLabelsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (taskLabelsRefs) db.taskLabels],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (taskLabelsRefs)
                    await $_getPrefetchedDataByColumns<
                      LabelRow,
                      $LabelsTable,
                      TaskLabel,
                      $TaskLabelsTable
                    >(
                      currentTable: table,
                      referencedTable: $$LabelsTableReferences
                          ._taskLabelsRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$LabelsTableReferences(db, table, p0).taskLabelsRefs,
                      currentColumn: 'id',
                      referencedColumn: 'label_id',
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$LabelsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $LabelsTable,
      LabelRow,
      $$LabelsTableFilterComposer,
      $$LabelsTableOrderingComposer,
      $$LabelsTableAnnotationComposer,
      $$LabelsTableCreateCompanionBuilder,
      $$LabelsTableUpdateCompanionBuilder,
      (LabelRow, $$LabelsTableReferences),
      LabelRow,
      PrefetchHooks Function({bool taskLabelsRefs})
    >;
typedef $$TaskLabelsTableCreateCompanionBuilder = TaskLabelsCompanion Function({
  required String taskId,
  required String labelId,
  Value<int> rowid,
});
typedef $$TaskLabelsTableUpdateCompanionBuilder = TaskLabelsCompanion Function({
  Value<String> taskId,
  Value<String> labelId,
  Value<int> rowid,
});

final class $$TaskLabelsTableReferences
    extends BaseReferences<_$AppDatabase, $TaskLabelsTable, TaskLabel> {
  $$TaskLabelsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $TasksTable _taskIdTable(_$AppDatabase db) =>
      db.tasks.createAlias('task_labels__task_id__tasks__id');

  $$TasksTableProcessedTableManager get taskId {
    final $_column = $_itemColumn<String>('task_id')!;

    final manager = $$TasksTableTableManager(
      $_db,
      $_db.tasks,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_taskIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $LabelsTable _labelIdTable(_$AppDatabase db) =>
      db.labels.createAlias('task_labels__label_id__labels__id');

  $$LabelsTableProcessedTableManager get labelId {
    final $_column = $_itemColumn<String>('label_id')!;

    final manager = $$LabelsTableTableManager(
      $_db,
      $_db.labels,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_labelIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$TaskLabelsTableFilterComposer
    extends Composer<_$AppDatabase, $TaskLabelsTable> {
  $$TaskLabelsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$TasksTableFilterComposer get taskId {
    final $$TasksTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.taskId,
      referencedTable: $db.tasks,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TasksTableFilterComposer(
            $db: $db,
            $table: $db.tasks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$LabelsTableFilterComposer get labelId {
    final $$LabelsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.labelId,
      referencedTable: $db.labels,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LabelsTableFilterComposer(
            $db: $db,
            $table: $db.labels,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TaskLabelsTableOrderingComposer
    extends Composer<_$AppDatabase, $TaskLabelsTable> {
  $$TaskLabelsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$TasksTableOrderingComposer get taskId {
    final $$TasksTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.taskId,
      referencedTable: $db.tasks,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TasksTableOrderingComposer(
            $db: $db,
            $table: $db.tasks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$LabelsTableOrderingComposer get labelId {
    final $$LabelsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.labelId,
      referencedTable: $db.labels,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LabelsTableOrderingComposer(
            $db: $db,
            $table: $db.labels,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TaskLabelsTableAnnotationComposer
    extends Composer<_$AppDatabase, $TaskLabelsTable> {
  $$TaskLabelsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$TasksTableAnnotationComposer get taskId {
    final $$TasksTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.taskId,
      referencedTable: $db.tasks,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TasksTableAnnotationComposer(
            $db: $db,
            $table: $db.tasks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$LabelsTableAnnotationComposer get labelId {
    final $$LabelsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.labelId,
      referencedTable: $db.labels,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LabelsTableAnnotationComposer(
            $db: $db,
            $table: $db.labels,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TaskLabelsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TaskLabelsTable,
          TaskLabel,
          $$TaskLabelsTableFilterComposer,
          $$TaskLabelsTableOrderingComposer,
          $$TaskLabelsTableAnnotationComposer,
          $$TaskLabelsTableCreateCompanionBuilder,
          $$TaskLabelsTableUpdateCompanionBuilder,
          (TaskLabel, $$TaskLabelsTableReferences),
          TaskLabel,
          PrefetchHooks Function({bool taskId, bool labelId})
        > {
  $$TaskLabelsTableTableManager(_$AppDatabase db, $TaskLabelsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TaskLabelsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TaskLabelsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TaskLabelsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> taskId = const Value.absent(),
                Value<String> labelId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TaskLabelsCompanion(
                taskId: taskId,
                labelId: labelId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String taskId,
                required String labelId,
                Value<int> rowid = const Value.absent(),
              }) => TaskLabelsCompanion.insert(
                taskId: taskId,
                labelId: labelId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$TaskLabelsTable, TaskLabel>(table),
                  $$TaskLabelsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({taskId = false, labelId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (taskId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.taskId,
                        referencedTable: $$TaskLabelsTableReferences
                            ._taskIdTable(db),
                        referencedColumn: $$TaskLabelsTableReferences
                            ._taskIdTable(db)
                            .id,
                      ) as T;
                    }
                    if (labelId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.labelId,
                        referencedTable: $$TaskLabelsTableReferences
                            ._labelIdTable(db),
                        referencedColumn: $$TaskLabelsTableReferences
                            ._labelIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$TaskLabelsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TaskLabelsTable,
      TaskLabel,
      $$TaskLabelsTableFilterComposer,
      $$TaskLabelsTableOrderingComposer,
      $$TaskLabelsTableAnnotationComposer,
      $$TaskLabelsTableCreateCompanionBuilder,
      $$TaskLabelsTableUpdateCompanionBuilder,
      (TaskLabel, $$TaskLabelsTableReferences),
      TaskLabel,
      PrefetchHooks Function({bool taskId, bool labelId})
    >;
typedef $$TaskDependenciesTableCreateCompanionBuilder =
    TaskDependenciesCompanion Function({
      required String taskId,
      required String dependsOnId,
      Value<int> rowid,
    });
typedef $$TaskDependenciesTableUpdateCompanionBuilder =
    TaskDependenciesCompanion Function({
      Value<String> taskId,
      Value<String> dependsOnId,
      Value<int> rowid,
    });

final class $$TaskDependenciesTableReferences
    extends
        BaseReferences<_$AppDatabase, $TaskDependenciesTable, TaskDependency> {
  $$TaskDependenciesTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $TasksTable _taskIdTable(_$AppDatabase db) =>
      db.tasks.createAlias('task_dependencies__task_id__tasks__id');

  $$TasksTableProcessedTableManager get taskId {
    final $_column = $_itemColumn<String>('task_id')!;

    final manager = $$TasksTableTableManager(
      $_db,
      $_db.tasks,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_taskIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $TasksTable _dependsOnIdTable(_$AppDatabase db) =>
      db.tasks.createAlias('task_dependencies__depends_on_id__tasks__id');

  $$TasksTableProcessedTableManager get dependsOnId {
    final $_column = $_itemColumn<String>('depends_on_id')!;

    final manager = $$TasksTableTableManager(
      $_db,
      $_db.tasks,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_dependsOnIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$TaskDependenciesTableFilterComposer
    extends Composer<_$AppDatabase, $TaskDependenciesTable> {
  $$TaskDependenciesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$TasksTableFilterComposer get taskId {
    final $$TasksTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.taskId,
      referencedTable: $db.tasks,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TasksTableFilterComposer(
            $db: $db,
            $table: $db.tasks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TasksTableFilterComposer get dependsOnId {
    final $$TasksTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.dependsOnId,
      referencedTable: $db.tasks,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TasksTableFilterComposer(
            $db: $db,
            $table: $db.tasks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TaskDependenciesTableOrderingComposer
    extends Composer<_$AppDatabase, $TaskDependenciesTable> {
  $$TaskDependenciesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$TasksTableOrderingComposer get taskId {
    final $$TasksTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.taskId,
      referencedTable: $db.tasks,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TasksTableOrderingComposer(
            $db: $db,
            $table: $db.tasks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TasksTableOrderingComposer get dependsOnId {
    final $$TasksTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.dependsOnId,
      referencedTable: $db.tasks,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TasksTableOrderingComposer(
            $db: $db,
            $table: $db.tasks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TaskDependenciesTableAnnotationComposer
    extends Composer<_$AppDatabase, $TaskDependenciesTable> {
  $$TaskDependenciesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$TasksTableAnnotationComposer get taskId {
    final $$TasksTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.taskId,
      referencedTable: $db.tasks,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TasksTableAnnotationComposer(
            $db: $db,
            $table: $db.tasks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TasksTableAnnotationComposer get dependsOnId {
    final $$TasksTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.dependsOnId,
      referencedTable: $db.tasks,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TasksTableAnnotationComposer(
            $db: $db,
            $table: $db.tasks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TaskDependenciesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TaskDependenciesTable,
          TaskDependency,
          $$TaskDependenciesTableFilterComposer,
          $$TaskDependenciesTableOrderingComposer,
          $$TaskDependenciesTableAnnotationComposer,
          $$TaskDependenciesTableCreateCompanionBuilder,
          $$TaskDependenciesTableUpdateCompanionBuilder,
          (TaskDependency, $$TaskDependenciesTableReferences),
          TaskDependency,
          PrefetchHooks Function({bool taskId, bool dependsOnId})
        > {
  $$TaskDependenciesTableTableManager(
    _$AppDatabase db,
    $TaskDependenciesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TaskDependenciesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TaskDependenciesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TaskDependenciesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> taskId = const Value.absent(),
                Value<String> dependsOnId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TaskDependenciesCompanion(
                taskId: taskId,
                dependsOnId: dependsOnId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String taskId,
                required String dependsOnId,
                Value<int> rowid = const Value.absent(),
              }) => TaskDependenciesCompanion.insert(
                taskId: taskId,
                dependsOnId: dependsOnId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$TaskDependenciesTable, TaskDependency>(table),
                  $$TaskDependenciesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({taskId = false, dependsOnId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (taskId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.taskId,
                        referencedTable: $$TaskDependenciesTableReferences
                            ._taskIdTable(db),
                        referencedColumn: $$TaskDependenciesTableReferences
                            ._taskIdTable(db)
                            .id,
                      ) as T;
                    }
                    if (dependsOnId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.dependsOnId,
                        referencedTable: $$TaskDependenciesTableReferences
                            ._dependsOnIdTable(db),
                        referencedColumn: $$TaskDependenciesTableReferences
                            ._dependsOnIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$TaskDependenciesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TaskDependenciesTable,
      TaskDependency,
      $$TaskDependenciesTableFilterComposer,
      $$TaskDependenciesTableOrderingComposer,
      $$TaskDependenciesTableAnnotationComposer,
      $$TaskDependenciesTableCreateCompanionBuilder,
      $$TaskDependenciesTableUpdateCompanionBuilder,
      (TaskDependency, $$TaskDependenciesTableReferences),
      TaskDependency,
      PrefetchHooks Function({bool taskId, bool dependsOnId})
    >;
typedef $$FocusSessionsTableCreateCompanionBuilder =
    FocusSessionsCompanion Function({
      required String id,
      required String mode,
      Value<String> phase,
      Value<int?> plannedSeconds,
      required int activeSeconds,
      required DateTime startedAt,
      required DateTime endedAt,
      required String outcome,
      Value<String?> taskId,
      Value<String?> projectId,
      Value<String> note,
      Value<int> rowid,
    });
typedef $$FocusSessionsTableUpdateCompanionBuilder =
    FocusSessionsCompanion Function({
      Value<String> id,
      Value<String> mode,
      Value<String> phase,
      Value<int?> plannedSeconds,
      Value<int> activeSeconds,
      Value<DateTime> startedAt,
      Value<DateTime> endedAt,
      Value<String> outcome,
      Value<String?> taskId,
      Value<String?> projectId,
      Value<String> note,
      Value<int> rowid,
    });

final class $$FocusSessionsTableReferences
    extends
        BaseReferences<_$AppDatabase, $FocusSessionsTable, FocusSessionRow> {
  $$FocusSessionsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $TasksTable _taskIdTable(_$AppDatabase db) =>
      db.tasks.createAlias('focus_sessions__task_id__tasks__id');

  $$TasksTableProcessedTableManager? get taskId {
    final $_column = $_itemColumn<String>('task_id');
    if ($_column == null) return null;
    final manager = $$TasksTableTableManager(
      $_db,
      $_db.tasks,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_taskIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $ProjectsTable _projectIdTable(_$AppDatabase db) =>
      db.projects.createAlias('focus_sessions__project_id__projects__id');

  $$ProjectsTableProcessedTableManager? get projectId {
    final $_column = $_itemColumn<String>('project_id');
    if ($_column == null) return null;
    final manager = $$ProjectsTableTableManager(
      $_db,
      $_db.projects,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_projectIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$FocusSessionsTableFilterComposer
    extends Composer<_$AppDatabase, $FocusSessionsTable> {
  $$FocusSessionsTableFilterComposer({
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

  ColumnFilters<String> get mode => $composableBuilder(
    column: $table.mode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get phase => $composableBuilder(
    column: $table.phase,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get plannedSeconds => $composableBuilder(
    column: $table.plannedSeconds,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get activeSeconds => $composableBuilder(
    column: $table.activeSeconds,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get startedAt => $composableBuilder(
    column: $table.startedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get endedAt => $composableBuilder(
    column: $table.endedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get outcome => $composableBuilder(
    column: $table.outcome,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnFilters(column),
  );

  $$TasksTableFilterComposer get taskId {
    final $$TasksTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.taskId,
      referencedTable: $db.tasks,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TasksTableFilterComposer(
            $db: $db,
            $table: $db.tasks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ProjectsTableFilterComposer get projectId {
    final $$ProjectsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.projects,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectsTableFilterComposer(
            $db: $db,
            $table: $db.projects,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$FocusSessionsTableOrderingComposer
    extends Composer<_$AppDatabase, $FocusSessionsTable> {
  $$FocusSessionsTableOrderingComposer({
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

  ColumnOrderings<String> get mode => $composableBuilder(
    column: $table.mode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get phase => $composableBuilder(
    column: $table.phase,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get plannedSeconds => $composableBuilder(
    column: $table.plannedSeconds,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get activeSeconds => $composableBuilder(
    column: $table.activeSeconds,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get startedAt => $composableBuilder(
    column: $table.startedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get endedAt => $composableBuilder(
    column: $table.endedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get outcome => $composableBuilder(
    column: $table.outcome,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnOrderings(column),
  );

  $$TasksTableOrderingComposer get taskId {
    final $$TasksTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.taskId,
      referencedTable: $db.tasks,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TasksTableOrderingComposer(
            $db: $db,
            $table: $db.tasks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ProjectsTableOrderingComposer get projectId {
    final $$ProjectsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.projects,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectsTableOrderingComposer(
            $db: $db,
            $table: $db.projects,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$FocusSessionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $FocusSessionsTable> {
  $$FocusSessionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get mode =>
      $composableBuilder(column: $table.mode, builder: (column) => column);

  GeneratedColumn<String> get phase =>
      $composableBuilder(column: $table.phase, builder: (column) => column);

  GeneratedColumn<int> get plannedSeconds => $composableBuilder(
    column: $table.plannedSeconds,
    builder: (column) => column,
  );

  GeneratedColumn<int> get activeSeconds => $composableBuilder(
    column: $table.activeSeconds,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get startedAt =>
      $composableBuilder(column: $table.startedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get endedAt =>
      $composableBuilder(column: $table.endedAt, builder: (column) => column);

  GeneratedColumn<String> get outcome =>
      $composableBuilder(column: $table.outcome, builder: (column) => column);

  GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);

  $$TasksTableAnnotationComposer get taskId {
    final $$TasksTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.taskId,
      referencedTable: $db.tasks,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TasksTableAnnotationComposer(
            $db: $db,
            $table: $db.tasks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ProjectsTableAnnotationComposer get projectId {
    final $$ProjectsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.projects,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectsTableAnnotationComposer(
            $db: $db,
            $table: $db.projects,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$FocusSessionsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $FocusSessionsTable,
          FocusSessionRow,
          $$FocusSessionsTableFilterComposer,
          $$FocusSessionsTableOrderingComposer,
          $$FocusSessionsTableAnnotationComposer,
          $$FocusSessionsTableCreateCompanionBuilder,
          $$FocusSessionsTableUpdateCompanionBuilder,
          (FocusSessionRow, $$FocusSessionsTableReferences),
          FocusSessionRow,
          PrefetchHooks Function({bool taskId, bool projectId})
        > {
  $$FocusSessionsTableTableManager(_$AppDatabase db, $FocusSessionsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FocusSessionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FocusSessionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FocusSessionsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> mode = const Value.absent(),
                Value<String> phase = const Value.absent(),
                Value<int?> plannedSeconds = const Value.absent(),
                Value<int> activeSeconds = const Value.absent(),
                Value<DateTime> startedAt = const Value.absent(),
                Value<DateTime> endedAt = const Value.absent(),
                Value<String> outcome = const Value.absent(),
                Value<String?> taskId = const Value.absent(),
                Value<String?> projectId = const Value.absent(),
                Value<String> note = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FocusSessionsCompanion(
                id: id,
                mode: mode,
                phase: phase,
                plannedSeconds: plannedSeconds,
                activeSeconds: activeSeconds,
                startedAt: startedAt,
                endedAt: endedAt,
                outcome: outcome,
                taskId: taskId,
                projectId: projectId,
                note: note,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String mode,
                Value<String> phase = const Value.absent(),
                Value<int?> plannedSeconds = const Value.absent(),
                required int activeSeconds,
                required DateTime startedAt,
                required DateTime endedAt,
                required String outcome,
                Value<String?> taskId = const Value.absent(),
                Value<String?> projectId = const Value.absent(),
                Value<String> note = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FocusSessionsCompanion.insert(
                id: id,
                mode: mode,
                phase: phase,
                plannedSeconds: plannedSeconds,
                activeSeconds: activeSeconds,
                startedAt: startedAt,
                endedAt: endedAt,
                outcome: outcome,
                taskId: taskId,
                projectId: projectId,
                note: note,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$FocusSessionsTable, FocusSessionRow>(table),
                  $$FocusSessionsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({taskId = false, projectId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (taskId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.taskId,
                        referencedTable: $$FocusSessionsTableReferences
                            ._taskIdTable(db),
                        referencedColumn: $$FocusSessionsTableReferences
                            ._taskIdTable(db)
                            .id,
                      ) as T;
                    }
                    if (projectId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.projectId,
                        referencedTable: $$FocusSessionsTableReferences
                            ._projectIdTable(db),
                        referencedColumn: $$FocusSessionsTableReferences
                            ._projectIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$FocusSessionsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $FocusSessionsTable,
      FocusSessionRow,
      $$FocusSessionsTableFilterComposer,
      $$FocusSessionsTableOrderingComposer,
      $$FocusSessionsTableAnnotationComposer,
      $$FocusSessionsTableCreateCompanionBuilder,
      $$FocusSessionsTableUpdateCompanionBuilder,
      (FocusSessionRow, $$FocusSessionsTableReferences),
      FocusSessionRow,
      PrefetchHooks Function({bool taskId, bool projectId})
    >;
typedef $$EventsTableCreateCompanionBuilder = EventsCompanion Function({
  required DateTime createdAt,
  required DateTime updatedAt,
  required String id,
  required String title,
  Value<String> description,
  required DateTime startAt,
  required DateTime endAt,
  Value<bool> allDay,
  Value<String> timeZone,
  Value<String> kind,
  Value<String?> recurrence,
  Value<int?> reminderMinutes,
  Value<String?> taskId,
  Value<int?> color,
  Value<DateTime?> deletedAt,
  Value<int> rowid,
});
typedef $$EventsTableUpdateCompanionBuilder = EventsCompanion Function({
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<String> id,
  Value<String> title,
  Value<String> description,
  Value<DateTime> startAt,
  Value<DateTime> endAt,
  Value<bool> allDay,
  Value<String> timeZone,
  Value<String> kind,
  Value<String?> recurrence,
  Value<int?> reminderMinutes,
  Value<String?> taskId,
  Value<int?> color,
  Value<DateTime?> deletedAt,
  Value<int> rowid,
});

final class $$EventsTableReferences
    extends BaseReferences<_$AppDatabase, $EventsTable, EventRow> {
  $$EventsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $TasksTable _taskIdTable(_$AppDatabase db) =>
      db.tasks.createAlias('events__task_id__tasks__id');

  $$TasksTableProcessedTableManager? get taskId {
    final $_column = $_itemColumn<String>('task_id');
    if ($_column == null) return null;
    final manager = $$TasksTableTableManager(
      $_db,
      $_db.tasks,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_taskIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$EventsTableFilterComposer
    extends Composer<_$AppDatabase, $EventsTable> {
  $$EventsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get startAt => $composableBuilder(
    column: $table.startAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get endAt => $composableBuilder(
    column: $table.endAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get allDay => $composableBuilder(
    column: $table.allDay,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get timeZone => $composableBuilder(
    column: $table.timeZone,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get kind => $composableBuilder(
    column: $table.kind,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get recurrence => $composableBuilder(
    column: $table.recurrence,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get reminderMinutes => $composableBuilder(
    column: $table.reminderMinutes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get color => $composableBuilder(
    column: $table.color,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  $$TasksTableFilterComposer get taskId {
    final $$TasksTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.taskId,
      referencedTable: $db.tasks,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TasksTableFilterComposer(
            $db: $db,
            $table: $db.tasks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$EventsTableOrderingComposer
    extends Composer<_$AppDatabase, $EventsTable> {
  $$EventsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get startAt => $composableBuilder(
    column: $table.startAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get endAt => $composableBuilder(
    column: $table.endAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get allDay => $composableBuilder(
    column: $table.allDay,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get timeZone => $composableBuilder(
    column: $table.timeZone,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get kind => $composableBuilder(
    column: $table.kind,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get recurrence => $composableBuilder(
    column: $table.recurrence,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get reminderMinutes => $composableBuilder(
    column: $table.reminderMinutes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get color => $composableBuilder(
    column: $table.color,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$TasksTableOrderingComposer get taskId {
    final $$TasksTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.taskId,
      referencedTable: $db.tasks,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TasksTableOrderingComposer(
            $db: $db,
            $table: $db.tasks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$EventsTableAnnotationComposer
    extends Composer<_$AppDatabase, $EventsTable> {
  $$EventsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get startAt =>
      $composableBuilder(column: $table.startAt, builder: (column) => column);

  GeneratedColumn<DateTime> get endAt =>
      $composableBuilder(column: $table.endAt, builder: (column) => column);

  GeneratedColumn<bool> get allDay =>
      $composableBuilder(column: $table.allDay, builder: (column) => column);

  GeneratedColumn<String> get timeZone =>
      $composableBuilder(column: $table.timeZone, builder: (column) => column);

  GeneratedColumn<String> get kind =>
      $composableBuilder(column: $table.kind, builder: (column) => column);

  GeneratedColumn<String> get recurrence => $composableBuilder(
    column: $table.recurrence,
    builder: (column) => column,
  );

  GeneratedColumn<int> get reminderMinutes => $composableBuilder(
    column: $table.reminderMinutes,
    builder: (column) => column,
  );

  GeneratedColumn<int> get color =>
      $composableBuilder(column: $table.color, builder: (column) => column);

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  $$TasksTableAnnotationComposer get taskId {
    final $$TasksTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.taskId,
      referencedTable: $db.tasks,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TasksTableAnnotationComposer(
            $db: $db,
            $table: $db.tasks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$EventsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $EventsTable,
          EventRow,
          $$EventsTableFilterComposer,
          $$EventsTableOrderingComposer,
          $$EventsTableAnnotationComposer,
          $$EventsTableCreateCompanionBuilder,
          $$EventsTableUpdateCompanionBuilder,
          (EventRow, $$EventsTableReferences),
          EventRow,
          PrefetchHooks Function({bool taskId})
        > {
  $$EventsTableTableManager(_$AppDatabase db, $EventsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$EventsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$EventsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$EventsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<String> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<DateTime> startAt = const Value.absent(),
                Value<DateTime> endAt = const Value.absent(),
                Value<bool> allDay = const Value.absent(),
                Value<String> timeZone = const Value.absent(),
                Value<String> kind = const Value.absent(),
                Value<String?> recurrence = const Value.absent(),
                Value<int?> reminderMinutes = const Value.absent(),
                Value<String?> taskId = const Value.absent(),
                Value<int?> color = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => EventsCompanion(
                createdAt: createdAt,
                updatedAt: updatedAt,
                id: id,
                title: title,
                description: description,
                startAt: startAt,
                endAt: endAt,
                allDay: allDay,
                timeZone: timeZone,
                kind: kind,
                recurrence: recurrence,
                reminderMinutes: reminderMinutes,
                taskId: taskId,
                color: color,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required DateTime createdAt,
                required DateTime updatedAt,
                required String id,
                required String title,
                Value<String> description = const Value.absent(),
                required DateTime startAt,
                required DateTime endAt,
                Value<bool> allDay = const Value.absent(),
                Value<String> timeZone = const Value.absent(),
                Value<String> kind = const Value.absent(),
                Value<String?> recurrence = const Value.absent(),
                Value<int?> reminderMinutes = const Value.absent(),
                Value<String?> taskId = const Value.absent(),
                Value<int?> color = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => EventsCompanion.insert(
                createdAt: createdAt,
                updatedAt: updatedAt,
                id: id,
                title: title,
                description: description,
                startAt: startAt,
                endAt: endAt,
                allDay: allDay,
                timeZone: timeZone,
                kind: kind,
                recurrence: recurrence,
                reminderMinutes: reminderMinutes,
                taskId: taskId,
                color: color,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$EventsTable, EventRow>(table),
                  $$EventsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({taskId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (taskId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.taskId,
                        referencedTable: $$EventsTableReferences._taskIdTable(
                          db,
                        ),
                        referencedColumn: $$EventsTableReferences
                            ._taskIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$EventsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $EventsTable,
      EventRow,
      $$EventsTableFilterComposer,
      $$EventsTableOrderingComposer,
      $$EventsTableAnnotationComposer,
      $$EventsTableCreateCompanionBuilder,
      $$EventsTableUpdateCompanionBuilder,
      (EventRow, $$EventsTableReferences),
      EventRow,
      PrefetchHooks Function({bool taskId})
    >;
typedef $$NotebooksTableCreateCompanionBuilder = NotebooksCompanion Function({
  required String id,
  required String name,
  required int color,
  required DateTime createdAt,
  Value<int> rowid,
});
typedef $$NotebooksTableUpdateCompanionBuilder = NotebooksCompanion Function({
  Value<String> id,
  Value<String> name,
  Value<int> color,
  Value<DateTime> createdAt,
  Value<int> rowid,
});

final class $$NotebooksTableReferences
    extends BaseReferences<_$AppDatabase, $NotebooksTable, NotebookRow> {
  $$NotebooksTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$NotesTable, List<NoteRow>> _notesRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.notes,
    aliasName: 'notebooks__id__notes__notebook_id',
  );

  $$NotesTableProcessedTableManager get notesRefs {
    final manager = $$NotesTableTableManager(
      $_db,
      $_db.notes,
    ).filter((f) => f.notebookId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_notesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$NotebooksTableFilterComposer
    extends Composer<_$AppDatabase, $NotebooksTable> {
  $$NotebooksTableFilterComposer({
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

  ColumnFilters<int> get color => $composableBuilder(
    column: $table.color,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> notesRefs(
    Expression<bool> Function($$NotesTableFilterComposer f) f,
  ) {
    final $$NotesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.notes,
      getReferencedColumn: (t) => t.notebookId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$NotesTableFilterComposer(
            $db: $db,
            $table: $db.notes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$NotebooksTableOrderingComposer
    extends Composer<_$AppDatabase, $NotebooksTable> {
  $$NotebooksTableOrderingComposer({
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

  ColumnOrderings<int> get color => $composableBuilder(
    column: $table.color,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$NotebooksTableAnnotationComposer
    extends Composer<_$AppDatabase, $NotebooksTable> {
  $$NotebooksTableAnnotationComposer({
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

  GeneratedColumn<int> get color =>
      $composableBuilder(column: $table.color, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  Expression<T> notesRefs<T extends Object>(
    Expression<T> Function($$NotesTableAnnotationComposer a) f,
  ) {
    final $$NotesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.notes,
      getReferencedColumn: (t) => t.notebookId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$NotesTableAnnotationComposer(
            $db: $db,
            $table: $db.notes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$NotebooksTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $NotebooksTable,
          NotebookRow,
          $$NotebooksTableFilterComposer,
          $$NotebooksTableOrderingComposer,
          $$NotebooksTableAnnotationComposer,
          $$NotebooksTableCreateCompanionBuilder,
          $$NotebooksTableUpdateCompanionBuilder,
          (NotebookRow, $$NotebooksTableReferences),
          NotebookRow,
          PrefetchHooks Function({bool notesRefs})
        > {
  $$NotebooksTableTableManager(_$AppDatabase db, $NotebooksTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$NotebooksTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$NotebooksTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$NotebooksTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<int> color = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => NotebooksCompanion(
                id: id,
                name: name,
                color: color,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String name,
                required int color,
                required DateTime createdAt,
                Value<int> rowid = const Value.absent(),
              }) => NotebooksCompanion.insert(
                id: id,
                name: name,
                color: color,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$NotebooksTable, NotebookRow>(table),
                  $$NotebooksTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({notesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (notesRefs) db.notes],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (notesRefs)
                    await $_getPrefetchedDataByColumns<
                      NotebookRow,
                      $NotebooksTable,
                      NoteRow,
                      $NotesTable
                    >(
                      currentTable: table,
                      referencedTable: $$NotebooksTableReferences
                          ._notesRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$NotebooksTableReferences(db, table, p0).notesRefs,
                      currentColumn: 'id',
                      referencedColumn: 'notebook_id',
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$NotebooksTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $NotebooksTable,
      NotebookRow,
      $$NotebooksTableFilterComposer,
      $$NotebooksTableOrderingComposer,
      $$NotebooksTableAnnotationComposer,
      $$NotebooksTableCreateCompanionBuilder,
      $$NotebooksTableUpdateCompanionBuilder,
      (NotebookRow, $$NotebooksTableReferences),
      NotebookRow,
      PrefetchHooks Function({bool notesRefs})
    >;
typedef $$NotesTableCreateCompanionBuilder = NotesCompanion Function({
  required DateTime createdAt,
  required DateTime updatedAt,
  required String id,
  Value<String> title,
  Value<String> body,
  Value<String?> notebookId,
  Value<String?> projectId,
  Value<String> category,
  Value<bool> pinned,
  Value<bool> favorite,
  Value<bool> archived,
  Value<DateTime?> deletedAt,
  Value<int> rowid,
});
typedef $$NotesTableUpdateCompanionBuilder = NotesCompanion Function({
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<String> id,
  Value<String> title,
  Value<String> body,
  Value<String?> notebookId,
  Value<String?> projectId,
  Value<String> category,
  Value<bool> pinned,
  Value<bool> favorite,
  Value<bool> archived,
  Value<DateTime?> deletedAt,
  Value<int> rowid,
});

final class $$NotesTableReferences
    extends BaseReferences<_$AppDatabase, $NotesTable, NoteRow> {
  $$NotesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $NotebooksTable _notebookIdTable(_$AppDatabase db) =>
      db.notebooks.createAlias('notes__notebook_id__notebooks__id');

  $$NotebooksTableProcessedTableManager? get notebookId {
    final $_column = $_itemColumn<String>('notebook_id');
    if ($_column == null) return null;
    final manager = $$NotebooksTableTableManager(
      $_db,
      $_db.notebooks,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_notebookIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $ProjectsTable _projectIdTable(_$AppDatabase db) =>
      db.projects.createAlias('notes__project_id__projects__id');

  $$ProjectsTableProcessedTableManager? get projectId {
    final $_column = $_itemColumn<String>('project_id');
    if ($_column == null) return null;
    final manager = $$ProjectsTableTableManager(
      $_db,
      $_db.projects,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_projectIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$NoteTagsTable, List<NoteTag>> _noteTagsRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.noteTags,
    aliasName: 'notes__id__note_tags__note_id',
  );

  $$NoteTagsTableProcessedTableManager get noteTagsRefs {
    final manager = $$NoteTagsTableTableManager(
      $_db,
      $_db.noteTags,
    ).filter((f) => f.noteId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_noteTagsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$NoteTaskLinksTable, List<NoteTaskLink>>
  _noteTaskLinksRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.noteTaskLinks,
    aliasName: 'notes__id__note_task_links__note_id',
  );

  $$NoteTaskLinksTableProcessedTableManager get noteTaskLinksRefs {
    final manager = $$NoteTaskLinksTableTableManager(
      $_db,
      $_db.noteTaskLinks,
    ).filter((f) => f.noteId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_noteTaskLinksRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$NotesTableFilterComposer extends Composer<_$AppDatabase, $NotesTable> {
  $$NotesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get body => $composableBuilder(
    column: $table.body,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get pinned => $composableBuilder(
    column: $table.pinned,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get favorite => $composableBuilder(
    column: $table.favorite,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get archived => $composableBuilder(
    column: $table.archived,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  $$NotebooksTableFilterComposer get notebookId {
    final $$NotebooksTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.notebookId,
      referencedTable: $db.notebooks,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$NotebooksTableFilterComposer(
            $db: $db,
            $table: $db.notebooks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ProjectsTableFilterComposer get projectId {
    final $$ProjectsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.projects,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectsTableFilterComposer(
            $db: $db,
            $table: $db.projects,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> noteTagsRefs(
    Expression<bool> Function($$NoteTagsTableFilterComposer f) f,
  ) {
    final $$NoteTagsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.noteTags,
      getReferencedColumn: (t) => t.noteId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$NoteTagsTableFilterComposer(
            $db: $db,
            $table: $db.noteTags,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> noteTaskLinksRefs(
    Expression<bool> Function($$NoteTaskLinksTableFilterComposer f) f,
  ) {
    final $$NoteTaskLinksTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.noteTaskLinks,
      getReferencedColumn: (t) => t.noteId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$NoteTaskLinksTableFilterComposer(
            $db: $db,
            $table: $db.noteTaskLinks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$NotesTableOrderingComposer
    extends Composer<_$AppDatabase, $NotesTable> {
  $$NotesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get body => $composableBuilder(
    column: $table.body,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get pinned => $composableBuilder(
    column: $table.pinned,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get favorite => $composableBuilder(
    column: $table.favorite,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get archived => $composableBuilder(
    column: $table.archived,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$NotebooksTableOrderingComposer get notebookId {
    final $$NotebooksTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.notebookId,
      referencedTable: $db.notebooks,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$NotebooksTableOrderingComposer(
            $db: $db,
            $table: $db.notebooks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ProjectsTableOrderingComposer get projectId {
    final $$ProjectsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.projects,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectsTableOrderingComposer(
            $db: $db,
            $table: $db.projects,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$NotesTableAnnotationComposer
    extends Composer<_$AppDatabase, $NotesTable> {
  $$NotesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get body =>
      $composableBuilder(column: $table.body, builder: (column) => column);

  GeneratedColumn<String> get category =>
      $composableBuilder(column: $table.category, builder: (column) => column);

  GeneratedColumn<bool> get pinned =>
      $composableBuilder(column: $table.pinned, builder: (column) => column);

  GeneratedColumn<bool> get favorite =>
      $composableBuilder(column: $table.favorite, builder: (column) => column);

  GeneratedColumn<bool> get archived =>
      $composableBuilder(column: $table.archived, builder: (column) => column);

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  $$NotebooksTableAnnotationComposer get notebookId {
    final $$NotebooksTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.notebookId,
      referencedTable: $db.notebooks,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$NotebooksTableAnnotationComposer(
            $db: $db,
            $table: $db.notebooks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ProjectsTableAnnotationComposer get projectId {
    final $$ProjectsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.projects,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectsTableAnnotationComposer(
            $db: $db,
            $table: $db.projects,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> noteTagsRefs<T extends Object>(
    Expression<T> Function($$NoteTagsTableAnnotationComposer a) f,
  ) {
    final $$NoteTagsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.noteTags,
      getReferencedColumn: (t) => t.noteId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$NoteTagsTableAnnotationComposer(
            $db: $db,
            $table: $db.noteTags,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> noteTaskLinksRefs<T extends Object>(
    Expression<T> Function($$NoteTaskLinksTableAnnotationComposer a) f,
  ) {
    final $$NoteTaskLinksTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.noteTaskLinks,
      getReferencedColumn: (t) => t.noteId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$NoteTaskLinksTableAnnotationComposer(
            $db: $db,
            $table: $db.noteTaskLinks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$NotesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $NotesTable,
          NoteRow,
          $$NotesTableFilterComposer,
          $$NotesTableOrderingComposer,
          $$NotesTableAnnotationComposer,
          $$NotesTableCreateCompanionBuilder,
          $$NotesTableUpdateCompanionBuilder,
          (NoteRow, $$NotesTableReferences),
          NoteRow,
          PrefetchHooks Function({
            bool notebookId,
            bool projectId,
            bool noteTagsRefs,
            bool noteTaskLinksRefs,
          })
        > {
  $$NotesTableTableManager(_$AppDatabase db, $NotesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$NotesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$NotesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$NotesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<String> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> body = const Value.absent(),
                Value<String?> notebookId = const Value.absent(),
                Value<String?> projectId = const Value.absent(),
                Value<String> category = const Value.absent(),
                Value<bool> pinned = const Value.absent(),
                Value<bool> favorite = const Value.absent(),
                Value<bool> archived = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => NotesCompanion(
                createdAt: createdAt,
                updatedAt: updatedAt,
                id: id,
                title: title,
                body: body,
                notebookId: notebookId,
                projectId: projectId,
                category: category,
                pinned: pinned,
                favorite: favorite,
                archived: archived,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required DateTime createdAt,
                required DateTime updatedAt,
                required String id,
                Value<String> title = const Value.absent(),
                Value<String> body = const Value.absent(),
                Value<String?> notebookId = const Value.absent(),
                Value<String?> projectId = const Value.absent(),
                Value<String> category = const Value.absent(),
                Value<bool> pinned = const Value.absent(),
                Value<bool> favorite = const Value.absent(),
                Value<bool> archived = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => NotesCompanion.insert(
                createdAt: createdAt,
                updatedAt: updatedAt,
                id: id,
                title: title,
                body: body,
                notebookId: notebookId,
                projectId: projectId,
                category: category,
                pinned: pinned,
                favorite: favorite,
                archived: archived,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$NotesTable, NoteRow>(table),
                  $$NotesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                notebookId = false,
                projectId = false,
                noteTagsRefs = false,
                noteTaskLinksRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (noteTagsRefs) db.noteTags,
                    if (noteTaskLinksRefs) db.noteTaskLinks,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (notebookId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.notebookId,
                            referencedTable: $$NotesTableReferences
                                ._notebookIdTable(db),
                            referencedColumn: $$NotesTableReferences
                                ._notebookIdTable(db)
                                .id,
                          ) as T;
                        }
                        if (projectId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.projectId,
                            referencedTable: $$NotesTableReferences
                                ._projectIdTable(db),
                            referencedColumn: $$NotesTableReferences
                                ._projectIdTable(db)
                                .id,
                          ) as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (noteTagsRefs)
                        await $_getPrefetchedDataByColumns<
                          NoteRow,
                          $NotesTable,
                          NoteTag,
                          $NoteTagsTable
                        >(
                          currentTable: table,
                          referencedTable: $$NotesTableReferences
                              ._noteTagsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$NotesTableReferences(
                                db,
                                table,
                                p0,
                              ).noteTagsRefs,
                          currentColumn: 'id',
                          referencedColumn: 'note_id',
                          typedResults: items,
                        ),
                      if (noteTaskLinksRefs)
                        await $_getPrefetchedDataByColumns<
                          NoteRow,
                          $NotesTable,
                          NoteTaskLink,
                          $NoteTaskLinksTable
                        >(
                          currentTable: table,
                          referencedTable: $$NotesTableReferences
                              ._noteTaskLinksRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$NotesTableReferences(
                                db,
                                table,
                                p0,
                              ).noteTaskLinksRefs,
                          currentColumn: 'id',
                          referencedColumn: 'note_id',
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$NotesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $NotesTable,
      NoteRow,
      $$NotesTableFilterComposer,
      $$NotesTableOrderingComposer,
      $$NotesTableAnnotationComposer,
      $$NotesTableCreateCompanionBuilder,
      $$NotesTableUpdateCompanionBuilder,
      (NoteRow, $$NotesTableReferences),
      NoteRow,
      PrefetchHooks Function({
        bool notebookId,
        bool projectId,
        bool noteTagsRefs,
        bool noteTaskLinksRefs,
      })
    >;
typedef $$NoteTagsTableCreateCompanionBuilder = NoteTagsCompanion Function({
  required String noteId,
  required String tag,
  Value<int> rowid,
});
typedef $$NoteTagsTableUpdateCompanionBuilder = NoteTagsCompanion Function({
  Value<String> noteId,
  Value<String> tag,
  Value<int> rowid,
});

final class $$NoteTagsTableReferences
    extends BaseReferences<_$AppDatabase, $NoteTagsTable, NoteTag> {
  $$NoteTagsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $NotesTable _noteIdTable(_$AppDatabase db) =>
      db.notes.createAlias('note_tags__note_id__notes__id');

  $$NotesTableProcessedTableManager get noteId {
    final $_column = $_itemColumn<String>('note_id')!;

    final manager = $$NotesTableTableManager(
      $_db,
      $_db.notes,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_noteIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$NoteTagsTableFilterComposer
    extends Composer<_$AppDatabase, $NoteTagsTable> {
  $$NoteTagsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get tag => $composableBuilder(
    column: $table.tag,
    builder: (column) => ColumnFilters(column),
  );

  $$NotesTableFilterComposer get noteId {
    final $$NotesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.noteId,
      referencedTable: $db.notes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$NotesTableFilterComposer(
            $db: $db,
            $table: $db.notes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$NoteTagsTableOrderingComposer
    extends Composer<_$AppDatabase, $NoteTagsTable> {
  $$NoteTagsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get tag => $composableBuilder(
    column: $table.tag,
    builder: (column) => ColumnOrderings(column),
  );

  $$NotesTableOrderingComposer get noteId {
    final $$NotesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.noteId,
      referencedTable: $db.notes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$NotesTableOrderingComposer(
            $db: $db,
            $table: $db.notes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$NoteTagsTableAnnotationComposer
    extends Composer<_$AppDatabase, $NoteTagsTable> {
  $$NoteTagsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get tag =>
      $composableBuilder(column: $table.tag, builder: (column) => column);

  $$NotesTableAnnotationComposer get noteId {
    final $$NotesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.noteId,
      referencedTable: $db.notes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$NotesTableAnnotationComposer(
            $db: $db,
            $table: $db.notes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$NoteTagsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $NoteTagsTable,
          NoteTag,
          $$NoteTagsTableFilterComposer,
          $$NoteTagsTableOrderingComposer,
          $$NoteTagsTableAnnotationComposer,
          $$NoteTagsTableCreateCompanionBuilder,
          $$NoteTagsTableUpdateCompanionBuilder,
          (NoteTag, $$NoteTagsTableReferences),
          NoteTag,
          PrefetchHooks Function({bool noteId})
        > {
  $$NoteTagsTableTableManager(_$AppDatabase db, $NoteTagsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$NoteTagsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$NoteTagsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$NoteTagsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> noteId = const Value.absent(),
            Value<String> tag = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) => NoteTagsCompanion(noteId: noteId, tag: tag, rowid: rowid),
          createCompanionCallback:
              ({
                required String noteId,
                required String tag,
                Value<int> rowid = const Value.absent(),
              }) => NoteTagsCompanion.insert(
                noteId: noteId,
                tag: tag,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$NoteTagsTable, NoteTag>(table),
                  $$NoteTagsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({noteId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (noteId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.noteId,
                        referencedTable: $$NoteTagsTableReferences._noteIdTable(
                          db,
                        ),
                        referencedColumn: $$NoteTagsTableReferences
                            ._noteIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$NoteTagsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $NoteTagsTable,
      NoteTag,
      $$NoteTagsTableFilterComposer,
      $$NoteTagsTableOrderingComposer,
      $$NoteTagsTableAnnotationComposer,
      $$NoteTagsTableCreateCompanionBuilder,
      $$NoteTagsTableUpdateCompanionBuilder,
      (NoteTag, $$NoteTagsTableReferences),
      NoteTag,
      PrefetchHooks Function({bool noteId})
    >;
typedef $$NoteTaskLinksTableCreateCompanionBuilder =
    NoteTaskLinksCompanion Function({
      required String noteId,
      required String taskId,
      Value<int> rowid,
    });
typedef $$NoteTaskLinksTableUpdateCompanionBuilder =
    NoteTaskLinksCompanion Function({
      Value<String> noteId,
      Value<String> taskId,
      Value<int> rowid,
    });

final class $$NoteTaskLinksTableReferences
    extends BaseReferences<_$AppDatabase, $NoteTaskLinksTable, NoteTaskLink> {
  $$NoteTaskLinksTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $NotesTable _noteIdTable(_$AppDatabase db) =>
      db.notes.createAlias('note_task_links__note_id__notes__id');

  $$NotesTableProcessedTableManager get noteId {
    final $_column = $_itemColumn<String>('note_id')!;

    final manager = $$NotesTableTableManager(
      $_db,
      $_db.notes,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_noteIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $TasksTable _taskIdTable(_$AppDatabase db) =>
      db.tasks.createAlias('note_task_links__task_id__tasks__id');

  $$TasksTableProcessedTableManager get taskId {
    final $_column = $_itemColumn<String>('task_id')!;

    final manager = $$TasksTableTableManager(
      $_db,
      $_db.tasks,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_taskIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$NoteTaskLinksTableFilterComposer
    extends Composer<_$AppDatabase, $NoteTaskLinksTable> {
  $$NoteTaskLinksTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$NotesTableFilterComposer get noteId {
    final $$NotesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.noteId,
      referencedTable: $db.notes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$NotesTableFilterComposer(
            $db: $db,
            $table: $db.notes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TasksTableFilterComposer get taskId {
    final $$TasksTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.taskId,
      referencedTable: $db.tasks,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TasksTableFilterComposer(
            $db: $db,
            $table: $db.tasks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$NoteTaskLinksTableOrderingComposer
    extends Composer<_$AppDatabase, $NoteTaskLinksTable> {
  $$NoteTaskLinksTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$NotesTableOrderingComposer get noteId {
    final $$NotesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.noteId,
      referencedTable: $db.notes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$NotesTableOrderingComposer(
            $db: $db,
            $table: $db.notes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TasksTableOrderingComposer get taskId {
    final $$TasksTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.taskId,
      referencedTable: $db.tasks,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TasksTableOrderingComposer(
            $db: $db,
            $table: $db.tasks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$NoteTaskLinksTableAnnotationComposer
    extends Composer<_$AppDatabase, $NoteTaskLinksTable> {
  $$NoteTaskLinksTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$NotesTableAnnotationComposer get noteId {
    final $$NotesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.noteId,
      referencedTable: $db.notes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$NotesTableAnnotationComposer(
            $db: $db,
            $table: $db.notes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TasksTableAnnotationComposer get taskId {
    final $$TasksTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.taskId,
      referencedTable: $db.tasks,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TasksTableAnnotationComposer(
            $db: $db,
            $table: $db.tasks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$NoteTaskLinksTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $NoteTaskLinksTable,
          NoteTaskLink,
          $$NoteTaskLinksTableFilterComposer,
          $$NoteTaskLinksTableOrderingComposer,
          $$NoteTaskLinksTableAnnotationComposer,
          $$NoteTaskLinksTableCreateCompanionBuilder,
          $$NoteTaskLinksTableUpdateCompanionBuilder,
          (NoteTaskLink, $$NoteTaskLinksTableReferences),
          NoteTaskLink,
          PrefetchHooks Function({bool noteId, bool taskId})
        > {
  $$NoteTaskLinksTableTableManager(_$AppDatabase db, $NoteTaskLinksTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$NoteTaskLinksTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$NoteTaskLinksTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$NoteTaskLinksTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> noteId = const Value.absent(),
                Value<String> taskId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => NoteTaskLinksCompanion(
                noteId: noteId,
                taskId: taskId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String noteId,
                required String taskId,
                Value<int> rowid = const Value.absent(),
              }) => NoteTaskLinksCompanion.insert(
                noteId: noteId,
                taskId: taskId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$NoteTaskLinksTable, NoteTaskLink>(table),
                  $$NoteTaskLinksTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({noteId = false, taskId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (noteId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.noteId,
                        referencedTable: $$NoteTaskLinksTableReferences
                            ._noteIdTable(db),
                        referencedColumn: $$NoteTaskLinksTableReferences
                            ._noteIdTable(db)
                            .id,
                      ) as T;
                    }
                    if (taskId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.taskId,
                        referencedTable: $$NoteTaskLinksTableReferences
                            ._taskIdTable(db),
                        referencedColumn: $$NoteTaskLinksTableReferences
                            ._taskIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$NoteTaskLinksTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $NoteTaskLinksTable,
      NoteTaskLink,
      $$NoteTaskLinksTableFilterComposer,
      $$NoteTaskLinksTableOrderingComposer,
      $$NoteTaskLinksTableAnnotationComposer,
      $$NoteTaskLinksTableCreateCompanionBuilder,
      $$NoteTaskLinksTableUpdateCompanionBuilder,
      (NoteTaskLink, $$NoteTaskLinksTableReferences),
      NoteTaskLink,
      PrefetchHooks Function({bool noteId, bool taskId})
    >;
typedef $$DecksTableCreateCompanionBuilder = DecksCompanion Function({
  required DateTime createdAt,
  required DateTime updatedAt,
  required String id,
  required String name,
  Value<String> description,
  Value<String> category,
  required int color,
  Value<int> dailyNewLimit,
  Value<int> dailyReviewTarget,
  Value<DateTime?> deletedAt,
  Value<int> rowid,
});
typedef $$DecksTableUpdateCompanionBuilder = DecksCompanion Function({
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<String> id,
  Value<String> name,
  Value<String> description,
  Value<String> category,
  Value<int> color,
  Value<int> dailyNewLimit,
  Value<int> dailyReviewTarget,
  Value<DateTime?> deletedAt,
  Value<int> rowid,
});

final class $$DecksTableReferences
    extends BaseReferences<_$AppDatabase, $DecksTable, DeckRow> {
  $$DecksTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$FlashcardsTable, List<CardRow>>
  _flashcardsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.flashcards,
    aliasName: 'decks__id__flashcards__deck_id',
  );

  $$FlashcardsTableProcessedTableManager get flashcardsRefs {
    final manager = $$FlashcardsTableTableManager(
      $_db,
      $_db.flashcards,
    ).filter((f) => f.deckId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_flashcardsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$DecksTableFilterComposer extends Composer<_$AppDatabase, $DecksTable> {
  $$DecksTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
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

  ColumnFilters<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get color => $composableBuilder(
    column: $table.color,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get dailyNewLimit => $composableBuilder(
    column: $table.dailyNewLimit,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get dailyReviewTarget => $composableBuilder(
    column: $table.dailyReviewTarget,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> flashcardsRefs(
    Expression<bool> Function($$FlashcardsTableFilterComposer f) f,
  ) {
    final $$FlashcardsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.flashcards,
      getReferencedColumn: (t) => t.deckId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FlashcardsTableFilterComposer(
            $db: $db,
            $table: $db.flashcards,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$DecksTableOrderingComposer
    extends Composer<_$AppDatabase, $DecksTable> {
  $$DecksTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
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

  ColumnOrderings<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get color => $composableBuilder(
    column: $table.color,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get dailyNewLimit => $composableBuilder(
    column: $table.dailyNewLimit,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get dailyReviewTarget => $composableBuilder(
    column: $table.dailyReviewTarget,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$DecksTableAnnotationComposer
    extends Composer<_$AppDatabase, $DecksTable> {
  $$DecksTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<String> get category =>
      $composableBuilder(column: $table.category, builder: (column) => column);

  GeneratedColumn<int> get color =>
      $composableBuilder(column: $table.color, builder: (column) => column);

  GeneratedColumn<int> get dailyNewLimit => $composableBuilder(
    column: $table.dailyNewLimit,
    builder: (column) => column,
  );

  GeneratedColumn<int> get dailyReviewTarget => $composableBuilder(
    column: $table.dailyReviewTarget,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  Expression<T> flashcardsRefs<T extends Object>(
    Expression<T> Function($$FlashcardsTableAnnotationComposer a) f,
  ) {
    final $$FlashcardsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.flashcards,
      getReferencedColumn: (t) => t.deckId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FlashcardsTableAnnotationComposer(
            $db: $db,
            $table: $db.flashcards,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$DecksTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $DecksTable,
          DeckRow,
          $$DecksTableFilterComposer,
          $$DecksTableOrderingComposer,
          $$DecksTableAnnotationComposer,
          $$DecksTableCreateCompanionBuilder,
          $$DecksTableUpdateCompanionBuilder,
          (DeckRow, $$DecksTableReferences),
          DeckRow,
          PrefetchHooks Function({bool flashcardsRefs})
        > {
  $$DecksTableTableManager(_$AppDatabase db, $DecksTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DecksTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DecksTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DecksTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<String> category = const Value.absent(),
                Value<int> color = const Value.absent(),
                Value<int> dailyNewLimit = const Value.absent(),
                Value<int> dailyReviewTarget = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => DecksCompanion(
                createdAt: createdAt,
                updatedAt: updatedAt,
                id: id,
                name: name,
                description: description,
                category: category,
                color: color,
                dailyNewLimit: dailyNewLimit,
                dailyReviewTarget: dailyReviewTarget,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required DateTime createdAt,
                required DateTime updatedAt,
                required String id,
                required String name,
                Value<String> description = const Value.absent(),
                Value<String> category = const Value.absent(),
                required int color,
                Value<int> dailyNewLimit = const Value.absent(),
                Value<int> dailyReviewTarget = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => DecksCompanion.insert(
                createdAt: createdAt,
                updatedAt: updatedAt,
                id: id,
                name: name,
                description: description,
                category: category,
                color: color,
                dailyNewLimit: dailyNewLimit,
                dailyReviewTarget: dailyReviewTarget,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$DecksTable, DeckRow>(table),
                  $$DecksTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({flashcardsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (flashcardsRefs) db.flashcards],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (flashcardsRefs)
                    await $_getPrefetchedDataByColumns<
                      DeckRow,
                      $DecksTable,
                      CardRow,
                      $FlashcardsTable
                    >(
                      currentTable: table,
                      referencedTable: $$DecksTableReferences
                          ._flashcardsRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$DecksTableReferences(db, table, p0).flashcardsRefs,
                      currentColumn: 'id',
                      referencedColumn: 'deck_id',
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$DecksTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $DecksTable,
      DeckRow,
      $$DecksTableFilterComposer,
      $$DecksTableOrderingComposer,
      $$DecksTableAnnotationComposer,
      $$DecksTableCreateCompanionBuilder,
      $$DecksTableUpdateCompanionBuilder,
      (DeckRow, $$DecksTableReferences),
      DeckRow,
      PrefetchHooks Function({bool flashcardsRefs})
    >;
typedef $$FlashcardsTableCreateCompanionBuilder = FlashcardsCompanion Function({
  required DateTime createdAt,
  required DateTime updatedAt,
  required String id,
  required String deckId,
  required String front,
  required String back,
  Value<String> tags,
  Value<String> extra,
  Value<String> state,
  Value<int> ease,
  Value<int> intervalDays,
  Value<int> repetitions,
  Value<int> lapses,
  Value<int> learningStep,
  Value<DateTime?> dueAt,
  Value<DateTime?> deletedAt,
  Value<int> rowid,
});
typedef $$FlashcardsTableUpdateCompanionBuilder = FlashcardsCompanion Function({
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<String> id,
  Value<String> deckId,
  Value<String> front,
  Value<String> back,
  Value<String> tags,
  Value<String> extra,
  Value<String> state,
  Value<int> ease,
  Value<int> intervalDays,
  Value<int> repetitions,
  Value<int> lapses,
  Value<int> learningStep,
  Value<DateTime?> dueAt,
  Value<DateTime?> deletedAt,
  Value<int> rowid,
});

final class $$FlashcardsTableReferences
    extends BaseReferences<_$AppDatabase, $FlashcardsTable, CardRow> {
  $$FlashcardsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $DecksTable _deckIdTable(_$AppDatabase db) =>
      db.decks.createAlias('flashcards__deck_id__decks__id');

  $$DecksTableProcessedTableManager get deckId {
    final $_column = $_itemColumn<String>('deck_id')!;

    final manager = $$DecksTableTableManager(
      $_db,
      $_db.decks,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_deckIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$CardReviewsTable, List<ReviewRow>>
  _cardReviewsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.cardReviews,
    aliasName: 'flashcards__id__card_reviews__card_id',
  );

  $$CardReviewsTableProcessedTableManager get cardReviewsRefs {
    final manager = $$CardReviewsTableTableManager(
      $_db,
      $_db.cardReviews,
    ).filter((f) => f.cardId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_cardReviewsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$FlashcardsTableFilterComposer
    extends Composer<_$AppDatabase, $FlashcardsTable> {
  $$FlashcardsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get front => $composableBuilder(
    column: $table.front,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get back => $composableBuilder(
    column: $table.back,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get tags => $composableBuilder(
    column: $table.tags,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get extra => $composableBuilder(
    column: $table.extra,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get state => $composableBuilder(
    column: $table.state,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get ease => $composableBuilder(
    column: $table.ease,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get intervalDays => $composableBuilder(
    column: $table.intervalDays,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get repetitions => $composableBuilder(
    column: $table.repetitions,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get lapses => $composableBuilder(
    column: $table.lapses,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get learningStep => $composableBuilder(
    column: $table.learningStep,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get dueAt => $composableBuilder(
    column: $table.dueAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  $$DecksTableFilterComposer get deckId {
    final $$DecksTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.deckId,
      referencedTable: $db.decks,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DecksTableFilterComposer(
            $db: $db,
            $table: $db.decks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> cardReviewsRefs(
    Expression<bool> Function($$CardReviewsTableFilterComposer f) f,
  ) {
    final $$CardReviewsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.cardReviews,
      getReferencedColumn: (t) => t.cardId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CardReviewsTableFilterComposer(
            $db: $db,
            $table: $db.cardReviews,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$FlashcardsTableOrderingComposer
    extends Composer<_$AppDatabase, $FlashcardsTable> {
  $$FlashcardsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get front => $composableBuilder(
    column: $table.front,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get back => $composableBuilder(
    column: $table.back,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get tags => $composableBuilder(
    column: $table.tags,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get extra => $composableBuilder(
    column: $table.extra,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get state => $composableBuilder(
    column: $table.state,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get ease => $composableBuilder(
    column: $table.ease,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get intervalDays => $composableBuilder(
    column: $table.intervalDays,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get repetitions => $composableBuilder(
    column: $table.repetitions,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get lapses => $composableBuilder(
    column: $table.lapses,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get learningStep => $composableBuilder(
    column: $table.learningStep,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get dueAt => $composableBuilder(
    column: $table.dueAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$DecksTableOrderingComposer get deckId {
    final $$DecksTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.deckId,
      referencedTable: $db.decks,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DecksTableOrderingComposer(
            $db: $db,
            $table: $db.decks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$FlashcardsTableAnnotationComposer
    extends Composer<_$AppDatabase, $FlashcardsTable> {
  $$FlashcardsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get front =>
      $composableBuilder(column: $table.front, builder: (column) => column);

  GeneratedColumn<String> get back =>
      $composableBuilder(column: $table.back, builder: (column) => column);

  GeneratedColumn<String> get tags =>
      $composableBuilder(column: $table.tags, builder: (column) => column);

  GeneratedColumn<String> get extra =>
      $composableBuilder(column: $table.extra, builder: (column) => column);

  GeneratedColumn<String> get state =>
      $composableBuilder(column: $table.state, builder: (column) => column);

  GeneratedColumn<int> get ease =>
      $composableBuilder(column: $table.ease, builder: (column) => column);

  GeneratedColumn<int> get intervalDays => $composableBuilder(
    column: $table.intervalDays,
    builder: (column) => column,
  );

  GeneratedColumn<int> get repetitions => $composableBuilder(
    column: $table.repetitions,
    builder: (column) => column,
  );

  GeneratedColumn<int> get lapses =>
      $composableBuilder(column: $table.lapses, builder: (column) => column);

  GeneratedColumn<int> get learningStep => $composableBuilder(
    column: $table.learningStep,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get dueAt =>
      $composableBuilder(column: $table.dueAt, builder: (column) => column);

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  $$DecksTableAnnotationComposer get deckId {
    final $$DecksTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.deckId,
      referencedTable: $db.decks,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DecksTableAnnotationComposer(
            $db: $db,
            $table: $db.decks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> cardReviewsRefs<T extends Object>(
    Expression<T> Function($$CardReviewsTableAnnotationComposer a) f,
  ) {
    final $$CardReviewsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.cardReviews,
      getReferencedColumn: (t) => t.cardId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CardReviewsTableAnnotationComposer(
            $db: $db,
            $table: $db.cardReviews,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$FlashcardsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $FlashcardsTable,
          CardRow,
          $$FlashcardsTableFilterComposer,
          $$FlashcardsTableOrderingComposer,
          $$FlashcardsTableAnnotationComposer,
          $$FlashcardsTableCreateCompanionBuilder,
          $$FlashcardsTableUpdateCompanionBuilder,
          (CardRow, $$FlashcardsTableReferences),
          CardRow,
          PrefetchHooks Function({bool deckId, bool cardReviewsRefs})
        > {
  $$FlashcardsTableTableManager(_$AppDatabase db, $FlashcardsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FlashcardsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FlashcardsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FlashcardsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<String> id = const Value.absent(),
                Value<String> deckId = const Value.absent(),
                Value<String> front = const Value.absent(),
                Value<String> back = const Value.absent(),
                Value<String> tags = const Value.absent(),
                Value<String> extra = const Value.absent(),
                Value<String> state = const Value.absent(),
                Value<int> ease = const Value.absent(),
                Value<int> intervalDays = const Value.absent(),
                Value<int> repetitions = const Value.absent(),
                Value<int> lapses = const Value.absent(),
                Value<int> learningStep = const Value.absent(),
                Value<DateTime?> dueAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FlashcardsCompanion(
                createdAt: createdAt,
                updatedAt: updatedAt,
                id: id,
                deckId: deckId,
                front: front,
                back: back,
                tags: tags,
                extra: extra,
                state: state,
                ease: ease,
                intervalDays: intervalDays,
                repetitions: repetitions,
                lapses: lapses,
                learningStep: learningStep,
                dueAt: dueAt,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required DateTime createdAt,
                required DateTime updatedAt,
                required String id,
                required String deckId,
                required String front,
                required String back,
                Value<String> tags = const Value.absent(),
                Value<String> extra = const Value.absent(),
                Value<String> state = const Value.absent(),
                Value<int> ease = const Value.absent(),
                Value<int> intervalDays = const Value.absent(),
                Value<int> repetitions = const Value.absent(),
                Value<int> lapses = const Value.absent(),
                Value<int> learningStep = const Value.absent(),
                Value<DateTime?> dueAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FlashcardsCompanion.insert(
                createdAt: createdAt,
                updatedAt: updatedAt,
                id: id,
                deckId: deckId,
                front: front,
                back: back,
                tags: tags,
                extra: extra,
                state: state,
                ease: ease,
                intervalDays: intervalDays,
                repetitions: repetitions,
                lapses: lapses,
                learningStep: learningStep,
                dueAt: dueAt,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$FlashcardsTable, CardRow>(table),
                  $$FlashcardsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({deckId = false, cardReviewsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (cardReviewsRefs) db.cardReviews],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (deckId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.deckId,
                        referencedTable: $$FlashcardsTableReferences
                            ._deckIdTable(db),
                        referencedColumn: $$FlashcardsTableReferences
                            ._deckIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (cardReviewsRefs)
                    await $_getPrefetchedDataByColumns<
                      CardRow,
                      $FlashcardsTable,
                      ReviewRow,
                      $CardReviewsTable
                    >(
                      currentTable: table,
                      referencedTable: $$FlashcardsTableReferences
                          ._cardReviewsRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$FlashcardsTableReferences(
                            db,
                            table,
                            p0,
                          ).cardReviewsRefs,
                      currentColumn: 'id',
                      referencedColumn: 'card_id',
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$FlashcardsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $FlashcardsTable,
      CardRow,
      $$FlashcardsTableFilterComposer,
      $$FlashcardsTableOrderingComposer,
      $$FlashcardsTableAnnotationComposer,
      $$FlashcardsTableCreateCompanionBuilder,
      $$FlashcardsTableUpdateCompanionBuilder,
      (CardRow, $$FlashcardsTableReferences),
      CardRow,
      PrefetchHooks Function({bool deckId, bool cardReviewsRefs})
    >;
typedef $$CardReviewsTableCreateCompanionBuilder =
    CardReviewsCompanion Function({
      required String id,
      required String cardId,
      required DateTime reviewedAt,
      required int rating,
      required String stateBefore,
      required int intervalBefore,
      required int intervalAfter,
      required int easeBefore,
      required int easeAfter,
      Value<int> rowid,
    });
typedef $$CardReviewsTableUpdateCompanionBuilder =
    CardReviewsCompanion Function({
      Value<String> id,
      Value<String> cardId,
      Value<DateTime> reviewedAt,
      Value<int> rating,
      Value<String> stateBefore,
      Value<int> intervalBefore,
      Value<int> intervalAfter,
      Value<int> easeBefore,
      Value<int> easeAfter,
      Value<int> rowid,
    });

final class $$CardReviewsTableReferences
    extends BaseReferences<_$AppDatabase, $CardReviewsTable, ReviewRow> {
  $$CardReviewsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $FlashcardsTable _cardIdTable(_$AppDatabase db) =>
      db.flashcards.createAlias('card_reviews__card_id__flashcards__id');

  $$FlashcardsTableProcessedTableManager get cardId {
    final $_column = $_itemColumn<String>('card_id')!;

    final manager = $$FlashcardsTableTableManager(
      $_db,
      $_db.flashcards,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_cardIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$CardReviewsTableFilterComposer
    extends Composer<_$AppDatabase, $CardReviewsTable> {
  $$CardReviewsTableFilterComposer({
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

  ColumnFilters<DateTime> get reviewedAt => $composableBuilder(
    column: $table.reviewedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get rating => $composableBuilder(
    column: $table.rating,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get stateBefore => $composableBuilder(
    column: $table.stateBefore,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get intervalBefore => $composableBuilder(
    column: $table.intervalBefore,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get intervalAfter => $composableBuilder(
    column: $table.intervalAfter,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get easeBefore => $composableBuilder(
    column: $table.easeBefore,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get easeAfter => $composableBuilder(
    column: $table.easeAfter,
    builder: (column) => ColumnFilters(column),
  );

  $$FlashcardsTableFilterComposer get cardId {
    final $$FlashcardsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.cardId,
      referencedTable: $db.flashcards,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FlashcardsTableFilterComposer(
            $db: $db,
            $table: $db.flashcards,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$CardReviewsTableOrderingComposer
    extends Composer<_$AppDatabase, $CardReviewsTable> {
  $$CardReviewsTableOrderingComposer({
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

  ColumnOrderings<DateTime> get reviewedAt => $composableBuilder(
    column: $table.reviewedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get rating => $composableBuilder(
    column: $table.rating,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get stateBefore => $composableBuilder(
    column: $table.stateBefore,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get intervalBefore => $composableBuilder(
    column: $table.intervalBefore,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get intervalAfter => $composableBuilder(
    column: $table.intervalAfter,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get easeBefore => $composableBuilder(
    column: $table.easeBefore,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get easeAfter => $composableBuilder(
    column: $table.easeAfter,
    builder: (column) => ColumnOrderings(column),
  );

  $$FlashcardsTableOrderingComposer get cardId {
    final $$FlashcardsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.cardId,
      referencedTable: $db.flashcards,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FlashcardsTableOrderingComposer(
            $db: $db,
            $table: $db.flashcards,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$CardReviewsTableAnnotationComposer
    extends Composer<_$AppDatabase, $CardReviewsTable> {
  $$CardReviewsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get reviewedAt => $composableBuilder(
    column: $table.reviewedAt,
    builder: (column) => column,
  );

  GeneratedColumn<int> get rating =>
      $composableBuilder(column: $table.rating, builder: (column) => column);

  GeneratedColumn<String> get stateBefore => $composableBuilder(
    column: $table.stateBefore,
    builder: (column) => column,
  );

  GeneratedColumn<int> get intervalBefore => $composableBuilder(
    column: $table.intervalBefore,
    builder: (column) => column,
  );

  GeneratedColumn<int> get intervalAfter => $composableBuilder(
    column: $table.intervalAfter,
    builder: (column) => column,
  );

  GeneratedColumn<int> get easeBefore => $composableBuilder(
    column: $table.easeBefore,
    builder: (column) => column,
  );

  GeneratedColumn<int> get easeAfter =>
      $composableBuilder(column: $table.easeAfter, builder: (column) => column);

  $$FlashcardsTableAnnotationComposer get cardId {
    final $$FlashcardsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.cardId,
      referencedTable: $db.flashcards,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FlashcardsTableAnnotationComposer(
            $db: $db,
            $table: $db.flashcards,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$CardReviewsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CardReviewsTable,
          ReviewRow,
          $$CardReviewsTableFilterComposer,
          $$CardReviewsTableOrderingComposer,
          $$CardReviewsTableAnnotationComposer,
          $$CardReviewsTableCreateCompanionBuilder,
          $$CardReviewsTableUpdateCompanionBuilder,
          (ReviewRow, $$CardReviewsTableReferences),
          ReviewRow,
          PrefetchHooks Function({bool cardId})
        > {
  $$CardReviewsTableTableManager(_$AppDatabase db, $CardReviewsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CardReviewsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CardReviewsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CardReviewsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> cardId = const Value.absent(),
                Value<DateTime> reviewedAt = const Value.absent(),
                Value<int> rating = const Value.absent(),
                Value<String> stateBefore = const Value.absent(),
                Value<int> intervalBefore = const Value.absent(),
                Value<int> intervalAfter = const Value.absent(),
                Value<int> easeBefore = const Value.absent(),
                Value<int> easeAfter = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CardReviewsCompanion(
                id: id,
                cardId: cardId,
                reviewedAt: reviewedAt,
                rating: rating,
                stateBefore: stateBefore,
                intervalBefore: intervalBefore,
                intervalAfter: intervalAfter,
                easeBefore: easeBefore,
                easeAfter: easeAfter,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String cardId,
                required DateTime reviewedAt,
                required int rating,
                required String stateBefore,
                required int intervalBefore,
                required int intervalAfter,
                required int easeBefore,
                required int easeAfter,
                Value<int> rowid = const Value.absent(),
              }) => CardReviewsCompanion.insert(
                id: id,
                cardId: cardId,
                reviewedAt: reviewedAt,
                rating: rating,
                stateBefore: stateBefore,
                intervalBefore: intervalBefore,
                intervalAfter: intervalAfter,
                easeBefore: easeBefore,
                easeAfter: easeAfter,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$CardReviewsTable, ReviewRow>(table),
                  $$CardReviewsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({cardId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (cardId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.cardId,
                        referencedTable: $$CardReviewsTableReferences
                            ._cardIdTable(db),
                        referencedColumn: $$CardReviewsTableReferences
                            ._cardIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$CardReviewsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CardReviewsTable,
      ReviewRow,
      $$CardReviewsTableFilterComposer,
      $$CardReviewsTableOrderingComposer,
      $$CardReviewsTableAnnotationComposer,
      $$CardReviewsTableCreateCompanionBuilder,
      $$CardReviewsTableUpdateCompanionBuilder,
      (ReviewRow, $$CardReviewsTableReferences),
      ReviewRow,
      PrefetchHooks Function({bool cardId})
    >;
typedef $$GoalsTableCreateCompanionBuilder = GoalsCompanion Function({
  required DateTime createdAt,
  required DateTime updatedAt,
  required String id,
  required String title,
  Value<String> description,
  required String period,
  Value<double> target,
  Value<String> unit,
  Value<String> status,
  Value<DateTime?> dueDate,
  Value<String?> projectId,
  Value<DateTime?> deletedAt,
  Value<int> rowid,
});
typedef $$GoalsTableUpdateCompanionBuilder = GoalsCompanion Function({
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<String> id,
  Value<String> title,
  Value<String> description,
  Value<String> period,
  Value<double> target,
  Value<String> unit,
  Value<String> status,
  Value<DateTime?> dueDate,
  Value<String?> projectId,
  Value<DateTime?> deletedAt,
  Value<int> rowid,
});

final class $$GoalsTableReferences
    extends BaseReferences<_$AppDatabase, $GoalsTable, GoalRow> {
  $$GoalsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ProjectsTable _projectIdTable(_$AppDatabase db) =>
      db.projects.createAlias('goals__project_id__projects__id');

  $$ProjectsTableProcessedTableManager? get projectId {
    final $_column = $_itemColumn<String>('project_id');
    if ($_column == null) return null;
    final manager = $$ProjectsTableTableManager(
      $_db,
      $_db.projects,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_projectIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$GoalEntriesTable, List<GoalEntryRow>>
  _goalEntriesRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.goalEntries,
    aliasName: 'goals__id__goal_entries__goal_id',
  );

  $$GoalEntriesTableProcessedTableManager get goalEntriesRefs {
    final manager = $$GoalEntriesTableTableManager(
      $_db,
      $_db.goalEntries,
    ).filter((f) => f.goalId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_goalEntriesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$GoalTasksTable, List<GoalTask>>
  _goalTasksRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.goalTasks,
    aliasName: 'goals__id__goal_tasks__goal_id',
  );

  $$GoalTasksTableProcessedTableManager get goalTasksRefs {
    final manager = $$GoalTasksTableTableManager(
      $_db,
      $_db.goalTasks,
    ).filter((f) => f.goalId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_goalTasksRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$GoalsTableFilterComposer extends Composer<_$AppDatabase, $GoalsTable> {
  $$GoalsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get period => $composableBuilder(
    column: $table.period,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get target => $composableBuilder(
    column: $table.target,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get unit => $composableBuilder(
    column: $table.unit,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get dueDate => $composableBuilder(
    column: $table.dueDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  $$ProjectsTableFilterComposer get projectId {
    final $$ProjectsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.projects,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectsTableFilterComposer(
            $db: $db,
            $table: $db.projects,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> goalEntriesRefs(
    Expression<bool> Function($$GoalEntriesTableFilterComposer f) f,
  ) {
    final $$GoalEntriesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.goalEntries,
      getReferencedColumn: (t) => t.goalId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$GoalEntriesTableFilterComposer(
            $db: $db,
            $table: $db.goalEntries,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> goalTasksRefs(
    Expression<bool> Function($$GoalTasksTableFilterComposer f) f,
  ) {
    final $$GoalTasksTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.goalTasks,
      getReferencedColumn: (t) => t.goalId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$GoalTasksTableFilterComposer(
            $db: $db,
            $table: $db.goalTasks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$GoalsTableOrderingComposer
    extends Composer<_$AppDatabase, $GoalsTable> {
  $$GoalsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get period => $composableBuilder(
    column: $table.period,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get target => $composableBuilder(
    column: $table.target,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get unit => $composableBuilder(
    column: $table.unit,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get dueDate => $composableBuilder(
    column: $table.dueDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$ProjectsTableOrderingComposer get projectId {
    final $$ProjectsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.projects,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectsTableOrderingComposer(
            $db: $db,
            $table: $db.projects,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$GoalsTableAnnotationComposer
    extends Composer<_$AppDatabase, $GoalsTable> {
  $$GoalsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<String> get period =>
      $composableBuilder(column: $table.period, builder: (column) => column);

  GeneratedColumn<double> get target =>
      $composableBuilder(column: $table.target, builder: (column) => column);

  GeneratedColumn<String> get unit =>
      $composableBuilder(column: $table.unit, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<DateTime> get dueDate =>
      $composableBuilder(column: $table.dueDate, builder: (column) => column);

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  $$ProjectsTableAnnotationComposer get projectId {
    final $$ProjectsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.projects,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectsTableAnnotationComposer(
            $db: $db,
            $table: $db.projects,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> goalEntriesRefs<T extends Object>(
    Expression<T> Function($$GoalEntriesTableAnnotationComposer a) f,
  ) {
    final $$GoalEntriesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.goalEntries,
      getReferencedColumn: (t) => t.goalId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$GoalEntriesTableAnnotationComposer(
            $db: $db,
            $table: $db.goalEntries,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> goalTasksRefs<T extends Object>(
    Expression<T> Function($$GoalTasksTableAnnotationComposer a) f,
  ) {
    final $$GoalTasksTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.goalTasks,
      getReferencedColumn: (t) => t.goalId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$GoalTasksTableAnnotationComposer(
            $db: $db,
            $table: $db.goalTasks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$GoalsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $GoalsTable,
          GoalRow,
          $$GoalsTableFilterComposer,
          $$GoalsTableOrderingComposer,
          $$GoalsTableAnnotationComposer,
          $$GoalsTableCreateCompanionBuilder,
          $$GoalsTableUpdateCompanionBuilder,
          (GoalRow, $$GoalsTableReferences),
          GoalRow,
          PrefetchHooks Function({
            bool projectId,
            bool goalEntriesRefs,
            bool goalTasksRefs,
          })
        > {
  $$GoalsTableTableManager(_$AppDatabase db, $GoalsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$GoalsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$GoalsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$GoalsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<String> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<String> period = const Value.absent(),
                Value<double> target = const Value.absent(),
                Value<String> unit = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<DateTime?> dueDate = const Value.absent(),
                Value<String?> projectId = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => GoalsCompanion(
                createdAt: createdAt,
                updatedAt: updatedAt,
                id: id,
                title: title,
                description: description,
                period: period,
                target: target,
                unit: unit,
                status: status,
                dueDate: dueDate,
                projectId: projectId,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required DateTime createdAt,
                required DateTime updatedAt,
                required String id,
                required String title,
                Value<String> description = const Value.absent(),
                required String period,
                Value<double> target = const Value.absent(),
                Value<String> unit = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<DateTime?> dueDate = const Value.absent(),
                Value<String?> projectId = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => GoalsCompanion.insert(
                createdAt: createdAt,
                updatedAt: updatedAt,
                id: id,
                title: title,
                description: description,
                period: period,
                target: target,
                unit: unit,
                status: status,
                dueDate: dueDate,
                projectId: projectId,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$GoalsTable, GoalRow>(table),
                  $$GoalsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                projectId = false,
                goalEntriesRefs = false,
                goalTasksRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (goalEntriesRefs) db.goalEntries,
                    if (goalTasksRefs) db.goalTasks,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (projectId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.projectId,
                            referencedTable: $$GoalsTableReferences
                                ._projectIdTable(db),
                            referencedColumn: $$GoalsTableReferences
                                ._projectIdTable(db)
                                .id,
                          ) as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (goalEntriesRefs)
                        await $_getPrefetchedDataByColumns<
                          GoalRow,
                          $GoalsTable,
                          GoalEntryRow,
                          $GoalEntriesTable
                        >(
                          currentTable: table,
                          referencedTable: $$GoalsTableReferences
                              ._goalEntriesRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$GoalsTableReferences(
                                db,
                                table,
                                p0,
                              ).goalEntriesRefs,
                          currentColumn: 'id',
                          referencedColumn: 'goal_id',
                          typedResults: items,
                        ),
                      if (goalTasksRefs)
                        await $_getPrefetchedDataByColumns<
                          GoalRow,
                          $GoalsTable,
                          GoalTask,
                          $GoalTasksTable
                        >(
                          currentTable: table,
                          referencedTable: $$GoalsTableReferences
                              ._goalTasksRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$GoalsTableReferences(
                                db,
                                table,
                                p0,
                              ).goalTasksRefs,
                          currentColumn: 'id',
                          referencedColumn: 'goal_id',
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$GoalsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $GoalsTable,
      GoalRow,
      $$GoalsTableFilterComposer,
      $$GoalsTableOrderingComposer,
      $$GoalsTableAnnotationComposer,
      $$GoalsTableCreateCompanionBuilder,
      $$GoalsTableUpdateCompanionBuilder,
      (GoalRow, $$GoalsTableReferences),
      GoalRow,
      PrefetchHooks Function({
        bool projectId,
        bool goalEntriesRefs,
        bool goalTasksRefs,
      })
    >;
typedef $$GoalEntriesTableCreateCompanionBuilder =
    GoalEntriesCompanion Function({
      required String id,
      required String goalId,
      required double amount,
      required DateTime at,
      Value<String> note,
      Value<int> rowid,
    });
typedef $$GoalEntriesTableUpdateCompanionBuilder =
    GoalEntriesCompanion Function({
      Value<String> id,
      Value<String> goalId,
      Value<double> amount,
      Value<DateTime> at,
      Value<String> note,
      Value<int> rowid,
    });

final class $$GoalEntriesTableReferences
    extends BaseReferences<_$AppDatabase, $GoalEntriesTable, GoalEntryRow> {
  $$GoalEntriesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $GoalsTable _goalIdTable(_$AppDatabase db) =>
      db.goals.createAlias('goal_entries__goal_id__goals__id');

  $$GoalsTableProcessedTableManager get goalId {
    final $_column = $_itemColumn<String>('goal_id')!;

    final manager = $$GoalsTableTableManager(
      $_db,
      $_db.goals,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_goalIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$GoalEntriesTableFilterComposer
    extends Composer<_$AppDatabase, $GoalEntriesTable> {
  $$GoalEntriesTableFilterComposer({
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

  ColumnFilters<double> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get at => $composableBuilder(
    column: $table.at,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnFilters(column),
  );

  $$GoalsTableFilterComposer get goalId {
    final $$GoalsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.goalId,
      referencedTable: $db.goals,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$GoalsTableFilterComposer(
            $db: $db,
            $table: $db.goals,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$GoalEntriesTableOrderingComposer
    extends Composer<_$AppDatabase, $GoalEntriesTable> {
  $$GoalEntriesTableOrderingComposer({
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

  ColumnOrderings<double> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get at => $composableBuilder(
    column: $table.at,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnOrderings(column),
  );

  $$GoalsTableOrderingComposer get goalId {
    final $$GoalsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.goalId,
      referencedTable: $db.goals,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$GoalsTableOrderingComposer(
            $db: $db,
            $table: $db.goals,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$GoalEntriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $GoalEntriesTable> {
  $$GoalEntriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<double> get amount =>
      $composableBuilder(column: $table.amount, builder: (column) => column);

  GeneratedColumn<DateTime> get at =>
      $composableBuilder(column: $table.at, builder: (column) => column);

  GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);

  $$GoalsTableAnnotationComposer get goalId {
    final $$GoalsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.goalId,
      referencedTable: $db.goals,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$GoalsTableAnnotationComposer(
            $db: $db,
            $table: $db.goals,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$GoalEntriesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $GoalEntriesTable,
          GoalEntryRow,
          $$GoalEntriesTableFilterComposer,
          $$GoalEntriesTableOrderingComposer,
          $$GoalEntriesTableAnnotationComposer,
          $$GoalEntriesTableCreateCompanionBuilder,
          $$GoalEntriesTableUpdateCompanionBuilder,
          (GoalEntryRow, $$GoalEntriesTableReferences),
          GoalEntryRow,
          PrefetchHooks Function({bool goalId})
        > {
  $$GoalEntriesTableTableManager(_$AppDatabase db, $GoalEntriesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$GoalEntriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$GoalEntriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$GoalEntriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> goalId = const Value.absent(),
                Value<double> amount = const Value.absent(),
                Value<DateTime> at = const Value.absent(),
                Value<String> note = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => GoalEntriesCompanion(
                id: id,
                goalId: goalId,
                amount: amount,
                at: at,
                note: note,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String goalId,
                required double amount,
                required DateTime at,
                Value<String> note = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => GoalEntriesCompanion.insert(
                id: id,
                goalId: goalId,
                amount: amount,
                at: at,
                note: note,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$GoalEntriesTable, GoalEntryRow>(table),
                  $$GoalEntriesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({goalId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (goalId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.goalId,
                        referencedTable: $$GoalEntriesTableReferences
                            ._goalIdTable(db),
                        referencedColumn: $$GoalEntriesTableReferences
                            ._goalIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$GoalEntriesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $GoalEntriesTable,
      GoalEntryRow,
      $$GoalEntriesTableFilterComposer,
      $$GoalEntriesTableOrderingComposer,
      $$GoalEntriesTableAnnotationComposer,
      $$GoalEntriesTableCreateCompanionBuilder,
      $$GoalEntriesTableUpdateCompanionBuilder,
      (GoalEntryRow, $$GoalEntriesTableReferences),
      GoalEntryRow,
      PrefetchHooks Function({bool goalId})
    >;
typedef $$GoalTasksTableCreateCompanionBuilder = GoalTasksCompanion Function({
  required String goalId,
  required String taskId,
  Value<int> rowid,
});
typedef $$GoalTasksTableUpdateCompanionBuilder = GoalTasksCompanion Function({
  Value<String> goalId,
  Value<String> taskId,
  Value<int> rowid,
});

final class $$GoalTasksTableReferences
    extends BaseReferences<_$AppDatabase, $GoalTasksTable, GoalTask> {
  $$GoalTasksTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $GoalsTable _goalIdTable(_$AppDatabase db) =>
      db.goals.createAlias('goal_tasks__goal_id__goals__id');

  $$GoalsTableProcessedTableManager get goalId {
    final $_column = $_itemColumn<String>('goal_id')!;

    final manager = $$GoalsTableTableManager(
      $_db,
      $_db.goals,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_goalIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $TasksTable _taskIdTable(_$AppDatabase db) =>
      db.tasks.createAlias('goal_tasks__task_id__tasks__id');

  $$TasksTableProcessedTableManager get taskId {
    final $_column = $_itemColumn<String>('task_id')!;

    final manager = $$TasksTableTableManager(
      $_db,
      $_db.tasks,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_taskIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$GoalTasksTableFilterComposer
    extends Composer<_$AppDatabase, $GoalTasksTable> {
  $$GoalTasksTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$GoalsTableFilterComposer get goalId {
    final $$GoalsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.goalId,
      referencedTable: $db.goals,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$GoalsTableFilterComposer(
            $db: $db,
            $table: $db.goals,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TasksTableFilterComposer get taskId {
    final $$TasksTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.taskId,
      referencedTable: $db.tasks,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TasksTableFilterComposer(
            $db: $db,
            $table: $db.tasks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$GoalTasksTableOrderingComposer
    extends Composer<_$AppDatabase, $GoalTasksTable> {
  $$GoalTasksTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$GoalsTableOrderingComposer get goalId {
    final $$GoalsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.goalId,
      referencedTable: $db.goals,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$GoalsTableOrderingComposer(
            $db: $db,
            $table: $db.goals,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TasksTableOrderingComposer get taskId {
    final $$TasksTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.taskId,
      referencedTable: $db.tasks,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TasksTableOrderingComposer(
            $db: $db,
            $table: $db.tasks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$GoalTasksTableAnnotationComposer
    extends Composer<_$AppDatabase, $GoalTasksTable> {
  $$GoalTasksTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$GoalsTableAnnotationComposer get goalId {
    final $$GoalsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.goalId,
      referencedTable: $db.goals,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$GoalsTableAnnotationComposer(
            $db: $db,
            $table: $db.goals,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TasksTableAnnotationComposer get taskId {
    final $$TasksTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.taskId,
      referencedTable: $db.tasks,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TasksTableAnnotationComposer(
            $db: $db,
            $table: $db.tasks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$GoalTasksTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $GoalTasksTable,
          GoalTask,
          $$GoalTasksTableFilterComposer,
          $$GoalTasksTableOrderingComposer,
          $$GoalTasksTableAnnotationComposer,
          $$GoalTasksTableCreateCompanionBuilder,
          $$GoalTasksTableUpdateCompanionBuilder,
          (GoalTask, $$GoalTasksTableReferences),
          GoalTask,
          PrefetchHooks Function({bool goalId, bool taskId})
        > {
  $$GoalTasksTableTableManager(_$AppDatabase db, $GoalTasksTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$GoalTasksTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$GoalTasksTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$GoalTasksTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> goalId = const Value.absent(),
                Value<String> taskId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => GoalTasksCompanion(
                goalId: goalId,
                taskId: taskId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String goalId,
                required String taskId,
                Value<int> rowid = const Value.absent(),
              }) => GoalTasksCompanion.insert(
                goalId: goalId,
                taskId: taskId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$GoalTasksTable, GoalTask>(table),
                  $$GoalTasksTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({goalId = false, taskId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (goalId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.goalId,
                        referencedTable: $$GoalTasksTableReferences
                            ._goalIdTable(db),
                        referencedColumn: $$GoalTasksTableReferences
                            ._goalIdTable(db)
                            .id,
                      ) as T;
                    }
                    if (taskId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.taskId,
                        referencedTable: $$GoalTasksTableReferences
                            ._taskIdTable(db),
                        referencedColumn: $$GoalTasksTableReferences
                            ._taskIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$GoalTasksTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $GoalTasksTable,
      GoalTask,
      $$GoalTasksTableFilterComposer,
      $$GoalTasksTableOrderingComposer,
      $$GoalTasksTableAnnotationComposer,
      $$GoalTasksTableCreateCompanionBuilder,
      $$GoalTasksTableUpdateCompanionBuilder,
      (GoalTask, $$GoalTasksTableReferences),
      GoalTask,
      PrefetchHooks Function({bool goalId, bool taskId})
    >;
typedef $$HabitsTableCreateCompanionBuilder = HabitsCompanion Function({
  required DateTime createdAt,
  required DateTime updatedAt,
  required String id,
  required String name,
  required int color,
  Value<String> icon,
  Value<int> weekdays,
  Value<int> targetPerDay,
  Value<int?> reminderMinute,
  Value<bool> paused,
  Value<bool> archived,
  Value<int> rowid,
});
typedef $$HabitsTableUpdateCompanionBuilder = HabitsCompanion Function({
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<String> id,
  Value<String> name,
  Value<int> color,
  Value<String> icon,
  Value<int> weekdays,
  Value<int> targetPerDay,
  Value<int?> reminderMinute,
  Value<bool> paused,
  Value<bool> archived,
  Value<int> rowid,
});

final class $$HabitsTableReferences
    extends BaseReferences<_$AppDatabase, $HabitsTable, HabitRow> {
  $$HabitsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$HabitLogsTable, List<HabitLogRow>>
  _habitLogsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.habitLogs,
    aliasName: 'habits__id__habit_logs__habit_id',
  );

  $$HabitLogsTableProcessedTableManager get habitLogsRefs {
    final manager = $$HabitLogsTableTableManager(
      $_db,
      $_db.habitLogs,
    ).filter((f) => f.habitId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_habitLogsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$HabitsTableFilterComposer
    extends Composer<_$AppDatabase, $HabitsTable> {
  $$HabitsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get color => $composableBuilder(
    column: $table.color,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get icon => $composableBuilder(
    column: $table.icon,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get weekdays => $composableBuilder(
    column: $table.weekdays,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get targetPerDay => $composableBuilder(
    column: $table.targetPerDay,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get reminderMinute => $composableBuilder(
    column: $table.reminderMinute,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get paused => $composableBuilder(
    column: $table.paused,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get archived => $composableBuilder(
    column: $table.archived,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> habitLogsRefs(
    Expression<bool> Function($$HabitLogsTableFilterComposer f) f,
  ) {
    final $$HabitLogsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.habitLogs,
      getReferencedColumn: (t) => t.habitId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$HabitLogsTableFilterComposer(
            $db: $db,
            $table: $db.habitLogs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$HabitsTableOrderingComposer
    extends Composer<_$AppDatabase, $HabitsTable> {
  $$HabitsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get color => $composableBuilder(
    column: $table.color,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get icon => $composableBuilder(
    column: $table.icon,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get weekdays => $composableBuilder(
    column: $table.weekdays,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get targetPerDay => $composableBuilder(
    column: $table.targetPerDay,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get reminderMinute => $composableBuilder(
    column: $table.reminderMinute,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get paused => $composableBuilder(
    column: $table.paused,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get archived => $composableBuilder(
    column: $table.archived,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$HabitsTableAnnotationComposer
    extends Composer<_$AppDatabase, $HabitsTable> {
  $$HabitsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<int> get color =>
      $composableBuilder(column: $table.color, builder: (column) => column);

  GeneratedColumn<String> get icon =>
      $composableBuilder(column: $table.icon, builder: (column) => column);

  GeneratedColumn<int> get weekdays =>
      $composableBuilder(column: $table.weekdays, builder: (column) => column);

  GeneratedColumn<int> get targetPerDay => $composableBuilder(
    column: $table.targetPerDay,
    builder: (column) => column,
  );

  GeneratedColumn<int> get reminderMinute => $composableBuilder(
    column: $table.reminderMinute,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get paused =>
      $composableBuilder(column: $table.paused, builder: (column) => column);

  GeneratedColumn<bool> get archived =>
      $composableBuilder(column: $table.archived, builder: (column) => column);

  Expression<T> habitLogsRefs<T extends Object>(
    Expression<T> Function($$HabitLogsTableAnnotationComposer a) f,
  ) {
    final $$HabitLogsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.habitLogs,
      getReferencedColumn: (t) => t.habitId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$HabitLogsTableAnnotationComposer(
            $db: $db,
            $table: $db.habitLogs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$HabitsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $HabitsTable,
          HabitRow,
          $$HabitsTableFilterComposer,
          $$HabitsTableOrderingComposer,
          $$HabitsTableAnnotationComposer,
          $$HabitsTableCreateCompanionBuilder,
          $$HabitsTableUpdateCompanionBuilder,
          (HabitRow, $$HabitsTableReferences),
          HabitRow,
          PrefetchHooks Function({bool habitLogsRefs})
        > {
  $$HabitsTableTableManager(_$AppDatabase db, $HabitsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$HabitsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$HabitsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$HabitsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<int> color = const Value.absent(),
                Value<String> icon = const Value.absent(),
                Value<int> weekdays = const Value.absent(),
                Value<int> targetPerDay = const Value.absent(),
                Value<int?> reminderMinute = const Value.absent(),
                Value<bool> paused = const Value.absent(),
                Value<bool> archived = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => HabitsCompanion(
                createdAt: createdAt,
                updatedAt: updatedAt,
                id: id,
                name: name,
                color: color,
                icon: icon,
                weekdays: weekdays,
                targetPerDay: targetPerDay,
                reminderMinute: reminderMinute,
                paused: paused,
                archived: archived,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required DateTime createdAt,
                required DateTime updatedAt,
                required String id,
                required String name,
                required int color,
                Value<String> icon = const Value.absent(),
                Value<int> weekdays = const Value.absent(),
                Value<int> targetPerDay = const Value.absent(),
                Value<int?> reminderMinute = const Value.absent(),
                Value<bool> paused = const Value.absent(),
                Value<bool> archived = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => HabitsCompanion.insert(
                createdAt: createdAt,
                updatedAt: updatedAt,
                id: id,
                name: name,
                color: color,
                icon: icon,
                weekdays: weekdays,
                targetPerDay: targetPerDay,
                reminderMinute: reminderMinute,
                paused: paused,
                archived: archived,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$HabitsTable, HabitRow>(table),
                  $$HabitsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({habitLogsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (habitLogsRefs) db.habitLogs],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (habitLogsRefs)
                    await $_getPrefetchedDataByColumns<
                      HabitRow,
                      $HabitsTable,
                      HabitLogRow,
                      $HabitLogsTable
                    >(
                      currentTable: table,
                      referencedTable: $$HabitsTableReferences
                          ._habitLogsRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$HabitsTableReferences(db, table, p0).habitLogsRefs,
                      currentColumn: 'id',
                      referencedColumn: 'habit_id',
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$HabitsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $HabitsTable,
      HabitRow,
      $$HabitsTableFilterComposer,
      $$HabitsTableOrderingComposer,
      $$HabitsTableAnnotationComposer,
      $$HabitsTableCreateCompanionBuilder,
      $$HabitsTableUpdateCompanionBuilder,
      (HabitRow, $$HabitsTableReferences),
      HabitRow,
      PrefetchHooks Function({bool habitLogsRefs})
    >;
typedef $$HabitLogsTableCreateCompanionBuilder = HabitLogsCompanion Function({
  required String habitId,
  required int day,
  Value<int> count,
  Value<int> rowid,
});
typedef $$HabitLogsTableUpdateCompanionBuilder = HabitLogsCompanion Function({
  Value<String> habitId,
  Value<int> day,
  Value<int> count,
  Value<int> rowid,
});

final class $$HabitLogsTableReferences
    extends BaseReferences<_$AppDatabase, $HabitLogsTable, HabitLogRow> {
  $$HabitLogsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $HabitsTable _habitIdTable(_$AppDatabase db) =>
      db.habits.createAlias('habit_logs__habit_id__habits__id');

  $$HabitsTableProcessedTableManager get habitId {
    final $_column = $_itemColumn<String>('habit_id')!;

    final manager = $$HabitsTableTableManager(
      $_db,
      $_db.habits,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_habitIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$HabitLogsTableFilterComposer
    extends Composer<_$AppDatabase, $HabitLogsTable> {
  $$HabitLogsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get day => $composableBuilder(
    column: $table.day,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get count => $composableBuilder(
    column: $table.count,
    builder: (column) => ColumnFilters(column),
  );

  $$HabitsTableFilterComposer get habitId {
    final $$HabitsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.habitId,
      referencedTable: $db.habits,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$HabitsTableFilterComposer(
            $db: $db,
            $table: $db.habits,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$HabitLogsTableOrderingComposer
    extends Composer<_$AppDatabase, $HabitLogsTable> {
  $$HabitLogsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get day => $composableBuilder(
    column: $table.day,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get count => $composableBuilder(
    column: $table.count,
    builder: (column) => ColumnOrderings(column),
  );

  $$HabitsTableOrderingComposer get habitId {
    final $$HabitsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.habitId,
      referencedTable: $db.habits,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$HabitsTableOrderingComposer(
            $db: $db,
            $table: $db.habits,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$HabitLogsTableAnnotationComposer
    extends Composer<_$AppDatabase, $HabitLogsTable> {
  $$HabitLogsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get day =>
      $composableBuilder(column: $table.day, builder: (column) => column);

  GeneratedColumn<int> get count =>
      $composableBuilder(column: $table.count, builder: (column) => column);

  $$HabitsTableAnnotationComposer get habitId {
    final $$HabitsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.habitId,
      referencedTable: $db.habits,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$HabitsTableAnnotationComposer(
            $db: $db,
            $table: $db.habits,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$HabitLogsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $HabitLogsTable,
          HabitLogRow,
          $$HabitLogsTableFilterComposer,
          $$HabitLogsTableOrderingComposer,
          $$HabitLogsTableAnnotationComposer,
          $$HabitLogsTableCreateCompanionBuilder,
          $$HabitLogsTableUpdateCompanionBuilder,
          (HabitLogRow, $$HabitLogsTableReferences),
          HabitLogRow,
          PrefetchHooks Function({bool habitId})
        > {
  $$HabitLogsTableTableManager(_$AppDatabase db, $HabitLogsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$HabitLogsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$HabitLogsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$HabitLogsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> habitId = const Value.absent(),
                Value<int> day = const Value.absent(),
                Value<int> count = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => HabitLogsCompanion(
                habitId: habitId,
                day: day,
                count: count,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String habitId,
                required int day,
                Value<int> count = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => HabitLogsCompanion.insert(
                habitId: habitId,
                day: day,
                count: count,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$HabitLogsTable, HabitLogRow>(table),
                  $$HabitLogsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({habitId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (habitId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.habitId,
                        referencedTable: $$HabitLogsTableReferences
                            ._habitIdTable(db),
                        referencedColumn: $$HabitLogsTableReferences
                            ._habitIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$HabitLogsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $HabitLogsTable,
      HabitLogRow,
      $$HabitLogsTableFilterComposer,
      $$HabitLogsTableOrderingComposer,
      $$HabitLogsTableAnnotationComposer,
      $$HabitLogsTableCreateCompanionBuilder,
      $$HabitLogsTableUpdateCompanionBuilder,
      (HabitLogRow, $$HabitLogsTableReferences),
      HabitLogRow,
      PrefetchHooks Function({bool habitId})
    >;
typedef $$KeyValuesTableCreateCompanionBuilder = KeyValuesCompanion Function({
  required String key,
  required String value,
  Value<int> rowid,
});
typedef $$KeyValuesTableUpdateCompanionBuilder = KeyValuesCompanion Function({
  Value<String> key,
  Value<String> value,
  Value<int> rowid,
});

class $$KeyValuesTableFilterComposer
    extends Composer<_$AppDatabase, $KeyValuesTable> {
  $$KeyValuesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get key => $composableBuilder(
    column: $table.key,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnFilters(column),
  );
}

class $$KeyValuesTableOrderingComposer
    extends Composer<_$AppDatabase, $KeyValuesTable> {
  $$KeyValuesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get key => $composableBuilder(
    column: $table.key,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$KeyValuesTableAnnotationComposer
    extends Composer<_$AppDatabase, $KeyValuesTable> {
  $$KeyValuesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get key =>
      $composableBuilder(column: $table.key, builder: (column) => column);

  GeneratedColumn<String> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);
}

class $$KeyValuesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $KeyValuesTable,
          KeyValueRow,
          $$KeyValuesTableFilterComposer,
          $$KeyValuesTableOrderingComposer,
          $$KeyValuesTableAnnotationComposer,
          $$KeyValuesTableCreateCompanionBuilder,
          $$KeyValuesTableUpdateCompanionBuilder,
          (
            KeyValueRow,
            BaseReferences<_$AppDatabase, $KeyValuesTable, KeyValueRow>,
          ),
          KeyValueRow,
          PrefetchHooks Function()
        > {
  $$KeyValuesTableTableManager(_$AppDatabase db, $KeyValuesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$KeyValuesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$KeyValuesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$KeyValuesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> key = const Value.absent(),
            Value<String> value = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) => KeyValuesCompanion(key: key, value: value, rowid: rowid),
          createCompanionCallback: ({
            required String key,
            required String value,
            Value<int> rowid = const Value.absent(),
          }) => KeyValuesCompanion.insert(key: key, value: value, rowid: rowid),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$KeyValuesTable, KeyValueRow>(table),
                  BaseReferences<_$AppDatabase, $KeyValuesTable, KeyValueRow>(
                    db,
                    table,
                    e,
                  ),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$KeyValuesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $KeyValuesTable,
      KeyValueRow,
      $$KeyValuesTableFilterComposer,
      $$KeyValuesTableOrderingComposer,
      $$KeyValuesTableAnnotationComposer,
      $$KeyValuesTableCreateCompanionBuilder,
      $$KeyValuesTableUpdateCompanionBuilder,
      (
        KeyValueRow,
        BaseReferences<_$AppDatabase, $KeyValuesTable, KeyValueRow>,
      ),
      KeyValueRow,
      PrefetchHooks Function()
    >;
typedef $$RecentSearchesTableCreateCompanionBuilder =
    RecentSearchesCompanion Function({
      required String query,
      required DateTime at,
      Value<int> rowid,
    });
typedef $$RecentSearchesTableUpdateCompanionBuilder =
    RecentSearchesCompanion Function({
      Value<String> query,
      Value<DateTime> at,
      Value<int> rowid,
    });

class $$RecentSearchesTableFilterComposer
    extends Composer<_$AppDatabase, $RecentSearchesTable> {
  $$RecentSearchesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get query => $composableBuilder(
    column: $table.query,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get at => $composableBuilder(
    column: $table.at,
    builder: (column) => ColumnFilters(column),
  );
}

class $$RecentSearchesTableOrderingComposer
    extends Composer<_$AppDatabase, $RecentSearchesTable> {
  $$RecentSearchesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get query => $composableBuilder(
    column: $table.query,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get at => $composableBuilder(
    column: $table.at,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$RecentSearchesTableAnnotationComposer
    extends Composer<_$AppDatabase, $RecentSearchesTable> {
  $$RecentSearchesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get query =>
      $composableBuilder(column: $table.query, builder: (column) => column);

  GeneratedColumn<DateTime> get at =>
      $composableBuilder(column: $table.at, builder: (column) => column);
}

class $$RecentSearchesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RecentSearchesTable,
          RecentSearchRow,
          $$RecentSearchesTableFilterComposer,
          $$RecentSearchesTableOrderingComposer,
          $$RecentSearchesTableAnnotationComposer,
          $$RecentSearchesTableCreateCompanionBuilder,
          $$RecentSearchesTableUpdateCompanionBuilder,
          (
            RecentSearchRow,
            BaseReferences<
              _$AppDatabase,
              $RecentSearchesTable,
              RecentSearchRow
            >,
          ),
          RecentSearchRow,
          PrefetchHooks Function()
        > {
  $$RecentSearchesTableTableManager(
    _$AppDatabase db,
    $RecentSearchesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RecentSearchesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RecentSearchesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RecentSearchesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> query = const Value.absent(),
            Value<DateTime> at = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) => RecentSearchesCompanion(query: query, at: at, rowid: rowid),
          createCompanionCallback:
              ({
                required String query,
                required DateTime at,
                Value<int> rowid = const Value.absent(),
              }) => RecentSearchesCompanion.insert(
                query: query,
                at: at,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$RecentSearchesTable, RecentSearchRow>(table),
                  BaseReferences<
                    _$AppDatabase,
                    $RecentSearchesTable,
                    RecentSearchRow
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$RecentSearchesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RecentSearchesTable,
      RecentSearchRow,
      $$RecentSearchesTableFilterComposer,
      $$RecentSearchesTableOrderingComposer,
      $$RecentSearchesTableAnnotationComposer,
      $$RecentSearchesTableCreateCompanionBuilder,
      $$RecentSearchesTableUpdateCompanionBuilder,
      (
        RecentSearchRow,
        BaseReferences<_$AppDatabase, $RecentSearchesTable, RecentSearchRow>,
      ),
      RecentSearchRow,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ProjectsTableTableManager get projects =>
      $$ProjectsTableTableManager(_db, _db.projects);
  $$TasksTableTableManager get tasks =>
      $$TasksTableTableManager(_db, _db.tasks);
  $$ChecklistItemsTableTableManager get checklistItems =>
      $$ChecklistItemsTableTableManager(_db, _db.checklistItems);
  $$LabelsTableTableManager get labels =>
      $$LabelsTableTableManager(_db, _db.labels);
  $$TaskLabelsTableTableManager get taskLabels =>
      $$TaskLabelsTableTableManager(_db, _db.taskLabels);
  $$TaskDependenciesTableTableManager get taskDependencies =>
      $$TaskDependenciesTableTableManager(_db, _db.taskDependencies);
  $$FocusSessionsTableTableManager get focusSessions =>
      $$FocusSessionsTableTableManager(_db, _db.focusSessions);
  $$EventsTableTableManager get events =>
      $$EventsTableTableManager(_db, _db.events);
  $$NotebooksTableTableManager get notebooks =>
      $$NotebooksTableTableManager(_db, _db.notebooks);
  $$NotesTableTableManager get notes =>
      $$NotesTableTableManager(_db, _db.notes);
  $$NoteTagsTableTableManager get noteTags =>
      $$NoteTagsTableTableManager(_db, _db.noteTags);
  $$NoteTaskLinksTableTableManager get noteTaskLinks =>
      $$NoteTaskLinksTableTableManager(_db, _db.noteTaskLinks);
  $$DecksTableTableManager get decks =>
      $$DecksTableTableManager(_db, _db.decks);
  $$FlashcardsTableTableManager get flashcards =>
      $$FlashcardsTableTableManager(_db, _db.flashcards);
  $$CardReviewsTableTableManager get cardReviews =>
      $$CardReviewsTableTableManager(_db, _db.cardReviews);
  $$GoalsTableTableManager get goals =>
      $$GoalsTableTableManager(_db, _db.goals);
  $$GoalEntriesTableTableManager get goalEntries =>
      $$GoalEntriesTableTableManager(_db, _db.goalEntries);
  $$GoalTasksTableTableManager get goalTasks =>
      $$GoalTasksTableTableManager(_db, _db.goalTasks);
  $$HabitsTableTableManager get habits =>
      $$HabitsTableTableManager(_db, _db.habits);
  $$HabitLogsTableTableManager get habitLogs =>
      $$HabitLogsTableTableManager(_db, _db.habitLogs);
  $$KeyValuesTableTableManager get keyValues =>
      $$KeyValuesTableTableManager(_db, _db.keyValues);
  $$RecentSearchesTableTableManager get recentSearches =>
      $$RecentSearchesTableTableManager(_db, _db.recentSearches);
}
