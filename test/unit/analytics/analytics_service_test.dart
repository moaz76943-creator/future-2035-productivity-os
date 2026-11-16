import 'package:drift/drift.dart' show Value;
import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/core/database/app_database.dart';
import 'package:future_os/features/analytics/data/analytics_service.dart';
import 'package:future_os/features/tasks/data/tasks_repository.dart';

import '../../helpers.dart';

void main() {
  test('on-time rate only counts decided tasks completed by their deadline', () async {
    final env = TestEnv(DateTime(2026, 11, 14, 9));
    final tasks = TasksRepository(env.db, env.clock);
    // Due Nov 14 (date only), done on that day → on time.
    final a = await tasks.create(TaskDraft(title: 'a', dueAt: DateTime(2026, 11, 14)));
    await tasks.complete(a);
    // Due Nov 14 10:00 (timed), done Nov 15 → late.
    final b = await tasks.create(
      TaskDraft(title: 'b', dueAt: DateTime(2026, 11, 14, 10), dueHasTime: true),
    );
    env.clock.current = DateTime(2026, 11, 15, 9);
    await tasks.complete(b);
    // Due Nov 15, still open and past → counts against.
    await tasks.create(TaskDraft(title: 'c', dueAt: DateTime(2026, 11, 15)));
    // Due today (Nov 16), still open, deadline not yet passed → ignored.
    await tasks.create(TaskDraft(title: 'd', dueAt: DateTime(2026, 11, 16)));

    env.clock.current = DateTime(2026, 11, 16, 10);
    final s = await AnalyticsService(env.db, env.clock).compute(AnalyticsRange.week);
    expect(s.tasksDue, 3);
    expect(s.tasksDueCompleted, 1);
    expect(s.completionRate, closeTo(1 / 3, 1e-9));
    expect(s.tasksCompleted, 2);
    await env.dispose();
  });

  test('completion rate is null without decided due tasks', () async {
    final env = TestEnv();
    final s = await AnalyticsService(env.db, env.clock).compute(AnalyticsRange.month);
    expect(s.completionRate, isNull);
    expect(s.focusByDay, hasLength(30));
    expect(s.measuredFocusSeconds, 0);
    await env.dispose();
  });

  test('focus time is measured from work sessions only', () async {
    final env = TestEnv();
    final start = DateTime(2026, 11, 16, 8).toUtc();
    Future<void> add(String id, String phase, int secs) => env.db
        .into(env.db.focusSessions)
        .insert(
          FocusSessionsCompanion.insert(
            id: id,
            mode: 'pomodoro',
            phase: Value(phase),
            activeSeconds: secs,
            startedAt: start,
            endedAt: start.add(Duration(seconds: secs)),
            outcome: 'completed',
          ),
        );
    await add('w', 'work', 1500);
    await add('b', 'shortBreak', 300);
    final s = await AnalyticsService(env.db, env.clock).compute(AnalyticsRange.week);
    expect(s.measuredFocusSeconds, 1500);
    expect(s.completedSessions, 1);
    expect(s.focusByDay.last.value, 25);
    await env.dispose();
  });
}
