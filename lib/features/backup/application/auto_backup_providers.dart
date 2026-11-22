import 'dart:async';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart' show AppLifecycleListener;

import '../../../core/providers/core_providers.dart';
import '../../../core/security/secret_store.dart';
import '../data/auto_backup.dart';
import 'backup_ui.dart';

final autoBackupProvider = Provider<AutoBackup>(
  (ref) => AutoBackup(
    service: ref.watch(backupServiceProvider),
    secrets: ref.watch(secretStoreProvider),
    clock: ref.watch(clockProvider),
  ),
);

final autoBackupListProvider = FutureProvider.autoDispose<List<AutoBackupFile>>(
  (ref) => ref.watch(autoBackupProvider).list(),
);

final autoBackupCheckProvider = FutureProvider.autoDispose<AutoBackupCheck?>(
  (ref) => ref.watch(autoBackupProvider).lastCheck(),
);

/// Makes the daily backup quietly: shortly after launch and whenever the app
/// comes back to the foreground (at most once every 20 hours). Android only,
/// so tests and other platforms never leave timers behind.
final autoBackupRunnerProvider = Provider<void>((ref) {
  if (!Platform.isAndroid) return;
  var running = false;
  Future<void> run() async {
    if (running) return;
    running = true;
    try {
      final backup = ref.read(autoBackupProvider);
      final made = await backup.runIfDue();
      final checked = await backup.checkIfDue();
      if ((made != null || checked != null) && ref.mounted) {
        ref.invalidate(autoBackupListProvider);
        ref.invalidate(autoBackupCheckProvider);
      }
    } on Object {
      // A failed automatic backup must never disturb the user; next time retries.
    } finally {
      running = false;
    }
  }

  final timer = Timer(const Duration(seconds: 30), run);
  final lifecycle = AppLifecycleListener(onResume: run);
  ref.onDispose(() {
    timer.cancel();
    lifecycle.dispose();
  });
});
