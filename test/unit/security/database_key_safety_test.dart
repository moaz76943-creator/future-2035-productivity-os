import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/core/security/secret_store.dart';

void main() {
  test('creates a random key only for a fresh database', () async {
    final store = MemorySecretStore();
    final key = await obtainDatabaseKey(store, databaseExists: false);
    expect(key, matches(RegExp(r'^[0-9a-f]{64}$')));
    expect(await store.read(SecretKeys.databaseKey), key);
  });

  test('does not replace a missing key when an encrypted database exists', () async {
    final store = MemorySecretStore();
    await expectLater(
      obtainDatabaseKey(store, databaseExists: true),
      throwsA(isA<DatabaseKeyUnavailableException>()),
    );
    expect(await store.read(SecretKeys.databaseKey), isNull);
  });

  test('does not silently rotate a malformed stored key', () async {
    final store = MemorySecretStore()..values[SecretKeys.databaseKey] = 'malformed-key';
    await expectLater(
      obtainDatabaseKey(store, databaseExists: false),
      throwsA(isA<DatabaseKeyUnavailableException>()),
    );
    expect(await store.read(SecretKeys.databaseKey), 'malformed-key');
  });

  test('reuses a valid existing key', () async {
    const key = '0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef';
    final store = MemorySecretStore()..values[SecretKeys.databaseKey] = key;
    expect(await obtainDatabaseKey(store, databaseExists: true), key);
    expect(await store.read(SecretKeys.databaseKey), key);
  });
}
