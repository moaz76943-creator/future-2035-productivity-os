import 'package:drift/drift.dart';

import '../../../core/database/app_database.dart';
import '../../../core/ids.dart';
import '../../../core/recurrence/recurrence_rule.dart';
import '../../../core/time/clock.dart';

part 'tasks_repository/task_status.dart';
part 'tasks_repository/relations.dart';

enum TaskView { today, upcoming, all, completed, overdue, inbox, archived }

enum TaskSort { smart, dueDate, priority, created, title }

/// Owns the `tasks`, `checklist_items`, `labels`, `task_labels` and
/// `task_dependencies` tables.
class TasksRepository {
  TasksRepository(this._db, this._clock);
  final AppDatabase _db;
  final Clock _clock;

  void _validate(TaskDraft d) {
    final t = d.title.trim();
    if (t.isEmpty) throw const TaskValidationException('titleRequired');
    if (t.length > 500) throw const TaskValidationException('titleTooLong');
    if (d.startAt != null && d.dueAt != null && d.startAt!.isAfter(d.dueAt!)) {
      throw const TaskValidationException('startAfterDue');
    }
    if (d.recurrence != null && RecurrenceRule.tryParse(d.recurrence) == null) {
      throw const TaskValidationException('invalidRecurrence');
    }
  }

  Future<String> create(TaskDraft d) async {
    _validate(d);
    final now = _clock.nowUtc();
    final id = newId();
    await _db
        .into(_db.tasks)
        .insert(
          TasksCompanion.insert(
            id: id,
            title: d.title.trim(),
            description: Value(d.description),
            notes: Value(d.notes),
            projectId: Value(d.projectId),
            parentId: Value(d.parentId),
            category: Value(d.category.trim()),
            priority: Value(d.priority),
            startAt: Value(d.startAt?.toUtc()),
            dueAt: Value(d.dueAt?.toUtc()),
            dueHasTime: Value(d.dueHasTime),
            reminderAt: Value(d.reminderAt?.toUtc()),
            recurrence: Value(d.recurrence),
            estimateMinutes: Value(d.estimateMinutes),
            sortOrder: Value(now.millisecondsSinceEpoch ~/ 1000),
            createdAt: now,
            updatedAt: now,
          ),
        );
    return id;
  }

  Future<void> update(String id, TaskDraft d) async {
    _validate(d);
    await (_db.update(_db.tasks)..where((t) => t.id.equals(id))).write(
      TasksCompanion(
        title: Value(d.title.trim()),
        description: Value(d.description),
        notes: Value(d.notes),
        projectId: Value(d.projectId),
        category: Value(d.category.trim()),
        priority: Value(d.priority),
        startAt: Value(d.startAt?.toUtc()),
        dueAt: Value(d.dueAt?.toUtc()),
        dueHasTime: Value(d.dueHasTime),
        reminderAt: Value(d.reminderAt?.toUtc()),
        recurrence: Value(d.recurrence),
        estimateMinutes: Value(d.estimateMinutes),
        updatedAt: Value(_clock.nowUtc()),
      ),
    );
  }

  Future<TaskRow?> byId(String id) =>
      (_db.select(_db.tasks)..where((t) => t.id.equals(id))).getSingleOrNull();

  Stream<TaskRow?> watchById(String id) =>
      (_db.select(_db.tasks)..where((t) => t.id.equals(id))).watchSingleOrNull();

