import 'package:material_ui/material_ui.dart';

import '../../core/design_system/app_theme.dart';
import '../../core/design_system/tokens.dart';
import '../../l10n/gen/app_localizations.dart';
import '../localization/app_locales.dart';
import 'bootstrap.dart';

enum StartupFailure { storageLocked, cipherUnavailable }

/// Minimal app shown when the encrypted store cannot be opened. It never
/// offers to delete data.
class StartupErrorApp extends StatelessWidget {
  const StartupErrorApp({super.key, required this.reason});
  final StartupFailure reason;

  @override
  Widget build(BuildContext context) {
    final locale = AppLocales.resolve(
      null,
      WidgetsBinding.instance.platformDispatcher.locales,
    ).locale;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: locale,
      supportedLocales: AppLocales.locales,
      localizationsDelegates: AppLocales.delegates,
      theme: AppTheme.build(brightness: Brightness.light, locale: locale),
      home: Builder(
        builder: (context) {
          final l10n = AppLocalizations.of(context);
          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(Space.xxl),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.lock_outline_rounded,
                      size: 48,
                      color: context.lux.danger,
                    ),
                    const SizedBox(height: Space.lg),
                    Text(
                      l10n.startupErrorTitle,
                      style: context.text.headlineSmall,
                    ),
                    const SizedBox(height: Space.sm),
                    Text(
                      reason == StartupFailure.cipherUnavailable
                          ? l10n.startupErrorCipher
                          : l10n.startupErrorLocked,
                      style: context.text.bodyLarge,
                    ),
                    const SizedBox(height: Space.xl),
                    FilledButton(
                      onPressed: bootstrap,
                      child: Text(l10n.startupErrorRetry),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
