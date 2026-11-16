import 'dart:io';
import 'dart:math';

import 'package:drift/drift.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/core/database/app_database.dart';
import 'package:future_os/core/database/database_connection.dart';

String _randomHexKey(Random r) => List.generate(
  32,
  (_) => r.nextInt(256).toRadixString(16).padLeft(2, '0'),
).join();

void main() {
  late Directory dir;
  setUp(() => dir = Directory.systemTemp.createTempSync('fos_enc_'));
  tearDown(() => dir.deleteSync(recursive: true));

  test('database file is encrypted at rest and requires the key', () async {
    final rnd = Random.secure();
    final key = _randomHexKey(rnd);
    final file = File('${dir.path}/app.db');

    final db = AppDatabase(openEncryptedDatabase(file: file, hexKey: key));
    await db.writeValue('secret.marker', 'PLAINTEXT_SENTINEL_12345');
    expect(await db.readValue('secret.marker'), 'PLAINTEXT_SENTINEL_12345');
    await db.customStatement('PRAGMA wal_checkpoint(TRUNCATE)');
    await db.close();

    final bytes = file.readAsBytesSync();
    expect(String.fromCharCodes(bytes).contains('PLAINTEXT_SENTINEL'), isFalse);
    expect(String.fromCharCodes(bytes.take(15)), isNot('SQLite format 3'));

    final reopened = AppDatabase(
      openEncryptedDatabase(file: file, hexKey: key),
    );
    expect(
      await reopened.readValue('secret.marker'),
      'PLAINTEXT_SENTINEL_12345',
    );
    await reopened.close();

    final wrong = AppDatabase(
      openEncryptedDatabase(file: file, hexKey: _randomHexKey(rnd)),
    );
    await expectLater(wrong.readValue('secret.marker'), throwsA(anything));
    await wrong.close();
  });

  test('normalize SQL function is registered', () async {
    final db = openInMemoryDatabase();
    final row = await db
        .customSelect("SELECT $kNormalizeSqlFunction('Élan مَدْرَسَة') AS v")
        .getSingle();
    expect(row.read<String>('v'), 'elan مدرسه');
    await db.close();
  });
}
