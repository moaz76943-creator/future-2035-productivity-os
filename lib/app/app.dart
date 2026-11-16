import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../core/design_system/app_theme.dart';
import '../core/design_system/components/surfaces.dart';
import '../features/settings/application/settings_providers.dart';
import '../features/settings/data/settings_repository.dart';
import '../l10n/gen/app_localizations.dart';
import 'localization/app_locales.dart';
import 'routing/app_router.dart';

class FutureOsApp extends ConsumerWidget {
  const FutureOsApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsProvider);
    final router = ref.watch(routerProvider);
    final language = AppLocales.resolve(
      settings.localeTag,
      WidgetsBinding.instance.platformDispatcher.locales,
    );
    final locale = language.locale;
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      onGenerateTitle: (context) => AppLocalizations.of(context).appName,
      routerConfig: router,
      locale: locale,
      supportedLocales: AppLocales.locales,
      localizationsDelegates: AppLocales.delegates,
      theme: AppTheme.build(brightness: Brightness.light, locale: locale),
      darkTheme: AppTheme.build(brightness: Brightness.dark, locale: locale),
      themeMode: switch (settings.theme) {
        ThemePreference.light => ThemeMode.light,
        ThemePreference.dark => ThemeMode.dark,
        ThemePreference.system => ThemeMode.system,
      },
      builder: (context, child) {
        final mq = MediaQuery.of(context);
        return MediaQuery(
          // Support large accessibility text while keeping layouts usable.
          data: mq.copyWith(
            textScaler: mq.textScaler.clamp(maxScaleFactor: 2.0),
          ),
          child: MotionScope(
            reduceMotion: settings.reduceMotion,
            child: child!,
          ),
        );
      },
    );
  }
}
