import 'package:drift/drift.dart';

import '../../../core/database/app_database.dart';
import '../../../core/time/clock.dart';
import '../../habits/data/habits_repository.dart';

enum AnalyticsRange { week, month, quarter }

class DayValue {
  const DayValue(this.day, this.value);
  final DateTime day;
  final double value;
}

class ProjectSlice {
  const ProjectSlice({
    required this.projectId,
    required this.name,
    required this.color,
    required this.seconds,
  });
  final String? projectId;
  final String name;
  final int? color;
  final int seconds;
}

class ProjectCompletion {
  const ProjectCompletion(this.project, this.total, this.done);
  final ProjectRow project;
  final int total;
  final int done;
  double get ratio => total == 0 ? 0 : done / total;
}

/// Every number here is derived from stored rows. Values that come from
/// user-entered estimates are kept separate from measured values.
class AnalyticsSnapshot {
  const AnalyticsSnapshot({
    required this.from,
    required this.to,
    required this.focusByDay,
    required this.measuredFocusSeconds,
    required this.completedSessions,
    required this.interruptedSessions,
    required this.tasksCompletedByDay,
    required this.tasksCompleted,
    required this.tasksDue,
    required this.tasksDueCompleted,
    required this.estimatedMinutesCompleted,
    required this.habitConsistency,
    required this.reviewCount,
    required this.retention,
    required this.activeGoals,
    required this.focusByProject,
    required this.projects,
  });

  final DateTime from;
  final DateTime to;
  final List<DayValue> focusByDay;

  /// Sum of measured active seconds of work-phase sessions (completed and
  /// interrupted). Breaks are not counted.
  final int measuredFocusSeconds;
  final int completedSessions;
  final int interruptedSessions;
  final List<DayValue> tasksCompletedByDay;
  final int tasksCompleted;

  /// Tasks due in the range that are already decided: completed, or past
  /// their deadline while still open. Tasks due later today that are still
  /// open are not counted yet.
  final int tasksDue;

  /// Of [tasksDue], those completed no later than their deadline.
  final int tasksDueCompleted;

  /// Sum of user estimates for tasks completed in range (estimated, not
  /// measured).
  final int estimatedMinutesCompleted;

  /// Average share of scheduled habit days completed, null if no habits.
  final double? habitConsistency;
  final int reviewCount;

  /// Share of mature-review answers that were not "again", null if none.
  final double? retention;
  final int activeGoals;
  final List<ProjectSlice> focusByProject;
  final List<ProjectCompletion> projects;

  double? get completionRate => tasksDue == 0 ? null : tasksDueCompleted / tasksDue;
}

class AnalyticsService {
  AnalyticsService(this._db, this._clock);
  final AppDatabase _db;
  final Clock _clock;

  (DateTime, DateTime) window(AnalyticsRange r) {
    final today = Days.startOfDay(_clock.now());
    final end = Days.addDays(today, 1);
    final days = switch (r) {
      AnalyticsRange.week => 7,
      AnalyticsRange.month => 30,
      AnalyticsRange.quarter => 90,
    };
    return (Days.addDays(end, -days), end);
  }

  /// Buckets values into local calendar days in [from, to).
  static List<DayValue> bucketByDay(
    DateTime from,
    DateTime to,
    Iterable<(DateTime, double)> values,
  ) {
    final sums = <int, double>{};
    for (final (t, v) in values) {
      final k = Days.key(t);
      sums[k] = (sums[k] ?? 0) + v;
    }
    final out = <DayValue>[];
    for (var d = Days.startOfDay(from); d.isBefore(to); d = Days.addDays(d, 1)) {
      out.add(DayValue(d, sums[Days.key(d)] ?? 0));
    }
    return out;
  }

  /// The moment a task becomes late: its due time, or the end of the due
  /// day when no time of day was set.
  static DateTime deadlineOf(TaskRow t) {
    final due = t.dueAt!.toLocal();
    return t.dueHasTime ? due : Days.addDays(Days.startOfDay(due), 1);
  }

  /// True when [t] was completed no later than its deadline.
  static bool completedOnTime(TaskRow t) =>
      t.done &&
      t.dueAt != null &&
      t.completedAt != null &&
      !t.completedAt!.toLocal().isAfter(deadlineOf(t));

