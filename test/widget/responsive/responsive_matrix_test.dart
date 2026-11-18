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

/// Every top-level screen of the real app router, at the widths the product
/// must support, in LTR and RTL, at normal and large text. A RenderFlex /
/// RenderBox overflow is reported as a FlutterError and fails the test.
const _widths = <double>[320, 360, 375, 390, 412, 430, 600, 768, 840, 1024];
const _screens = <String>[
  Routes.home,
  Routes.tasks,
  Routes.focus,
  Routes.calendar,
  Routes.spaces,
  Routes.taskNew,
  Routes.eventNew,
  Routes.projects,
  Routes.notes,
  Routes.flashcards,
  Routes.goals,
  Routes.habits,
  Routes.insights,
  Routes.search,
  Routes.assistant,
  Routes.settings,
  Routes.trash,
];

Future<GoRouter> _pumpApp(WidgetTester tester, TestEnv env, String tag, double textScale) async {
  late GoRouter router;
  final locale = AppLocales.byTag(tag)!.locale;
  await tester.pumpWidget(
    ProviderScope(
      overrides: [
        databaseProvider.overrideWithValue(env.db),
        clockProvider.overrideWithValue(env.clock),
        secretStoreProvider.overrideWithValue(MemorySecretStore()),
        initialSettingsProvider.overrideWithValue(
          AppSettings(onboardingDone: true, localeTag: tag),
        ),
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
            builder: (context, child) => MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(textScale)),
              child: child!,
            ),
          );
        },
      ),
    ),
  );
  await settle(tester);
  return router;
}

void main() {
  for (final tag in ['en', 'ar']) {
    for (final width in _widths) {
      for (final scale in width == 360 || width == 412 ? [1.0, 1.5, 2.0] : [1.0]) {
        testWidgets('all screens lay out at ${width.toInt()}px, $tag, text x$scale', (
          tester,
        ) async {
          await initializeDateFormatting();
          final env = TestEnv();
          final height = width >= 600 ? width * 0.75 : 780.0;
          tester.view.physicalSize = Size(width, height) * 2;
          tester.view.devicePixelRatio = 2;
          addTearDown(tester.view.reset);
          final router = await _pumpApp(tester, env, tag, scale);
          for (final path in _screens) {
            router.go(path);
            await tester.pump(const Duration(seconds: 1));
            await settle(tester);
            expect(
              router.routerDelegate.currentConfiguration.isError,
              isFalse,
              reason: '$path is not a registered route',
            );
            expect(tester.takeException(), isNull, reason: '$path at ${width}px $tag x$scale');
          }
          await closeEnv(tester, env);
        });
      }
    }
  }
}
