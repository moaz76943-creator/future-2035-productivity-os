import 'dart:async';

import 'package:flutter/foundation.dart' show kDebugMode;

import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:material_ui/material_ui.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import '../../core/database/app_database.dart';
import '../../core/database/database_connection.dart';
import '../../core/providers/core_providers.dart';
import '../../core/security/secret_store.dart';
import '../../features/settings/application/settings_providers.dart';
import '../../features/settings/data/settings_repository.dart';
import '../app.dart';
import 'startup_error_app.dart';

const databaseFileName = 'future_os.db';

/// Opens the encrypted store and starts the app. Failures never delete or
/// reset data; the user sees an explanation and the file stays untouched.
Future<void> bootstrap() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting();
  // Release builds never print errors that may contain user content.
  FlutterError.onError = (details) {
    if (kDebugMode) FlutterError.presentError(details);
  };

  const secrets = PlatformSecretStore();
  AppDatabase? db;
  try {
    final dir = await getApplicationSupportDirectory();
    final file = File(p.join(dir.path, databaseFileName));
    final key = await obtainDatabaseKey(secrets);
    db = AppDatabase(openEncryptedDatabase(file: file, hexKey: key));
    final settings = await SettingsRepository(db).load();
    runApp(
      ProviderScope(
        overrides: [
          databaseProvider.overrideWithValue(db),
          secretStoreProvider.overrideWithValue(secrets),
          initialSettingsProvider.overrideWithValue(settings),
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
