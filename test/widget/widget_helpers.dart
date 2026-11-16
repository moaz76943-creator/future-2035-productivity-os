import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/app/localization/app_locales.dart';
import 'package:future_os/core/design_system/app_theme.dart';
import 'package:future_os/core/design_system/components/surfaces.dart';
import 'package:future_os/core/providers/core_providers.dart';
import 'package:future_os/core/security/secret_store.dart';
import 'package:future_os/core/time/clock.dart';
import 'package:future_os/features/settings/application/settings_providers.dart';
import 'package:future_os/features/settings/data/settings_repository.dart';
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
  List overrides = const [],
  Size size = const Size(412, 915),
}) async {
  await initializeDateFormatting();
  final e = env ?? TestEnv();
  tester.view.physicalSize = size * 3;
  tester.view.devicePixelRatio = 3;
  addTearDown(tester.view.reset);
  final locale = AppLocales.byTag(localeTag)!.locale;
  await tester.pumpWidget(ProviderScope(
    overrides: [
      databaseProvider.overrideWithValue(e.db),
      clockProvider.overrideWithValue(e.clock),
      secretStoreProvider.overrideWithValue(MemorySecretStore()),
      initialSettingsProvider.overrideWithValue(settings.copyWith(localeTag: localeTag)),
      ...overrides,
    ],
    child: MaterialApp(
      locale: locale,
      supportedLocales: AppLocales.locales,
      localizationsDelegates: AppLocales.delegates,
      theme: AppTheme.build(brightness: Brightness.light, locale: locale),
      home: MotionScope(reduceMotion: true, child: child),
    ),
  ));
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
