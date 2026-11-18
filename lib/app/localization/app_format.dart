import 'package:intl/intl.dart';
import 'package:material_ui/material_ui.dart';

import '../../core/text/text_normalizer.dart';
import '../../core/time/clock.dart';
import '../../l10n/gen/app_localizations.dart';
import 'app_locales.dart';

/// Locale-aware formatting. Every number the app generates passes through
/// [TextNormalizer.westernDigits], so all locales show 0123456789.
class AppFormat {
  AppFormat(this.language, this.l10n);

  final SupportedLanguage language;
  final AppLocalizations l10n;

  String get _loc => language.intlLocale;
  String _w(String s) => TextNormalizer.westernDigits(s);

  String number(num value, {int decimals = 0}) {
    final f = NumberFormat.decimalPatternDigits(locale: _loc, decimalDigits: decimals);
    return _w(f.format(value));
  }

  String percent(double ratio) => _w(l10n.percentValue((ratio * 100).round()));

  /// 14:05 or 2:05 PM depending on the locale.
  String time(DateTime t) => _w(DateFormat.jm(_loc).format(t.toLocal()));

  /// Mon, Nov 16
  String dayShort(DateTime t) => _w(DateFormat.MMMEd(_loc).format(t.toLocal()));

  /// Monday, November 16, 2026
  String dayLong(DateTime t) => _w(DateFormat.yMMMMEEEEd(_loc).format(t.toLocal()));

  /// Nov 16, 2026
  String date(DateTime t) => _w(DateFormat.yMMMd(_loc).format(t.toLocal()));

  /// November 2026
  String monthYear(DateTime t) => _w(DateFormat.yMMMM(_loc).format(t.toLocal()));

  /// Mon
  String weekdayShort(DateTime t) => _w(DateFormat.E(_loc).format(t.toLocal()));

  /// 16
  String dayOfMonth(DateTime t) => _w(DateFormat.d(_loc).format(t.toLocal()));

  String dateTime(DateTime t) => '${dayShort(t)} · ${time(t)}';

  /// Today / Tomorrow / Yesterday or a short date.
  String relativeDay(DateTime t, DateTime now) {
    final d = Days.startOfDay(t);
    final n = Days.startOfDay(now);
    if (Days.sameDay(d, n)) return l10n.dateToday;
    if (Days.sameDay(d, Days.addDays(n, 1))) return l10n.dateTomorrow;
    if (Days.sameDay(d, Days.addDays(n, -1))) return l10n.dateYesterday;
    return t.year == now.year ? dayShort(t) : date(t);
  }

  /// 1 h 25 min / 25 min / 2 h
  String duration(Duration d) {
    final totalMinutes = d.inMinutes;
    final h = totalMinutes ~/ 60;
    final m = totalMinutes % 60;
    if (h == 0) return _w(l10n.durationMinutes(m));
    if (m == 0) return _w(l10n.durationHours(h));
    return _w(l10n.durationHoursMinutes(h, m));
  }

  String minutes(int m) => duration(Duration(minutes: m));

  /// 05:00 / 1:05:00 timer readout (always Western digits, LTR).
  static String clock(Duration d) {
    final neg = d.isNegative;
    final s = d.inSeconds.abs();
    final h = s ~/ 3600;
    final m = (s % 3600) ~/ 60;
    final sec = s % 60;
    String two(int v) => v.toString().padLeft(2, '0');
    final body = h > 0 ? '$h:${two(m)}:${two(sec)}' : '${two(m)}:${two(sec)}';
    return neg ? '-$body' : body;
  }

  /// Seven weekday initials, Monday first, from the translation catalog.
  List<String> get weekdayInitials => l10n.weekdaysShort.split(',');
}

/// Shortcuts available from any widget below the app.
extension L10nX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);

  SupportedLanguage get language => AppLocales.forLocale(Localizations.maybeLocaleOf(this));

  AppFormat get fmt => AppFormat(language, AppLocalizations.of(this));
}
