import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/assistant/domain/day_planner.dart';

void main() {
  final now = DateTime(2026, 11, 16, 10, 2);
  DateTime at(int h, [int m = 0, int day = 16]) => DateTime(2026, 11, day, h, m);

  test('orders overdue first, then priority, due date and estimate', () {
    final tasks = [
      PlanTask(id: 'a', title: 'A', priority: 1, dueAt: at(0), estimateMinutes: 30),
      PlanTask(id: 'b', title: 'B', priority: 4, dueAt: at(0, 0, 17), estimateMinutes: 30),
      PlanTask(id: 'c', title: 'C', priority: 0, dueAt: at(0, 0, 14), estimateMinutes: 60),
      PlanTask(id: 'd', title: 'D', priority: 4, dueAt: at(0), estimateMinutes: 90),
      PlanTask(id: 'e', title: 'E', priority: 4, dueAt: at(0), estimateMinutes: 15),
      PlanTask(id: 'f', title: 'F', priority: 4, dueAt: at(0)),
      // Too far in the future and without a due date: not planned.
      PlanTask(id: 'g', title: 'G', priority: 4, dueAt: at(0, 0, 30)),
      const PlanTask(id: 'h', title: 'H', priority: 4),
    ];
    final ordered = DayPlanner.order(tasks, now).map((t) => t.id).toList();
    expect(ordered, ['c', 'e', 'd', 'f', 'b', 'a']);
  });

  test('timed tasks become overdue after their time, date-only after the day', () {
    expect(PlanTask(id: 'x', title: 'x', dueAt: at(9), dueHasTime: true).isOverdue(now), isTrue);
    expect(PlanTask(id: 'x', title: 'x', dueAt: at(0)).isOverdue(now), isFalse);
    expect(PlanTask(id: 'x', title: 'x', dueAt: at(0, 0, 15)).isOverdue(now), isTrue);
  });

  test('free time runs from now (rounded to 5 min) to 22:00 minus events', () {
    final free = DayPlanner.freeToday(now, [
      TimeSpan(at(11), at(12)),
      TimeSpan(at(11, 30), at(13)), // overlapping
      TimeSpan(at(23), at(23, 30)), // outside window
      TimeSpan(at(8), at(9)), // before now
    ]);
    expect(free, [TimeSpan(at(10, 5), at(11)), TimeSpan(at(13), at(22))]);
    expect(free.fold<int>(0, (a, s) => a + s.minutes), 55 + 540);
  });

  test('fits estimates into the earliest slot and reports overflow', () {
    final plan = DayPlanner.plan(
      now: DateTime(2026, 11, 16, 19),
      busy: [TimeSpan(at(20), at(21))],
      tasks: [
        PlanTask(id: 'big', title: 'Big', priority: 3, dueAt: at(0), estimateMinutes: 90),
        PlanTask(id: 'm', title: 'Medium', priority: 2, dueAt: at(0), estimateMinutes: 45),
        PlanTask(id: 's', title: 'Small', priority: 1, dueAt: at(0), estimateMinutes: 30),
        PlanTask(id: 't', title: 'Tiny', priority: 0, dueAt: at(0), estimateMinutes: 15),
        PlanTask(id: 'n', title: 'No estimate', priority: 4, dueAt: at(0)),
      ],
    );
    expect(plan.capacityMinutes, 120);
    expect(plan.overflow.map((t) => t.id), ['big']);
    expect(plan.unestimated.map((t) => t.id), ['n']);
    expect([for (final b in plan.blocks) (b.task.id, b.start, b.end)], [
      ('m', at(19), at(19, 45)),
      ('t', at(19, 45), at(20)),
      ('s', at(21), at(21, 30)),
    ]);
    expect(plan.plannedMinutes, 90);
  });

  test('no capacity after the end of the planning day', () {
    final plan = DayPlanner.plan(
      now: DateTime(2026, 11, 16, 22, 30),
      busy: const [],
      tasks: [PlanTask(id: 'a', title: 'A', dueAt: at(0), estimateMinutes: 10)],
    );
    expect(plan.capacityMinutes, 0);
    expect(plan.overflow, hasLength(1));
    expect(plan.blocks, isEmpty);
  });

  test('empty input yields an empty plan', () {
    final plan = DayPlanner.plan(now: now, busy: const [], tasks: const []);
    expect(plan.isEmpty, isTrue);
  });
}
