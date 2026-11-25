import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../core/design_system/app_theme.dart';
import '../core/design_system/components/surfaces.dart';
import '../core/design_system/tokens.dart';
import '../features/backup/application/auto_backup_providers.dart';
import '../features/flashcards/application/language_names.dart';
import '../features/focus/application/focus_dnd_link.dart';
import '../features/guard/application/guard_controller.dart';
import '../features/notifications/application/reminder_sync.dart';
import '../features/prayer/application/prayer_providers.dart';
import '../features/settings/application/settings_providers.dart';
import '../features/sounds/application/focus_sounds_link.dart';
import '../features/settings/data/settings_repository.dart';
import '../l10n/gen/app_localizations.dart';
import 'home_widget_link.dart';
import 'localization/app_locales.dart';
import 'routing/app_router.dart';
import 'routing/deep_links.dart';

class FutureOsApp extends ConsumerWidget {
  const FutureOsApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsProvider);
    final router = ref.watch(routerProvider);
    // Keeps OS notifications in sync with stored data and restores the
    // focus timer at launch.
    ref.watch(reminderSyncProvider);
    // Quiet daily backup (Android).
    ref.watch(autoBackupRunnerProvider);
    // Saved sound mix with focus sessions, when turned on.
    ref.watch(focusSoundsLinkProvider);
    // Notification taps and app icon shortcuts open their screen.
    ref.watch(deepLinksProvider);
    // Do Not Disturb during focus, when turned on.
    ref.watch(focusDndLinkProvider);
    // Pauses focus at prayer time, when prayer times are on.
    ref.watch(prayerFocusLinkProvider);
    // Home screen widget (focus time left, cards due).
    ref.watch(homeWidgetLinkProvider);
    // Distraction guard rules and focus time for the Android service.
    ref.watch(guardLinkProvider);
    final language = AppLocales.resolve(
      settings.localeTag,
      WidgetsBinding.instance.platformDispatcher.locales,
    );
    final locale = language.locale;
    // Language names in the app language for flashcard deck languages.
    ref.watch(languageNamesProvider(locale.toLanguageTag()));
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      onGenerateTitle: (context) => AppLocalizations.of(context).appName,
      routerConfig: router,
      locale: locale,
      supportedLocales: AppLocales.locales,
      localizationsDelegates: AppLocales.delegates,
      theme: AppTheme.build(
        brightness: Brightness.light,
        locale: locale,
        accent: AppAccents.of(settings.accent),
      ),
      darkTheme: AppTheme.build(
        brightness: Brightness.dark,
        locale: locale,
        accent: AppAccents.of(settings.accent),
      ),
      themeMode: switch (settings.theme) {
        ThemePreference.light => ThemeMode.light,
        ThemePreference.dark => ThemeMode.dark,
        ThemePreference.system => ThemeMode.system,
      },
      builder: (context, child) {
        final mq = MediaQuery.of(context);
        return MediaQuery(
          // Support large accessibility text while keeping layouts usable.
          data: mq.copyWith(textScaler: mq.textScaler.clamp(maxScaleFactor: 2.0)),
          child: MotionScope(reduceMotion: settings.reduceMotion, child: child!),
        );
      },
    );
  }
}
