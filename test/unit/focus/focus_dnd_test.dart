import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/core/providers/core_providers.dart';
import 'package:future_os/features/focus/application/focus_controller.dart';
import 'package:future_os/features/focus/application/focus_dnd_link.dart';
import 'package:future_os/features/focus/data/dnd_platform.dart';
import 'package:future_os/features/focus/domain/focus_timer_state.dart';
import 'package:future_os/features/notifications/application/notification_providers.dart';
import 'package:future_os/features/settings/application/settings_providers.dart';
import 'package:future_os/features/settings/data/settings_repository.dart';

import '../../helpers.dart';
import '../notifications/fake_notification_service.dart';

void main() {
  Future<(ProviderContainer, MemoryDnd, TestEnv)> launch({required bool on}) async {
    final env = TestEnv();
    final dnd = MemoryDnd();
    final c = ProviderContainer(
      overrides: [
        databaseProvider.overrideWithValue(env.db),
        clockProvider.overrideWithValue(env.clock),
        notificationServiceProvider.overrideWithValue(FakeNotificationService()),
        initialSettingsProvider.overrideWithValue(AppSettings(focusDnd: on)),
        dndPlatformProvider.overrideWithValue(dnd),
      ],
    );
    c.read(focusDndLinkProvider);
    await c.read(focusControllerProvider.notifier).restored;
    return (c, dnd, env);
  }

  test('Do Not Disturb for the work phase, restored on pause', () async {
    final (c, dnd, env) = await launch(on: true);
    final focus = c.read(focusControllerProvider.notifier);
    await focus.start(mode: FocusMode.pomodoro);
    await Future<void>.delayed(Duration.zero);
    expect(dnd.on, isTrue);
    expect(dnd.until, isNotNull, reason: 'the system restores it if the app sleeps');
    await focus.pause();
    await Future<void>.delayed(Duration.zero);
    expect(dnd.on, isFalse);
    c.dispose();
    await env.dispose();
  });

  test('off by default', () async {
    final (c, dnd, env) = await launch(on: false);
    await c.read(focusControllerProvider.notifier).start(mode: FocusMode.pomodoro);
    await Future<void>.delayed(Duration.zero);
    expect(dnd.on, isFalse);
    c.dispose();
    await env.dispose();
  });
}
