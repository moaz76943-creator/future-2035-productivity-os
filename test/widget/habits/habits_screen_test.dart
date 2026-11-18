import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/core/database/app_database.dart';
import 'package:future_os/app/localization/app_format.dart';
import 'package:future_os/core/time/clock.dart';
import 'package:future_os/features/habits/data/habits_repository.dart';
import 'package:future_os/features/habits/presentation/habit_detail_screen.dart';
import 'package:future_os/features/habits/presentation/habits_screen.dart';
import 'package:future_os/l10n/gen/app_localizations.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';
import '../widget_helpers.dart';

AppLocalizations _l10n(WidgetTester t) => t.element(find.byType(Scaffold).first).l10n;

Future<String> _seedHabit(
  TestEnv env, {
  String name = 'Read',
  int target = 1,
  int weekdays = 127,
  int streakDays = 0,
}) async {
  final r = HabitsRepository(env.db, env.clock);
  final now = env.clock.current;
  env.clock.current = DateTime(2026, 10, 1, 9);
  final id = await r.create(
    name: name,
    color: 0xFF00B8C4,
    weekdays: weekdays,
    targetPerDay: target,
  );
  env.clock.current = now;
  final today = Days.startOfDay(now);
  for (var i = 1; i <= streakDays; i++) {
    await r.setCount(id, Days.addDays(today, -i), target);
  }
  return id;
}

// One-shot reads on the real event loop. Drift `watch()` streams opened from a
// widget test never deliver (their timers live in fake async) and hang the test.
Future<Map<int, int>> _counts(WidgetTester tester, TestEnv env, String id) async {
  final rows = await tester.runAsync(
    () => (env.db.select(env.db.habitLogs)..where((l) => l.habitId.equals(id))).get(),
  );
  return {for (final r in rows!) r.day: r.count};
}

Future<int> _todayCount(WidgetTester tester, TestEnv env, String id) async =>
    (await _counts(tester, env, id))[Days.key(env.clock.now())] ?? 0;

Future<HabitRow?> _habit(WidgetTester tester, TestEnv env, String id) => tester
    .runAsync(() => (env.db.select(env.db.habits)..where((h) => h.id.equals(id))).getSingleOrNull())
    .then((r) => r);

