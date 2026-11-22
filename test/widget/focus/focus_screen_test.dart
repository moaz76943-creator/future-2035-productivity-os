import 'package:drift/drift.dart' show Value;
import 'package:future_os/app/localization/app_format.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/core/database/app_database.dart';
import 'package:future_os/features/focus/presentation/focus_screen.dart';
import 'package:future_os/features/notifications/application/notification_providers.dart';
import 'package:future_os/features/notifications/data/notification_service.dart';
import 'package:future_os/features/notifications/domain/notification_ids.dart';
import 'package:future_os/l10n/gen/app_localizations.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';
import '../../unit/notifications/fake_notification_service.dart';
import '../widget_helpers.dart';

AppLocalizations _l10n(WidgetTester t) => t.element(find.byType(Scaffold).first).l10n;

Future<void> _seedSession(TestEnv env, {String note = ''}) async {
  final start = env.clock.now().subtract(const Duration(hours: 2));
  await env.db
      .into(env.db.focusSessions)
      .insert(
        FocusSessionsCompanion.insert(
          id: 's1',
          mode: 'pomodoro',
          activeSeconds: 1500,
          plannedSeconds: const Value(1500),
          startedAt: start,
          endedAt: start.add(const Duration(minutes: 25)),
          outcome: 'completed',
          note: Value(note),
        ),
      );
}

Future<int> _rows(WidgetTester tester, TestEnv env) async =>
    (await tester.runAsync(() => env.db.select(env.db.focusSessions).get()))!.length;

