/// Stable notification ids derived from entity ids.
///
/// Android identifies scheduled notifications by a 32-bit int. Ids are
/// derived with FNV-1a over a namespaced key, so the same entity always
/// maps to the same id across app launches and reschedules replace rather
/// than duplicate. Small fixed ids are reserved for singletons.
abstract final class NotificationIds {
  /// The single focus-timer phase-end alert.
  static const focus = 1;

  /// The single flashcard review reminder.
  static const review = 2;

  static const _reservedBelow = 1000;

  static int task(String taskId) => _hash('task:$taskId');

  static int event(String eventId, DateTime occurrenceStart) =>
      _hash('event:$eventId:${occurrenceStart.toUtc().millisecondsSinceEpoch}');

  /// [weekday] is 1 (Monday) … 7 (Sunday), or 0 for an every-day reminder.
  static int habit(String habitId, int weekday) => _hash('habit:$habitId:$weekday');

  /// [prayer] index on the local day [day] (yyyymmdd).
  static int prayer(int day, int prayer) => _hash('prayer:$day:$prayer');

  static int _hash(String key) {
    var h = 0x811c9dc5;
    for (final unit in key.codeUnits) {
      h ^= unit;
      h = (h * 0x01000193) & 0xFFFFFFFF;
    }
    // Positive 31-bit value outside the reserved range.
    final v = h & 0x7FFFFFFF;
    return v < _reservedBelow ? v + _reservedBelow : v;
  }
}
