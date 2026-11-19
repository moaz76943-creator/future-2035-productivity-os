// ignore_for_file: recursive_getters

part of '../tables.dart';

@DataClassName('GoalRow')
class Goals extends Table with Timestamps {
  TextColumn get id => text()();
  TextColumn get title => text().withLength(min: 1, max: 300)();
  TextColumn get description => text().withDefault(const Constant(''))();

  /// daily | weekly | monthly | longTerm
  TextColumn get period => text()();
  RealColumn get target => real().withDefault(const Constant(1))();
  TextColumn get unit => text().withDefault(const Constant(''))();

  /// active | paused | achieved
  TextColumn get status => text().withDefault(const Constant('active'))();
  DateTimeColumn get dueDate => dateTime().nullable()();
  TextColumn get projectId =>
      text().nullable().references(Projects, #id, onDelete: KeyAction.setNull)();
  DateTimeColumn get deletedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('GoalEntryRow')
class GoalEntries extends Table {
  TextColumn get id => text()();
  TextColumn get goalId => text().references(Goals, #id, onDelete: KeyAction.cascade)();
  RealColumn get amount => real()();
  DateTimeColumn get at => dateTime()();
  TextColumn get note => text().withDefault(const Constant(''))();

  @override
  Set<Column> get primaryKey => {id};
}

class GoalTasks extends Table {
  TextColumn get goalId => text().references(Goals, #id, onDelete: KeyAction.cascade)();
  TextColumn get taskId => text().references(Tasks, #id, onDelete: KeyAction.cascade)();

  @override
  Set<Column> get primaryKey => {goalId, taskId};
}

@DataClassName('HabitRow')
class Habits extends Table with Timestamps {
  TextColumn get id => text()();
  TextColumn get name => text().withLength(min: 1, max: 200)();
  IntColumn get color => integer()();
  TextColumn get icon => text().withDefault(const Constant('spark'))();

  /// Bit mask, bit 0 = Monday … bit 6 = Sunday. 127 = every day.
  IntColumn get weekdays => integer().withDefault(const Constant(127))();
  IntColumn get targetPerDay => integer().withDefault(const Constant(1))();

  /// Minutes after midnight, local time.
  IntColumn get reminderMinute => integer().nullable()();
  BoolColumn get paused => boolean().withDefault(const Constant(false))();
  BoolColumn get archived => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('HabitLogRow')
class HabitLogs extends Table {
  TextColumn get habitId => text().references(Habits, #id, onDelete: KeyAction.cascade)();

  /// Local calendar day encoded as yyyymmdd.
  IntColumn get day => integer()();
  IntColumn get count => integer().withDefault(const Constant(1))();

  @override
  Set<Column> get primaryKey => {habitId, day};
}

@DataClassName('KeyValueRow')
class KeyValues extends Table {
  TextColumn get key => text()();
  TextColumn get value => text()();

  @override
  Set<Column> get primaryKey => {key};
}

@DataClassName('RecentSearchRow')
class RecentSearches extends Table {
  TextColumn get query => text()();
  DateTimeColumn get at => dateTime()();

  @override
  Set<Column> get primaryKey => {query};
}
