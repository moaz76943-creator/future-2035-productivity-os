import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/core/backup/backup_service.dart';
import 'package:future_os/core/security/secret_store.dart';
import 'package:future_os/features/backup/data/auto_backup.dart';
import 'package:future_os/features/tasks/data/tasks_repository.dart';

import '../../helpers.dart';

void main() {
  test('daily automatic backup: no setup, once per interval, keeps 7, restores', () async {
    final env = TestEnv();
    final dir = await Directory.systemTemp.createTemp('autobk');
    final secrets = MemorySecretStore();
    final auto = AutoBackup(
      service: BackupService(env.db),
      secrets: secrets,
      clock: env.clock,
      root: () async => dir,
    );
    final tasks = TasksRepository(env.db, env.clock);
    await tasks.create(const TaskDraft(title: 'Keep me'));

    expect(await auto.runIfDue(), isNotNull);
    expect(await auto.runIfDue(), isNull, reason: 'not due again within the interval');
    expect(await secrets.read(SecretKeys.autoBackupPassword), hasLength(greaterThanOrEqualTo(32)));

    for (var i = 0; i < 9; i++) {
      env.clock.advance(const Duration(days: 1));
      expect(await auto.runIfDue(), isNotNull);
    }
    final files = await auto.list();
    expect(files.length, AutoBackup.keep);
    expect(files.first.madeAt.isAfter(files.last.madeAt), isTrue);

    await tasks.create(const TaskDraft(title: 'Added later'));
    await auto.restore(files.first);
    final titles = (await env.db.select(env.db.tasks).get()).map((t) => t.title).toList();
    expect(titles, ['Keep me']);
    await env.dispose();
    await dir.delete(recursive: true);
  });
}
