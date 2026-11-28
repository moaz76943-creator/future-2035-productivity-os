import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/core/time/hijri.dart';
import 'package:future_os/features/calendar/application/hijri_month.dart';

void main() {
  test('span covers exactly one Hijri month', () {
    final s = HijriMonth.span(DateTime(2026, 11, 23))!;
    expect(s.$1, DateTime(2026, 11, 11));
    expect(HijriDay.of(s.$1)!.day, 1);
    final next = HijriDay.of(s.$2.add(const Duration(days: 1)))!;
    expect(next.day, 1);
    expect(next.month, isNot(HijriDay.of(s.$1)!.month));
  });

  test('grid starts on Monday and ends on Sunday', () {
    final days = HijriMonth.gridDays(DateTime(2026, 11, 23));
    expect(days.first.weekday, DateTime.monday);
    expect(days.last.weekday, DateTime.sunday);
    expect(days.length % 7, 0);
  });

  test('step moves one Hijri month and pick prefers today', () {
    final next = HijriMonth.step(DateTime(2026, 11, 23), 1);
    expect(HijriDay.of(next)!.day, 1);
    final prev = HijriMonth.step(DateTime(2026, 11, 23), -1);
    expect(HijriMonth.inMonth(DateTime(2026, 11, 23), prev), isFalse);
    expect(HijriMonth.pick(DateTime(2026, 11, 20), DateTime(2026, 11, 28)), DateTime(2026, 11, 28));
    expect(HijriMonth.pick(DateTime(2026, 11, 20), DateTime(2027, 3)), DateTime(2026, 11, 11));
  });
}
