import 'package:drift/drift.dart' show Value;
import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/core/database/app_database.dart';
import 'package:future_os/features/analytics/presentation/analytics_screen.dart';
import 'package:future_os/features/tasks/data/tasks_repository.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';
import '../widget_helpers.dart';

Future<TestEnv> seeded() async {
  final env = TestEnv();
  final now = env.clock.now().toUtc();
  await env.db
      .into(env.db.projects)
      .insert(
        ProjectsCompanion.insert(
          id: 'p1',
          name: 'Launch',
          color: 0xFF6C4CFF,
          createdAt: now,
          updatedAt: now,
        ),
      );
  final start = DateTime(2026, 11, 16, 8).toUtc();
  await env.db
      .into(env.db.focusSessions)
      .insert(
        FocusSessionsCompanion.insert(
          id: 's1',
          mode: 'pomodoro',
          activeSeconds: 1500,
          startedAt: start,
          endedAt: start.add(const Duration(minutes: 25)),
          outcome: 'completed',
          projectId: const Value('p1'),
        ),
      );
  final tasks = TasksRepository(env.db, env.clock);
  final id = await tasks.create(
    TaskDraft(title: 'Ship', projectId: 'p1', estimateMinutes: 40, dueAt: DateTime(2026, 11, 15)),
  );
  env.clock.current = DateTime(2026, 11, 15, 9);
  await tasks.complete(id);
  env.clock.current = DateTime(2026, 11, 16, 10);
  return env;
}

void main() {
  testWidgets('shows measured and estimated numbers from stored data (en)', (tester) async {
    final env = await seeded();
    await pumpScreen(tester, const AnalyticsScreen(), env: env);
    await settle(tester);

    expect(find.text('Insights'), findsWidgets);
    expect(find.text('25 min'), findsWidgets); // measured focus
    expect(find.text('Measured from focus sessions'), findsOneWidget);
    expect(find.text('100%'), findsWidgets); // on-time completion
    expect(find.text('1 of 1 due tasks done on time'), findsOneWidget);
    expect(find.text('Estimated work completed'), findsOneWidget);
    expect(find.text('40 min'), findsOneWidget);
    expect(find.text('Based on your estimates, not measured time'), findsOneWidget);
    // No habits or reviews yet: honest "no data".
    expect(find.text('Not enough data yet'), findsWidgets);

    await tester.scrollUntilVisible(find.text('1 of 1 tasks done'), 300);
    expect(find.text('Launch'), findsWidgets);
    expect(find.bySemanticsLabel(RegExp('Focus minutes per day: total 25 min')), findsOneWidget);

    await tester.tap(find.text('30 days'));
    await settle(tester);
    expect(tester.takeException(), isNull);
    await env.dispose();
  });

  testWidgets('empty database shows no-data states without errors', (tester) async {
    final env = TestEnv();
    await pumpScreen(tester, const AnalyticsScreen(), env: env);
    await settle(tester);
    expect(find.text('0 min'), findsWidgets);
    expect(find.text('Not enough data yet'), findsWidgets);
    expect(tester.takeException(), isNull);
    await env.dispose();
  });

  testWidgets('Arabic RTL with large text renders without overflow', (tester) async {
    final env = await seeded();
    await pumpScreen(
      tester,
      Builder(
        builder: (context) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.6)),
          child: const AnalyticsScreen(),
        ),
      ),
      env: env,
      localeTag: 'ar',
    );
    await settle(tester);
    expect(tester.takeException(), isNull);
    expect(Directionality.of(tester.element(find.byType(AnalyticsScreen))), TextDirection.rtl);
    // Western digits in Arabic.
    expect(find.textContaining('25'), findsWidgets);
    await tester.scrollUntilVisible(find.text('Launch').last, 300);
    expect(tester.takeException(), isNull);
    await env.dispose();
  });
}
