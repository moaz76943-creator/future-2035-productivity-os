import 'dart:typed_data';

import 'package:cryptography/cryptography.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/core/backup/backup_service.dart';
import 'package:future_os/features/backup/application/backup_ui.dart';
import 'package:future_os/l10n/gen/app_localizations.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';

final _fastKdf = Argon2id(memory: 256, iterations: 1, parallelism: 1, hashLength: 32);

void main() {
  final en = lookupAppLocalizations(const Locale('en'));
  final ar = lookupAppLocalizations(const Locale('ar'));

  test('backup file name uses local date', () {
    expect(backupFileName(DateTime(2026, 11, 16, 10)), 'future-os-20261116.f35b');
    expect(backupFileName(DateTime(2027, 1, 5)), 'future-os-20270105.f35b');
  });

  test('every BackupError maps to a distinct localized message (en + ar)', () {
    for (final l10n in [en, ar]) {
      final messages = {for (final e in BackupError.values) e: backupErrorMessage(l10n, e)};
      expect(messages[BackupError.wrongPasswordOrTampered], l10n.backupWrongPassword);
      expect(messages[BackupError.notABackup], l10n.backupNotABackup);
      expect(messages[BackupError.corrupted], l10n.backupCorrupted);
      expect(messages[BackupError.newerVersion], l10n.backupNewer);
      expect(messages[BackupError.weakPassword], l10n.backupPasswordShort);
      expect(messages.values.toSet().length, BackupError.values.length);
    }
    expect(ar.backupWrongPassword, isNot(en.backupWrongPassword));
  });

  test('unknown restore failures map to a generic safe message', () {
    expect(restoreFailureMessage(en, StateError('x')), en.backupRestoreFailed);
    expect(
      restoreFailureMessage(en, const BackupException(BackupError.corrupted)),
      en.backupCorrupted,
    );
  });

  test('real service errors map to the right messages', () async {
    final env = TestEnv();
    final service = BackupService(env.db, kdf: _fastKdf);
    Future<String> failure(Uint8List bytes, String pw) async {
      try {
        await service.restore(bytes, pw);
        return 'ok';
      } on Object catch (e) {
        return restoreFailureMessage(en, e);
      }
    }

    expect(await failure(Uint8List.fromList(List.filled(64, 7)), 'whatever'), en.backupNotABackup);
    final good = await service.export(password: 'correct horse');
    expect(await failure(good, 'wrong password'), en.backupWrongPassword);
    final truncated = Uint8List.fromList([
      ...good.sublist(0, 4),
      0,
      0,
      255,
      255,
      ...List.filled(40, 1),
    ]);
    expect(await failure(truncated, 'correct horse'), en.backupCorrupted);
    expect(await failure(good, 'correct horse'), 'ok');
    await env.dispose();
  });

  test('erase word matching is case-insensitive and normalized', () {
    expect(matchesEraseWord('ERASE', 'ERASE'), isTrue);
    expect(matchesEraseWord('  erase ', 'ERASE'), isTrue);
    expect(matchesEraseWord('Erase', 'ERASE'), isTrue);
    expect(matchesEraseWord('eras', 'ERASE'), isFalse);
    expect(matchesEraseWord('erase now', 'ERASE'), isFalse);
    expect(matchesEraseWord('', 'ERASE'), isFalse);
    expect(matchesEraseWord('مسح', ar.settingsEraseWord), isTrue);
    expect(matchesEraseWord('مَسح', ar.settingsEraseWord), isTrue);
    expect(matchesEraseWord('مس', ar.settingsEraseWord), isFalse);
    expect(matchesEraseWord('effacer', 'EFFACER'), isTrue);
  });
}
