/// How to be ready for an exam: new cards to learn per day so every card has
/// been seen at least a day before the exam (the last day is for review).
class ExamPlan {
  const ExamPlan({required this.daysLeft, required this.newPerDay});

  /// Whole days until the exam day (0 = the exam is today).
  final int daysLeft;

  /// New cards to learn each day from today; 0 when all are learnt.
  final int newPerDay;

  /// Null when the exam is over.
  static ExamPlan? of({required DateTime exam, required DateTime today, required int newCards}) {
    DateTime day(DateTime d) => DateTime(d.year, d.month, d.day);
    // Rounded: a day across a clock change is 23 or 25 hours long.
    final days = (day(exam).difference(day(today)).inHours / 24).round();
    if (days < 0) return null;
    final learningDays = days <= 1 ? 1 : days - 1;
    final perDay = newCards <= 0 ? 0 : (newCards / learningDays).ceil();
    return ExamPlan(daysLeft: days, newPerDay: perDay);
  }

  /// `deck.exam.<id>` → `yyyy-mm-dd`.
  static String key(String deckId) => 'deck.exam.$deckId';

  static String encode(DateTime d) =>
      '${d.year.toString().padLeft(4, '0')}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')}';

  static DateTime? decode(String? s) {
    final m = RegExp(r'^(\d{4})-(\d{2})-(\d{2})$').firstMatch(s ?? '');
    return m == null
        ? null
        : DateTime(int.parse(m.group(1)!), int.parse(m.group(2)!), int.parse(m.group(3)!));
  }
}
