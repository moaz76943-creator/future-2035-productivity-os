import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/app/localization/app_locales.dart';
import 'package:future_os/app/routing/app_router.dart';
import 'package:future_os/app/routing/deep_links.dart';
import 'package:future_os/core/platform/app_shortcuts.dart';
import 'package:future_os/features/notifications/application/notification_providers.dart';
import 'package:future_os/app/routing/routes.dart';
import 'package:future_os/core/design_system/app_theme.dart';
import 'package:future_os/core/providers/core_providers.dart';
import 'package:future_os/core/security/secret_store.dart';
import 'package:future_os/features/settings/application/settings_providers.dart';
import 'package:future_os/features/settings/data/settings_repository.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';
import '../../unit/notifications/fake_notification_service.dart';
import '../widget_helpers.dart';

void main() {
  testWidgets('jumping between tabs and full-screen pages many times keeps one shell', (
    tester,
  ) async {
    await initializeDateFormatting();
    final env = TestEnv();
    tester.view.physicalSize = const Size(412, 915) * 3;
    tester.view.devicePixelRatio = 3;
    addTearDown(tester.view.reset);
    late GoRouter router;
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          databaseProvider.overrideWithValue(env.db),
          clockProvider.overrideWithValue(env.clock),
          secretStoreProvider.overrideWithValue(MemorySecretStore()),
          notificationServiceProvider.overrideWithValue(FakeNotificationService()),
          appShortcutsPlatformProvider.overrideWithValue(
            MemoryAppShortcuts()..launchRoute = Routes.sounds,
          ),
          initialSettingsProvider.overrideWithValue(const AppSettings(onboardingDone: true)),
        ],
        child: Consumer(
          builder: (context, ref, _) {
            router = ref.watch(routerProvider);
            ref.watch(deepLinksProvider);
            return MaterialApp.router(
              supportedLocales: AppLocales.locales,
              localizationsDelegates: AppLocales.delegates,
              theme: AppTheme.build(brightness: Brightness.light, locale: const Locale('en')),
              routerConfig: router,
            );
          },
        ),
      ),
    );
    await settle(tester);
    for (final r in [
      Routes.focus,
      Routes.taskNew,
      Routes.calendar,
      Routes.notes,
      Routes.flashcards,
      Routes.sounds,
      Routes.home,
      Routes.notes,
    ]) {
      router.go(r);
      await tester.pump(const Duration(seconds: 1));
      await settle(tester);
      expect(tester.takeException(), isNull, reason: r);
    }
    // Deck pages live under the flashcards tab: open them from another tab and come back.
    for (final from in [Routes.home, Routes.flashcards, Routes.focus]) {
      router.go(from);
      await tester.pump(const Duration(seconds: 1));
      await settle(tester);
      for (final page in [Routes.deck('d1'), Routes.deckStats('d1'), Routes.review('d1')]) {
        unawaited(router.push(page));
        await tester.pump(const Duration(seconds: 1));
        await settle(tester);
        router.pop();
        await tester.pump(const Duration(seconds: 1));
        await settle(tester);
        expect(
          find.byKey(const ValueKey('route-not-found')),
          findsNothing,
          reason: '$from > $page',
        );
      }
    }
    await closeEnv(tester, env);
  });
}
