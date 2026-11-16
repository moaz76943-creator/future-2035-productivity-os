/// Injectable source of the current time so that time-dependent logic
/// (timers, due dates, review scheduling, analytics) is deterministic in
/// tests.
abstract class Clock {
  const Clock();
  DateTime now();
  DateTime nowUtc() => now().toUtc();
}

class SystemClock extends Clock {
  const SystemClock();
  @override
  DateTime now() => DateTime.now();
}

class FixedClock extends Clock {
  FixedClock(this.current);
  DateTime current;
  @override
  DateTime now() => current;
  void advance(Duration d) => current = current.add(d);
}

/// Local calendar-day helpers that are safe across DST transitions because
/// they construct dates from calendar fields rather than adding 24h.
abstract final class Days {
  static DateTime startOfDay(DateTime t) {
    final l = t.toLocal();
    return DateTime(l.year, l.month, l.day);
  }

  static DateTime addDays(DateTime day, int n) =>
      DateTime(day.year, day.month, day.day + n);

  static int key(DateTime t) {
    final l = t.toLocal();
    return l.year * 10000 + l.month * 100 + l.day;
  }

  static DateTime fromKey(int k) =>
      DateTime(k ~/ 10000, (k ~/ 100) % 100, k % 100);

  static bool sameDay(DateTime a, DateTime b) => key(a) == key(b);

  /// Monday-based start of week.
  static DateTime startOfWeek(DateTime t) {
    final d = startOfDay(t);
    return addDays(d, -(d.weekday - DateTime.monday));
  }

  static DateTime startOfMonth(DateTime t) {
    final l = t.toLocal();
    return DateTime(l.year, l.month);
  }

  static int daysInMonth(int year, int month) =>
      DateTime(year, month + 1, 0).day;
}
