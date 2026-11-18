// ignore_for_file: recursive_getters
// Drift column checks reference the column itself by design.

import 'package:drift/drift.dart';

/// All primary keys are client-generated UUID v4 strings so that records
/// remain globally unique if optional synchronization is added later.
///
/// Soft deletion (`deletedAt`) is used for user content so that deletes are
/// recoverable from the trash. Hard deletion happens only when the user
/// empties the trash or erases all data.

mixin Timestamps on Table {
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
}

@DataClassName('ProjectRow')
class Projects extends Table with Timestamps {
  TextColumn get id => text()();
  TextColumn get name => text().withLength(min: 1, max: 200)();
  TextColumn get description => text().withDefault(const Constant(''))();
  IntColumn get color => integer()();
  TextColumn get icon => text().withDefault(const Constant('spark'))();
  TextColumn get goal => text().withDefault(const Constant(''))();
  DateTimeColumn get deadline => dateTime().nullable()();
  TextColumn get notes => text().withDefault(const Constant(''))();
  BoolColumn get archived => boolean().withDefault(const Constant(false))();
  DateTimeColumn get deletedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('TaskRow')
class Tasks extends Table with Timestamps {
  TextColumn get id => text()();
  TextColumn get title => text().withLength(min: 1, max: 500)();
  TextColumn get description => text().withDefault(const Constant(''))();
  TextColumn get notes => text().withDefault(const Constant(''))();
  TextColumn get projectId => text().nullable().references(
    Projects,
    #id,
    onDelete: KeyAction.setNull,
  )();
  @ReferenceName('subtasks')
  TextColumn get parentId =>
      text().nullable().references(Tasks, #id, onDelete: KeyAction.cascade)();
  TextColumn get category => text().withDefault(const Constant(''))();

  /// 0 = none, 1 = low, 2 = medium, 3 = high, 4 = urgent.
  IntColumn get priority => integer()
      .withDefault(const Constant(0))
      .check(priority.isBetweenValues(0, 4))();
  BoolColumn get done => boolean().withDefault(const Constant(false))();
  DateTimeColumn get completedAt => dateTime().nullable()();
  DateTimeColumn get startAt => dateTime().nullable()();
  DateTimeColumn get dueAt => dateTime().nullable()();

  /// True when [dueAt] carries a meaningful time of day.
  BoolColumn get dueHasTime => boolean().withDefault(const Constant(false))();
  DateTimeColumn get reminderAt => dateTime().nullable()();

  /// RFC 5545 RRULE subset, see `core/recurrence/recurrence_rule.dart`.
  TextColumn get recurrence => text().nullable()();
  IntColumn get estimateMinutes => integer().nullable()();
  IntColumn get sortOrder => integer().withDefault(const Constant(0))();
  DateTimeColumn get deletedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('ChecklistItemRow')
class ChecklistItems extends Table {
  TextColumn get id => text()();
  TextColumn get taskId =>
      text().references(Tasks, #id, onDelete: KeyAction.cascade)();
  TextColumn get label => text()();
  BoolColumn get done => boolean().withDefault(const Constant(false))();
  IntColumn get position => integer().withDefault(const Constant(0))();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('LabelRow')
class Labels extends Table {
  TextColumn get id => text()();
  TextColumn get name => text().unique()();
  IntColumn get color => integer()();

  @override
  Set<Column> get primaryKey => {id};
}

class TaskLabels extends Table {
  TextColumn get taskId =>
      text().references(Tasks, #id, onDelete: KeyAction.cascade)();
  TextColumn get labelId =>
      text().references(Labels, #id, onDelete: KeyAction.cascade)();

  @override
  Set<Column> get primaryKey => {taskId, labelId};
}

class TaskDependencies extends Table {
  TextColumn get taskId =>
      text().references(Tasks, #id, onDelete: KeyAction.cascade)();
  @ReferenceName('dependentLinks')
  TextColumn get dependsOnId =>
      text().references(Tasks, #id, onDelete: KeyAction.cascade)();

  @override
  Set<Column> get primaryKey => {taskId, dependsOnId};
}

/// A completed or interrupted focus session. Running sessions are never
/// written here; the live timer state lives in [KeyValues] so that a
/// session is recorded exactly once, when it ends.
@DataClassName('FocusSessionRow')
class FocusSessions extends Table {
  TextColumn get id => text()();

  /// pomodoro | countdown | countup | open
  TextColumn get mode => text()();

  /// work | shortBreak | longBreak
  TextColumn get phase => text().withDefault(const Constant('work'))();
  IntColumn get plannedSeconds => integer().nullable()();
  IntColumn get activeSeconds => integer()();
  DateTimeColumn get startedAt => dateTime()();
  DateTimeColumn get endedAt => dateTime()();

  /// completed | interrupted
  TextColumn get outcome => text()();
  TextColumn get taskId =>
      text().nullable().references(Tasks, #id, onDelete: KeyAction.setNull)();
  TextColumn get projectId => text().nullable().references(
    Projects,
    #id,
    onDelete: KeyAction.setNull,
  )();
  TextColumn get note => text().withDefault(const Constant(''))();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('EventRow')
class Events extends Table with Timestamps {
  TextColumn get id => text()();
  TextColumn get title => text().withLength(min: 1, max: 300)();
  TextColumn get description => text().withDefault(const Constant(''))();

  /// Stored in UTC.
  DateTimeColumn get startAt => dateTime()();
  DateTimeColumn get endAt => dateTime()();
  BoolColumn get allDay => boolean().withDefault(const Constant(false))();

  /// IANA zone the event was created in; recurrence expands in this zone.
  TextColumn get timeZone => text().withDefault(const Constant('UTC'))();

  /// event | timeBlock | focus | goal
  TextColumn get kind => text().withDefault(const Constant('event'))();
  TextColumn get recurrence => text().nullable()();
  IntColumn get reminderMinutes => integer().nullable()();
  TextColumn get taskId =>
      text().nullable().references(Tasks, #id, onDelete: KeyAction.setNull)();
  IntColumn get color => integer().nullable()();
  DateTimeColumn get deletedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('NotebookRow')
class Notebooks extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  IntColumn get color => integer()();
  DateTimeColumn get createdAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('NoteRow')
class Notes extends Table with Timestamps {
  TextColumn get id => text()();
  TextColumn get title => text().withDefault(const Constant(''))();

  /// Lightweight Markdown subset (headings, lists, checklists, bold,
  /// italic, links, [[note links]]).
  TextColumn get body => text().withDefault(const Constant(''))();
  TextColumn get notebookId => text().nullable().references(
    Notebooks,
    #id,
    onDelete: KeyAction.setNull,
  )();
  TextColumn get projectId => text().nullable().references(
    Projects,
    #id,
    onDelete: KeyAction.setNull,
  )();
  TextColumn get category => text().withDefault(const Constant(''))();
  BoolColumn get pinned => boolean().withDefault(const Constant(false))();
  BoolColumn get favorite => boolean().withDefault(const Constant(false))();
  BoolColumn get archived => boolean().withDefault(const Constant(false))();
  DateTimeColumn get deletedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

class NoteTags extends Table {
  TextColumn get noteId =>
      text().references(Notes, #id, onDelete: KeyAction.cascade)();
  TextColumn get tag => text()();

  @override
  Set<Column> get primaryKey => {noteId, tag};
}

class NoteTaskLinks extends Table {
  TextColumn get noteId =>
      text().references(Notes, #id, onDelete: KeyAction.cascade)();
  TextColumn get taskId =>
      text().references(Tasks, #id, onDelete: KeyAction.cascade)();

  @override
  Set<Column> get primaryKey => {noteId, taskId};
}

@DataClassName('DeckRow')
class Decks extends Table with Timestamps {
  TextColumn get id => text()();
  TextColumn get name => text().withLength(min: 1, max: 200)();
  TextColumn get description => text().withDefault(const Constant(''))();
  TextColumn get category => text().withDefault(const Constant(''))();
  IntColumn get color => integer()();
  IntColumn get dailyNewLimit => integer().withDefault(const Constant(20))();
  IntColumn get dailyReviewTarget =>
      integer().withDefault(const Constant(50))();
  DateTimeColumn get deletedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('CardRow')
class Flashcards extends Table with Timestamps {
  TextColumn get id => text()();
  TextColumn get deckId =>
      text().references(Decks, #id, onDelete: KeyAction.cascade)();
  TextColumn get front => text()();
  TextColumn get back => text()();
  TextColumn get tags => text().withDefault(const Constant(''))();

  /// Optional fields (example, explanation, pronunciation, notes) as JSON; see
  /// CardExtras. Added in schema v2.
  TextColumn get extra => text().withDefault(const Constant(''))();

  /// new | learning | review | relearning
  TextColumn get state => text().withDefault(const Constant('new'))();

  /// Ease factor ×1000 (SM-2 style), starts at 2500.
  IntColumn get ease => integer().withDefault(const Constant(2500))();
  IntColumn get intervalDays => integer().withDefault(const Constant(0))();
  IntColumn get repetitions => integer().withDefault(const Constant(0))();
  IntColumn get lapses => integer().withDefault(const Constant(0))();
  IntColumn get learningStep => integer().withDefault(const Constant(0))();
  DateTimeColumn get dueAt => dateTime().nullable()();
  DateTimeColumn get deletedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('ReviewRow')
class CardReviews extends Table {
  TextColumn get id => text()();
  TextColumn get cardId =>
      text().references(Flashcards, #id, onDelete: KeyAction.cascade)();
  DateTimeColumn get reviewedAt => dateTime()();

  /// 1 = again, 2 = hard, 3 = good, 4 = easy
  IntColumn get rating => integer().check(rating.isBetweenValues(1, 4))();
  TextColumn get stateBefore => text()();
  IntColumn get intervalBefore => integer()();
  IntColumn get intervalAfter => integer()();
  IntColumn get easeBefore => integer()();
  IntColumn get easeAfter => integer()();

  @override
  Set<Column> get primaryKey => {id};
}

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
  TextColumn get projectId => text().nullable().references(
    Projects,
    #id,
    onDelete: KeyAction.setNull,
  )();
  DateTimeColumn get deletedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('GoalEntryRow')
class GoalEntries extends Table {
  TextColumn get id => text()();
  TextColumn get goalId =>
      text().references(Goals, #id, onDelete: KeyAction.cascade)();
  RealColumn get amount => real()();
  DateTimeColumn get at => dateTime()();
  TextColumn get note => text().withDefault(const Constant(''))();

  @override
  Set<Column> get primaryKey => {id};
}

class GoalTasks extends Table {
  TextColumn get goalId =>
      text().references(Goals, #id, onDelete: KeyAction.cascade)();
  TextColumn get taskId =>
      text().references(Tasks, #id, onDelete: KeyAction.cascade)();

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
  TextColumn get habitId =>
      text().references(Habits, #id, onDelete: KeyAction.cascade)();

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
