import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:sqlite3/sqlite3.dart';

import '../text/text_normalizer.dart';
import 'app_database.dart';

/// Registers application SQL functions on a raw connection.
void registerSqlFunctions(Database db) {
  db.createFunction(
    functionName: kNormalizeSqlFunction,
    argumentCount: const AllowedArgumentCount(1),
    deterministic: true,
    directOnly: false,
    function: (args) {
      final v = args.first;
      if (v == null) return '';
      return TextNormalizer.normalize(v.toString());
    },
  );
}

/// True when the linked SQLite build supports encryption
/// (SQLite3MultipleCiphers, configured in pubspec `hooks.user_defines`).
bool hasCipherSupport(Database db) {
  try {
    return db.select('PRAGMA cipher;').isNotEmpty;
  } on Object {
    return false;
  }
}

class CipherUnavailableException implements Exception {
  const CipherUnavailableException();
  @override
  String toString() => 'CipherUnavailableException';
}

/// Opens the encrypted on-device database.
///
/// [hexKey] is a 256-bit random key (64 hex characters) held in the
/// Android Keystore-backed secure storage. It is passed as a raw key so no
/// key derivation is needed and it never appears in logs.
QueryExecutor openEncryptedDatabase({
  required File file,
  required String hexKey,
}) {
  assert(RegExp(r'^[0-9a-f]{64}$').hasMatch(hexKey));
  return NativeDatabase.createInBackground(
    file,
    setup: (db) {
      if (!hasCipherSupport(db)) {
        throw const CipherUnavailableException();
      }
      db.execute("PRAGMA key = \"x'$hexKey'\";");
      // Fails immediately if the key is wrong instead of on first query.
      db.select('SELECT count(*) FROM sqlite_master;');
      db.execute('PRAGMA journal_mode = WAL;');
      db.execute('PRAGMA secure_delete = ON;');
      registerSqlFunctions(db);
    },
  );
}

/// In-memory database for tests and previews.
AppDatabase openInMemoryDatabase() {
  return AppDatabase(NativeDatabase.memory(setup: registerSqlFunctions));
}
