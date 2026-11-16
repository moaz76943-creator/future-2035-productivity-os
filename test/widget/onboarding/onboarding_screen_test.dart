import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/onboarding/presentation/onboarding_screen.dart';
import 'package:future_os/features/settings/application/settings_providers.dart';
import 'package:future_os/features/settings/data/settings_repository.dart';
import 'package:future_os/l10n/gen/app_localizations.dart';
import 'package:material_ui/material_ui.dart';

import '../settings/settings_test_utils.dart';
import '../widget_helpers.dart';

void main() {
  const fresh = AppSettings();

  for (final tag in ['en', 'ar']) {
    testWidgets('walks through all steps and completes ($tag)', (tester) async {
      final l10n = lookupAppLocalizations(Locale(tag));
      final env = await pumpScreen(
        tester,
        const OnboardingScreen(),
        localeTag: tag,
        settings: fresh,
      );
      await settle(tester);
      expect(
        Directionality.of(tester.element(find.byType(OnboardingScreen))),
        tag == 'ar' ? TextDirection.rtl : TextDirection.ltr,
      );
      expect(find.text(l10n.onboardWelcomeTitle), findsOneWidget);
      expect(find.bySemanticsLabel(l10n.onboardStep(1, 4)), findsOneWidget);

      await tester.tap(find.byKey(const ValueKey('onboard-next')));
      await tester.pumpAndSettle();
      expect(find.text(l10n.onboardPrivateTitle), findsOneWidget);
      await tester.tap(find.byKey(const ValueKey('onboard-next')));
      await tester.pumpAndSettle();
      expect(find.text(l10n.onboardLanguageTitle), findsOneWidget);
      expect(find.text('العربية'), findsOneWidget);
      expect(find.text('हिन्दी'), findsOneWidget);
      await tester.tap(find.byKey(const ValueKey('onboard-next')));
      await tester.pumpAndSettle();
      expect(find.text(l10n.onboardNotifTitle), findsOneWidget);
      expect(find.bySemanticsLabel(l10n.onboardStep(4, 4)), findsOneWidget);

      final c = containerOf(tester, OnboardingScreen);
      await tester.tap(find.byKey(const ValueKey('onboard-reminders')));
      await tester.pump();
      expect(c.read(settingsProvider).notificationsEnabled, isFalse);

      expect(find.text(l10n.onboardGetStarted), findsOneWidget);
      await tester.tap(find.byKey(const ValueKey('onboard-next')));
      await settle(tester);
      expect(c.read(settingsProvider).onboardingDone, isTrue);
      final stored = await SettingsRepository(env.db).load();
      expect(stored.onboardingDone, isTrue);
      expect(stored.notificationsEnabled, isFalse);
      await env.dispose();
    });
  }

  testWidgets('skip completes onboarding immediately', (tester) async {
    final env = await pumpScreen(tester, const OnboardingScreen(), settings: fresh);
    await settle(tester);
    await tester.tap(find.byKey(const ValueKey('onboard-skip')));
    await settle(tester);
    expect(containerOf(tester, OnboardingScreen).read(settingsProvider).onboardingDone, isTrue);
    await env.dispose();
  });

  testWidgets('choosing Arabic on the language step flips the direction', (tester) async {
    final l10nAr = lookupAppLocalizations(const Locale('ar'));
    final env = await pumpScreen(
      tester,
      const LiveLocale(child: OnboardingScreen()),
      settings: fresh,
    );
    await settle(tester);
    for (var i = 0; i < 2; i++) {
      await tester.tap(find.byKey(const ValueKey('onboard-next')));
      await tester.pumpAndSettle();
    }
    await tester.tap(find.byKey(const ValueKey('lang-ar')));
    await tester.pumpAndSettle();
    expect(containerOf(tester, OnboardingScreen).read(settingsProvider).localeTag, 'ar');
    expect(Directionality.of(tester.element(find.byType(OnboardingScreen))), TextDirection.rtl);
    expect(find.text(l10nAr.onboardLanguageTitle), findsOneWidget);
    await env.dispose();
  });

  testWidgets('large text in Hindi has no overflow', (tester) async {
    tester.platformDispatcher.textScaleFactorTestValue = 2;
    addTearDown(tester.platformDispatcher.clearTextScaleFactorTestValue);
    final env = await pumpScreen(
      tester,
      const OnboardingScreen(),
      localeTag: 'hi-IN',
      settings: fresh,
    );
    await settle(tester);
    for (var i = 0; i < 3; i++) {
      await tester.tap(find.byKey(const ValueKey('onboard-next')));
      await tester.pumpAndSettle();
    }
    expect(tester.takeException(), isNull);
    await env.dispose();
  });
}