  Future<AnalyticsSnapshot> compute(AnalyticsRange range) async {
    final (from, to) = window(range);
    final now = _clock.now();
    final fromUtc = from.toUtc(), toUtc = to.toUtc();

    final sessions =
        await (_db.select(_db.focusSessions)..where(
              (s) =>
                  s.startedAt.isBiggerOrEqualValue(fromUtc) & s.startedAt.isSmallerThanValue(toUtc),
            ))
            .get();
    final work = sessions.where((s) => s.phase == 'work').toList();
    final measured = work.fold<int>(0, (a, s) => a + s.activeSeconds);

    final completedTasks =
        await (_db.select(_db.tasks)..where(
              (t) =>
                  t.deletedAt.isNull() &
                  t.done.equals(true) &
                  t.completedAt.isBiggerOrEqualValue(fromUtc) &
                  t.completedAt.isSmallerThanValue(toUtc),
            ))
            .get();
    final dueTasks =
        await (_db.select(_db.tasks)..where(
              (t) =>
                  t.deletedAt.isNull() &
                  t.archivedAt.isNull() &
                  t.dueAt.isBiggerOrEqualValue(fromUtc) &
                  t.dueAt.isSmallerThanValue(toUtc),
            ))
            .get();

    // Habits
    final habits = await (_db.select(
      _db.habits,
    )..where((h) => h.archived.equals(false) & h.paused.equals(false))).get();
    double? habitConsistency;
    if (habits.isNotEmpty) {
      final logs =
          await (_db.select(_db.habitLogs)..where(
                (l) =>
                    l.day.isBiggerOrEqualValue(Days.key(from)) &
                    l.day.isSmallerThanValue(Days.key(to)),
              ))
              .get();
      final today = Days.startOfDay(_clock.now());
      var total = 0.0;
      for (final h in habits) {
        final counts = {for (final l in logs.where((l) => l.habitId == h.id)) l.day: l.count};
        final created = Days.startOfDay(h.createdAt.toLocal());
        final start = created.isAfter(from) ? created : from;
        total += HabitMath.consistency(
          weekdayMask: h.weekdays,
          targetPerDay: h.targetPerDay,
          countsByDay: counts,
          from: start,
          to: today,
        );
      }
      habitConsistency = total / habits.length;
    }

    // Flashcards
    final reviews =
        await (_db.select(_db.cardReviews)..where(
              (r) =>
                  r.reviewedAt.isBiggerOrEqualValue(fromUtc) &
                  r.reviewedAt.isSmallerThanValue(toUtc),
            ))
            .get();
    final matureAnswers = reviews.where((r) => r.stateBefore == 'review').toList();
    final retention = matureAnswers.isEmpty
        ? null
        : matureAnswers.where((r) => r.rating > 1).length / matureAnswers.length;

    final activeGoals =
        await (_db.selectOnly(_db.goals)
              ..addColumns([_db.goals.id.count()])
              ..where(_db.goals.deletedAt.isNull() & _db.goals.status.equals('active')))
            .map((r) => r.read(_db.goals.id.count()) ?? 0)
            .getSingle();

    // Projects
    final projects = await (_db.select(
      _db.projects,
    )..where((p) => p.deletedAt.isNull() & p.archived.equals(false))).get();
    final byProject = <String?, int>{};
    for (final s in work) {
      byProject[s.projectId] = (byProject[s.projectId] ?? 0) + s.activeSeconds;
    }
    final pmap = {for (final p in projects) p.id: p};
    final slices =
        byProject.entries
            .map(
              (e) => ProjectSlice(
                projectId: e.key,
                name: pmap[e.key]?.name ?? '',
                color: pmap[e.key]?.color,
                seconds: e.value,
              ),
            )
            .toList()
          ..sort((a, b) => b.seconds.compareTo(a.seconds));

    final allTasks = await (_db.select(
      _db.tasks,
    )..where((t) => t.deletedAt.isNull() & t.projectId.isNotNull())).get();
    final completion = [
      for (final p in projects)
        ProjectCompletion(
          p,
          allTasks.where((t) => t.projectId == p.id).length,
          allTasks.where((t) => t.projectId == p.id && t.done).length,
        ),
    ];

    return AnalyticsSnapshot(
      from: from,
      to: to,
      focusByDay: bucketByDay(
        from,
        to,
        work.map((s) => (s.startedAt.toLocal(), s.activeSeconds / 60)),
      ),
      measuredFocusSeconds: measured,
      completedSessions: work.where((s) => s.outcome == 'completed').length,
      interruptedSessions: work.where((s) => s.outcome == 'interrupted').length,
      tasksCompletedByDay: bucketByDay(
        from,
        to,
        completedTasks.map((t) => (t.completedAt!.toLocal(), 1.0)),
      ),
      tasksCompleted: completedTasks.length,
      tasksDue: dueTasks.where((t) => t.done || !deadlineOf(t).isAfter(now)).length,
      tasksDueCompleted: dueTasks.where(completedOnTime).length,
      estimatedMinutesCompleted: completedTasks.fold(0, (a, t) => a + (t.estimateMinutes ?? 0)),
      habitConsistency: habitConsistency,
      reviewCount: reviews.length,
      retention: retention,
      activeGoals: activeGoals,
      focusByProject: slices,
      projects: completion,
    );
  }
}
