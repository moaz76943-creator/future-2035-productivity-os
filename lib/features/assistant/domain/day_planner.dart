import '../../../core/time/clock.dart';

/// Minimal, storage-independent view of an open task used by the planner.
class PlanTask {
  const PlanTask({
    required this.id,
    required this.title,
    this.priority = 0,
    this.dueAt,
    this.dueHasTime = false,
    this.estimateMinutes,
  });

  final String id;
  final String title;

  /// 0 = none … 4 = urgent.
  final int priority;

  /// Local due time (or due day when [dueHasTime] is false).
  final DateTime? dueAt;
  final bool dueHasTime;
  final int? estimateMinutes;

  bool isOverdue(DateTime now) {
    final d = dueAt;
    if (d == null) return false;
    if (dueHasTime) return d.isBefore(now);
    return Days.startOfDay(d).isBefore(Days.startOfDay(now));
  }
}

/// A half-open local time interval [start, end).
class TimeSpan {
  const TimeSpan(this.start, this.end);
  final DateTime start;
  final DateTime end;
  int get minutes => end.difference(start).inMinutes;

  @override
  bool operator ==(Object other) => other is TimeSpan && other.start == start && other.end == end;

  @override
  int get hashCode => Object.hash(start, end);

  @override
  String toString() => 'TimeSpan($start, $end)';
}

class PlannedBlock {
  const PlannedBlock(this.task, this.start, this.end);
  final PlanTask task;
  final DateTime start;
  final DateTime end;
}

class DayPlan {
  const DayPlan({
    required this.ordered,
    required this.blocks,
    required this.overflow,
    required this.unestimated,
    required this.freeSlots,
  });

  /// All candidate tasks in planning order.
  final List<PlanTask> ordered;

  /// Tasks with an estimate that fit into today's free time.
  final List<PlannedBlock> blocks;

  /// Tasks with an estimate that do not fit into a free slot today.
  final List<PlanTask> overflow;

  /// Candidate tasks without an estimate (not placed on the timeline).
  final List<PlanTask> unestimated;

  /// Free time between now and the end of the planning day.
  final List<TimeSpan> freeSlots;

  int get capacityMinutes => freeSlots.fold(0, (a, s) => a + s.minutes);
  int get plannedMinutes => blocks.fold(0, (a, b) => a + b.end.difference(b.start).inMinutes);
  bool get isEmpty => ordered.isEmpty;
}

/// Deterministic, on-device day planner.
///
/// Rules:
/// * Candidates are open tasks that are overdue, due today or due within
///   the next [upcomingDays] days. Tasks without a due date are not planned.
/// * Order: overdue first, then higher priority, then earlier due date,
///   then shorter estimate (unestimated last), then title.
/// * Free time is the interval from now (rounded up to the next 5 minutes)
///   until [endHour]:00 today, minus timed events of today.
/// * Each estimated task is placed, in order, at the start of the earliest
///   free slot long enough to hold it; tasks that fit nowhere overflow.
abstract final class DayPlanner {
  static const upcomingDays = 7;
  static const endHour = 22;

  static List<PlanTask> candidates(Iterable<PlanTask> tasks, DateTime now) {
    final limit = Days.addDays(Days.startOfDay(now), upcomingDays + 1);
    return tasks.where((t) => t.dueAt != null && t.dueAt!.isBefore(limit)).toList();
  }

  static int compare(PlanTask a, PlanTask b, DateTime now) {
    final ao = a.isOverdue(now), bo = b.isOverdue(now);
    if (ao != bo) return ao ? -1 : 1;
    if (a.priority != b.priority) return b.priority.compareTo(a.priority);
    final ad = a.dueAt, bd = b.dueAt;
    if (ad != bd) {
      if (ad == null) return 1;
      if (bd == null) return -1;
      final c = ad.compareTo(bd);
      if (c != 0) return c;
    }
    final ae = a.estimateMinutes, be = b.estimateMinutes;
    if (ae != be) {
      if (ae == null) return 1;
      if (be == null) return -1;
      final c = ae.compareTo(be);
      if (c != 0) return c;
    }
    final t = a.title.compareTo(b.title);
    return t != 0 ? t : a.id.compareTo(b.id);
  }

  static List<PlanTask> order(Iterable<PlanTask> tasks, DateTime now) =>
      candidates(tasks, now)..sort((a, b) => compare(a, b, now));

  static DateTime _roundUp5(DateTime t) {
    final base = DateTime(t.year, t.month, t.day, t.hour, t.minute);
    final exact = base == t;
    final m = base.minute;
    if (exact && m % 5 == 0) return base;
    return base.add(Duration(minutes: 5 - m % 5));
  }

  /// Subtracts [busy] from the window [from, to) and returns the free
  /// slots in chronological order.
  static List<TimeSpan> subtract(DateTime from, DateTime to, Iterable<TimeSpan> busy) {
    if (!to.isAfter(from)) return const [];
    final sorted = busy.where((b) => b.end.isAfter(from) && b.start.isBefore(to)).toList()
      ..sort((a, b) => a.start.compareTo(b.start));
    final out = <TimeSpan>[];
    var cursor = from;
    for (final b in sorted) {
      if (b.start.isAfter(cursor)) out.add(TimeSpan(cursor, b.start));
      if (b.end.isAfter(cursor)) cursor = b.end;
      if (!cursor.isBefore(to)) break;
    }
    if (cursor.isBefore(to)) out.add(TimeSpan(cursor, to));
    return out.where((s) => s.minutes > 0).toList();
  }

  static List<TimeSpan> freeToday(DateTime now, Iterable<TimeSpan> busy) {
    final day = Days.startOfDay(now);
    final end = DateTime(day.year, day.month, day.day, endHour);
    return subtract(_roundUp5(now), end, busy);
  }

  static DayPlan plan({
    required Iterable<PlanTask> tasks,
    required Iterable<TimeSpan> busy,
    required DateTime now,
  }) {
    final ordered = order(tasks, now);
    final free = freeToday(now, busy);
    // Mutable copy of slot starts consumed as tasks are placed.
    final slots = [for (final s in free) TimeSpan(s.start, s.end)];
    final blocks = <PlannedBlock>[];
    final overflow = <PlanTask>[];
    final unestimated = <PlanTask>[];
    for (final t in ordered) {
      final est = t.estimateMinutes;
      if (est == null || est <= 0) {
        unestimated.add(t);
        continue;
      }
      final i = slots.indexWhere((s) => s.minutes >= est);
      if (i < 0) {
        overflow.add(t);
        continue;
      }
      final s = slots[i];
      final end = s.start.add(Duration(minutes: est));
      blocks.add(PlannedBlock(t, s.start, end));
      slots[i] = TimeSpan(end, s.end);
    }
    blocks.sort((a, b) => a.start.compareTo(b.start));
    return DayPlan(
      ordered: ordered,
      blocks: blocks,
      overflow: overflow,
      unestimated: unestimated,
      freeSlots: free,
    );
  }
}
