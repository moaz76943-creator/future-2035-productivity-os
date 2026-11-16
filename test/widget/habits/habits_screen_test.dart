import 'package:flutter_test/flutter_test.dart';
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

Future<int> _todayCount(TestEnv env, String id) async {
  final counts = await HabitsRepository(env.db, env.clock).watchCounts(id).first;
  return counts[Days.key(env.clock.now())] ?? 0;
}

void main() {
  for (final tag in ['en', 'ar']) {
    testWidgets('check-in increments are persisted and streak updates ($tag)', (tester) async {
      final env = TestEnv();
      addTearDown(env.dispose);
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
      expect(await _todayCount(env, id), 1);
      expect(find.text(l10n.habitCountToday(1, 2)), findsOneWidget);
      expect(find.text(l10n.habitStreak(3)), findsOneWidget);

      await tester.tap(find.byKey(ValueKey('checkin-$id')));
      await settle(tester);
      expect(await _todayCount(env, id), 2);
      expect(find.text(l10n.habitStreak(4)), findsOneWidget);
      expect(find.text(l10n.habitsTodaySummary(1, 1)), findsOneWidget);

      // At the target, a tap opens adjustments rather than over-counting.
      await tester.tap(find.byKey(ValueKey('checkin-$id')));
      await settle(tester);
      expect(await _todayCount(env, id), 2);
      await tester.tap(find.byKey(const ValueKey('adjust-decrease')));
      await settle(tester);
      expect(await _todayCount(env, id), 1);

      // Long-press → reset.
      await tester.longPress(find.byKey(ValueKey('checkin-$id')));
      await settle(tester);
      await tester.tap(find.byKey(const ValueKey('adjust-reset')));
      await settle(tester);
      expect(await _todayCount(env, id), 0);
    });
  }

  testWidgets('not-scheduled and paused habits are in separate sections', (tester) async {
    final env = TestEnv();
    addTearDown(env.dispose);
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
  });

  testWidgets('empty state and create habit via sheet (en)', (tester) async {
    final env = TestEnv();
    addTearDown(env.dispose);
    await pumpScreen(tester, const HabitsScreen(), env: env);
    await settle(tester);
    final l10n = _l10n(tester);
    expect(find.text(l10n.habitsEmptyTitle), findsOneWidget);
    await tester.tap(find.text(l10n.habitNew).first);
    await settle(tester);
    // Save without name → validation, nothing persisted.
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
    final habits = await HabitsRepository(env.db, env.clock).watchHabits().first;
    expect(habits.single.name, 'Meditate');
    expect(habits.single.weekdays, 0x1F);
    expect(habits.single.targetPerDay, 2);
    expect(habits.single.reminderMinute, isNull);
    expect(find.text('Meditate'), findsOneWidget);
  });

  testWidgets('weekday chips mirror in RTL (Monday on the right)', (tester) async {
    final env = TestEnv();
    addTearDown(env.dispose);
    await pumpScreen(tester, const HabitsScreen(), env: env, localeTag: 'ar');
    await settle(tester);
    await tester.tap(find.text(_l10n(tester).habitNew).first);
    await settle(tester);
    final mon = tester.getCenter(find.byKey(const ValueKey('weekday-0')));
    final sun = tester.getCenter(find.byKey(const ValueKey('weekday-6')));
    expect(mon.dx, greaterThan(sun.dx));
  });

  testWidgets('large font and long name render without overflow', (tester) async {
    final env = TestEnv();
    addTearDown(env.dispose);
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
  });

  group('detail', () {
    for (final tag in ['en', 'ar']) {
      testWidgets('streaks, consistency, heatmap direction and calendar toggle ($tag)', (
        tester,
      ) async {
        final env = TestEnv();
        addTearDown(env.dispose);
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
        await tester.scrollUntilVisible(day, 200);
        await tester.tap(day);
        await settle(tester);
        final counts = await HabitsRepository(env.db, env.clock).watchCounts(id).first;
        expect(counts[20261109], 1);
        // Toggle a done day off.
        await tester.tap(find.byKey(ValueKey('day-${20261115}')));
        await settle(tester);
        final after = await HabitsRepository(env.db, env.clock).watchCounts(id).first;
        expect(after.containsKey(20261115), isFalse);
        // Future days cannot be toggled.
        await tester.tap(find.byKey(ValueKey('day-${20261120}')));
        await settle(tester);
        expect(
          (await HabitsRepository(env.db, env.clock).watchCounts(id).first).containsKey(20261120),
          isFalse,
        );
        expect(tester.takeException(), isNull);
      });
    }

    testWidgets('pause and resume from menu keep the streak', (tester) async {
      final env = TestEnv();
      addTearDown(env.dispose);
      final id = await _seedHabit(env, streakDays: 2);
      await pumpScreen(tester, HabitDetailScreen(habitId: id), env: env);
      await settle(tester);
      final l10n = _l10n(tester);
      await tester.tap(find.byKey(const ValueKey('habit-menu')));
      await settle(tester);
      await tester.tap(find.text(l10n.habitPause));
      await settle(tester);
      expect(find.text(l10n.habitsPausedNote), findsOneWidget);
      final repo = HabitsRepository(env.db, env.clock);
      expect((await repo.watchHabit(id).first)!.paused, isTrue);
      expect(await repo.watchPauses(id).first, isNotEmpty);
      expect(find.text(l10n.habitsDays(2)), findsWidgets);
    });
  });
}
