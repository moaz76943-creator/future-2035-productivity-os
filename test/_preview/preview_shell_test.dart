import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
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

import '../helpers.dart';
import '../widget/widget_helpers.dart';

/// Writes `build/preview_<screen>.png` for the main tabs (design review only).
void main() {
  testWidgets('preview main tabs', (tester) async {
    await tester.runAsync(() async {
      Future<void> family(String n, String a) async =>
          (FontLoader(n)..addFont(rootBundle.load(a))).load();
      await family('Manrope', 'assets/fonts/Manrope.ttf');
      await family('ReadexPro', 'assets/fonts/ReadexPro.ttf');
      // The Flutter SDK's icon font, wherever the SDK lives (here or on CI).
      final exe = Platform.resolvedExecutable;
      final cache = exe.substring(0, exe.indexOf('bin/cache') + 'bin/cache'.length);
      final icons = File('$cache/artifacts/material_fonts/MaterialIcons-Regular.otf');
      await (FontLoader(
        'MaterialIcons',
      )..addFont(Future.value(ByteData.sublistView(icons.readAsBytesSync())))).load();
    });
    await initializeDateFormatting();
    const tag = String.fromEnvironment('TAG', defaultValue: 'ar');
    final env = TestEnv();
    await tester.runAsync(() => env.db.writeValue('whatsNew.seen', '999'));
    tester.view.physicalSize = const Size(412, 915) * 2;
    tester.view.devicePixelRatio = 2;
    addTearDown(tester.view.reset);
    final locale = AppLocales.byTag(tag)!.locale;
    late GoRouter router;
    final key = GlobalKey();
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          databaseProvider.overrideWithValue(env.db),
          clockProvider.overrideWithValue(env.clock),
          secretStoreProvider.overrideWithValue(MemorySecretStore()),
          initialSettingsProvider.overrideWithValue(
            const AppSettings(onboardingDone: true, localeTag: tag),
          ),
        ],
        child: RepaintBoundary(
          key: key,
          child: Consumer(
            builder: (context, ref, _) {
              router = ref.watch(routerProvider);
              return MaterialApp.router(
                debugShowCheckedModeBanner: false,
                locale: locale,
                supportedLocales: AppLocales.locales,
                localizationsDelegates: AppLocales.delegates,
                theme: AppTheme.build(brightness: Brightness.light, locale: locale),
                routerConfig: router,
              );
            },
          ),
        ),
      ),
    );
    await settle(tester);
    for (final (name, path) in [
      ('home', Routes.home),
      ('tasks', Routes.tasks),
      ('focus', Routes.focus),
      ('calendar', Routes.calendar),
      ('spaces', Routes.spaces),
    ]) {
      router.go(path);
      for (var i = 0; i < 3; i++) {
        await settle(tester);
      }
      final ro = key.currentContext!.findRenderObject()! as RenderRepaintBoundary;
      await tester.runAsync(() async {
        final img = await ro.toImage(pixelRatio: 1.5);
        final bytes = await img.toByteData(format: ui.ImageByteFormat.png);
        File('build/preview_$name.png').writeAsBytesSync(bytes!.buffer.asUint8List());
      });
    }
    await closeEnv(tester, env);
  });
}
