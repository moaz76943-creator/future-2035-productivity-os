import 'dart:async';

import 'package:drift/drift.dart';

import '../../../core/database/app_database.dart';
import '../../../core/ids.dart';
import '../../../core/time/clock.dart';

enum GoalPeriod { daily, weekly, monthly, longTerm }

enum GoalStatus { active, paused, achieved }

class GoalProgress {
  const GoalProgress({required this.current, required this.target});
  final double current;
  final double target;
  double get ratio => target <= 0 ? 0 : (current / target).clamp(0.0, 1.0);
  bool get reached => current >= target && target > 0;
}

/// Owns `goals`, `goal_entries` and `goal_tasks`.
///
/// Progress for a goal is the sum of its entries inside the current period
/// window (today / this week / this month / all time) plus one unit per
/// linked task completed inside that window.
class GoalsRepository {
  GoalsRepository(this._db, this._clock);
  final AppDatabase _db;
  final Clock _clock;

  static (DateTime?, DateTime?) periodWindow(GoalPeriod p, DateTime now) {
    switch (p) {
      case GoalPeriod.daily:
        final s = Days.startOfDay(now);
        return (s, Days.addDays(s, 1));
      case GoalPeriod.weekly:
        final s = Days.startOfWeek(now);
        return (s, Days.addDays(s, 7));
      case GoalPeriod.monthly:
        final s = Days.startOfMonth(now);
        return (s, DateTime(s.year, s.month + 1));
      case GoalPeriod.longTerm:
        return (null, null);
    }
  }

  Future<String> create({
    required String title,
    required GoalPeriod period,
    double target = 1,
    String unit = '',
    String description = '',
    DateTime? dueDate,
    String? projectId,
  }) async {
    if (title.trim().isEmpty) throw ArgumentError('title');
    if (target <= 0) throw ArgumentError('target');
    final id = newId();
    final now = _clock.nowUtc();
    await _db
        .into(_db.goals)
        .insert(
          GoalsCompanion.insert(
            id: id,
            title: title.trim(),
            period: period.name,
            target: Value(target),
            unit: Value(unit),
            description: Value(description),
            dueDate: Value(dueDate?.toUtc()),
            projectId: Value(projectId),
            createdAt: now,
            updatedAt: now,
          ),
        );
    return id;
  }

  Future<void> update(
    String id, {
    required String title,
    required GoalPeriod period,
    required double target,
    required String unit,
    required String description,
    DateTime? dueDate,
  }) => (_db.update(_db.goals)..where((g) => g.id.equals(id))).write(
    GoalsCompanion(
      title: Value(title.trim()),
      period: Value(period.name),
      target: Value(target),
      unit: Value(unit),
      description: Value(description),
      dueDate: Value(dueDate?.toUtc()),
      updatedAt: Value(_clock.nowUtc()),
    ),
  );

  Future<void> setStatus(String id, GoalStatus status) =>
      (_db.update(_db.goals)..where((g) => g.id.equals(id))).write(
        GoalsCompanion(
          status: Value(status.name),
          updatedAt: Value(_clock.nowUtc()),
        ),
      );

  Future<void> softDelete(String id) =>
      (_db.update(_db.goals)..where((g) => g.id.equals(id))).write(
        GoalsCompanion(deletedAt: Value(_clock.nowUtc())),
      );

  Future<void> restore(String id) =>
      (_db.update(_db.goals)..where((g) => g.id.equals(id))).write(
        const GoalsCompanion(deletedAt: Value(null)),
      );

  Future<void> addEntry(String goalId, double amount, {String note = ''}) => _db
      .into(_db.goalEntries)
      .insert(
        GoalEntriesCompanion.insert(
          id: newId(),
          goalId: goalId,
          amount: amount,
          at: _clock.nowUtc(),
          note: Value(note),
        ),
      );

  Future<void> deleteEntry(String id) =>
      (_db.delete(_db.goalEntries)..where((e) => e.id.equals(id))).go();

  Stream<List<GoalEntryRow>> watchEntries(String goalId) =>
      (_db.select(_db.goalEntries)
            ..where((e) => e.goalId.equals(goalId))
            ..orderBy([(e) => OrderingTerm.desc(e.at)]))
          .watch();

