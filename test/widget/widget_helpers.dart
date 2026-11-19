import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/app/localization/app_locales.dart';
import 'package:future_os/core/design_system/app_theme.dart';
import 'package:future_os/core/design_system/components/surfaces.dart';
import 'package:future_os/core/providers/core_providers.dart';
import 'package:future_os/core/security/secret_store.dart';
import 'package:future_os/core/time/clock.dart';
import 'package:future_os/features/settings/application/settings_providers.dart';
import 'package:future_os/features/settings/data/settings_repository.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:material_ui/material_ui.dart';

import '../helpers.dart';

/// Pumps [child] inside the real theme, localization and providers, backed
/// by an in-memory database and a fixed clock. Uses reduced motion so
/// `pumpAndSettle` terminates.
Future<TestEnv> pumpScreen(
  WidgetTester tester,
  Widget child, {
  String localeTag = 'en',
  TestEnv? env,
  AppSettings settings = const AppSettings(onboardingDone: true),
  List<Override> overrides = const [],
  Size size = const Size(412, 915),
  bool withRouter = false,
}) async {
  await initializeDateFormatting();
  final e = env ?? TestEnv();
  // The "what's new" sheet is not part of other screens' tests (its own test
  // writes '0' first to see it).
  await tester.runAsync(() async {
    if (await e.db.readValue('whatsNew.seen') == null) {
      await e.db.writeValue('whatsNew.seen', '999');
    }
  });
  tester.view.physicalSize = size * 3;
  tester.view.devicePixelRatio = 3;
  addTearDown(tester.view.reset);
  final locale = AppLocales.byTag(localeTag)!.locale;
  await tester.pumpWidget(
    ProviderScope(
      overrides: [
        databaseProvider.overrideWithValue(e.db),
        clockProvider.overrideWithValue(e.clock),
        secretStoreProvider.overrideWithValue(MemorySecretStore()),
        initialSettingsProvider.overrideWithValue(settings.copyWith(localeTag: localeTag)),
        ...overrides,
      ],
      child: withRouter
          ? MaterialApp.router(
              locale: locale,
              supportedLocales: AppLocales.locales,
              localizationsDelegates: AppLocales.delegates,
              theme: AppTheme.build(brightness: Brightness.light, locale: locale),
              routerConfig: GoRouter(
                routes: [
                  GoRoute(
                    path: '/',
                    builder: (_, _) => MotionScope(reduceMotion: true, child: child),
                  ),
                ],
                // Any navigation away from the screen under test lands here so
                // tests can assert the target location.
                errorBuilder: (_, state) => Scaffold(body: Text('route:${state.uri}')),
              ),
            )
          : MaterialApp(
              locale: locale,
              supportedLocales: AppLocales.locales,
              localizationsDelegates: AppLocales.delegates,
              theme: AppTheme.build(brightness: Brightness.light, locale: locale),
              home: MotionScope(reduceMotion: true, child: child),
            ),
    ),
  );
  await tester.pump();
  return e;
}

/// Lets drift stream queries deliver and timers fire.
Future<void> settle(WidgetTester tester) async {
  for (var i = 0; i < 5; i++) {
    await tester.runAsync(() => Future<void>.delayed(const Duration(milliseconds: 10)));
    await tester.pump(const Duration(milliseconds: 50));
  }
}

const allLocaleTags = ['ar', 'en', 'zh-CN', 'es', 'ru', 'fr', 'pt-BR', 'hi-IN'];

/// Unused import guard for Clock in helper consumers.
typedef TestClock = FixedClock;

/// Unmounts the screen while fake time can still advance (Riverpod cancels
/// drift stream queries, which schedules zero-delay timers), then closes the
/// database on the real event loop. A plain `env.dispose()` with a screen still
/// mounted, or from a tear-down, can wait forever.
Future<void> closeEnv(WidgetTester tester, TestEnv env) async {
  await tester.pumpWidget(const SizedBox.shrink());
  await settle(tester);
  await tester.runAsync(env.dispose);
}

/// Scrolls the page until [target] is built and visible. Screens use lazy
/// slivers, so rows below the fold do not exist until scrolled to.
Future<void> scrollPageTo(WidgetTester tester, Finder target) async {
  await tester.scrollUntilVisible(
    target,
    200,
    scrollable: find
        .byWidgetPredicate((w) => w is Scrollable && w.axisDirection == AxisDirection.down)
        .first,
  );
  await tester.pump();
}
