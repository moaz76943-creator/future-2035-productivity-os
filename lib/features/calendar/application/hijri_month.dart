import '../../../core/time/hijri.dart';
import '../../../l10n/gen/app_localizations.dart';
import 'calendar_layout.dart';

/// Month maths for the Hijri view of the calendar (Umm al-Qura tables).
abstract final class HijriMonth {
  /// First and last Gregorian day of the Hijri month containing [d].
  /// Null outside the supported range.
  static (DateTime, DateTime)? span(DateTime d) {
    final h = HijriDay.of(d);
    if (h == null) return null;
    final first = CalendarMath.addDays(CalendarMath.day(d), -(h.day - 1));
    var last = first;
    for (var i = 1; i < 31; i++) {
      final n = CalendarMath.addDays(first, i);
      if (HijriDay.of(n)?.month != h.month) break;
      last = n;
    }
    return (first, last);
  }

  /// Whole Monday-first weeks covering the Hijri month of [d].
  static List<DateTime> gridDays(DateTime d) {
    final s = span(d);
    if (s == null) return CalendarMath.monthGridDays(d);
    final end = CalendarMath.addDays(CalendarMath.weekStart(s.$2), 7);
    return [
      for (var x = CalendarMath.weekStart(s.$1); x.isBefore(end); x = CalendarMath.addDays(x, 1)) x,
    ];
  }

  static DateRange range(DateTime d) {
    final days = gridDays(d);
    return DateRange(days.first, CalendarMath.addDays(days.last, 1));
  }

  /// A day inside the Hijri month [direction] months from [d].
  static DateTime step(DateTime d, int direction) {
    final s = span(d);
    if (s == null) return CalendarMath.step(CalendarView.month, d, direction);
    return direction > 0 ? CalendarMath.addDays(s.$2, 1) : CalendarMath.addDays(s.$1, -1);
  }

  /// Today when it falls in the Hijri month of [d], else the first day of that month.
  static DateTime pick(DateTime d, DateTime today) {
    final s = span(d);
    if (s == null) return CalendarMath.day(d);
    final t = CalendarMath.day(today);
    return !t.isBefore(s.$1) && !t.isAfter(s.$2) ? t : s.$1;
  }

  static bool inMonth(DateTime anchor, DateTime d) {
    final s = span(anchor);
    return s != null && !d.isBefore(s.$1) && !d.isAfter(s.$2);
  }

  /// "Jumada al-Akhira 1448" in the app language, Western digits.
  static String title(AppLocalizations l10n, DateTime d) {
    final h = HijriDay.of(d);
    return h == null ? '' : '${h.monthName(l10n)} ${h.year}';
  }
}
