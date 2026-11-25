import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/flashcards/domain/study_streak.dart';
import 'package:future_os/features/habits/data/habits_repository.dart';

void main() {
  DateTime d(int day) => DateTime(2026, 3, day);

  test('study streak shield forgives one missed day per week, not two', () {
    // Studied 1-5, missed 6, studied 7-10.
    final days = {
      for (final i in [1, 2, 3, 4, 5, 7, 8, 9, 10]) d(i),
    };
    expect(StudyStreak.current(days, d(10)), 4, reason: 'without the shield the gap breaks it');
    expect(StudyStreak.current(days, d(10), shield: true), 9, reason: 'the missed 6th is forgiven');
    // A second miss within the same week breaks it.
    final twice = {
      for (final i in [1, 2, 4, 5, 7, 8]) d(i),
    };
    expect(StudyStreak.current(twice, d(8), shield: true), 4);
    // Two days in a row missed: never forgiven.
    final gap = {
      for (final i in [1, 2, 3, 6, 7]) d(i),
    };
    expect(StudyStreak.current(gap, d(7), shield: true), 2);
  });

  test('habit streak shield works the same way', () {
    int key(DateTime t) => t.year * 10000 + t.month * 100 + t.day;
    final counts = {
      for (final i in [1, 2, 3, 4, 5, 7, 8, 9]) key(d(i)): 1,
    };
    int streak({required bool shield}) => HabitMath.currentStreak(
      weekdayMask: 0x7F,
      targetPerDay: 1,
      countsByDay: counts,
      today: d(9),
      shield: shield,
    );
    expect(streak(shield: false), 3);
    expect(streak(shield: true), 8);
  });
}
