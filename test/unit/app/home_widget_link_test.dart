import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:future_os/app/home_widget_link.dart';
import 'package:future_os/core/providers/core_providers.dart';
import 'package:future_os/features/focus/application/focus_controller.dart';
import 'package:future_os/features/focus/domain/focus_timer_state.dart';
import 'package:future_os/features/notifications/application/notification_providers.dart';
import 'package:future_os/features/settings/application/settings_providers.dart';
import 'package:future_os/features/settings/data/settings_repository.dart';

import '../../helpers.dart';
import '../notifications/fake_notification_service.dart';

void main() {
  test('the widget shows the countdown while focusing, in the app language', () async {
    await initializeDateFormatting();
    final env = TestEnv();
    final widget = MemoryHomeWidget();
    final c = ProviderContainer(
      overrides: [
        databaseProvider.overrideWithValue(env.db),
        clockProvider.overrideWithValue(env.clock),
        notificationServiceProvider.overrideWithValue(FakeNotificationService()),
        initialSettingsProvider.overrideWithValue(const AppSettings(localeTag: 'ar')),
        homeWidgetPlatformProvider.overrideWithValue(widget),
      ],
    );
    c.read(homeWidgetLinkProvider);
    await c.read(focusControllerProvider.notifier).restored;
    expect(widget.last!.endsAt, isNull);
    expect(widget.last!.idle, 'اضغط للتركيز');
    await c.read(focusControllerProvider.notifier).start(mode: FocusMode.pomodoro);
    await Future<void>.delayed(Duration.zero);
    expect(widget.last!.endsAt, isNotNull);
    expect(widget.last!.running, startsWith('تركيز حتى'));
    await c.read(focusControllerProvider.notifier).pause();
    await Future<void>.delayed(Duration.zero);
    expect(widget.last!.endsAt, isNull);
    c.dispose();
    await env.dispose();
  });
}
