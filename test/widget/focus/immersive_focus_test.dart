import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/core/platform/focus_tools.dart';
import 'package:future_os/features/focus/application/focus_prefs.dart';
import 'package:future_os/features/focus/presentation/immersive_focus_screen.dart';
import 'package:future_os/features/notifications/application/notification_providers.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';
import '../../unit/notifications/fake_notification_service.dart';
import '../widget_helpers.dart';

void main() {
  testWidgets('flip face down starts, lifting pauses, the screen stays awake', (tester) async {
    final env = TestEnv();
    final tools = MemoryFocusTools();
    await tester.runAsync(
      () => env.db.writeValue(FocusPrefsNotifier.key, '{"flipToFocus":true,"immersiveBlack":true}'),
    );
    await pumpScreen(
      tester,
      const ImmersiveFocusScreen(),
      env: env,
      overrides: [
        focusToolsProvider.overrideWithValue(tools),
        notificationServiceProvider.overrideWithValue(FakeNotificationService()),
      ],
    );
    await settle(tester);
    expect(tools.awake, [true]);
    expect(tester.widget<Text>(find.byKey(const Key('immersiveClock'))).data, '25:00');
    expect(find.byIcon(Icons.play_arrow_rounded), findsOneWidget);

    tools.flip(true);
    await settle(tester);
    expect(find.byIcon(Icons.pause_rounded), findsOneWidget);

    tools.flip(false);
    await settle(tester);
    expect(find.byIcon(Icons.play_arrow_rounded), findsOneWidget);

    await tester.pumpWidget(const SizedBox());
    expect(tools.awake.last, false);
  });

  testWidgets('without flip to focus, turning the phone does nothing', (tester) async {
    final tools = MemoryFocusTools();
    await pumpScreen(
      tester,
      const ImmersiveFocusScreen(),
      overrides: [
        focusToolsProvider.overrideWithValue(tools),
        notificationServiceProvider.overrideWithValue(FakeNotificationService()),
      ],
    );
    await settle(tester);
    tools.flip(true);
    await settle(tester);
    expect(find.byIcon(Icons.play_arrow_rounded), findsOneWidget);
    await tester.tap(find.byKey(const Key('immersivePlay')));
    await settle(tester);
    expect(find.byIcon(Icons.pause_rounded), findsOneWidget);
    await tester.pumpWidget(const SizedBox());
  });
}
