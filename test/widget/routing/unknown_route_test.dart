import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/app/localization/app_locales.dart';
import 'package:future_os/app/routing/app_router.dart';
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
import '../widget_helpers.dart';

void main() {
  testWidgets('unknown route shows a recovery screen whose action returns home', (tester) async {
    await initializeDateFormatting();
    final env = TestEnv();
    tester.view.physicalSize = const Size(412, 915) * 3;
    tester.view.devicePixelRatio = 3;
    addTearDown(tester.view.reset);
    late GoRouter router;
    final locale = AppLocales.byTag('en')!.locale;
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          databaseProvider.overrideWithValue(env.db),
          clockProvider.overrideWithValue(env.clock),
          secretStoreProvider.overrideWithValue(MemorySecretStore()),
          initialSettingsProvider.overrideWithValue(const AppSettings(onboardingDone: true)),
        ],
        child: Consumer(
          builder: (context, ref, _) {
            router = ref.watch(routerProvider);
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

    router.go('/this/route/does/not/exist');
    // Let the page transition finish before acting, as a user would.
    await tester.pump(const Duration(seconds: 1));
    await settle(tester);
    expect(find.byKey(const ValueKey('route-not-found')), findsOneWidget);

    await tester.tap(find.widgetWithText(OutlinedButton, 'Home'));
    for (var i = 0; i < 6; i++) {
      await tester.pump(const Duration(milliseconds: 500));
    }
    await settle(tester);
    expect(find.byKey(const ValueKey('route-not-found')), findsNothing);
    expect(router.routerDelegate.currentConfiguration.uri.path, Routes.home);
    await env.dispose();
  });
}
