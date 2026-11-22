import 'package:hijri/hijri_calendar.dart';

import '../../l10n/gen/app_localizations.dart';

/// A date in the Hijri calendar (Umm al-Qura tables).
class HijriDay {
  const HijriDay(this.day, this.month, this.year);
  final int day;

  /// 1 (Muharram) … 12 (Dhu al-Hijjah).
  final int month;
  final int year;

  /// Null outside the supported range (about 1937–2076).
  static HijriDay? of(DateTime d) {
    try {
      final h = HijriCalendar.fromDate(DateTime(d.year, d.month, d.day));
      if (h.hMonth < 1 || h.hMonth > 12 || h.hDay < 1) return null;
      return HijriDay(h.hDay, h.hMonth, h.hYear);
    } on Object {
      return null;
    }
  }

  String monthName(AppLocalizations l10n) => switch (month) {
    1 => l10n.hijriMonth1,
    2 => l10n.hijriMonth2,
    3 => l10n.hijriMonth3,
    4 => l10n.hijriMonth4,
    5 => l10n.hijriMonth5,
    6 => l10n.hijriMonth6,
    7 => l10n.hijriMonth7,
    8 => l10n.hijriMonth8,
    9 => l10n.hijriMonth9,
    10 => l10n.hijriMonth10,
    11 => l10n.hijriMonth11,
    _ => l10n.hijriMonth12,
  };

  /// "28 Jumada al-Ula 1448 AH" in the app language, Western digits.
  String long(AppLocalizations l10n) => l10n.hijriDate(day, monthName(l10n), year);
}
