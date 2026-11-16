import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/core/recurrence/recurrence_rule.dart';

void main() {
  group('RecurrenceRule parsing', () {
    test('round-trips', () {
      const src = 'FREQ=WEEKLY;INTERVAL=2;BYDAY=MO,WE,FR;COUNT=10';
      expect(RecurrenceRule.parse(src).toString(), src);
      expect(
        RecurrenceRule.parse('FREQ=DAILY;UNTIL=20261231').toString(),
        'FREQ=DAILY;UNTIL=20261231',
      );
    });
    test('rejects invalid input', () {
      expect(RecurrenceRule.tryParse('FREQ=HOURLY'), isNull);
      expect(RecurrenceRule.tryParse('FREQ=DAILY;INTERVAL=0'), isNull);
      expect(RecurrenceRule.tryParse('FREQ=WEEKLY;BYDAY=XX'), isNull);
      expect(RecurrenceRule.tryParse(''), isNull);
      expect(RecurrenceRule.tryParse(null), isNull);
    });
  });

  group('occurrences', () {
    test('daily with interval and count', () {
      final r = RecurrenceRule.parse('FREQ=DAILY;INTERVAL=3;COUNT=3');
      expect(r.occurrences(DateTime(2026, 1, 30, 9)).toList(), [
        DateTime(2026, 1, 30, 9),
        DateTime(2026, 2, 2, 9),
        DateTime(2026, 2, 5, 9),
      ]);
    });
    test('weekly by day starting mid-week skips earlier days', () {
      final r = RecurrenceRule.parse('FREQ=WEEKLY;BYDAY=MO,TH;COUNT=4');
      // 2026-11-18 is a Wednesday.
      expect(r.occurrences(DateTime(2026, 11, 18, 8)).toList(), [
        DateTime(2026, 11, 19, 8),
        DateTime(2026, 11, 23, 8),
        DateTime(2026, 11, 26, 8),
        DateTime(2026, 11, 30, 8),
      ]);
    });
    test('monthly on the 31st clamps to month end', () {
      final r = RecurrenceRule.parse('FREQ=MONTHLY;COUNT=4');
      expect(r.occurrences(DateTime(2026, 1, 31)).toList(), [
        DateTime(2026, 1, 31),
        DateTime(2026, 2, 28),
        DateTime(2026, 3, 31),
        DateTime(2026, 4, 30),
      ]);
    });
    test('yearly on Feb 29 clamps in non-leap years', () {
      final r = RecurrenceRule.parse('FREQ=YEARLY;COUNT=2');
      expect(r.occurrences(DateTime(2028, 2, 29)).toList(), [
        DateTime(2028, 2, 29),
        DateTime(2029, 2, 28),
      ]);
    });
    test('until is inclusive', () {
      final r = RecurrenceRule.parse('FREQ=DAILY;UNTIL=20260103');
      expect(r.occurrences(DateTime(2026, 1, 1, 23)).length, 3);
    });
    test('wall time is preserved across DST (local construction)', () {
      final r = RecurrenceRule.parse('FREQ=DAILY;COUNT=400');
      for (final t in r.occurrences(DateTime(2026, 1, 1, 9, 30))) {
        expect(t.hour, 9);
        expect(t.minute, 30);
      }
    });
    test('nextAfter and between', () {
      final r = RecurrenceRule.parse('FREQ=WEEKLY');
      final start = DateTime(2026, 11, 2, 10);
      expect(
        r.nextAfter(start, DateTime(2026, 11, 10)),
        DateTime(2026, 11, 16, 10),
      );
      expect(
        r.between(start, DateTime(2026, 11, 1), DateTime(2026, 12, 1)).length,
        5,
      );
    });
  });
}
