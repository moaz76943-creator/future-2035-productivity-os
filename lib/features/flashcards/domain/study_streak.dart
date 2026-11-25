/// Study streaks from the days on which the user studied (pure, no I/O).
abstract final class StudyStreak {
  /// Consecutive study days ending today, or ending yesterday when today has
  /// no study yet (the streak is still alive until the day is over).
  ///
  /// With [shield] one missed day per 7 is forgiven (streak shield), as long
  /// as the day before it was a study day: a busy day doesn't wipe out weeks.
  static int current(Set<DateTime> days, DateTime today, {bool shield = false}) {
    final d0 = _day(today);
    var d = days.contains(d0) ? d0 : _add(d0, -1);
    var n = 0;
    DateTime? shielded;
    while (true) {
      if (days.contains(d)) {
        n++;
      } else if (shield &&
          days.contains(_add(d, -1)) &&
          (shielded == null || shielded.difference(d).inDays >= 7)) {
        shielded = d;
      } else {
        break;
      }
      d = _add(d, -1);
    }
    return n;
  }

  /// Longest run of consecutive days.
  static int best(Set<DateTime> days) {
    var best = 0;
    for (final d in days) {
      if (days.contains(_add(d, -1))) continue; // not the start of a run
      var n = 0;
      var x = d;
      while (days.contains(x)) {
        n++;
        x = _add(x, 1);
      }
      if (n > best) best = n;
    }
    return best;
  }

  /// Local calendar day (midnight), used as the set key.
  static DateTime day(DateTime t) => _day(t.toLocal());

  static DateTime _day(DateTime t) => DateTime(t.year, t.month, t.day);

  /// Calendar-field arithmetic, safe across DST changes.
  static DateTime _add(DateTime d, int days) => DateTime(d.year, d.month, d.day + days);
}
