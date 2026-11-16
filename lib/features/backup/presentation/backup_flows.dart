import 'dart:typed_data';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../core/backup/backup_service.dart';
import '../../../core/providers/core_providers.dart';
import '../../../core/security/secret_store.dart';
import '../../../shared/widgets/dialogs.dart';
import '../../settings/application/settings_providers.dart';
import '../application/backup_ui.dart';
import 'backup_dialogs.dart';

/// Password → encrypt → save (or share) an encrypted backup.
Future<void> createBackupFlow(BuildContext context, WidgetRef ref) async {
  final l10n = context.l10n;
  final password = await askBackupPassword(context, confirm: true);
  if (password == null || !context.mounted) return;
  final service = ref.read(backupServiceProvider);
  final files = ref.read(backupFilesProvider);
  final now = ref.read(clockProvider).now();
  try {
    final bytes = await runWithProgress(
      context,
      l10n.backupCreating,
      () => service.export(password: password, now: now),
    );
    if (!context.mounted) return;
    final result = await files.save(backupFileName(now), bytes, subject: l10n.backupShareSubject);
    if (!context.mounted) return;
    switch (result) {
      case BackupSaveResult.saved:
        showMessage(context, l10n.backupSaved);
      case BackupSaveResult.shared:
        showMessage(context, l10n.backupCreated);
      case BackupSaveResult.cancelled:
        break;
    }
  } on BackupException catch (e) {
    if (context.mounted) showMessage(context, backupErrorMessage(l10n, e.error));
  } on Object {
    if (context.mounted) showMessage(context, l10n.backupFailed);
  }
}

/// Pick file → confirm replacement → password → atomic restore.
Future<void> restoreBackupFlow(BuildContext context, WidgetRef ref) async {
  final l10n = context.l10n;
  final files = ref.read(backupFilesProvider);
  final Uint8List? bytes;
  try {
    bytes = await files.pick();
  } on Object {
    if (context.mounted) showMessage(context, l10n.backupReadFailed);
    return;
  }
  if (!context.mounted || bytes == null) return;
  final data = bytes;
  final confirmed = await confirmAction(
    context,
    title: l10n.backupRestoreConfirmTitle,
    message: l10n.backupRestoreConfirmBody,
    confirmLabel: l10n.actionContinue,
    destructive: true,
  );
  if (!confirmed || !context.mounted) return;
  final password = await askBackupPassword(context, confirm: false);
  if (password == null || !context.mounted) return;
  final service = ref.read(backupServiceProvider);
  try {
    final count = await runWithProgress(
      context,
      l10n.backupRestoring,
      () => service.restore(data, password),
    );
    await ref.read(settingsProvider.notifier).reload();
    if (context.mounted) showMessage(context, l10n.backupRestored(count));
  } on Object catch (e) {
    if (context.mounted) showMessage(context, restoreFailureMessage(l10n, e));
  }
}

/// Double confirmation, then wipes every table and the assistant API key.
Future<void> eraseAllDataFlow(BuildContext context, WidgetRef ref) async {
  final l10n = context.l10n;
  final first = await confirmAction(
    context,
    title: l10n.settingsEraseConfirmTitle,
    message: l10n.settingsEraseFirstBody,
    confirmLabel: l10n.actionContinue,
    destructive: true,
  );
  if (!first || !context.mounted) return;
  final typed = await confirmEraseByTyping(context);
  if (!typed || !context.mounted) return;
  final messenger = ScaffoldMessenger.maybeOf(context);
  try {
    await ref.read(databaseProvider).wipeAllUserData();
    await ref.read(secretStoreProvider).delete(SecretKeys.assistantApiKey);
    await ref.read(settingsProvider.notifier).reload();
    messenger?.showSnackBar(
      SnackBar(content: Text(l10n.settingsErased), behavior: SnackBarBehavior.floating),
    );
  } on Object {
    messenger?.showSnackBar(
      SnackBar(content: Text(l10n.settingsEraseFailed), behavior: SnackBarBehavior.floating),
    );
  }
}
