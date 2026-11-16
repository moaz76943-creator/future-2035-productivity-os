import '../../../core/time/clock.dart';
import 'day_planner.dart';

class WorkloadDay {
  const WorkloadDay({
    required this.day,
    required this.estimatedMinutes,
    required this.freeMinutes,
    required this.workday,
  });
  final DateTime day;
  final int estimatedMinutes;
  final int freeMinutes;
  final bool workday;
}

class WorkloadOverview {
  const WorkloadOverview({
    required this.days,
    required this.estimatedMinutes,
    required this.freeMinutes,
    required this.unestimatedCount,
    required this.taskCount,
  });
  final List<WorkloadDay> days;
  final int estimatedMinutes;
  final int freeMinutes;
  final int unestimatedCount;
  final int taskCount;
  bool get overloaded => estimatedMinutes > freeMinutes;
}

/// Workload for the next 7 days (today + 6), computed on device.
///
/// Rule (documented in the UI):
/// * Free time = working hours [startHour]:00–[endHour]:00 on workdays,
///   minus timed calendar events. Today starts at the current time.
///   All-day events do not consume time.
/// * Workdays default to Monday–Friday; callers may pass a different set
///   (e.g. Sunday–Thursday).
/// * Estimated work = sum of estimates of open tasks due in the 7-day
///   range. Tasks without an estimate are counted separately.
abstract final class WorkloadCalculator {
  static const days = 7;
  static const startHour = 9;
  static const endHour = 18;
  static const mondayToFriday = {
    DateTime.monday,
    DateTime.tuesday,
    DateTime.wednesday,
    DateTime.thursday,
    DateTime.friday,
  };
  static const sundayToThursday = {
    DateTime.sunday,
    DateTime.monday,
    DateTime.tuesday,
    DateTime.wednesday,
    DateTime.thursday,
  };

  static (DateTime, DateTime) range(DateTime now) {
    final today = Days.startOfDay(now);
    return (today, Days.addDays(today, days));
  }

  static WorkloadOverview compute({
    required Iterable<PlanTask> openTasks,
    required Iterable<TimeSpan> busy,
    required DateTime now,
    Set<int> workdays = mondayToFriday,
  }) {
    final (from, to) = range(now);
    final busyList = busy.toList();
    final inRange = openTasks
        .where((t) => t.dueAt != null && !t.dueAt!.isBefore(from) && t.dueAt!.isBefore(to))
        .toList();
    final out = <WorkloadDay>[];
    for (var d = from; d.isBefore(to); d = Days.addDays(d, 1)) {
      final isWork = workdays.contains(d.weekday);
      var free = 0;
      if (isWork) {
        var start = DateTime(d.year, d.month, d.day, startHour);
        final end = DateTime(d.year, d.month, d.day, endHour);
        if (Days.sameDay(d, now) && now.isAfter(start)) start = now;
        free = DayPlanner.subtract(start, end, busyList).fold(0, (a, s) => a + s.minutes);
      }
      final est = inRange
          .where((t) => Days.sameDay(t.dueAt!, d))
          .fold<int>(0, (a, t) => a + (t.estimateMinutes ?? 0));
      out.add(WorkloadDay(day: d, estimatedMinutes: est, freeMinutes: free, workday: isWork));
    }
    return WorkloadOverview(
      days: out,
      estimatedMinutes: inRange.fold(0, (a, t) => a + (t.estimateMinutes ?? 0)),
      freeMinutes: out.fold(0, (a, d) => a + d.freeMinutes),
      unestimatedCount: inRange.where((t) => (t.estimateMinutes ?? 0) <= 0).length,
      taskCount: inRange.length,
    );
  }
}
