import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/flashcards/domain/study_streak.dart';

void main() {
  DateTime d(int day) => DateTime(2026, 3, day);

  test('current streak counts back from today, or from yesterday', () {
    final days = {d(10), d(11), d(12), d(14)};
    expect(StudyStreak.current(days, DateTime(2026, 3, 14, 9)), 1);
    expect(
      StudyStreak.current(days, DateTime(2026, 3, 13, 22)),
      3,
      reason: 'today not studied yet',
    );
    expect(StudyStreak.current(days, DateTime(2026, 3, 16)), 0, reason: 'a day was missed');
    expect(StudyStreak.current({}, d(1)), 0);
  });

  test('best run, also across a month end and a clock change', () {
    final days = {
      DateTime(2026, 3, 27), DateTime(2026, 3, 28), DateTime(2026, 3, 29), // DST in Europe
      DateTime(2026, 3, 30), DateTime(2026, 3, 31), DateTime(2026, 4),
      DateTime(2026, 4, 5),
    };
    expect(StudyStreak.best(days), 6);
    expect(StudyStreak.current(days, DateTime(2026, 4)), 6);
  });
}
