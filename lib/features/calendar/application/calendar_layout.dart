/// Pure, deterministic calendar math used by the calendar views.
///
/// Every function works on the calendar fields (year/month/day/hour/minute)
/// of the DateTimes it receives and never adds 24 h durations, so results
/// are correct across daylight-saving transitions. Callers pass local
/// wall-clock DateTimes (occurrences are already expanded in local time).
library;

enum CalendarView { month, week, day }

/// Half-open interval [from, to).
class DateRange {
  const DateRange(this.from, this.to);
  final DateTime from;
  final DateTime to;

  bool contains(DateTime t) => !t.isBefore(from) && t.isBefore(to);

  @override
  bool operator ==(Object other) => other is DateRange && other.from == from && other.to == to;

  @override
  int get hashCode => Object.hash(from, to);
}

abstract final class CalendarMath {
  static const minutesPerDay = 24 * 60;

  /// Local midnight of [t]'s calendar day (fields only).
  static DateTime day(DateTime t) => DateTime(t.year, t.month, t.day);

  /// [n] calendar days after [d] (DST safe).
  static DateTime addDays(DateTime d, int n) => DateTime(d.year, d.month, d.day + n);

  static int dayKey(DateTime t) => t.year * 10000 + t.month * 100 + t.day;

  static bool sameDay(DateTime a, DateTime b) => dayKey(a) == dayKey(b);

  /// Monday of the week containing [t].
  static DateTime weekStart(DateTime t) => addDays(day(t), -(t.weekday - DateTime.monday));

  /// The [from, to) range of a single calendar day.
  static DateRange dayRange(DateTime t) {
    final d = day(t);
    return DateRange(d, addDays(d, 1));
  }

  /// The seven days (Monday first) of the week containing [t].
  static List<DateTime> weekDays(DateTime t) {
    final s = weekStart(t);
    return [for (var i = 0; i < 7; i++) addDays(s, i)];
  }

  /// Days shown by the month grid: whole Monday-first weeks covering the month.
  static List<DateTime> monthGridDays(DateTime month) {
    final first = DateTime(month.year, month.month);
    final last = DateTime(month.year, month.month + 1, 0);
    final start = weekStart(first);
    final end = addDays(weekStart(last), 7);
    final out = <DateTime>[];
    for (var d = start; d.isBefore(end); d = addDays(d, 1)) {
      out.add(d);
    }
    return out;
  }

  /// Range that must be loaded for [view] around [anchor].
  static DateRange rangeFor(CalendarView view, DateTime anchor) {
    switch (view) {
      case CalendarView.month:
        final days = monthGridDays(anchor);
        return DateRange(days.first, addDays(days.last, 1));
      case CalendarView.week:
        final s = weekStart(anchor);
        return DateRange(s, addDays(s, 7));
      case CalendarView.day:
        return dayRange(anchor);
    }
  }

  /// Moves [anchor] one period forward (`direction` = 1) or back (-1).
  /// Month moves clamp the day (Jan 31 → Feb 28/29).
  static DateTime step(CalendarView view, DateTime anchor, int direction) {
    switch (view) {
      case CalendarView.month:
        final target = DateTime(anchor.year, anchor.month + direction);
        final last = DateTime(target.year, target.month + 1, 0).day;
        return DateTime(target.year, target.month, anchor.day > last ? last : anchor.day);
      case CalendarView.week:
        return addDays(day(anchor), 7 * direction);
      case CalendarView.day:
        return addDays(day(anchor), direction);
    }
  }

  /// Wall-clock minute of [t] within [d] (0 … 1440), clamped to the day.
  static int wallMinute(DateTime t, DateTime d) {
    final k = dayKey(t);
    final dk = dayKey(d);
    if (k < dk) return 0;
    if (k > dk) return minutesPerDay;
    return t.hour * 60 + t.minute;
  }

  /// Whether [start, end) overlaps the calendar day [d].
  static bool overlapsDay(DateTime start, DateTime end, DateTime d) {
    final r = dayRange(d);
    return start.isBefore(r.to) && end.isAfter(r.from);
  }

  /// Rounds [minutes] to the nearest multiple of [step].
  static int snap(num minutes, {int step = 15}) => (minutes / step).round() * step;

  /// Local wall-clock DateTime at [minute] of day [d] (DST safe).
  static DateTime atMinute(DateTime d, int minute) => DateTime(d.year, d.month, d.day, 0, minute);

  /// Target start when an occurrence starting at [start] on day [d] is dragged
  /// by [deltaMinutes] of wall-clock time, clamped so it stays on that day.
  static DateTime draggedStart(
    DateTime start,
    DateTime d,
    int deltaMinutes, {
    required int durationMinutes,
  }) {
    final from = wallMinute(start, d);
    final maxStart = (minutesPerDay - durationMinutes.clamp(15, minutesPerDay)).clamp(
      0,
      minutesPerDay,
    );
    final to = (from + deltaMinutes).clamp(0, maxStart);
    return atMinute(d, to);
  }
}

/// An item placed in the day time grid.
class GridSlot<T> {
  const GridSlot(this.item, this.startMinute, this.endMinute, this.column, this.columns);
  final T item;
  final int startMinute;
  final int endMinute;
  final int column;
  final int columns;
}

/// Lays out timed items for day [d]: items are clipped to the day, given a
/// minimum visual height of [minMinutes], and overlapping items are placed
/// side by side. Items in one overlap cluster share the same column count.
List<GridSlot<T>> layoutDay<T>(
  List<T> items,
  DateTime d, {
  required DateTime Function(T) start,
  required DateTime Function(T) end,
  int minMinutes = 20,
}) {
  final entries = <(T, int, int)>[];
  for (final it in items) {
    final s = start(it);
    final e = end(it);
    if (!CalendarMath.overlapsDay(s, e, d)) continue;
    final sm = CalendarMath.wallMinute(s, d);
    var em = CalendarMath.wallMinute(e, d);
    if (em < sm + minMinutes) em = sm + minMinutes;
    if (em > CalendarMath.minutesPerDay) em = CalendarMath.minutesPerDay;
    final adjustedStart = em - sm < minMinutes ? em - minMinutes : sm;
    entries.add((it, adjustedStart, em));
  }
  entries.sort((a, b) {
    final c = a.$2.compareTo(b.$2);
    return c != 0 ? c : (b.$3 - b.$2).compareTo(a.$3 - a.$2);
  });

  final out = <GridSlot<T>>[];
  final cluster = <(T, int, int, int)>[];
  final columnEnds = <int>[];
  var clusterEnd = -1;

  void flush() {
    final n = columnEnds.length;
    for (final c in cluster) {
      out.add(GridSlot(c.$1, c.$2, c.$3, c.$4, n));
    }
    cluster.clear();
    columnEnds.clear();
  }

  for (final e in entries) {
    if (e.$2 >= clusterEnd && cluster.isNotEmpty) flush();
    var col = columnEnds.indexWhere((end) => end <= e.$2);
    if (col < 0) {
      col = columnEnds.length;
      columnEnds.add(e.$3);
    } else {
      columnEnds[col] = e.$3;
    }
    cluster.add((e.$1, e.$2, e.$3, col));
    if (e.$3 > clusterEnd) clusterEnd = e.$3;
  }
  if (cluster.isNotEmpty) flush();
  return out;
}

/// Items from [items] overlapping calendar day [d], in order.
List<T> itemsOnDay<T>(
  Iterable<T> items,
  DateTime d, {
  required DateTime Function(T) start,
  required DateTime Function(T) end,
}) => [
  for (final it in items)
    if (CalendarMath.overlapsDay(start(it), end(it), d)) it,
];
