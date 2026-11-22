import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// Abstraction over platform secret storage (Android Keystore-backed
/// EncryptedSharedPreferences / Keystore ciphers via flutter_secure_storage).
/// Secrets never enter the database, backups or logs.
abstract class SecretStore {
  Future<String?> read(String key);
  Future<void> write(String key, String value);
  Future<void> delete(String key);
}

class PlatformSecretStore implements SecretStore {
  const PlatformSecretStore();

  static const _storage = FlutterSecureStorage(
    
  );

  @override
  Future<String?> read(String key) => _storage.read(key: key);

  @override
  Future<void> write(String key, String value) => _storage.write(key: key, value: value);

  @override
  Future<void> delete(String key) => _storage.delete(key: key);
}

/// In-memory store for tests.
class MemorySecretStore implements SecretStore {
  final Map<String, String> values = {};
  @override
  Future<String?> read(String key) async => values[key];
  @override
  Future<void> write(String key, String value) async => values[key] = value;
  @override
  Future<void> delete(String key) async => values.remove(key);
}

abstract final class SecretKeys {
  static const databaseKey = 'fos.db.key.v1';
  static const assistantApiKey = 'fos.assistant.apikey.v1';

  /// Random password of the automatic daily backups (never shown to anyone).
  static const autoBackupPassword = 'fos.backup.auto.v1';
}

/// Raised rather than rotating a missing or malformed key when an encrypted
/// database already exists. Silent key replacement would make existing data
/// permanently unreadable.
class DatabaseKeyUnavailableException implements Exception {
  const DatabaseKeyUnavailableException();
  @override
  String toString() => 'DatabaseKeyUnavailableException';
}

/// Returns the 256-bit database key. A new key is created only for a fresh
/// install; an existing encrypted database is never paired with a new key.
Future<String> obtainDatabaseKey(
  SecretStore store, {
  required bool databaseExists,
}) async {
  final existing = await store.read(SecretKeys.databaseKey);
  if (existing != null) {
    if (RegExp(r'^[0-9a-f]{64}$').hasMatch(existing)) return existing;
    throw const DatabaseKeyUnavailableException();
  }
  if (databaseExists) throw const DatabaseKeyUnavailableException();

  final rnd = Random.secure();
  final hex = List.generate(
    32,
    (_) => rnd.nextInt(256).toRadixString(16).padLeft(2, '0'),
  ).join();
  await store.write(SecretKeys.databaseKey, hex);
  // Read back to make sure it was persisted before any data is written.
  final check = await store.read(SecretKeys.databaseKey);
  if (check != hex) {
    throw StateError('secure storage did not persist the database key');
  }
  return hex;
}

final secretStoreProvider = Provider<SecretStore>((ref) => const PlatformSecretStore());
