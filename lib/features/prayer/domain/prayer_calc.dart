import 'dart:math' as math;

/// The five daily prayers (plus sunrise, shown for reference).
enum Prayer { fajr, sunrise, dhuhr, asr, maghrib, isha }

/// A calculation convention: twilight angles for Fajr and Isha (or a fixed
/// delay after Maghrib for Isha).
enum PrayerMethod {
  mwl(18, 17),
  ummAlQura(18.5, null, ishaMinutes: 90),
  egypt(19.5, 17.5),
  jordan(18, 18),
  karachi(18, 18),
  isna(15, 15),
  gulf(19.5, null, ishaMinutes: 90),
  kuwait(18, 17.5),
  qatar(18, null, ishaMinutes: 90),
  turkey(18, 17),
  singapore(20, 18),
  france(12, 12),
  russia(16, 15);

  const PrayerMethod(this.fajrAngle, this.ishaAngle, {this.ishaMinutes});
  final double fajrAngle;
  final double? ishaAngle;
  final int? ishaMinutes;

  static PrayerMethod byName(String? n) => PrayerMethod.values.asNameMap()[n] ?? PrayerMethod.mwl;
}

/// Asr shadow ratio: 1 (Shafi'i, Maliki, Hanbali) or 2 (Hanafi).
enum AsrSchool { standard, hanafi }

/// Prayer times for one day and place, computed offline (sun position from
/// the date; the same astronomy used by common prayer-time tables).
abstract final class PrayerCalc {
  /// Times in UTC for the calendar day [date] at [lat]/[lng] (degrees).
  static Map<Prayer, DateTime> day({
    required DateTime date,
    required double lat,
    required double lng,
    PrayerMethod method = PrayerMethod.mwl,
    AsrSchool asr = AsrSchool.standard,
  }) {
    final jd = _julian(date.year, date.month, date.day) - lng / (15 * 24);

    double decl(double t) => _sun(jd + t).$1;
    double noon(double t) => _fixHour(12 - _sun(jd + t).$2);
    double angleTime(double angle, double t, {bool before = false}) {
      final d = decl(t);
      final cosT = (-_sin(angle) - _sin(d) * _sin(lat)) / (_cos(d) * _cos(lat));
      if (cosT.isNaN || cosT < -1 || cosT > 1) return double.nan; // sun never gets there
      final h = _acos(cosT) / 15;
      return noon(t) + (before ? -h : h);
    }

    // First guesses (fraction of a day), refined once as usual.
    final fajr = angleTime(method.fajrAngle, 5 / 24, before: true);
    final sunrise = angleTime(0.833, 6 / 24, before: true);
    final dhuhr = noon(12 / 24);
    final factor = asr == AsrSchool.hanafi ? 2.0 : 1.0;
    final asrT = () {
      final d = decl(13 / 24);
      final angle = -_acot(factor + _tan((lat - d).abs()));
      return angleTime(angle, 13 / 24);
    }();
    final sunset = angleTime(0.833, 18 / 24);
    var isha = method.ishaAngle == null
        ? sunset + method.ishaMinutes! / 60
        : angleTime(method.ishaAngle!, 18 / 24);

    // Far north/south in summer the twilight never ends: one seventh of the
    // night (the "seventh of the night" rule).
    var fajrT = fajr;
    final night = _fixHour(sunrise - sunset);
    if (!night.isNaN) {
      final portion = night / 7;
      if (fajrT.isNaN || _fixHour(sunrise - fajrT) > portion * 3) fajrT = sunrise - portion;
      if (isha.isNaN || _fixHour(isha - sunset) > portion * 3) isha = sunset + portion;
    }

    // Times are in hours of "solar time at longitude 0" → UTC.
    DateTime at(double hours) {
      final h = hours - lng / 15;
      final base = DateTime.utc(date.year, date.month, date.day);
      return base.add(Duration(seconds: (h * 3600).round())).let(_roundMinute);
    }

    return {
      Prayer.fajr: at(fajrT),
      Prayer.sunrise: at(sunrise),
      // A minute after the sun crosses the meridian, as tables do.
      Prayer.dhuhr: at(dhuhr + 1 / 60),
      Prayer.asr: at(asrT),
      Prayer.maghrib: at(sunset),
      Prayer.isha: at(isha),
    };
  }

  static DateTime _roundMinute(DateTime t) {
    final s = t.second >= 30 ? 1 : 0;
    return DateTime.utc(t.year, t.month, t.day, t.hour, t.minute + s);
  }

  static double _julian(int y, int m, int d) {
    if (m <= 2) {
      y -= 1;
      m += 12;
    }
    final a = (y / 100).floor();
    final b = 2 - a + (a / 4).floor();
    return (365.25 * (y + 4716)).floor() + (30.6001 * (m + 1)).floor() + d + b - 1524.5;
  }

  /// Sun declination (degrees) and equation of time (hours).
  static (double, double) _sun(double jd) {
    final d = jd - 2451545.0;
    final g = _fixAngle(357.529 + 0.98560028 * d);
    final q = _fixAngle(280.459 + 0.98564736 * d);
    final l = _fixAngle(q + 1.915 * _sin(g) + 0.020 * _sin(2 * g));
    final e = 23.439 - 0.00000036 * d;
    final ra = _atan2(_cos(e) * _sin(l), _cos(l)) / 15;
    final eqt = q / 15 - _fixHour(ra);
    final decl = _asin(_sin(e) * _sin(l));
    return (decl, eqt);
  }

  static const _r = math.pi / 180;
  static double _sin(double d) => math.sin(d * _r);
  static double _cos(double d) => math.cos(d * _r);
  static double _tan(double d) => math.tan(d * _r);
  static double _asin(double x) => math.asin(x) / _r;
  static double _acos(double x) => math.acos(x) / _r;
  static double _atan2(double y, double x) => math.atan2(y, x) / _r;
  static double _acot(double x) => math.atan(1 / x) / _r;
  static double _fixAngle(double a) => a - 360 * (a / 360).floor();
  static double _fixHour(double a) => a - 24 * (a / 24).floor();
}

extension<T> on T {
  R let<R>(R Function(T) f) => f(this);
}
