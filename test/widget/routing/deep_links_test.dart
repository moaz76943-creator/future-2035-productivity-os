import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/app/localization/app_locales.dart';
import 'package:future_os/app/routing/app_router.dart';
import 'package:future_os/app/routing/deep_links.dart';
import 'package:future_os/app/routing/routes.dart';
import 'package:future_os/core/design_system/app_theme.dart';
import 'package:future_os/core/platform/app_shortcuts.dart';
import 'package:future_os/core/providers/core_providers.dart';
import 'package:future_os/core/security/secret_store.dart';
import 'package:future_os/features/notifications/application/notification_providers.dart';
import 'package:future_os/features/settings/application/settings_providers.dart';
import 'package:future_os/features/settings/data/settings_repository.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';
import '../../unit/notifications/fake_notification_service.dart';
import '../widget_helpers.dart';

void main() {
  test('only in-app paths are followed', () {
    expect(isAppRoute('/flashcards'), isTrue);
    expect(isAppRoute('https://example.com'), isFalse);
    expect(isAppRoute('//example.com/x'), isFalse);
    expect(isAppRoute('intent://x'), isFalse);
  });

  testWidgets('launcher shortcuts and notification taps open their screen', (tester) async {
    await initializeDateFormatting();
    final env = TestEnv();
    tester.view.physicalSize = const Size(412, 915) * 3;
    tester.view.devicePixelRatio = 3;
    addTearDown(tester.view.reset);
    final notifications = FakeNotificationService();
    final shortcuts = MemoryAppShortcuts()..launchRoute = Routes.sounds;
    late GoRouter router;
    final locale = AppLocales.byTag('ar')!.locale;
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          databaseProvider.overrideWithValue(env.db),
          clockProvider.overrideWithValue(env.clock),
          secretStoreProvider.overrideWithValue(MemorySecretStore()),
          notificationServiceProvider.overrideWithValue(notifications),
          appShortcutsPlatformProvider.overrideWithValue(shortcuts),
          initialSettingsProvider.overrideWithValue(
            const AppSettings(onboardingDone: true, localeTag: 'ar'),
          ),
        ],
        child: Consumer(
          builder: (context, ref, _) {
            router = ref.watch(routerProvider);
            ref.watch(deepLinksProvider);
            return MaterialApp.router(
              locale: locale,
              supportedLocales: AppLocales.locales,
              localizationsDelegates: AppLocales.delegates,
              theme: AppTheme.build(brightness: Brightness.light, locale: locale),
              routerConfig: router,
            );
          },
        ),
      ),
    );
    await settle(tester);
    String where() {
      final m = router.routerDelegate.currentConfiguration;
      return m.isEmpty ? '' : m.last.matchedLocation;
    }

    expect(where(), Routes.sounds, reason: 'the shortcut that launched the app');
    expect(shortcuts.current.map((s) => s.label), contains('مهمة جديدة'));
    for (final s in shortcuts.current) {
      // Like the app: tabs are switched to, other screens open on top.
      const tabs = {
        Routes.home,
        Routes.tasks,
        Routes.flashcards,
        Routes.focus,
        Routes.calendar,
        Routes.spaces,
      };
      if (tabs.contains(s.route)) {
        router.go(s.route);
      } else {
        unawaited(router.push(s.route));
      }
      await tester.pump(const Duration(seconds: 1));
      await settle(tester);
      expect(find.byKey(const ValueKey('route-not-found')), findsNothing, reason: s.route);
    }

    router.go(Routes.home);
    await settle(tester);
    notifications.tapsController.add(Routes.flashcards);
    await tester.pump(const Duration(seconds: 1));
    await settle(tester);
    expect(where(), Routes.flashcards);

    // Many taps in a row, tabs and pages mixed, the way people really move around.
    for (final r in [
      Routes.notes,
      Routes.calendar,
      Routes.taskNew,
      Routes.focus,
      Routes.sounds,
      Routes.flashcards,
      Routes.notes,
      Routes.tasks,
      Routes.sounds,
      Routes.calendar,
    ]) {
      notifications.tapsController.add(r);
      await tester.pump(const Duration(seconds: 1));
      await settle(tester);
      expect(where(), r);
    }

    notifications.tapsController.add('https://example.com');
    await tester.pump(const Duration(seconds: 1));
    expect(where(), Routes.calendar, reason: 'a foreign link changes nothing');

    await closeEnv(tester, env);
  });
}
