import 'package:collection/collection.dart';

enum Frequency { daily, weekly, monthly, yearly }

/// A small, well-defined subset of RFC 5545 RRULE:
///
///   FREQ=DAILY|WEEKLY|MONTHLY|YEARLY
///   INTERVAL=n            (default 1)
///   BYDAY=MO,TU,...       (WEEKLY only)
///   COUNT=n | UNTIL=yyyymmdd
///
/// Occurrences are computed in local wall-clock time so a 09:00 event stays
/// at 09:00 across daylight-saving transitions. Monthly rules on the 29th–
/// 31st clamp to the last day of shorter months.
class RecurrenceRule {
  const RecurrenceRule({
    required this.frequency,
    this.interval = 1,
    this.weekdays = const {},
    this.count,
    this.until,
  }) : assert(interval >= 1);

  final Frequency frequency;
  final int interval;

  /// ISO weekdays, 1 = Monday … 7 = Sunday.
  final Set<int> weekdays;
  final int? count;

  /// Inclusive local date.
  final DateTime? until;

  static const _dayCodes = ['MO', 'TU', 'WE', 'TH', 'FR', 'SA', 'SU'];

  static RecurrenceRule? tryParse(String? source) {
    if (source == null || source.trim().isEmpty) return null;
    try {
      return parse(source);
    } on FormatException {
      return null;
    }
  }

  static RecurrenceRule parse(String source) {
    final parts = <String, String>{};
    for (final p in source.split(';')) {
      if (p.trim().isEmpty) continue;
      final i = p.indexOf('=');
      if (i <= 0) throw FormatException('Invalid RRULE part', p);
      parts[p.substring(0, i).toUpperCase()] = p.substring(i + 1).toUpperCase();
    }
    final freq = switch (parts['FREQ']) {
      'DAILY' => Frequency.daily,
      'WEEKLY' => Frequency.weekly,
      'MONTHLY' => Frequency.monthly,
      'YEARLY' => Frequency.yearly,
      _ => throw FormatException('Unknown FREQ', source),
    };
    final interval = int.tryParse(parts['INTERVAL'] ?? '1') ?? 0;
    if (interval < 1 || interval > 999) {
      throw FormatException('Invalid INTERVAL', source);
    }
    final days = <int>{};
    if (parts['BYDAY'] case final byDay?) {
      for (final code in byDay.split(',')) {
        final idx = _dayCodes.indexOf(code.trim());
        if (idx < 0) throw FormatException('Invalid BYDAY', source);
        days.add(idx + 1);
      }
    }
    int? count;
    if (parts['COUNT'] case final c?) {
      count = int.tryParse(c);
      if (count == null || count < 1) {
        throw FormatException('Invalid COUNT', source);
      }
    }
    DateTime? until;
    if (parts['UNTIL'] case final u?) {
      final m = RegExp(r'^(\d{4})(\d{2})(\d{2})').firstMatch(u);
      if (m == null) throw FormatException('Invalid UNTIL', source);
      until = DateTime(int.parse(m[1]!), int.parse(m[2]!), int.parse(m[3]!));
    }
    return RecurrenceRule(
      frequency: freq,
      interval: interval,
      weekdays: freq == Frequency.weekly ? days : const {},
      count: count,
      until: until,
    );
  }

  @override
  String toString() {
    final b = StringBuffer('FREQ=${frequency.name.toUpperCase()}');
    if (interval != 1) b.write(';INTERVAL=$interval');
    if (weekdays.isNotEmpty) {
      final sorted = weekdays.toList()..sort();
      b.write(';BYDAY=${sorted.map((d) => _dayCodes[d - 1]).join(',')}');
    }
    if (count != null) b.write(';COUNT=$count');
    if (until case final u?) {
      b.write(
        ';UNTIL=${u.year.toString().padLeft(4, '0')}'
        '${u.month.toString().padLeft(2, '0')}'
        '${u.day.toString().padLeft(2, '0')}',
      );
    }
    return b.toString();
  }

  @override
  bool operator ==(Object other) =>
      other is RecurrenceRule &&
      other.frequency == frequency &&
      other.interval == interval &&
      const SetEquality<int>().equals(other.weekdays, weekdays) &&
      other.count == count &&
      other.until == until;

  @override
  int get hashCode =>
      Object.hash(frequency, interval, Object.hashAllUnordered(weekdays), count, until);

  DateTime _withTime(int y, int m, int d, DateTime t) =>
      DateTime(y, m, d, t.hour, t.minute, t.second);

  DateTime _addMonthsClamped(DateTime anchor, int months) {
    final totalMonths = anchor.month - 1 + months;
    final y = anchor.year + (totalMonths ~/ 12);
    final m = totalMonths % 12 + 1;
    final last = DateTime(y, m + 1, 0).day;
    final d = anchor.day > last ? last : anchor.day;
    return _withTime(y, m, d, anchor);
  }

  bool _beyondUntil(DateTime t) {
    final u = until;
    if (u == null) return false;
    final endOfUntil = DateTime(u.year, u.month, u.day + 1);
    return !t.isBefore(endOfUntil);
  }

  /// Lazily generates occurrences in local time, starting with [start]
  /// itself (the first occurrence), honoring COUNT and UNTIL.
  Iterable<DateTime> occurrences(DateTime start) sync* {
    final anchor = start.toLocal();
    var produced = 0;
    bool emit(DateTime t) {
      if (_beyondUntil(t)) return false;
      if (count != null && produced >= count!) return false;
      produced++;
      return true;
    }

    switch (frequency) {
      case Frequency.daily:
        for (var i = 0; ; i++) {
          final t = _withTime(anchor.year, anchor.month, anchor.day + i * interval, anchor);
          if (!emit(t)) return;
          yield t;
        }
      case Frequency.weekly:
        final days = weekdays.isEmpty ? {anchor.weekday} : weekdays;
        final sortedDays = days.toList()..sort();
        final weekStart = DateTime(anchor.year, anchor.month, anchor.day - (anchor.weekday - 1));
        for (var w = 0; ; w++) {
          for (final wd in sortedDays) {
            final t = _withTime(
              weekStart.year,
              weekStart.month,
              weekStart.day + w * 7 * interval + (wd - 1),
              anchor,
            );
            if (t.isBefore(anchor)) continue;
            if (!emit(t)) return;
            yield t;
          }
          // Safety valve against pathological rules.
          if (w > 52 * 200) return;
        }
      case Frequency.monthly:
        for (var i = 0; ; i++) {
          final t = _addMonthsClamped(anchor, i * interval);
          if (!emit(t)) return;
          yield t;
        }
      case Frequency.yearly:
        for (var i = 0; ; i++) {
          final t = _addMonthsClamped(anchor, i * 12 * interval);
          if (!emit(t)) return;
          yield t;
        }
    }
  }

  /// First occurrence strictly after [after], or null if the series ended.
  DateTime? nextAfter(DateTime start, DateTime after) {
    for (final t in occurrences(start)) {
      if (t.isAfter(after)) return t;
    }
    return null;
  }

  /// Occurrences overlapping the half-open window [from, to).
  List<DateTime> between(
    DateTime start,
    DateTime from,
    DateTime to, {
    Duration duration = Duration.zero,
    int limit = 500,
  }) {
    final result = <DateTime>[];
    for (final t in occurrences(start)) {
      if (!t.isBefore(to)) break;
      if (t.add(duration).isAfter(from) || !t.isBefore(from)) {
        result.add(t);
        if (result.length >= limit) break;
      }
    }
    return result;
  }
}
