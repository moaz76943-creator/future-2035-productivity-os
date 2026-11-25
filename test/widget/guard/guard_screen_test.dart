import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/app/localization/app_format.dart';
import 'package:future_os/core/platform/distraction_guard.dart';
import 'package:future_os/features/focus/application/focus_controller.dart';
import 'package:future_os/features/focus/domain/focus_timer_state.dart';
import 'package:future_os/features/guard/application/guard_controller.dart';
import 'package:future_os/features/guard/presentation/guard_screen.dart';
import 'package:future_os/features/notifications/application/notification_providers.dart';
import 'package:material_ui/material_ui.dart';

import '../../unit/notifications/fake_notification_service.dart';
import '../widget_helpers.dart';

/// Keeps the guard link alive inside the test tree.
class _WithLink extends ConsumerWidget {
  const _WithLink();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(guardLinkProvider);
    return const GuardScreen();
  }
}

void main() {
  testWidgets('turn on with disclosure, choose apps, strict, schedule; rules reach the phone', (
    tester,
  ) async {
    final guard = MemoryDistractionGuard(
      installed: const [InstalledApp('com.video', 'Video'), InstalledApp('com.chat', 'Chat')],
    );
    final env = await pumpScreen(
      tester,
      const _WithLink(),
      overrides: [
        distractionGuardProvider.overrideWithValue(guard),
        notificationServiceProvider.overrideWithValue(FakeNotificationService()),
      ],
    );
    await settle(tester);
    final l10n = tester.element(find.byType(GuardScreen)).l10n;

    // Service not on yet: the switch shows the disclosure before Accessibility settings.
    await tester.tap(find.byKey(const Key('guardSwitch')));
    await settle(tester);
    expect(find.text(l10n.guardDisclosureTitle), findsOneWidget);
    await tester.tap(find.byKey(const Key('guardAgree')));
    await settle(tester);
    expect(guard.settingsOpened, 1);
    expect(find.text(l10n.guardNeedsAccess), findsOneWidget);

    await tester.tap(find.byKey(const Key('guardApps')));
    await settle(tester);
    await tester.tap(find.byKey(const Key('guardApp_com.video')));
    await settle(tester);
    await tester.tapAt(const Offset(10, 10)); // close the sheet
    await settle(tester);
    expect(find.text(l10n.guardAppsCount(1)), findsOneWidget);

    await tester.tap(find.text(l10n.guardModeStrict));
    await settle(tester);
    expect(find.text(l10n.guardStrictHint), findsOneWidget);

    await tester.scrollUntilVisible(find.byKey(const Key('guardSchedule')), 200);
    await tester.tap(find.byKey(const Key('guardSchedule')));
    await settle(tester);
    await tester.scrollUntilVisible(find.byKey(const Key('guardDay_6')), 200);
    await tester.tap(find.byKey(const Key('guardDay_6')));
    await settle(tester);

    final sent = jsonDecode(guard.config!) as Map<String, Object?>;
    expect(sent['enabled'], true);
    expect(sent['strict'], true);
    expect(sent['apps'], ['com.video']);
    expect(sent['scheduleOn'], true);
    expect(sent['days'], 0x1F | (1 << 5));
    expect((sent['strings']! as Map)['question'], l10n.guardQuestion);
    // Saved for the next launch too.
    final stored = await tester.runAsync(() => env.db.readValue(GuardNotifier.key));
    expect(stored, contains('com.video'));
  });

  testWidgets('a running work phase is focus time for the guard; a pause ends it', (tester) async {
    final guard = MemoryDistractionGuard(enabled: true);
    final env = await pumpScreen(
      tester,
      const _WithLink(),
      overrides: [
        distractionGuardProvider.overrideWithValue(guard),
        notificationServiceProvider.overrideWithValue(FakeNotificationService()),
      ],
    );
    await settle(tester);
    final container = ProviderScope.containerOf(tester.element(find.byType(GuardScreen)));
    await tester.runAsync(
      () => container.read(focusControllerProvider.notifier).start(mode: FocusMode.pomodoro),
    );
    await settle(tester);
    expect(guard.until, isNotNull);
    expect(guard.until!.isAfter(env.clock.nowUtc().add(const Duration(minutes: 24))), isTrue);
    await tester.runAsync(() => container.read(focusControllerProvider.notifier).pause());
    await settle(tester);
    expect(guard.until, isNull);
  });
}
