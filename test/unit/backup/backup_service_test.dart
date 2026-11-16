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