  /// Completes a task. For recurring tasks a single transaction marks this
  /// instance done and creates the next instance, so a double tap can never
  /// spawn two successors (the second call sees `done == true`).
  Future<String?> complete(String id) {
    return _db.transaction(() async {
      final task = await byId(id);
      if (task == null || task.done || task.deletedAt != null) return null;
      final now = _clock.nowUtc();
      await (_db.update(_db.tasks)..where((t) => t.id.equals(id))).write(
        TasksCompanion(done: const Value(true), completedAt: Value(now), updatedAt: Value(now)),
      );
      final rule = RecurrenceRule.tryParse(task.recurrence);
      final due = task.dueAt;
      if (rule == null || due == null) return null;
      final next = rule.nextAfter(due.toLocal(), due.toLocal());
      if (next == null) return null;
      final shift = next.difference(due.toLocal());
      final nextId = newId();
      await _db
          .into(_db.tasks)
          .insert(
            TasksCompanion.insert(
              id: nextId,
              title: task.title,
              description: Value(task.description),
              notes: Value(task.notes),
              projectId: Value(task.projectId),
              category: Value(task.category),
              priority: Value(task.priority),
              startAt: Value(task.startAt?.add(shift)),
              dueAt: Value(next.toUtc()),
              dueHasTime: Value(task.dueHasTime),
              reminderAt: Value(task.reminderAt?.add(shift)),
              recurrence: Value(_decrementCount(rule)),
              estimateMinutes: Value(task.estimateMinutes),
              sortOrder: Value(task.sortOrder),
              createdAt: now,
              updatedAt: now,
            ),
          );
      final items = await (_db.select(_db.checklistItems)..where((c) => c.taskId.equals(id))).get();
      for (final item in items) {
        await _db
            .into(_db.checklistItems)
            .insert(
              ChecklistItemsCompanion.insert(
                id: newId(),
                taskId: nextId,
                label: item.label,
                position: Value(item.position),
              ),
            );
      }
      return nextId;
    });
  }

  String? _decrementCount(RecurrenceRule r) {
    final c = r.count;
    if (c == null) return r.toString();
    if (c <= 1) return null;
    return RecurrenceRule(
      frequency: r.frequency,
      interval: r.interval,
      weekdays: r.weekdays,
      count: c - 1,
      until: r.until,
    ).toString();
  }

  Future<void> reopen(String id) async {
    await (_db.update(_db.tasks)..where((t) => t.id.equals(id))).write(
      TasksCompanion(
        done: const Value(false),
        completedAt: const Value(null),
        updatedAt: Value(_clock.nowUtc()),
      ),
    );
  }

  /// Moves a task (and its subtasks) to the trash.
  Future<void> softDelete(String id) async {
    final now = _clock.nowUtc();
    await _db.transaction(() async {
      await (_db.update(_db.tasks)..where((t) => t.id.equals(id) | t.parentId.equals(id))).write(
        TasksCompanion(deletedAt: Value(now), updatedAt: Value(now)),
      );
    });
  }

  /// Marks an open task as being worked on (or back to not started).
  Future<void> setInProgress(String id, bool inProgress) async {
    await (_db.update(_db.tasks)..where((t) => t.id.equals(id))).write(
      TasksCompanion(
        status: Value(inProgress ? TaskStatus.inProgress : TaskStatus.notStarted),
        updatedAt: Value(_clock.nowUtc()),
      ),
    );
  }

  /// Hides a task (and its subtasks) from every view, reminder and count
  /// without deleting it. Idempotent.
  Future<void> archive(String id) async {
    final now = _clock.nowUtc();
    await (_db.update(_db.tasks)
          ..where((t) => (t.id.equals(id) | t.parentId.equals(id)) & t.archivedAt.isNull()))
        .write(TasksCompanion(archivedAt: Value(now), updatedAt: Value(now)));
  }

  Future<void> unarchive(String id) async {
    await (_db.update(_db.tasks)..where((t) => t.id.equals(id) | t.parentId.equals(id))).write(
      TasksCompanion(archivedAt: const Value(null), updatedAt: Value(_clock.nowUtc())),
    );
  }

  Future<void> restore(String id) async {
    await (_db.update(_db.tasks)..where((t) => t.id.equals(id) | t.parentId.equals(id))).write(
      TasksCompanion(deletedAt: const Value(null), updatedAt: Value(_clock.nowUtc())),
    );
  }

  Future<void> purge(String id) => (_db.delete(_db.tasks)..where((t) => t.id.equals(id))).go();

  Stream<List<TaskRow>> watchTrash() =>
      (_db.select(_db.tasks)
            ..where((t) => t.deletedAt.isNotNull())
            ..orderBy([(t) => OrderingTerm.desc(t.deletedAt)]))
          .watch();

