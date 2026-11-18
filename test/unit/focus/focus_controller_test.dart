import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/core/database/app_database.dart';
import 'package:future_os/core/providers/core_providers.dart';
import 'package:future_os/features/focus/application/focus_controller.dart';
import 'package:future_os/features/focus/application/focus_providers.dart';
import 'package:future_os/features/focus/domain/focus_engine.dart';
import 'package:future_os/features/focus/domain/focus_timer_state.dart';
import 'package:future_os/features/notifications/application/notification_providers.dart';
import 'package:future_os/features/notifications/domain/notification_ids.dart';
import 'package:future_os/features/settings/application/settings_providers.dart';
import 'package:future_os/features/settings/data/settings_repository.dart';
import 'package:future_os/l10n/gen/app_localizations.dart';
import 'package:material_ui/material_ui.dart' show Locale;

import '../../helpers.dart';
import '../notifications/fake_notification_service.dart';

void main() {
  late TestEnv env;
  late FakeNotificationService notifications;

  setUp(() {
    env = TestEnv();
    notifications = FakeNotificationService();
  });
  tearDown(() => env.dispose());

  /// A fresh container over the same database simulates an app restart.
  Future<ProviderContainer> launch({AppSettings settings = const AppSettings()}) async {
    final c = ProviderContainer(
      overrides: [
        databaseProvider.overrideWithValue(env.db),
        clockProvider.overrideWithValue(env.clock),
        notificationServiceProvider.overrideWithValue(notifications),
        initialSettingsProvider.overrideWithValue(settings),
      ],
    );
    c.read(focusControllerProvider);
    await c.read(focusControllerProvider.notifier).restored;
    return c;
  }

  Future<int> rows() async => (await env.db.select(env.db.focusSessions).get()).length;

  test('pause and resume survive a restart with exact elapsed time', () async {
    var c = await launch();
    var ctrl = c.read(focusControllerProvider.notifier);
    await ctrl.start(mode: FocusMode.pomodoro);
    expect(
      notifications.scheduled[NotificationIds.focus]!.at,
      env.clock.nowUtc().add(const Duration(minutes: 25)),
    );

    env.clock.advance(const Duration(minutes: 5));
    await ctrl.pause();
    expect(notifications.scheduled, isNot(contains(NotificationIds.focus)));
    c.dispose();

    // Closed for an hour while paused.
    env.clock.advance(const Duration(hours: 1));
    c = await launch();
    ctrl = c.read(focusControllerProvider.notifier);
    var s = c.read(focusControllerProvider);
    expect(s.notice, FocusNotice.recovered);
    expect(s.active!.status, FocusStatus.paused);
    expect(s.active!.elapsed(env.clock.nowUtc()), const Duration(minutes: 5));

    await ctrl.resume();
    expect(
      notifications.scheduled[NotificationIds.focus]!.at,
      env.clock.nowUtc().add(const Duration(minutes: 20)),
    );
    env.clock.advance(const Duration(minutes: 3));
    s = c.read(focusControllerProvider);
    expect(s.active!.elapsed(env.clock.nowUtc()), const Duration(minutes: 8));
    expect(await rows(), 0);
    c.dispose();
  });

  test('completion while away is recorded once at the completion moment', () async {
    var c = await launch();
    final t0 = env.clock.nowUtc();
    await c
        .read(focusControllerProvider.notifier)
        .start(mode: FocusMode.countdown, countdownMinutes: 25);
    c.dispose();

    env.clock.advance(const Duration(hours: 2));
    c = await launch();
    final s = c.read(focusControllerProvider);
    expect(s.notice, FocusNotice.completedWhileAway);
    expect(s.active, isNull);
    expect(s.justFinished, isNull, reason: 'no note prompt for away completions');

    final history = await c.read(focusRepositoryProvider).watchHistory().first;
    expect(history, hasLength(1));
    expect(history.single.activeSeconds, 25 * 60);
    expect(history.single.outcome, 'completed');
    expect(history.single.endedAt.toUtc(), t0.add(const Duration(minutes: 25)));

    // Repeated checks and another restart never duplicate the record.
    final ctrl = c.read(focusControllerProvider.notifier);
    await Future.wait([ctrl.checkCompletion(), ctrl.checkCompletion(), ctrl.onAppResumed()]);
    c.dispose();
    c = await launch();
    expect(await rows(), 1);
    expect(c.read(focusControllerProvider).active, isNull);
    c.dispose();
  });

  test('concurrent completion checks in the foreground record one session', () async {
    final c = await launch();
    final ctrl = c.read(focusControllerProvider.notifier);
    await ctrl.start(mode: FocusMode.countdown, countdownMinutes: 10);
    env.clock.advance(const Duration(minutes: 10, seconds: 3));
    await Future.wait([ctrl.checkCompletion(), ctrl.checkCompletion(), ctrl.pause()]);
    expect(await rows(), 1);
    final s = c.read(focusControllerProvider);
    expect(s.justFinished!.outcome, SessionOutcome.completed);
    expect(s.justFinished!.activeSeconds, 600);
    expect(notifications.scheduled, isNot(contains(NotificationIds.focus)));
    c.dispose();
  });

  test('auto-started breaks are reconstructed from the completion moment', () async {
    const settings = AppSettings(autoStartBreaks: true);
    var c = await launch(settings: settings);
    await c.read(focusControllerProvider.notifier).start(mode: FocusMode.pomodoro);
    c.dispose();

    env.clock.advance(const Duration(minutes: 27));
    c = await launch(settings: settings);
    final s = c.read(focusControllerProvider);
    expect(s.notice, FocusNotice.completedWhileAway);
    expect(s.active!.phase, FocusPhase.shortBreak);
    expect(s.active!.elapsed(env.clock.nowUtc()), const Duration(minutes: 2));
    expect(s.active!.completedWorkCycles, 1);
    expect(await rows(), 1);
    // Break end alert at 25 + 5 minutes after start.
    expect(
      notifications.scheduled[NotificationIds.focus]!.at,
      env.clock.nowUtc().add(const Duration(minutes: 3)),
    );
    c.dispose();

    // The break also ended while away: both recorded, focus is up next.
    env.clock.advance(const Duration(minutes: 10));
    c = await launch(settings: settings);
    final s2 = c.read(focusControllerProvider);
    expect(s2.active, isNull);
    expect(s2.pending!.phase, FocusPhase.work);
    expect(s2.pending!.cycles, 1);
    expect(await rows(), 2);
    c.dispose();
  });

  test('without auto-start the break waits and can be skipped', () async {
    final c = await launch();
    final ctrl = c.read(focusControllerProvider.notifier);
    await ctrl.start(mode: FocusMode.pomodoro);
    env.clock.advance(const Duration(minutes: 25));
    await ctrl.checkCompletion();
    var s = c.read(focusControllerProvider);
    expect(s.active, isNull);
    expect(s.pending!.phase, FocusPhase.shortBreak);

    await ctrl.skipBreak();
    s = c.read(focusControllerProvider);
    expect(s.active!.phase, FocusPhase.work);
    expect(s.active!.completedWorkCycles, 1);
    expect(await rows(), 1, reason: 'skipped breaks are not recorded');
    c.dispose();
  });

  test('stop saves as interrupted or discards', () async {
    final c = await launch();
    final ctrl = c.read(focusControllerProvider.notifier);
    await ctrl.start(mode: FocusMode.pomodoro);
    env.clock.advance(const Duration(minutes: 7));
    final f = await ctrl.stop(save: true);
    expect(f!.outcome, SessionOutcome.interrupted);
    expect(f.activeSeconds, 420);
    expect(await rows(), 1);

    await ctrl.start(mode: FocusMode.countUp);
    env.clock.advance(const Duration(minutes: 3));
    expect(await ctrl.stop(save: false), isNull);
    expect(await rows(), 1);
    expect(await c.read(focusRepositoryProvider).loadActive(), isNull);
    expect(notifications.scheduled, isEmpty);
    c.dispose();
  });

  test('linked task is stored with the session', () async {
    final t = env.clock.now();
    await env.db
        .into(env.db.tasks)
        .insert(TasksCompanion.insert(createdAt: t, updatedAt: t, id: 'task-1', title: 'Write'));
    final c = await launch();
    final ctrl = c.read(focusControllerProvider.notifier);
    await ctrl.linkTask('task-1');
    await ctrl.start(mode: FocusMode.open);
    expect(c.read(focusControllerProvider).active!.taskId, 'task-1');
    env.clock.advance(const Duration(minutes: 30));
    final f = await ctrl.stop(save: true);
    expect(f!.taskId, 'task-1');
    expect(f.outcome, SessionOutcome.completed);
    c.dispose();
  });

  test('failed focus alert scheduling does not stop the timer and retries', () async {
    notifications.scheduleSucceeds = false;
    final c = await launch();
    final ctrl = c.read(focusControllerProvider.notifier);
    await ctrl.start(mode: FocusMode.pomodoro);
    expect(c.read(focusControllerProvider).active!.isRunning, isTrue);
    expect(notifications.scheduled, isNot(contains(NotificationIds.focus)));

    notifications.scheduleSucceeds = true;
    await ctrl.pause();
    await ctrl.resume();
    expect(notifications.scheduled, contains(NotificationIds.focus));
    c.dispose();
  });

  test('focus alert is localized and respects the notifications setting', () async {
    var c = await launch(settings: const AppSettings(localeTag: 'ar'));
    await c.read(focusControllerProvider.notifier).start(mode: FocusMode.pomodoro);
    final ar = lookupAppLocalizations(const Locale('ar'));
    final n = notifications.scheduled[NotificationIds.focus]!;
    expect(n.title, ar.notifFocusDoneTitle);
    expect(n.body, ar.notifFocusDoneBody);
    await c.read(settingsProvider.notifier).update((s) => s.copyWith(notificationsEnabled: false));
    await c.read(focusControllerProvider.notifier).pause();
    await c.read(focusControllerProvider.notifier).resume();
    expect(notifications.scheduled, isNot(contains(NotificationIds.focus)));
    c.dispose();

    c = await launch();
    await c.read(focusControllerProvider.notifier).stop(save: false);
    await c
        .read(focusControllerProvider.notifier)
        .start(mode: FocusMode.countdown, countdownMinutes: 5);
    final en = lookupAppLocalizations(const Locale('en'));
    expect(notifications.scheduled[NotificationIds.focus]!.body, en.notifTimerDoneBody);
    c.dispose();
  });

  test('restore of a corrupt active state starts clean', () async {
    await env.db.writeValue('focus.active', '{not json');
    final c = await launch();
    final s = c.read(focusControllerProvider);
    expect(s.ready, isTrue);
    expect(s.active, isNull);
    c.dispose();
  });
}
