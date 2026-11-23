import 'dart:async';
import 'dart:io';
import 'dart:ui' show PlatformDispatcher;

import 'package:flutter/foundation.dart' show kDebugMode;

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:material_ui/material_ui.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import '../../core/database/app_database.dart';
import '../../core/database/database_connection.dart';
import '../../core/diagnostics/error_log.dart';
import '../../core/providers/core_providers.dart';
import '../../core/security/secret_store.dart';
import '../../features/notifications/data/notification_service.dart';
import '../../features/settings/application/settings_providers.dart';
import '../../features/settings/data/settings_repository.dart';
import '../app.dart';
import 'font_licenses.dart';
import 'startup_error_app.dart';

const databaseFileName = 'future_os.db';

/// Opens the encrypted store and starts the app. Failures never delete or
/// reset data; the user sees an explanation and the file stays untouched.
Future<void> bootstrap() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (const bool.fromEnvironment('ENABLE_ADS', defaultValue: true) && Platform.isAndroid) {
    try {
      unawaited(MobileAds.instance.initialize());
    } on Object {
      // Ignore ad SDK init errors during startup.
    }
  }
  registerFontLicenses();
  await initializeDateFormatting();
  // Release builds never print errors that may contain user content; the
  // local error log keeps only types and code locations (see ErrorLog).
  ErrorLog errorLog;
  try {
    errorLog = ErrorLog(File(p.join((await getApplicationSupportDirectory()).path, 'errors.log')));
  } on Object {
    errorLog = ErrorLog(null);
  }
  FlutterError.onError = (details) {
    if (kDebugMode) FlutterError.presentError(details);
    errorLog.record(details.exception, details.stack, source: details.library ?? 'flutter');
  };
  PlatformDispatcher.instance.onError = (error, stack) {
    errorLog.record(error, stack, source: 'async');
    return true;
  };

  const secrets = PlatformSecretStore();
  AppDatabase? db;
  try {
    final dir = await getApplicationSupportDirectory();
    final file = File(p.join(dir.path, databaseFileName));
    final key = await obtainDatabaseKey(secrets, databaseExists: await file.exists());
    db = AppDatabase(openEncryptedDatabase(file: file, hexKey: key));
    final settings = await SettingsRepository(db).load();
    await LocalNotificationService.shared
        .init(settings)
        .timeout(const Duration(seconds: 5), onTimeout: () {});
    runApp(
      ProviderScope(
        overrides: [
          databaseProvider.overrideWithValue(db),
          secretStoreProvider.overrideWithValue(secrets),
          initialSettingsProvider.overrideWithValue(settings),
          errorLogProvider.overrideWithValue(errorLog),
        ],
        child: const FutureOsApp(),
      ),
    );
  } on Object catch (e) {
    await db?.close();
    runApp(
      StartupErrorApp(
        reason: e is CipherUnavailableException
            ? StartupFailure.cipherUnavailable
            : StartupFailure.storageLocked,
      ),
    );
  }
}