  /// Top-level tasks for a view. Subtasks are loaded with [watchSubtasks].
  Stream<List<TaskRow>> watch(TaskFilter f) {
    final now = _clock.now();
    final startToday = Days.startOfDay(now).toUtc();
    final startTomorrow = Days.addDays(Days.startOfDay(now), 1).toUtc();
    final q = _db.select(_db.tasks)..where((t) => t.deletedAt.isNull() & t.parentId.isNull());
    if (f.view == TaskView.archived) {
      q.where((t) => t.archivedAt.isNotNull());
    } else {
      q.where((t) => t.archivedAt.isNull());
    }

    switch (f.view) {
      case TaskView.today:
        q.where((t) => t.done.equals(false) & t.dueAt.isSmallerThanValue(startTomorrow));
      case TaskView.upcoming:
        q.where((t) => t.done.equals(false) & t.dueAt.isBiggerOrEqualValue(startTomorrow));
      case TaskView.overdue:
        q.where((t) => t.done.equals(false) & t.dueAt.isSmallerThanValue(startToday));
      case TaskView.completed:
        q.where((t) => t.done.equals(true));
      case TaskView.all:
        q.where((t) => t.done.equals(false));
      case TaskView.inbox:
        q.where((t) => t.done.equals(false) & t.projectId.isNull() & t.dueAt.isNull());
      case TaskView.archived:
        break;
    }
    if (f.projectId case final p?) q.where((t) => t.projectId.equals(p));
    if (f.minPriority case final p?) {
      q.where((t) => t.priority.isBiggerOrEqualValue(p));
    }
    if (f.category case final c?) q.where((t) => t.category.equals(c));
    if (f.labelId case final l?) {
      q.where(
        (t) => existsQuery(
          _db.select(_db.taskLabels)
            ..where((tl) => tl.taskId.equalsExp(t.id) & tl.labelId.equals(l)),
        ),
      );
    }

    q.orderBy(switch (f.sort) {
      TaskSort.smart when f.view == TaskView.completed => [(t) => OrderingTerm.desc(t.completedAt)],
      TaskSort.smart when f.view == TaskView.archived => [(t) => OrderingTerm.desc(t.archivedAt)],
      TaskSort.smart => [
        (t) => OrderingTerm(expression: t.dueAt.isNull(), mode: OrderingMode.asc),
        (t) => OrderingTerm.asc(t.dueAt),
        (t) => OrderingTerm.desc(t.priority),
        (t) => OrderingTerm.asc(t.sortOrder),
      ],
      TaskSort.dueDate => [
        (t) => OrderingTerm(expression: t.dueAt.isNull(), mode: OrderingMode.asc),
        (t) => OrderingTerm.asc(t.dueAt),
      ],
      TaskSort.priority => [(t) => OrderingTerm.desc(t.priority), (t) => OrderingTerm.asc(t.dueAt)],
      TaskSort.created => [(t) => OrderingTerm.desc(t.createdAt)],
      TaskSort.title => [(t) => OrderingTerm.asc(t.title)],
    });
    return q.watch();
  }

  Stream<List<TaskRow>> watchSubtasks(String parentId) =>
      (_db.select(_db.tasks)
            ..where((t) => t.parentId.equals(parentId) & t.deletedAt.isNull())
            ..orderBy([(t) => OrderingTerm.asc(t.createdAt)]))
          .watch();

  Stream<List<TaskRow>> watchForDay(DateTime day) {
    final s = Days.startOfDay(day).toUtc();
    final e = Days.addDays(Days.startOfDay(day), 1).toUtc();
    return (_db.select(_db.tasks)..where(
          (t) =>
              t.deletedAt.isNull() &
              t.archivedAt.isNull() &
              t.dueAt.isBiggerOrEqualValue(s) &
              t.dueAt.isSmallerThanValue(e),
        ))
        .watch();
  }

  Stream<List<TaskRow>> watchDueBetween(DateTime from, DateTime to) =>
      (_db.select(_db.tasks)..where(
            (t) =>
                t.deletedAt.isNull() &
                t.archivedAt.isNull() &
                t.dueAt.isBiggerOrEqualValue(from.toUtc()) &
                t.dueAt.isSmallerThanValue(to.toUtc()),
          ))
          .watch();

  Stream<List<String>> watchCategories() {
    final q = _db.selectOnly(_db.tasks, distinct: true)
      ..addColumns([_db.tasks.category])
      ..where(_db.tasks.category.equals('').not() & _db.tasks.deletedAt.isNull());
    return q.watch().map((rows) => rows.map((r) => r.read(_db.tasks.category)!).toList()..sort());
  }
}
