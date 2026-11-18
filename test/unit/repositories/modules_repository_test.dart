import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/core/time/clock.dart';
import 'package:future_os/features/calendar/data/events_repository.dart';
import 'package:future_os/features/flashcards/data/flashcards_repository.dart';
import 'package:future_os/features/flashcards/domain/srs_scheduler.dart';
import 'package:future_os/features/goals/data/goals_repository.dart';
import 'package:future_os/features/habits/data/habits_repository.dart';
import 'package:future_os/features/notes/data/notes_repository.dart';
import 'package:future_os/features/settings/data/settings_repository.dart';
import 'package:future_os/features/tasks/data/tasks_repository.dart';

import '../../helpers.dart';

void main() {
  late TestEnv env;
  setUp(() => env = TestEnv());
  tearDown(() => env.dispose());

  group('notes', () {
    test('create, save, tags, links, trash', () async {
      final r = NotesRepository(env.db, env.clock);
      final a = await r.create(title: 'Ideas', body: 'start #Draft');
      final b = await r.create(title: 'Plan', body: 'see [[Ideas]] #work');
      expect(await r.watchTags(a).first, ['draft']);
      await r.save(a, title: 'Ideas', body: 'changed #final #draft');
      expect(await r.watchTags(a).first, ['draft', 'final']);
      expect((await r.resolveLinks('see [[Ideas]]')).single.id, a);
      expect((await r.watchBacklinks(a, 'Ideas').first).single.id, b);
      await r.setFlags(b, pinned: true);
      expect((await r.watch(NotesView.all).first).first.id, b);
      await r.softDelete(a);
      expect(await r.watch(NotesView.trash).first, hasLength(1));
      await r.restore(a);
      expect(await r.watch(NotesView.all).first, hasLength(2));
      expect(await r.watch(NotesView.all, tag: 'work').first, hasLength(1));
    });
    test('arabic hashtags are extracted', () {
      expect(NotesRepository.extractTags('مرحبا #عمل و #دراسة'), {'عمل', 'دراسة'});
    });
  });

  group('flashcards', () {
    test('queue respects due cards and daily new limit; reviews persist', () async {
      final r = FlashcardsRepository(env.db, env.clock);
      final deck = await r.createDeck('Español', color: 0xFFFF6B6B);
      await env.db.customStatement('UPDATE decks SET daily_new_limit = 2');
      for (var i = 0; i < 5; i++) {
        await r.addCard(deck, 'front $i', 'back $i');
      }
      var queue = await r.reviewQueue(deck);
      expect(queue, hasLength(2));
      await r.recordReview(queue.first.id, ReviewRating.easy);
      queue = await r.reviewQueue(deck);
      expect(queue, hasLength(1), reason: 'one new slot left today');
      final stats = await r.watchDeckStats(deck).first;
      expect(stats.total, 5);
      expect(stats.newCount, 4);
      env.clock.advance(const Duration(days: 4));
      expect(await FlashcardsRepository(env.db, env.clock).watchTotalDue().first, 1);
      final reviews = await env.db.select(env.db.cardReviews).get();
      expect(reviews.single.rating, 4);
      expect(reviews.single.stateBefore, 'new');
    });
    test('import tab separated and JSON round-trip', () async {
      final r = FlashcardsRepository(env.db, env.clock);
      final deck = await r.createDeck('Words', color: 1);
      expect(await r.importInto(deck, 'hola\thello\nadiós;bye\n\nbad'), 2);
      final json = await r.exportDeck(deck);
      final deck2 = await r.createDeck('Copy', color: 1);
      expect(await r.importInto(deck2, json), 2);
      expect(() => r.importInto(deck2, '{"format":"other"}'), throwsFormatException);
    });
  });

  group('goals', () {
    test('progress uses current period window and linked tasks', () async {
      final g = GoalsRepository(env.db, env.clock);
      final tasks = TasksRepository(env.db, env.clock);
      final id = await g.create(title: 'Read', period: GoalPeriod.daily, target: 3);
      await g.addEntry(id, 1);
      final t = await tasks.create(const TaskDraft(title: 'chapter'));
      await g.linkTask(id, t);
      await tasks.complete(t);
      final goal = (await g.watchGoals().first).single;
      var p = await g.watchProgress(goal).first;
      expect(p.current, 2);
      expect(p.ratio, closeTo(2 / 3, 1e-9));
      env.clock.advance(const Duration(days: 1));
      p = await GoalsRepository(env.db, env.clock).watchProgress(goal).first;
      expect(p.current, 0, reason: 'daily goal resets next day');
      await g.setStatus(id, GoalStatus.paused);
      expect(await g.watchGoals(status: GoalStatus.active).first, isEmpty);
    });
  });

  group('habits', () {
    test('streaks skip unscheduled days and tolerate unfinished today', () {
      final today = DateTime(2026, 11, 16); // Monday
      final counts = {
        Days.key(DateTime(2026, 11, 13)): 1, // Fri
        Days.key(DateTime(2026, 11, 11)): 1, // Wed
        Days.key(DateTime(2026, 11, 9)): 1, // Mon
      };
      const mwf = 1 | 4 | 16;
      expect(
        HabitMath.currentStreak(
          weekdayMask: mwf,
          targetPerDay: 1,
          countsByDay: counts,
          today: today,
        ),
        3,
      );
      counts[Days.key(today)] = 1;
      expect(
        HabitMath.currentStreak(
          weekdayMask: mwf,
          targetPerDay: 1,
          countsByDay: counts,
          today: today,
        ),
        4,
      );
      expect(
        HabitMath.consistency(
          weekdayMask: 127,
          targetPerDay: 1,
          countsByDay: counts,
          from: DateTime(2026, 11, 10),
          to: today,
        ),
        closeTo(3 / 7, 1e-9),
      );
    });
    test('increment and setCount persist per local day', () async {
      final r = HabitsRepository(env.db, env.clock);
      final id = await r.create(name: 'Water', color: 1, targetPerDay: 2);
      await r.increment(id, env.clock.now());
      await r.increment(id, env.clock.now());
      expect((await r.watchCounts(id).first)[Days.key(env.clock.now())], 2);
      await r.setCount(id, env.clock.now(), 0);
      expect(await r.watchCounts(id).first, isEmpty);
    });
  });

  group('events', () {
    test('recurring expansion and conflict detection', () async {
      final r = EventsRepository(env.db, env.clock);
      await r.create(
        EventDraft(
          title: 'Standup',
          start: DateTime(2026, 11, 16, 9),
          end: DateTime(2026, 11, 16, 9, 15),
          recurrence: 'FREQ=DAILY',
        ),
      );
      await r.create(
        EventDraft(
          title: 'Review',
          start: DateTime(2026, 11, 18, 9, 10),
          end: DateTime(2026, 11, 18, 10),
        ),
      );
      final occ = await r.watchOccurrences(DateTime(2026, 11, 16), DateTime(2026, 11, 23)).first;
      expect(occ.where((o) => o.event.title == 'Standup'), hasLength(7));
      final c = EventsRepository.conflicts(occ);
      expect(c, hasLength(1));
      expect(c.single.$2.event.title, 'Review');
      expect(
        () => r.create(
          EventDraft(title: 'x', start: DateTime(2026, 1, 1, 10), end: DateTime(2026, 1, 1, 9)),
        ),
        throwsA(isA<EventValidationException>()),
      );
    });
    test('shift moves an event', () async {
      final r = EventsRepository(env.db, env.clock);
      final id = await r.create(
        EventDraft(title: 'x', start: DateTime(2026, 11, 16, 9), end: DateTime(2026, 11, 16, 10)),
      );
      await r.shift(id, const Duration(hours: 2));
      expect((await r.byId(id))!.startAt.toLocal(), DateTime(2026, 11, 16, 11));
    });
  });

  group('settings', () {
    test('round trip and defaults on corrupt data', () async {
      final r = SettingsRepository(env.db);
      expect((await r.load()).workMinutes, 25);
      await r.save(const AppSettings().copyWith(localeTag: 'ar', workMinutes: 50));
      final s = await r.load();
      expect(s.localeTag, 'ar');
      expect(s.workMinutes, 50);
      await env.db.writeValue(SettingsRepository.key, '{broken');
      expect((await r.load()).workMinutes, 25);
    });
    test('quiet hours across midnight', () {
      const s = AppSettings(quietHoursEnabled: true);
      expect(s.inQuietHours(DateTime(2026, 1, 1, 23)), isTrue);
      expect(s.inQuietHours(DateTime(2026, 1, 1, 6, 59)), isTrue);
      expect(s.inQuietHours(DateTime(2026, 1, 1, 12)), isFalse);
    });
  });
}
