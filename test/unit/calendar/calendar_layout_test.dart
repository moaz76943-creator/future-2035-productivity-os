import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/calendar/application/calendar_layout.dart';

typedef Item = ({String id, DateTime start, DateTime end});

Item item(String id, DateTime s, DateTime e) => (id: id, start: s, end: e);

List<GridSlot<Item>> lay(List<Item> items, DateTime day) =>
    layoutDay(items, day, start: (i) => i.start, end: (i) => i.end);

void main() {
  group('day ranges (DST safe, field based)', () {
    test('week around the 2026-03-29 European DST change', () {
      final days = CalendarMath.weekDays(DateTime(2026, 3, 29, 15));
      expect(days.first, DateTime(2026, 3, 23));
      expect(days.last, DateTime(2026, 3, 29));
      for (var i = 0; i < 7; i++) {
        expect(days[i].day, 23 + i);
        expect(days[i].hour, 0);
        expect(days[i].minute, 0);
      }
      final r = CalendarMath.rangeFor(CalendarView.week, DateTime(2026, 3, 25));
      expect(r.from, DateTime(2026, 3, 23));
      expect(r.to, DateTime(2026, 3, 30));
    });

    test('day range of the autumn change day ends at the next midnight', () {
      final r = CalendarMath.dayRange(DateTime(2026, 10, 25, 23, 30));
      expect(r.from, DateTime(2026, 10, 25));
      expect(r.to, DateTime(2026, 10, 26));
      expect(r.contains(DateTime(2026, 10, 25, 23, 59)), isTrue);
      expect(r.contains(DateTime(2026, 10, 26)), isFalse);
    });

    test('addDays uses calendar fields across month and year ends', () {
      expect(CalendarMath.addDays(DateTime(2026, 3, 28), 1), DateTime(2026, 3, 29));
      expect(CalendarMath.addDays(DateTime(2026, 3, 31), 1), DateTime(2026, 4, 1));
      expect(CalendarMath.addDays(DateTime(2026, 12, 31), 1), DateTime(2027, 1, 1));
      expect(CalendarMath.addDays(DateTime(2026, 3, 1), -1), DateTime(2026, 2, 28));
    });

    test('month grid covers whole Monday-first weeks', () {
      final days = CalendarMath.monthGridDays(DateTime(2026, 11, 16));
      expect(days.first, DateTime(2026, 10, 26)); // Monday
      expect(days.last, DateTime(2026, 12, 6)); // Sunday
      expect(days.length % 7, 0);
      expect(days.length, 42);
      final feb = CalendarMath.monthGridDays(DateTime(2027, 2));
      expect(feb.first, DateTime(2027, 2, 1)); // Feb 1 2027 is a Monday
      expect(feb.length, 28);
    });

    test('stepping months clamps the day', () {
      expect(
        CalendarMath.step(CalendarView.month, DateTime(2026, 1, 31), 1),
        DateTime(2026, 2, 28),
      );
      expect(
        CalendarMath.step(CalendarView.month, DateTime(2026, 1, 15), -1),
        DateTime(2025, 12, 15),
      );
      expect(CalendarMath.step(CalendarView.week, DateTime(2026, 3, 23), 1), DateTime(2026, 3, 30));
      expect(
        CalendarMath.step(CalendarView.day, DateTime(2026, 3, 29, 12), 1),
        DateTime(2026, 3, 30),
      );
    });
  });

  group('wall clock positions', () {
    test('uses wall-clock fields, so the DST night keeps local hours', () {
      final day = DateTime(2026, 3, 29);
      final slots = lay([
        item('a', DateTime(2026, 3, 29, 0, 30), DateTime(2026, 3, 29, 3, 30)),
      ], day);
      expect(slots.single.startMinute, 30);
      expect(slots.single.endMinute, 210);
    });

    test('events crossing midnight are clipped to each day', () {
      final e = item('n', DateTime(2026, 3, 28, 22), DateTime(2026, 3, 29, 2));
      final first = lay([e], DateTime(2026, 3, 28)).single;
      expect((first.startMinute, first.endMinute), (22 * 60, 1440));
      final second = lay([e], DateTime(2026, 3, 29)).single;
      expect((second.startMinute, second.endMinute), (0, 120));
      expect(lay([e], DateTime(2026, 3, 30)), isEmpty);
    });

    test('short events get a minimum height and stay inside the day', () {
      final s = lay([
        item('s', DateTime(2026, 5, 1, 23, 55), DateTime(2026, 5, 2)),
      ], DateTime(2026, 5, 1)).single;
      expect(s.endMinute, 1440);
      expect(s.endMinute - s.startMinute, 20);
    });

    test('drag target snaps to 15 minutes and stays on the day', () {
      expect(CalendarMath.snap(22), 15);
      expect(CalendarMath.snap(23), 30);
      expect(CalendarMath.snap(-8), -15);
      final day = DateTime(2026, 3, 29);
      expect(
        CalendarMath.draggedStart(DateTime(2026, 3, 29, 9), day, 45, durationMinutes: 60),
        DateTime(2026, 3, 29, 9, 45),
      );
      expect(
        CalendarMath.draggedStart(DateTime(2026, 3, 29, 23), day, 120, durationMinutes: 60),
        DateTime(2026, 3, 29, 23),
      );
      expect(
        CalendarMath.draggedStart(DateTime(2026, 3, 29, 1), day, -180, durationMinutes: 30),
        DateTime(2026, 3, 29),
      );
    });
  });

  group('overlap columns', () {
    final d = DateTime(2026, 11, 16);
    DateTime t(int h, [int m = 0]) => DateTime(2026, 11, 16, h, m);

    test('non-overlapping events use one column each', () {
      final slots = lay([item('a', t(9), t(10)), item('b', t(10), t(11))], d);
      expect(slots.map((s) => (s.column, s.columns)), [(0, 1), (0, 1)]);
    });

    test('overlapping events are placed side by side', () {
      final slots = lay([
        item('a', t(9), t(11)),
        item('b', t(10), t(12)),
        item('c', t(13), t(14)),
      ], d);
      final byId = {for (final s in slots) s.item.id: s};
      expect((byId['a']!.column, byId['a']!.columns), (0, 2));
      expect((byId['b']!.column, byId['b']!.columns), (1, 2));
      expect((byId['c']!.column, byId['c']!.columns), (0, 1));
    });

    test('columns are reused inside a cluster', () {
      // a 9-12 spans, b 9-10, c 10-11 can reuse b's column.
      final slots = lay([
        item('b', t(9), t(10)),
        item('a', t(9), t(12)),
        item('c', t(10), t(11)),
      ], d);
      final byId = {for (final s in slots) s.item.id: s};
      expect(byId['a']!.column, 0); // longer event first
      expect(byId['b']!.column, 1);
      expect(byId['c']!.column, 1);
      expect(slots.every((s) => s.columns == 2), isTrue);
    });

    test('three-way overlap', () {
      final slots = lay([
        item('a', t(9), t(12)),
        item('b', t(9, 30), t(11)),
        item('c', t(10), t(10, 30)),
      ], d);
      expect(slots.map((s) => s.column).toSet(), {0, 1, 2});
      expect(slots.every((s) => s.columns == 3), isTrue);
    });
  });
}