void main() {
  for (final tag in ['en', 'ar']) {
    testWidgets('start, pause, resume and discard a session ($tag)', (tester) async {
      final env = TestEnv();
      final fake = FakeNotificationService();
      await pumpScreen(
        tester,
        const FocusScreen(),
        env: env,
        localeTag: tag,
        overrides: [notificationServiceProvider.overrideWithValue(fake)],
      );
      await settle(tester);
      final l10n = _l10n(tester);

      final clock = find.byKey(const ValueKey('focus-clock'));
      expect(tester.widget<Text>(clock).data, '25:00');
      // The readout is always laid out left-to-right, the page follows the locale.
      expect(Directionality.of(tester.element(clock)), TextDirection.ltr);
      expect(
        Directionality.of(tester.element(find.text(l10n.focusTitle).first)),
        tag == 'ar' ? TextDirection.rtl : TextDirection.ltr,
      );
      expect(find.bySemanticsLabel(RegExp(RegExp.escape('25'))), findsWidgets);

      await tester.tap(find.byKey(const ValueKey('focus-start')));
      await settle(tester);
      expect(find.byKey(const ValueKey('focus-pause')), findsOneWidget);
      expect(fake.scheduled[NotificationIds.focus]!.title, l10n.notifFocusDoneTitle);

      env.clock.advance(const Duration(minutes: 1, seconds: 30));
      await tester.pump(const Duration(seconds: 1));
      await settle(tester);
      expect(tester.widget<Text>(clock).data, '23:30');

      await tester.tap(find.byKey(const ValueKey('focus-pause')));
      await settle(tester);
      expect(find.byKey(const ValueKey('focus-resume')), findsOneWidget);
      expect(fake.scheduled, isNot(contains(NotificationIds.focus)));
      env.clock.advance(const Duration(minutes: 10));
      await tester.pump(const Duration(seconds: 1));
      await settle(tester);
      expect(tester.widget<Text>(clock).data, '23:30', reason: 'paused time does not count');

      await tester.tap(find.byKey(const ValueKey('focus-resume')));
      await settle(tester);
      expect(fake.scheduled, contains(NotificationIds.focus));

      await tester.tap(find.byKey(const ValueKey('focus-stop')));
      await settle(tester);
      expect(find.text(l10n.focusStopConfirmTitle), findsOneWidget);
      await tester.tap(find.text(l10n.focusDiscard));
      await settle(tester);
      expect(find.byKey(const ValueKey('focus-start')), findsOneWidget);
      expect(fake.scheduled, isEmpty);
      expect(await _rows(tester, env), 0);
      // Close in the body: closing drift from a tear-down never completes under fake async.
      await env.dispose();
    });

    testWidgets('saving a stopped session asks for an optional note ($tag)', (tester) async {
      final env = TestEnv();
      await pumpScreen(
        tester,
        const FocusScreen(),
        env: env,
        localeTag: tag,
        overrides: [notificationServiceProvider.overrideWithValue(FakeNotificationService())],
      );
      await settle(tester);
      final l10n = _l10n(tester);
      await tester.tap(find.byKey(const ValueKey('focus-start')));
      await settle(tester);
      env.clock.advance(const Duration(minutes: 5));
      await tester.tap(find.byKey(const ValueKey('focus-stop')));
      await settle(tester);
      await tester.tap(find.widgetWithText(FilledButton, l10n.actionSave));
      await settle(tester);
      expect(find.text(l10n.focusSessionStopped), findsOneWidget);
      await tester.enterText(find.byType(TextField), 'Outline done');
      await tester.tap(find.widgetWithText(FilledButton, l10n.actionSave));
      await settle(tester);
      final rows = (await tester.runAsync(() => env.db.select(env.db.focusSessions).get()))!;
      expect(rows.single.note, 'Outline done');
      expect(rows.single.activeSeconds, 300);
      expect(rows.single.outcome, 'interrupted');
      // Close in the body: closing drift from a tear-down never completes under fake async.
      await env.dispose();
    });

    testWidgets('history rows can be deleted ($tag)', (tester) async {
      final env = TestEnv();
      await _seedSession(env, note: 'Deep work');
      await pumpScreen(
        tester,
        const FocusScreen(),
        env: env,
        localeTag: tag,
        size: const Size(412, 2400),
        overrides: [notificationServiceProvider.overrideWithValue(FakeNotificationService())],
      );
      await settle(tester);
      final l10n = _l10n(tester);
      expect(find.text('Deep work'), findsOneWidget);
      expect(find.text(l10n.focusOutcomeCompleted), findsOneWidget);
      await tester.tap(find.byTooltip(l10n.focusDeleteSession));
      await settle(tester);
      await tester.tap(find.widgetWithText(FilledButton, l10n.actionDelete).last);
      await settle(tester);
      expect(find.text('Deep work'), findsNothing);
      expect(find.text(l10n.focusNoHistory), findsOneWidget);
      expect(await _rows(tester, env), 0);
      // Close in the body: closing drift from a tear-down never completes under fake async.
      await env.dispose();
    });

    testWidgets('denied notifications show a localized banner ($tag)', (tester) async {
      final env = TestEnv();
      final fake = FakeNotificationService(accessValue: NotificationAccess.denied);
      await pumpScreen(
        tester,
        const FocusScreen(),
        env: env,
        localeTag: tag,
        overrides: [notificationServiceProvider.overrideWithValue(fake)],
      );
      await settle(tester);
      final l10n = _l10n(tester);
      expect(find.text(l10n.focusNotificationsOff), findsOneWidget);
      expect(find.text(l10n.focusBatteryHint), findsNothing);
      await tester.tap(find.text(l10n.focusOpenSettings));
      await settle(tester);
      expect(fake.settingsOpened, 1);
      // Close in the body: closing drift from a tear-down never completes under fake async.
      await env.dispose();
    });
  }

  testWidgets('tapping the timer opens the session sheet; a preset sets the length (ar)', (
    tester,
  ) async {
    final env = TestEnv();
    await pumpScreen(tester, const FocusScreen(), env: env, localeTag: 'ar');
    await settle(tester);
    await tester.tap(find.byKey(const Key('focusTimerHero')));
    await settle(tester);
    await tester.tap(find.byKey(const Key('focusPreset_deep')));
    await settle(tester);
    expect(
      find.byKey(const Key('focusEndTone')),
      findsOneWidget,
      reason: 'end sound is right there',
    );
    await tester.tapAt(const Offset(10, 10));
    await settle(tester);
    expect(find.text('50:00'), findsOneWidget);
    await closeEnv(tester, env);
  });

  testWidgets('battery hint shows once when notifications are allowed', (tester) async {
    final env = TestEnv();
    final fake = FakeNotificationService();
    await pumpScreen(
      tester,
      const FocusScreen(),
      env: env,
      overrides: [notificationServiceProvider.overrideWithValue(fake)],
    );
    await settle(tester);
    final l10n = _l10n(tester);
    expect(find.text(l10n.focusBatteryHint), findsOneWidget);

    await pumpScreen(
      tester,
      const SizedBox(),
      env: env,
      overrides: [notificationServiceProvider.overrideWithValue(fake)],
    );
    await settle(tester);
    await pumpScreen(
      tester,
      const FocusScreen(key: ValueKey('second')),
      env: env,
      overrides: [notificationServiceProvider.overrideWithValue(fake)],
    );
    await settle(tester);
    expect(find.text(l10n.focusBatteryHint), findsNothing);
    // Close in the body: closing drift from a tear-down never completes under fake async.
    await env.dispose();
  });

  testWidgets('large text in Arabic lays out without overflow', (tester) async {
    final env = TestEnv();
    await _seedSession(env, note: 'ملاحظة طويلة جدا ' * 8);
    await pumpScreen(
      tester,
      MediaQuery.withClampedTextScaling(
        minScaleFactor: 2,
        maxScaleFactor: 2,
        child: const FocusScreen(),
      ),
      env: env,
      localeTag: 'ar',
      size: const Size(360, 780),
      overrides: [notificationServiceProvider.overrideWithValue(FakeNotificationService())],
    );
    await settle(tester);
    expect(tester.takeException(), isNull);
    expect(find.byKey(const ValueKey('focus-clock')), findsOneWidget);
    // Close in the body: closing drift from a tear-down never completes under fake async.
    await env.dispose();
  });

  testWidgets('initialTaskId preselects the linked task', (tester) async {
    final env = TestEnv();
    final t = env.clock.now();
    await env.db
        .into(env.db.tasks)
        .insert(TasksCompanion.insert(createdAt: t, updatedAt: t, id: 'task-9', title: 'Essay'));
    await pumpScreen(
      tester,
      const FocusScreen(initialTaskId: 'task-9'),
      env: env,
      overrides: [notificationServiceProvider.overrideWithValue(FakeNotificationService())],
    );
    await settle(tester);
    // The linked-task card sits below the timer controls and the permission hints.
    await tester.scrollUntilVisible(
      find.text('Essay'),
      200,
      scrollable: find.byType(Scrollable).first,
    );
    expect(find.text('Essay'), findsOneWidget);
    // Close in the body: closing drift from a tear-down never completes under fake async.
    await env.dispose();
  });
}