  Future<void> linkTask(String goalId, String taskId) => _db
      .into(_db.goalTasks)
      .insertOnConflictUpdate(
        GoalTasksCompanion.insert(goalId: goalId, taskId: taskId),
      );

  Future<void> unlinkTask(String goalId, String taskId) => (_db.delete(
    _db.goalTasks,
  )..where((g) => g.goalId.equals(goalId) & g.taskId.equals(taskId))).go();

  Stream<List<TaskRow>> watchLinkedTasks(String goalId) {
    final q =
        _db.select(_db.tasks).join([
          innerJoin(
            _db.goalTasks,
            _db.goalTasks.taskId.equalsExp(_db.tasks.id),
          ),
        ])..where(
          _db.goalTasks.goalId.equals(goalId) & _db.tasks.deletedAt.isNull(),
        );
    return q.watch().map((r) => r.map((e) => e.readTable(_db.tasks)).toList());
  }

  Stream<List<GoalRow>> watchGoals({GoalStatus? status}) {
    final q = _db.select(_db.goals)..where((g) => g.deletedAt.isNull());
    if (status != null) q.where((g) => g.status.equals(status.name));
    q.orderBy([
      (g) => OrderingTerm.asc(g.status),
      (g) => OrderingTerm.asc(g.title),
    ]);
    return q.watch();
  }

  Stream<GoalRow?> watchGoal(String id) => (_db.select(
    _db.goals,
  )..where((g) => g.id.equals(id))).watchSingleOrNull();

  Stream<GoalProgress> watchProgress(GoalRow goal) {
    final period =
        GoalPeriod.values.asNameMap()[goal.period] ?? GoalPeriod.longTerm;
    final (from, to) = periodWindow(period, _clock.now());
    final sum = _db.goalEntries.amount.sum();
    final eq = _db.selectOnly(_db.goalEntries)
      ..addColumns([sum])
      ..where(_db.goalEntries.goalId.equals(goal.id));
    if (from != null && to != null) {
      eq.where(
        _db.goalEntries.at.isBiggerOrEqualValue(from.toUtc()) &
            _db.goalEntries.at.isSmallerThanValue(to.toUtc()),
      );
    }
    final count = _db.tasks.id.count();
    final tq =
        _db.selectOnly(_db.tasks).join([
            innerJoin(
              _db.goalTasks,
              _db.goalTasks.taskId.equalsExp(_db.tasks.id),
            ),
          ])
          ..addColumns([count])
          ..where(
            _db.goalTasks.goalId.equals(goal.id) &
                _db.tasks.done.equals(true) &
                _db.tasks.deletedAt.isNull(),
          );
    if (from != null && to != null) {
      tq.where(
        _db.tasks.completedAt.isBiggerOrEqualValue(from.toUtc()) &
            _db.tasks.completedAt.isSmallerThanValue(to.toUtc()),
      );
    }
    final entries = eq.watchSingle().map((r) => r.read(sum) ?? 0.0);
    final tasks = tq.watchSingle().map((r) => r.read(count) ?? 0);
    return _combine(
      entries,
      tasks,
      (double e, int t) => GoalProgress(current: e + t, target: goal.target),
    );
  }
}

Stream<R> _combine<A, B, R>(Stream<A> a, Stream<B> b, R Function(A, B) f) {
  late A la;
  late B lb;
  var hasA = false, hasB = false;
  final controller = StreamController<R>();
  StreamSubscription<A>? sa;
  StreamSubscription<B>? sb;
  void emit() {
    if (hasA && hasB) controller.add(f(la, lb));
  }

  controller
    ..onListen = () {
      sa = a.listen((v) {
        la = v;
        hasA = true;
        emit();
      }, onError: controller.addError);
      sb = b.listen((v) {
        lb = v;
        hasB = true;
        emit();
      }, onError: controller.addError);
    }
    ..onCancel = () async {
      await sa?.cancel();
      await sb?.cancel();
    };
  return controller.stream;
}
