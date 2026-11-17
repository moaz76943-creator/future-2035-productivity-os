import 'dart:convert';
import 'dart:io' show gzip;
import 'dart:math' show Random;
import 'dart:typed_data';

import 'package:cryptography/cryptography.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/core/backup/backup_service.dart';
import 'package:future_os/core/database/database_connection.dart';
import 'package:future_os/features/notes/data/notes_repository.dart';
import 'package:future_os/features/tasks/data/tasks_repository.dart';

import '../../helpers.dart';

// Low-cost KDF parameters keep the test fast; production uses the defaults.
final _fastKdf = Argon2id(
  memory: 256,
  iterations: 1,
  parallelism: 1,
  hashLength: 32,
);

Future<Uint8List> _backupWithPayload(Map<String, Object?> payload) async {
  final aes = AesGcm.with256bits();
  final salt = List<int>.generate(16, (_) => Random.secure().nextInt(256));
  final nonce = aes.newNonce();
  final header = {
    'format': 'future-os-backup',
    'version': BackupService.formatVersion,
    'createdAt': DateTime.utc(2026).toIso8601String(),
    'schemaVersion': 1,
    'kdf': {
      'alg': 'argon2id',
      'memoryKiB': _fastKdf.memory,
      'iterations': _fastKdf.iterations,
      'parallelism': _fastKdf.parallelism,
      'salt': base64Encode(salt),
    },
    'cipher': {'alg': 'aes-256-gcm', 'nonce': base64Encode(nonce)},
  };
  final headerBytes = utf8.encode(jsonEncode(header));
  final key = await _fastKdf.deriveKeyFromPassword(
    password: 'password-123',
    nonce: salt,
  );
  final plain = gzip.encode(utf8.encode(jsonEncode(payload)));
  final box = await aes.encrypt(plain, secretKey: key, nonce: nonce, aad: headerBytes);
  return Uint8List.fromList([
    ...BackupService.magic,
    (headerBytes.length >> 24) & 0xff,
    (headerBytes.length >> 16) & 0xff,
    (headerBytes.length >> 8) & 0xff,
    headerBytes.length & 0xff,
    ...headerBytes,
    ...box.cipherText,
    ...box.mac.bytes,
  ]);
}

void main() {
  test('export → restore into empty database reproduces data', () async {
    final env = TestEnv();
    final tasks = TasksRepository(env.db, env.clock);
    final p = await tasks.create(const TaskDraft(title: 'parent ✓ مهمة'));
    await tasks.create(TaskDraft(title: 'child', parentId: p, priority: 3));
    await tasks.addChecklistItem(p, 'step');
    await NotesRepository(
      env.db,
      env.clock,
    ).create(title: 'n', body: '#tag body');

    final bytes = await BackupService(
      env.db,
      kdf: _fastKdf,
    ).export(password: 'correct horse');
    expect(String.fromCharCodes(bytes).contains('مهمة'), isFalse);

    final target = openInMemoryDatabase();
    final restored = await BackupService(
      target,
      kdf: _fastKdf,
    ).restore(bytes, 'correct horse');
    expect(restored, greaterThanOrEqualTo(5));
    final rows = await target.select(target.tasks).get();
    expect(rows.map((r) => r.title).toSet(), {'parent ✓ مهمة', 'child'});
    expect(rows.firstWhere((r) => r.title == 'child').priority, 3);
    expect(await target.select(target.noteTags).get(), hasLength(1));
    await target.close();
    await env.dispose();
  });

  test('malformed table rows are rejected before existing data is replaced', () async {
    final env = TestEnv();
    addTearDown(env.dispose);
    await TasksRepository(
      env.db,
      env.clock,
    ).create(const TaskDraft(title: 'keep existing data'));

    final bytes = await _backupWithPayload({
      'app': 'future-os',
      'schemaVersion': 1,
      'tables': {'tasks': 'not-a-row-list'},
    });
    await expectLater(
      BackupService(env.db, kdf: _fastKdf).restore(bytes, 'password-123'),
      throwsA(
        isA<BackupException>().having((e) => e.error, 'error', BackupError.corrupted),
      ),
    );
    expect(
      (await env.db.select(env.db.tasks).get()).single.title,
      'keep existing data',
    );
  });

  test('malformed authenticated-container header is rejected as a backup error', () async {
    final env = TestEnv();
    addTearDown(env.dispose);
    final svc = BackupService(env.db, kdf: _fastKdf);
    final header = Uint8List.fromList(
      '{"format":"future-os-backup","version":1,"kdf":"invalid","cipher":{}}'.codeUnits,
    );
    final bytes = Uint8List.fromList([
      ...BackupService.magic,
      (header.length >> 24) & 0xff,
      (header.length >> 16) & 0xff,
      (header.length >> 8) & 0xff,
      header.length & 0xff,
      ...header,
      ...List<int>.filled(16, 0),
    ]);
    await expectLater(
      svc.inspect(bytes, 'password-123'),
      throwsA(
        isA<BackupException>().having(
          (e) => e.error,
          'error',
          BackupError.corrupted,
        ),
      ),
    );
  });

  test(
    'wrong password, tampering and garbage are rejected without changes',
    () async {
      final env = TestEnv();
      await TasksRepository(
        env.db,
        env.clock,
      ).create(const TaskDraft(title: 'keep me'));
      final svc = BackupService(env.db, kdf: _fastKdf);
      final bytes = await svc.export(password: 'password-1');

      Future<BackupError> errorOf(Future<Object?> f) async {
        try {
          await f;
        } on BackupException catch (e) {
          return e.error;
        }
        fail('expected BackupException');
      }

      expect(
        await errorOf(svc.restore(bytes, 'password-2')),
        BackupError.wrongPasswordOrTampered,
      );
      final tampered = Uint8List.fromList(bytes)..[bytes.length - 20] ^= 0x01;
      expect(
        await errorOf(svc.restore(tampered, 'password-1')),
        BackupError.wrongPasswordOrTampered,
      );
      expect(
        await errorOf(svc.restore(Uint8List.fromList([1, 2, 3]), 'x')),
        BackupError.notABackup,
      );
      expect(
        await errorOf(svc.export(password: 'short')),
        BackupError.weakPassword,
      );
      expect((await env.db.select(env.db.tasks).get()).single.title, 'keep me');
      await env.dispose();
    },
  );
}
