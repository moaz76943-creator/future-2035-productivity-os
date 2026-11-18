import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/focus/presentation/focus_screen.dart';
import 'package:future_os/features/notifications/application/notification_providers.dart';
import 'package:future_os/features/settings/data/settings_repository.dart';
import 'package:future_os/l10n/gen/app_localizations.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';
import '../../unit/notifications/fake_notification_service.dart';
import '../widget_helpers.dart';

AppLocalizations _l10n(WidgetTester t) => AppLocalizations.of(t.element(find.byType(FocusScreen)));

Future<AppSettings> _saved(WidgetTester tester, TestEnv env) async =>
    (await tester.runAsync(() => SettingsRepository(env.db).load()))!;

Finder _plus(String key) =>
    find.descendant(of: find.byKey(Key(key)), matching: find.byIcon(Icons.add_rounded));
Finder _minus(String key) =>
    find.descendant(of: find.byKey(Key(key)), matching: find.byIcon(Icons.remove_rounded));

void main() {
  for (final tag in ['en', 'ar']) {
    testWidgets('session plan: steppers change the plan and show the total ($tag)', (tester) async {
      final env = TestEnv();
      await pumpScreen(
        tester,
        const FocusScreen(),
        env: env,
        localeTag: tag,
        overrides: [notificationServiceProvider.overrideWithValue(FakeNotificationService())],
      );
      await settle(tester);
      await scrollPageTo(tester, find.byKey(const Key('planSavePreset')));
      final l10n = _l10n(tester);

      // Unlimited by default: no total.
      expect(find.byKey(const Key('sessionPlanTotal')), findsNothing);
      await tester.ensureVisible(find.byKey(const Key('planRounds')));
      await tester.pump();
      for (var i = 0; i < 3; i++) {
        await tester.tap(_plus('planRounds'));
        await settle(tester);
      }
      await tester.tap(_minus('planWork'));
      await settle(tester);

      final s = await _saved(tester, env);
      expect(s.sessionRounds, 3);
      expect(s.workMinutes, 24);
      // 3 x 24 + 2 x 5 = 82 min.
      expect(find.byKey(const Key('sessionPlanTotal')), findsOneWidget);
      expect(find.byKey(const Key('planSkipLastBreak')), findsOneWidget);
      await tester.scrollUntilVisible(
        find.text(l10n.focusRoundOf(1, 3)),
        -200,
        scrollable: find
            .byWidgetPredicate((w) => w is Scrollable && w.axisDirection == AxisDirection.down)
            .first,
      );
      expect(find.text(l10n.focusRoundOf(1, 3)), findsOneWidget);
      await scrollPageTo(tester, find.byKey(const Key('planAutoFocus')));

      await tester.ensureVisible(find.byKey(const Key('planAutoFocus')));
      await tester.pump();
      await tester.tap(find.byKey(const Key('planAutoFocus')));
      await settle(tester);
      expect((await _saved(tester, env)).autoStartFocus, isTrue);
      await closeEnv(tester, env);
    });
  }

  testWidgets('a saved plan can be applied and deleted', (tester) async {
    final env = TestEnv();
    await pumpScreen(
      tester,
      const FocusScreen(),
      env: env,
      overrides: [notificationServiceProvider.overrideWithValue(FakeNotificationService())],
    );
    await settle(tester);
    await scrollPageTo(tester, find.byKey(const Key('planSavePreset')));
    await tester.tap(find.byKey(const Key('planSavePreset')));
    await settle(tester);
    await tester.enterText(find.byType(TextField).last, 'Exam');
    await tester.tap(find.text(_l10n(tester).actionSave).last);
    await settle(tester);
    expect((await _saved(tester, env)).focusPresets.single.name, 'Exam');

    // Change the plan, then re-apply the preset.
    await scrollPageTo(tester, find.byKey(const Key('planWork')));
    await tester.tap(_plus('planWork'));
    await settle(tester);
    expect((await _saved(tester, env)).workMinutes, 26);
    await scrollPageTo(tester, find.widgetWithText(InputChip, 'Exam'));
    await tester.tap(find.widgetWithText(InputChip, 'Exam'));
    await settle(tester);
    expect((await _saved(tester, env)).workMinutes, 25);
    await closeEnv(tester, env);
  });
}