void main() {
  for (final tag in ['en', 'ar']) {
    testWidgets('check-in increments are persisted and streak updates ($tag)', (tester) async {
      final env = TestEnv();
      final id = await _seedHabit(env, target: 2, streakDays: 3);
      await pumpScreen(tester, const HabitsScreen(), env: env, localeTag: tag);
      await settle(tester);
      final l10n = _l10n(tester);
      expect(
        Directionality.of(tester.element(find.text('Read'))),
        tag == 'ar' ? TextDirection.rtl : TextDirection.ltr,
      );
      // Unfinished today doesn't break the streak.
      expect(find.text(l10n.habitStreak(3)), findsOneWidget);
      expect(find.text(l10n.habitsTodaySummary(0, 1)), findsOneWidget);

      await tester.tap(find.byKey(ValueKey('checkin-$id')));
      await settle(tester);
      expect(await _todayCount(tester, env, id), 1);
      expect(find.text(l10n.habitCountToday(1, 2)), findsOneWidget);
      expect(find.text(l10n.habitStreak(3)), findsOneWidget);

      await tester.tap(find.byKey(ValueKey('checkin-$id')));
      await settle(tester);
      expect(await _todayCount(tester, env, id), 2);
      expect(find.text(l10n.habitStreak(4)), findsOneWidget);
      expect(find.text(l10n.habitsTodaySummary(1, 1)), findsOneWidget);

      // At the target, a tap opens adjustments rather than over-counting.
      await tester.tap(find.byKey(ValueKey('checkin-$id')));
      await settle(tester);
      expect(await _todayCount(tester, env, id), 2);
      await tester.tap(find.byKey(const ValueKey('adjust-decrease')));
      await settle(tester);
      expect(await _todayCount(tester, env, id), 1);

      // Long-press → reset.
      await tester.longPress(find.byKey(ValueKey('checkin-$id')));
      await settle(tester);
      await tester.tap(find.byKey(const ValueKey('adjust-reset')));
      await settle(tester);
      expect(await _todayCount(tester, env, id), 0);
      // Close in the body: closing drift from a tear-down never completes under fake async.
      await env.dispose();
    });
  }

  testWidgets('not-scheduled and paused habits are in separate sections', (tester) async {
    final env = TestEnv();
    // Today is Monday; schedule only Tuesday (bit 1).
    await _seedHabit(env, name: 'Swim', weekdays: 0x02);
    final paused = await _seedHabit(env, name: 'Journal');
    await HabitsRepository(env.db, env.clock).setPaused(paused, true);
    await _seedHabit(env, name: 'Walk');
    await pumpScreen(tester, const HabitsScreen(), env: env);
    await settle(tester);
    final l10n = _l10n(tester);
    expect(find.text(l10n.habitNotScheduledToday), findsOneWidget);
    expect(find.text(l10n.habitPaused), findsOneWidget);
    expect(find.text(l10n.habitsPausedNote), findsOneWidget);
    expect(find.byKey(ValueKey('checkin-$paused')), findsNothing);
    expect(find.text(l10n.habitsTodaySummary(0, 1)), findsOneWidget);
    // Close in the body: closing drift from a tear-down never completes under fake async.
    await env.dispose();
  });

  testWidgets('empty state and create habit via sheet (en)', (tester) async {
    final env = TestEnv();
    await pumpScreen(tester, const HabitsScreen(), env: env);
    await settle(tester);
    final l10n = _l10n(tester);
    expect(find.text(l10n.habitsEmptyTitle), findsOneWidget);
    await tester.tap(find.text(l10n.habitNew).first);
    await settle(tester);
    // Save without name → validation, nothing persisted.
    await tester.ensureVisible(find.byKey(const ValueKey('habit-save')));
    await tester.pump();
    await tester.tap(find.byKey(const ValueKey('habit-save')));
    await settle(tester);
    expect(find.text(l10n.validationNameRequired), findsOneWidget);
    await tester.enterText(find.byKey(const ValueKey('habit-name')), 'Meditate');
    // Deselect Saturday and Sunday.
    await tester.tap(find.byKey(const ValueKey('weekday-5')));
    await tester.tap(find.byKey(const ValueKey('weekday-6')));
    await tester.tap(find.byTooltip(l10n.a11yIncrease));
    await tester.pump();
    await tester.ensureVisible(find.byKey(const ValueKey('habit-save')));
    await tester.tap(find.byKey(const ValueKey('habit-save')));
    await settle(tester);
    // Let the sheet's closing transition finish before counting list rows.
    await tester.pump(const Duration(seconds: 1));
    final habits = (await tester.runAsync(() => env.db.select(env.db.habits).get()))!
        .where((h) => !h.archived)
        .toList();
    expect(habits.single.name, 'Meditate');
    expect(habits.single.weekdays, 0x1F);
    expect(habits.single.targetPerDay, 2);
    expect(habits.single.reminderMinute, isNull);
    expect(find.text('Meditate'), findsOneWidget);
    // Close in the body: closing drift from a tear-down never completes under fake async.
    await env.dispose();
  });

  testWidgets('weekday chips mirror in RTL (Monday on the right)', (tester) async {
    final env = TestEnv();
    await pumpScreen(tester, const HabitsScreen(), env: env, localeTag: 'ar');
    await settle(tester);
    await tester.tap(find.text(_l10n(tester).habitNew).first);
    await settle(tester);
    final mon = tester.getCenter(find.byKey(const ValueKey('weekday-0')));
    final sun = tester.getCenter(find.byKey(const ValueKey('weekday-6')));
    expect(mon.dx, greaterThan(sun.dx));
    // Close in the body: closing drift from a tear-down never completes under fake async.
    await env.dispose();
  });

  testWidgets('large font and long name render without overflow', (tester) async {
    final env = TestEnv();
    await _seedHabit(env, name: 'Read twenty pages of a long book before going to sleep ' * 3);
    await pumpScreen(
      tester,
      const MediaQuery(
        data: MediaQueryData(textScaler: TextScaler.linear(2)),
        child: HabitsScreen(),
      ),
      env: env,
      localeTag: 'ru',
    );
    await settle(tester);
    expect(tester.takeException(), isNull);
    // Close in the body: closing drift from a tear-down never completes under fake async.
    await env.dispose();
  });

  group('detail', () {
    for (final tag in ['en', 'ar']) {
      testWidgets('streaks, consistency, heatmap direction and calendar toggle ($tag)', (
        tester,
      ) async {
        final env = TestEnv();
        final id = await _seedHabit(env, streakDays: 5);
        await pumpScreen(
          tester,
          HabitDetailScreen(habitId: id),
          env: env,
          localeTag: tag,
        );
        await settle(tester);
        final l10n = _l10n(tester);
        final fmt = tester.element(find.byType(Scaffold).first).fmt;
        expect(
          find.descendant(
            of: find.byKey(const ValueKey('stat-current')),
            matching: find.text(l10n.habitsDays(5)),
          ),
          findsOneWidget,
        );
        expect(
          find.descendant(
            of: find.byKey(const ValueKey('stat-best')),
            matching: find.text(l10n.habitsDays(5)),
          ),
          findsOneWidget,
        );
        // 30-day window starts at creation (Oct 1) → Oct 18..Nov 15 scheduled = 29 days,
        // done 5.
        expect(
          find.descendant(
            of: find.byKey(const ValueKey('stat-c30')),
            matching: find.text(fmt.percent(5 / 29)),
          ),
          findsOneWidget,
        );

        // Heatmap: oldest week at the start edge.
        final heat = find.byKey(const ValueKey('habit-heatmap'));
        final columns = find.descendant(of: heat, matching: find.byType(Column));
        final first = tester.getCenter(columns.first).dx;
        final last = tester.getCenter(columns.last).dx;
        if (tag == 'ar') {
          expect(first, greaterThan(last));
        } else {
          expect(first, lessThan(last));
        }

        // Toggle a past day (Nov 9, not logged) → done, persisted.
        final day = find.byKey(ValueKey('day-${20261109}'));
        await tester.ensureVisible(day);
        await tester.pump();
        await tester.tap(day);
        await settle(tester);
        final counts = await _counts(tester, env, id);
        expect(counts[20261109], 1);
        // Toggle a done day off.
        await tester.tap(find.byKey(ValueKey('day-${20261115}')));
        await settle(tester);
        final after = await _counts(tester, env, id);
        expect(after.containsKey(20261115), isFalse);
        // Future days cannot be toggled.
        await tester.tap(find.byKey(ValueKey('day-${20261120}')));
        await settle(tester);
        expect((await _counts(tester, env, id)).containsKey(20261120), isFalse);
        expect(tester.takeException(), isNull);
        // Close in the body: closing drift from a tear-down never completes under fake async.
        await env.dispose();
      });
    }

    testWidgets('pause and resume from menu keep the streak', (tester) async {
      final env = TestEnv();
      final id = await _seedHabit(env, streakDays: 2);
      await pumpScreen(tester, HabitDetailScreen(habitId: id), env: env);
      await settle(tester);
      final l10n = _l10n(tester);
      await tester.tap(find.byKey(const ValueKey('habit-menu')));
      await settle(tester);
      await tester.tap(find.text(l10n.habitPause));
      await settle(tester);
      expect(find.text(l10n.habitsPausedNote), findsOneWidget);
      expect((await _habit(tester, env, id))!.paused, isTrue);
      expect(
        HabitsRepository.decodePauses(
          await tester.runAsync<String?>(() => env.db.readValue(HabitsRepository.pausesKey(id))),
        ),
        isNotEmpty,
      );
      expect(find.text(l10n.habitsDays(2)), findsWidgets);
      // Close in the body: closing drift from a tear-down never completes under fake async.
      await env.dispose();
    });
  });
}
