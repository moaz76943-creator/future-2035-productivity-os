import 'package:drift/drift.dart' show driftRuntimeOptions;
import 'package:future_os/core/database/app_database.dart';
import 'package:future_os/core/database/database_connection.dart';
import 'package:future_os/core/time/clock.dart';

class TestEnv {
  static bool _configured = false;
  static void _configure() {
    if (_configured) return;
    driftRuntimeOptions.dontWarnAboutMultipleDatabases = true;
    _configured = true;
  }

  TestEnv([DateTime? start])
    : clock = FixedClock(start ?? DateTime(2026, 11, 16, 10)),
      db = (() {
        _configure();
        return openInMemoryDatabase();
      })();
  final FixedClock clock;
  final AppDatabase db;
  Future<void> dispose() => db.close();
}
