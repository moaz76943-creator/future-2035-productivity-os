import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/assistant/domain/day_planner.dart';
import 'package:future_os/features/assistant/domain/workload.dart';

void main() {
  // Monday 2026-11-16 10:00.
  final now = DateTime(2026, 11, 16, 10);
  DateTime d(int day, [int h = 0, int m = 0]) => DateTime(2026, 11, day, h, m);

  test('free time is 9–18 on workdays minus timed events; today starts now', () {
    final w = WorkloadCalculator.compute(
      now: now,
      openTasks: const [],
      busy: [
        TimeSpan(d(16, 12), d(16, 13)), // today, 1 h
        TimeSpan(d(17, 8), d(17, 10)), // Tue, 1 h inside the window
        TimeSpan(d(21, 10), d(21, 12)), // Saturday: not a workday
      ],
    );
    expect(w.days, hasLength(7));
    expect(w.days.first.freeMinutes, 7 * 60); // 10–18 minus 1 h
    expect(w.days[1].freeMinutes, 8 * 60);
    expect(w.days[5].workday, isFalse);
    expect(w.days[5].freeMinutes, 0);
    // Mon(7h) + Tue(8h) + Wed..Fri (9h each) = 42h.
    expect(w.freeMinutes, (7 + 8 + 27) * 60);
  });

  test('estimates only count open tasks due in the 7-day range', () {
    final w = WorkloadCalculator.compute(
      now: now,
      busy: const [],
      openTasks: [
        PlanTask(id: '1', title: 'a', dueAt: d(16), estimateMinutes: 60),
        PlanTask(id: '2', title: 'b', dueAt: d(20, 15), estimateMinutes: 90),
        PlanTask(id: '3', title: 'c', dueAt: d(18)),
        PlanTask(id: '4', title: 'd', dueAt: d(23), estimateMinutes: 600), // out of range
        PlanTask(id: '5', title: 'e', dueAt: d(10), estimateMinutes: 600), // overdue
        const PlanTask(id: '6', title: 'f', estimateMinutes: 30), // no due date
      ],
    );
    expect(w.estimatedMinutes, 150);
    expect(w.unestimatedCount, 1);
    expect(w.taskCount, 3);
    expect(w.days[4].estimatedMinutes, 90);
    expect(w.overloaded, isFalse);
  });

  test('Sunday–Thursday week and overload detection', () {
    final w = WorkloadCalculator.compute(
      now: DateTime(2026, 11, 16, 17),
      busy: const [],
      workdays: WorkloadCalculator.sundayToThursday,
      openTasks: [PlanTask(id: '1', title: 'a', dueAt: d(16), estimateMinutes: 60 * 50)],
    );
    // Mon 1h + Tue, Wed, Thu 9h each + Sun (22nd) 9h = 37h.
    expect(w.freeMinutes, 37 * 60);
    expect(w.days[4].workday, isFalse); // Friday
    expect(w.overloaded, isTrue);
  });
}
