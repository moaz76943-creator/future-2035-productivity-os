// ignore_for_file: recursive_getters

part of '../tables.dart';

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

/// A dated checkpoint of a project (schema v3). Shown in the project and on
/// the calendar; completed milestones count toward project progress.
@DataClassName('MilestoneRow')
class Milestones extends Table with Timestamps {
  TextColumn get id => text()();
  TextColumn get projectId => text().references(Projects, #id, onDelete: KeyAction.cascade)();
  TextColumn get title => text().withLength(min: 1, max: 200)();
  DateTimeColumn get dueAt => dateTime().nullable()();
  BoolColumn get done => boolean().withDefault(const Constant(false))();
  DateTimeColumn get doneAt => dateTime().nullable()();
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
  TextColumn get projectId =>
      text().nullable().references(Projects, #id, onDelete: KeyAction.setNull)();
  @ReferenceName('subtasks')
  TextColumn get parentId =>
      text().nullable().references(Tasks, #id, onDelete: KeyAction.cascade)();
  TextColumn get category => text().withDefault(const Constant(''))();

  /// 0 = none, 1 = low, 2 = medium, 3 = high, 4 = urgent.
  IntColumn get priority =>
      integer().withDefault(const Constant(0)).check(priority.isBetweenValues(0, 4))();
  BoolColumn get done => boolean().withDefault(const Constant(false))();
  DateTimeColumn get completedAt => dateTime().nullable()();

  /// Work state of an open task: `notStarted` | `inProgress` (schema v4).
  /// Completion stays in [done]; archived tasks have [archivedAt] set.
  TextColumn get status => text().withDefault(const Constant('notStarted'))();
  DateTimeColumn get archivedAt => dateTime().nullable()();
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
  TextColumn get taskId => text().references(Tasks, #id, onDelete: KeyAction.cascade)();
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
  TextColumn get taskId => text().references(Tasks, #id, onDelete: KeyAction.cascade)();
  TextColumn get labelId => text().references(Labels, #id, onDelete: KeyAction.cascade)();

  @override
  Set<Column> get primaryKey => {taskId, labelId};
}

class TaskDependencies extends Table {
  TextColumn get taskId => text().references(Tasks, #id, onDelete: KeyAction.cascade)();
  @ReferenceName('dependentLinks')
  TextColumn get dependsOnId => text().references(Tasks, #id, onDelete: KeyAction.cascade)();

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
  TextColumn get taskId => text().nullable().references(Tasks, #id, onDelete: KeyAction.setNull)();
  TextColumn get projectId =>
      text().nullable().references(Projects, #id, onDelete: KeyAction.setNull)();
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
  TextColumn get taskId => text().nullable().references(Tasks, #id, onDelete: KeyAction.setNull)();
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
  TextColumn get notebookId =>
      text().nullable().references(Notebooks, #id, onDelete: KeyAction.setNull)();
  TextColumn get projectId =>
      text().nullable().references(Projects, #id, onDelete: KeyAction.setNull)();
  TextColumn get category => text().withDefault(const Constant(''))();
  BoolColumn get pinned => boolean().withDefault(const Constant(false))();
  BoolColumn get favorite => boolean().withDefault(const Constant(false))();
  BoolColumn get archived => boolean().withDefault(const Constant(false))();
  DateTimeColumn get deletedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

class NoteTags extends Table {
  TextColumn get noteId => text().references(Notes, #id, onDelete: KeyAction.cascade)();
  TextColumn get tag => text()();

  @override
  Set<Column> get primaryKey => {noteId, tag};
}

/// Pictures in notes (schema v8). The note text refers to one with a line
/// `![](img:<id>)`. Kept in the database so backups include them.
class NoteImages extends Table {
  TextColumn get id => text()();
  TextColumn get noteId => text().references(Notes, #id, onDelete: KeyAction.cascade)();
  TextColumn get mime => text().withDefault(const Constant('image/jpeg'))();
  BlobColumn get bytes => blob()();
  DateTimeColumn get createdAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}

class NoteTaskLinks extends Table {
  TextColumn get noteId => text().references(Notes, #id, onDelete: KeyAction.cascade)();
  TextColumn get taskId => text().references(Tasks, #id, onDelete: KeyAction.cascade)();

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
  IntColumn get dailyReviewTarget => integer().withDefault(const Constant(50))();

  /// BCP-47 speech languages of the front and back ('' = app language). v5.
  TextColumn get frontLang => text().withDefault(const Constant(''))();
  TextColumn get backLang => text().withDefault(const Constant(''))();
  DateTimeColumn get deletedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('CardRow')
class Flashcards extends Table with Timestamps {
  TextColumn get id => text()();
  TextColumn get deckId => text().references(Decks, #id, onDelete: KeyAction.cascade)();
  TextColumn get front => text()();
  TextColumn get back => text()();
  TextColumn get tags => text().withDefault(const Constant(''))();

  /// Optional fields (example, explanation, pronunciation, notes) as JSON; see
  /// CardExtras. Added in schema v2.
  TextColumn get extra => text().withDefault(const Constant(''))();

  /// Hand-made order (drag to reorder). 0 = not moved yet: the card sorts by
  /// its creation time, so new cards land at the end. v9.
  IntColumn get position => integer().withDefault(const Constant(0))();

  /// new | learning | review | relearning
  TextColumn get state => text().withDefault(const Constant('new'))();

  /// Ease factor ×1000 (SM-2 style), starts at 2500.
  IntColumn get ease => integer().withDefault(const Constant(2500))();
  IntColumn get intervalDays => integer().withDefault(const Constant(0))();
  IntColumn get repetitions => integer().withDefault(const Constant(0))();
  IntColumn get lapses => integer().withDefault(const Constant(0))();
  IntColumn get learningStep => integer().withDefault(const Constant(0))();
  DateTimeColumn get dueAt => dateTime().nullable()();

  /// Suspended cards stay in the deck but are never scheduled. v5.
  BoolColumn get suspended => boolean().withDefault(const Constant(false))();

  /// FSRS-4.5 memory state (v6): stability in days, difficulty 1–10, and the
  /// moment of the last review (for recall probability). 0 / null = new.
  RealColumn get stability => real().withDefault(const Constant(0))();
  RealColumn get difficulty => real().withDefault(const Constant(0))();
  DateTimeColumn get lastReviewAt => dateTime().nullable()();

  /// Marked as favourite by the user. v6.
  BoolColumn get favorite => boolean().withDefault(const Constant(false))();

  /// Values of the deck's custom fields as JSON {fieldId: text}. v7.
  TextColumn get custom => text().withDefault(const Constant(''))();
  DateTimeColumn get deletedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

/// Image or audio attached to one side of a card. Stored inside the
/// encrypted database (so it is protected and included in backups). v7.
@DataClassName('CardMediaRow')
class CardMedia extends Table {
  TextColumn get id => text()();
  TextColumn get cardId => text().references(Flashcards, #id, onDelete: KeyAction.cascade)();

  /// front | back
  TextColumn get side => text()();

  /// image | audio
  TextColumn get kind => text()();
  TextColumn get mime => text().withDefault(const Constant(''))();
  TextColumn get name => text().withDefault(const Constant(''))();
  BlobColumn get bytes => blob()();
  DateTimeColumn get createdAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('ReviewRow')
class CardReviews extends Table {
  TextColumn get id => text()();
  TextColumn get cardId => text().references(Flashcards, #id, onDelete: KeyAction.cascade)();
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
