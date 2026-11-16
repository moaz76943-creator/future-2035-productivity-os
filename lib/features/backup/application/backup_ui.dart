import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_plus/share_plus.dart';

import '../../../core/backup/backup_service.dart';
import '../../../core/providers/core_providers.dart';
import '../../../core/text/text_normalizer.dart';
import '../../../l10n/gen/app_localizations.dart';

/// File extension of encrypted backups (matches the "F35B" magic).
const backupExtension = 'f35b';

/// `future-os-YYYYMMDD.f35b` for the given local date.
String backupFileName(DateTime now) {
  final l = now.toLocal();
  String two(int v) => v.toString().padLeft(2, '0');
  return 'future-os-${l.year.toString().padLeft(4, '0')}${two(l.month)}${two(l.day)}'
      '.$backupExtension';
}

/// Localized, user-facing message for a [BackupError].
String backupErrorMessage(AppLocalizations l10n, BackupError error) => switch (error) {
  BackupError.weakPassword => l10n.backupPasswordShort,
  BackupError.notABackup => l10n.backupNotABackup,
  BackupError.corrupted => l10n.backupCorrupted,
  BackupError.wrongPasswordOrTampered => l10n.backupWrongPassword,
  BackupError.newerVersion => l10n.backupNewer,
};

/// Maps any failure thrown while restoring to a message. Unknown errors get
/// a generic "nothing was changed" message (restore is transactional).
String restoreFailureMessage(AppLocalizations l10n, Object error) =>
    error is BackupException ? backupErrorMessage(l10n, error.error) : l10n.backupRestoreFailed;

/// True when [input] matches the localized confirmation [word], ignoring
/// case, diacritics, surrounding whitespace and script variants.
bool matchesEraseWord(String input, String word) {
  final a = TextNormalizer.normalize(input.trim());
  final b = TextNormalizer.normalize(word.trim());
  return a.isNotEmpty && a == b;
}

/// Outcome of handing the backup bytes to the platform.
enum BackupSaveResult { saved, shared, cancelled }

/// Platform file access, overridable in tests.
abstract class BackupFiles {
  /// Saves [bytes] via the system save dialog, falling back to the share
  /// sheet when saving is not available.
  Future<BackupSaveResult> save(String fileName, Uint8List bytes, {required String subject});

  /// Lets the user pick a backup file. Returns null when cancelled.
  Future<Uint8List?> pick();
}

class PlatformBackupFiles implements BackupFiles {
  const PlatformBackupFiles();

  @override
  Future<BackupSaveResult> save(String fileName, Uint8List bytes, {required String subject}) async {
    try {
      final uri = await FilePicker.saveFile(fileName: fileName, bytes: bytes);
      return uri == null ? BackupSaveResult.cancelled : BackupSaveResult.saved;
    } on Object {
      final result = await SharePlus.instance.share(
        ShareParams(
          subject: subject,
          files: [XFile.fromData(bytes, name: fileName, mimeType: 'application/octet-stream')],
          fileNameOverrides: [fileName],
        ),
      );
      return result.status == ShareResultStatus.dismissed
          ? BackupSaveResult.cancelled
          : BackupSaveResult.shared;
    }
  }

  @override
  Future<Uint8List?> pick() async {
    final files = await FilePicker.pickFiles();
    if (files.isEmpty) return null;
    return files.first.readAsBytes();
  }
}

final backupFilesProvider = Provider<BackupFiles>((ref) => const PlatformBackupFiles());

final backupServiceProvider = Provider<BackupService>(
  (ref) => BackupService(ref.watch(databaseProvider)),
);
