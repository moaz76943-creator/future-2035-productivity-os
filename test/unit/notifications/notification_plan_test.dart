import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/app/routing/routes.dart';
import 'package:future_os/features/notifications/domain/notification_ids.dart';
import 'package:future_os/features/notifications/domain/notification_plan.dart';
import 'package:future_os/features/settings/data/settings_repository.dart';
import 'package:future_os/l10n/gen/app_localizations.dart';
import 'package:material_ui/material_ui.dart' show Locale;

void main() {
  final now = DateTime(2026, 11, 16, 10);
  final en = lookupAppLocalizations(const Locale('en'));
  final ar = lookupAppLocalizations(const Locale('ar'));
  String fmt(DateTime t) => '${t.hour}:${t.minute.toString().padLeft(2, '0')}';

  List<PlannedNotification> plan(
    ReminderInputs inputs, {
    AppSettings settings = const AppSettings(),
    DateTime? at,
  }) => NotificationPlanner.plan(
    inputs: inputs,
    settings: settings,
    now: at ?? now,
    l10n: en,
    formatTime: fmt,
  );

  group('ids', () {
    test('stable, distinct and outside the reserved range', () {
      expect(NotificationIds.task('a'), NotificationIds.task('a'));
      expect(NotificationIds.task('a'), isNot(NotificationIds.task('b')));
      expect(NotificationIds.task('a'), isNot(NotificationIds.habit('a', 0)));
      final occ = DateTime.utc(2026, 11, 20, 9);
      expect(NotificationIds.event('e', occ), NotificationIds.event('e', occ));
      expect(
        NotificationIds.event('e', occ),
        isNot(NotificationIds.event('e', occ.add(const Duration(days: 1)))),
      );
      for (final id in [NotificationIds.task('x'), NotificationIds.habit('y', 3)]) {
        expect(id, greaterThanOrEqualTo(1000));
        expect(id, lessThanOrEqualTo(0x7FFFFFFF));
      }
    });
  });

  test('task reminders: future only, localized title, task title as body', () {
    final out = plan(
      ReminderInputs(
        tasks: [
          TaskReminderInput(id: 't1', title: 'Call bank', reminderAt: DateTime(2026, 11, 16, 11)),
          TaskReminderInput(id: 't2', title: 'Old', reminderAt: DateTime(2026, 11, 16, 9)),
        ],
      ),
    );
    expect(out, hasLength(1));
    expect(out.single.id, NotificationIds.task('t1'));
    expect(out.single.title, en.notifTaskTitle);
    expect(out.single.body, 'Call bank');
    expect(out.single.payload, Routes.task('t1'));
    expect(out.single.repeat, NotificationRepeat.none);
  });

  test('notifications disabled produces an empty plan', () {
    final out = plan(
      ReminderInputs(
        tasks: [TaskReminderInput(id: 't', title: 'x', reminderAt: DateTime(2026, 11, 17))],
      ),
      settings: const AppSettings(notificationsEnabled: false),
    );
    expect(out, isEmpty);
  });

  test('event reminders: offset, 14-day horizon, formatted body', () {
    final out = plan(
      ReminderInputs(
        events: [
          EventReminderInput(
            eventId: 'e1',
            title: 'Standup',
            start: DateTime(2026, 11, 16, 12),
            reminderMinutes: 15,
          ),
          // Reminder moment already passed.
          EventReminderInput(
            eventId: 'e2',
            title: 'Soon',
            start: DateTime(2026, 11, 16, 10, 5),
            reminderMinutes: 10,
          ),
          // Beyond the horizon.
          EventReminderInput(
            eventId: 'e3',
            title: 'Far',
            start: DateTime(2026, 12, 20, 9),
            reminderMinutes: 0,
          ),
        ],
      ),
    );
    expect(out, hasLength(1));
    expect(out.single.at, DateTime(2026, 11, 16, 11, 45));
    expect(out.single.body, en.notifEventBody('Standup', '12:00'));
    expect(out.single.title, en.notifEventTitle);
  });

  test('quiet hours skip habit and review reminders but not tasks or events', () {
    const quiet = AppSettings(
      quietHoursEnabled: true,
      quietStartMinute: 21 * 60,
      quietEndMinute: 8 * 60,
      reviewReminderMinute: 22 * 60,
    );
    final out = plan(
      ReminderInputs(
        tasks: [TaskReminderInput(id: 't', title: 'Late', reminderAt: DateTime(2026, 11, 16, 23))],
        events: [
          EventReminderInput(
            eventId: 'e',
            title: 'Night',
            start: DateTime(2026, 11, 16, 23, 30),
            reminderMinutes: 10,
          ),
        ],
        habits: const [
          HabitReminderInput(id: 'h', name: 'Read', reminderMinute: 22 * 60, weekdays: 127),
          HabitReminderInput(id: 'h2', name: 'Walk', reminderMinute: 18 * 60, weekdays: 127),
        ],
        earliestReviewDue: DateTime(2026, 11, 16, 9),
      ),
      settings: quiet,
    );
    final ids = out.map((n) => n.id).toSet();
    expect(ids, contains(NotificationIds.task('t')));
    expect(ids, contains(NotificationIds.event('e', DateTime(2026, 11, 16, 23, 30))));
    expect(ids, contains(NotificationIds.habit('h2', 0)));
    expect(ids, isNot(contains(NotificationIds.habit('h', 0))));
    expect(ids, isNot(contains(NotificationIds.review)));
  });

  test('habits: daily repeats once, weekday masks repeat weekly, paused skipped', () {
    final out = plan(
      const ReminderInputs(
        habits: [
          HabitReminderInput(id: 'daily', name: 'Water', reminderMinute: 9 * 60, weekdays: 127),
          // Monday (bit 0) and Wednesday (bit 2).
          HabitReminderInput(id: 'mw', name: 'Gym', reminderMinute: 18 * 60, weekdays: 0x5),
          HabitReminderInput(
            id: 'p',
            name: 'Paused',
            reminderMinute: 600,
            weekdays: 127,
            paused: true,
          ),
        ],
      ),
    );
    final daily = out.singleWhere((n) => n.id == NotificationIds.habit('daily', 0));
    expect(daily.repeat, NotificationRepeat.daily);
    // 09:00 already passed at 10:00 → first delivery tomorrow.
    expect(daily.at, DateTime(2026, 11, 17, 9));
    expect(daily.body, 'Water');
    final mon = out.singleWhere((n) => n.id == NotificationIds.habit('mw', 1));
    final wed = out.singleWhere((n) => n.id == NotificationIds.habit('mw', 3));
    expect(mon.repeat, NotificationRepeat.weekly);
    expect(mon.at, DateTime(2026, 11, 16, 18)); // today is Monday
    expect(wed.at, DateTime(2026, 11, 18, 18));
    expect(out.where((n) => n.body == 'Paused'), isEmpty);
  });

  test('review reminder fires on the first day cards are due by the reminder time', () {
    PlannedNotification? review(DateTime? due) =>
        plan(ReminderInputs(earliestReviewDue: due))
            .where((n) => n.id == NotificationIds.review)
            .firstOrNull;

    expect(review(null), isNull);
    expect(review(DateTime(2026, 11, 15))!.at, DateTime(2026, 11, 16, 19));
    expect(review(DateTime(2026, 11, 16, 20))!.at, DateTime(2026, 11, 17, 19));
    expect(review(DateTime(2026, 11, 19, 8))!.at, DateTime(2026, 11, 19, 19));
    expect(review(DateTime(2027, 2)), isNull);
    expect(review(DateTime(2026, 11, 15))!.title, en.notifReviewTitle);
  });

  test('text follows the given language', () {
    final out = NotificationPlanner.plan(
      inputs: ReminderInputs(
        tasks: [TaskReminderInput(id: 't', title: 'x', reminderAt: DateTime(2026, 11, 17))],
      ),
      settings: const AppSettings(),
      now: now,
      l10n: ar,
      formatTime: fmt,
    );
    expect(out.single.title, ar.notifTaskTitle);
    expect(out.single.title, isNot(en.notifTaskTitle));
  });

  group('diff', () {
    final a = PlannedNotification(
      id: 1001,
      channel: NotificationChannelKind.reminders,
      title: 'A',
      body: '',
      at: DateTime(2026, 11, 16, 12),
    );
    final b = PlannedNotification(
      id: 1002,
      channel: NotificationChannelKind.reminders,
      title: 'B',
      body: '',
      at: DateTime(2026, 11, 16, 13),
    );

    test('only changed or new entries are scheduled; removed are cancelled', () {
      final scheduled = {
        a.id: ScheduledRecord.of(a),
        5000: ScheduledRecord('old', fireAtUtcMs: DateTime(2026, 11, 20).millisecondsSinceEpoch),
      };
      final d = diffNotifications(scheduled, [a, b], now);
      expect(d.schedule.map((n) => n.id), [b.id]);
      expect(d.cancel, [5000]);
      expect(d.forget, isEmpty);
    });

    test('a retitled notification is rescheduled', () {
      final changed = PlannedNotification(
        id: a.id,
        channel: a.channel,
        title: 'A2',
        body: '',
        at: a.at,
      );
      final d = diffNotifications({a.id: ScheduledRecord.of(a)}, [changed], now);
      expect(d.schedule.single.title, 'A2');
      expect(d.cancel, isEmpty);
    });

    test('delivered one-shots are forgotten, not cancelled (stay in the tray)', () {
      final past = PlannedNotification(
        id: 7000,
        channel: NotificationChannelKind.reminders,
        title: 'P',
        body: '',
        at: DateTime(2026, 11, 16, 9),
      );
      final d = diffNotifications({past.id: ScheduledRecord.of(past)}, const [], now);
      expect(d.cancel, isEmpty);
      expect(d.forget, [7000]);
    });

    test('repeating signature does not change from day to day', () {
      final day1 = plan(
        const ReminderInputs(
          habits: [HabitReminderInput(id: 'h', name: 'n', reminderMinute: 600, weekdays: 127)],
        ),
        at: DateTime(2026, 11, 16, 8),
      ).single;
      final day2 = plan(
        const ReminderInputs(
          habits: [HabitReminderInput(id: 'h', name: 'n', reminderMinute: 600, weekdays: 127)],
        ),
        at: DateTime(2026, 11, 18, 12),
      ).single;
      expect(day1.signature, day2.signature);
    });
  });
}
