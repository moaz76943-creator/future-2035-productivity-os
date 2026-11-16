import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/core/time/clock.dart';
import 'package:future_os/features/habits/application/habit_stats.dart';
import 'package:future_os/features/habits/data/habits_repository.dart';

import '../../helpers.dart';

void main() {
  // 2026-11-16 is a Monday.
  final today = DateTime(2026, 11, 16);
  int k(int y, int m, int d) => y * 10000 + m * 100 + d;

  group('HabitMath with pauses', () {
    test('paused days do not break the current streak', () {
      final counts = {k(2026, 11, 10): 1, k(2026, 11, 11): 1, k(2026, 11, 15): 1};
      final pauses = [PauseSpan(k(2026, 11, 12), k(2026, 11, 14))];
      expect(
        HabitMath.currentStreak(
          weekdayMask: 127,
          targetPerDay: 1,
          countsByDay: counts,
          today: today,
        ),
        1,
      );
      expect(
        HabitMath.currentStreak(
          weekdayMask: 127,
          targetPerDay: 1,
          countsByDay: counts,
          today: today,
          pauses: pauses,
        ),
        3,
      );
    });

    test('an ongoing pause keeps the streak', () {
      final counts = {k(2026, 11, 13): 1, k(2026, 11, 14): 1};
      final pauses = [PauseSpan(k(2026, 11, 15))];
      expect(
        HabitMath.currentStreak(
          weekdayMask: 127,
          targetPerDay: 1,
          countsByDay: counts,
          today: today,
          pauses: pauses,
        ),
        2,
      );
    });

    test('paused days are excluded from consistency and longest streak', () {
      final counts = {k(2026, 11, 1): 1, k(2026, 11, 2): 1, k(2026, 11, 5): 1};
      final pauses = [PauseSpan(k(2026, 11, 3), k(2026, 11, 4))];
      final c = HabitMath.consistency(
        weekdayMask: 127,
        targetPerDay: 1,
        countsByDay: counts,
        from: DateTime(2026, 11, 1),
        to: DateTime(2026, 11, 5),
        pauses: pauses,
      );
      expect(c, 1.0);
      final best = HabitMath.longestStreak(
        weekdayMask: 127,
        targetPerDay: 1,
        countsByDay: counts,
        from: DateTime(2026, 11, 1),
        to: DateTime(2026, 11, 5),
        pauses: pauses,
      );
      expect(best, 3);
    });

    test('pause span json round trip', () {
      final spans = [PauseSpan(20261101, 20261103), PauseSpan(20261110)];
      expect(HabitsRepository.decodePauses(HabitsRepository.encodePauses(spans)), spans);
      expect(HabitsRepository.decodePauses('not json'), isEmpty);
      expect(HabitsRepository.decodePauses(null), isEmpty);
    });
  });

  group('HabitsRepository pause history', () {
    late TestEnv env;
    setUp(() => env = TestEnv());
    tearDown(() => env.dispose());

    test('pause then resume records a closed span ending yesterday', () async {
      final r = HabitsRepository(env.db, env.clock);
      final id = await r.create(name: 'Read', color: 0xFF00B8C4);
      await r.setPaused(id, true);
      expect(await r.watchPauses(id).first, [PauseSpan(k(2026, 11, 16))]);
      env.clock.advance(const Duration(days: 3));
      await r.setPaused(id, false);
      expect(await r.watchPauses(id).first, [PauseSpan(k(2026, 11, 16), k(2026, 11, 18))]);
      expect((await r.watchAllPauses().first)[id], hasLength(1));
      expect((await r.watchHabit(id).first)!.paused, isFalse);
    });

    test('same-day pause and resume leaves no span', () async {
      final r = HabitsRepository(env.db, env.clock);
      final id = await r.create(name: 'Walk', color: 0xFF00B8C4);
      await r.setPaused(id, true);
      await r.setPaused(id, true); // idempotent
      await r.setPaused(id, false);
      expect(await r.watchPauses(id).first, isEmpty);
    });

    test('streak survives a pause via repository data', () async {
      final r = HabitsRepository(env.db, env.clock);
      final id = await r.create(name: 'Stretch', color: 0xFF00B8C4);
      env.clock.current = DateTime(2026, 11, 10, 9);
      await r.increment(id, env.clock.now());
      await r.setPaused(id, true);
      env.clock.current = DateTime(2026, 11, 16, 10);
      await r.setPaused(id, false);
      final habit = (await r.watchHabit(id).first)!;
      final s = HabitStats.compute(
        habit: habit,
        counts: await r.watchCounts(id).first,
        pauses: await r.watchPauses(id).first,
        now: env.clock.now(),
      );
      expect(s.currentStreak, 1);
    });
  });

  group('HabitStats', () {
    late TestEnv env;
    setUp(() => env = TestEnv());
    tearDown(() => env.dispose());

    test('consistency ignores unfinished today and pre-creation days', () async {
      final r = HabitsRepository(env.db, env.clock);
      env.clock.current = DateTime(2026, 11, 13, 8); // created Friday
      final id = await r.create(name: 'Run', color: 1);
      env.clock.current = DateTime(2026, 11, 16, 10);
      final habit = (await r.watchHabit(id).first)!;
      final counts = {k(2026, 11, 13): 1, k(2026, 11, 15): 1};
      final c = HabitStats.consistency(
        habit: habit,
        counts: counts,
        pauses: const [],
        now: env.clock.now(),
        days: 30,
      );
      // Fri done, Sat missed, Sun done; Monday (today) not counted yet.
      expect(c, closeTo(2 / 3, 1e-9));
      counts[k(2026, 11, 16)] = 1;
      expect(
        HabitStats.consistency(
          habit: habit,
          counts: counts,
          pauses: const [],
          now: env.clock.now(),
          days: 30,
        ),
        closeTo(3 / 4, 1e-9),
      );
    });

    test('consistency is null with no scheduled past day', () async {
      final r = HabitsRepository(env.db, env.clock);
      final id = await r.create(name: 'New', color: 1);
      final habit = (await r.watchHabit(id).first)!;
      expect(
        HabitStats.consistency(
          habit: habit,
          counts: const {},
          pauses: const [],
          now: env.clock.now(),
          days: 30,
        ),
        isNull,
      );
    });

    test('heatmap covers 90 days in Monday-first week columns', () async {
      final r = HabitsRepository(env.db, env.clock);
      final id = await r.create(name: 'H', color: 1, weekdays: 0x1F, targetPerDay: 2);
      final habit = (await r.watchHabit(id).first)!;
      final levels = HabitStats.heatmap(
        habit: habit,
        counts: {k(2026, 11, 16): 1, k(2026, 11, 13): 2},
        pauses: const [],
        now: env.clock.now(),
      );
      expect(levels.every((w) => w.length == 7), isTrue);
      final nonNullDays = levels.expand((w) => w).where((v) => v != null).length;
      // Weekdays only within 90 days.
      expect(nonNullDays, lessThanOrEqualTo(90));
      // Last column starts on Monday 16 Nov: today half done, rest future.
      expect(levels.last.first, 0.5);
      expect(levels.last.skip(1).every((v) => v == null), isTrue);
      // Previous Friday fully done.
      expect(levels[levels.length - 2][4], 1.0);
      // Weekend (unscheduled, not done) is null.
      expect(levels[levels.length - 2][5], isNull);
    });

    test('month grid is Monday-first and DST safe', () {
      final g = HabitStats.monthGrid(2026, 11); // Nov 1 2026 is a Sunday
      expect(g.first.take(6).every((d) => d == null), isTrue);
      expect(g.first[6], DateTime(2026, 11, 1));
      final days = g.expand((w) => w).whereType<DateTime>().toList();
      expect(days, hasLength(30));
      expect(days.map(Days.key).toSet(), hasLength(30));
      final march = HabitStats.monthGrid(2026, 3).expand((w) => w).whereType<DateTime>();
      expect(march.map((d) => d.day).toList(), List.generate(31, (i) => i + 1));
    });

    test('weekday mask helpers', () {
      expect(HabitStats.toggleDay(127, 0), 126);
      expect(HabitStats.hasDay(126, 0), isFalse);
      expect(HabitStats.hasDay(126, 6), isTrue);
    });
  });
}
