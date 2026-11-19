import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:path_provider/path_provider.dart';

import '../../../core/backup/backup_service.dart';
import '../../../core/security/secret_store.dart';
import '../../../core/time/clock.dart';

/// One automatic backup file on this phone.
class AutoBackupFile {
  const AutoBackupFile(this.file, this.madeAt);
  final File file;
  final DateTime madeAt;
}

/// Daily automatic backups with no setup: encrypted with a random password
/// kept in the phone's secure storage, written to the app's private folder,
/// the latest [keep] kept. They protect against mistakes and damaged data;
/// to move to a new phone the user still saves a backup file elsewhere.
class AutoBackup {
  AutoBackup({
    required this.service,
    required this.secrets,
    required this.clock,
    Future<Directory> Function()? root,
  }) : _root = root ?? getApplicationSupportDirectory;

  static const keep = 7;
  static const interval = Duration(hours: 20);
  static final _name = RegExp(r'^auto-(\d{8})-(\d{6})\.dfb$');

  final BackupService service;
  final SecretStore secrets;
  final Clock clock;
  final Future<Directory> Function() _root;

  Future<Directory> _dir() async {
    final d = Directory('${(await _root()).path}${Platform.pathSeparator}auto_backups');
    if (!d.existsSync()) await d.create(recursive: true);
    return d;
  }

  Future<String> _password() async {
    final existing = await secrets.read(SecretKeys.autoBackupPassword);
    if (existing != null && existing.length >= 32) return existing;
    final r = Random.secure();
    final pw = base64UrlEncode(List<int>.generate(32, (_) => r.nextInt(256)));
    await secrets.write(SecretKeys.autoBackupPassword, pw);
    return pw;
  }

  /// Newest first.
  Future<List<AutoBackupFile>> list() async {
    final d = await _dir();
    final out = <AutoBackupFile>[];
    for (final e in d.listSync().whereType<File>()) {
      final m = _name.firstMatch(e.uri.pathSegments.last);
      if (m == null) continue;
      final s = '${m.group(1)}${m.group(2)}';
      final t = DateTime.utc(
        int.parse(s.substring(0, 4)),
        int.parse(s.substring(4, 6)),
        int.parse(s.substring(6, 8)),
        int.parse(s.substring(8, 10)),
        int.parse(s.substring(10, 12)),
        int.parse(s.substring(12, 14)),
      );
      out.add(AutoBackupFile(e, t));
    }
    out.sort((a, b) => b.madeAt.compareTo(a.madeAt));
    return out;
  }

  /// Makes a backup when the newest is older than [interval]. Returns the new
  /// file, or null when none was due.
  Future<File?> runIfDue() async {
    final files = await list();
    final now = clock.nowUtc();
    if (files.isNotEmpty && now.difference(files.first.madeAt) < interval) return null;
    final bytes = await service.export(password: await _password(), now: now);
    String two(int v) => v.toString().padLeft(2, '0');
    final stamp =
        '${now.year}${two(now.month)}${two(now.day)}-${two(now.hour)}${two(now.minute)}${two(now.second)}';
    final d = await _dir();
    final tmp = File('${d.path}${Platform.pathSeparator}.auto-$stamp.part');
    await tmp.writeAsBytes(bytes, flush: true);
    final file = await tmp.rename('${d.path}${Platform.pathSeparator}auto-$stamp.dfb');
    for (final old in (await list()).skip(keep)) {
      await old.file.delete();
    }
    return file;
  }

  /// Replaces all data with [f]. Returns the number of rows restored.
  Future<int> restore(AutoBackupFile f) async =>
      service.restore(await f.file.readAsBytes(), await _password());

  static const checkEvery = Duration(days: 7);

  File _checkFile(Directory d) => File('${d.path}${Platform.pathSeparator}last_check.txt');

  /// The last weekly check: when it ran and what it found.
  Future<AutoBackupCheck?> lastCheck() async {
    final f = _checkFile(await _dir());
    if (!f.existsSync()) return null;
    final parts = (await f.readAsString()).trim().split(' ');
    if (parts.length != 2) return null;
    final at = DateTime.tryParse(parts[0]);
    final result = AutoBackupCheckResult.values.asNameMap()[parts[1]];
    return at == null || result == null ? null : AutoBackupCheck(at, result);
  }

  /// Once a week opens the newest backup the way a restore would (password,
  /// decryption and structure) without changing any data. A backup that
  /// cannot be read is deleted and a fresh one is made at once, so a backup
  /// that would fail on the day it is needed never sits there unnoticed.
  /// Returns null when no check was due.
  Future<AutoBackupCheck?> checkIfDue() async {
    final previous = await lastCheck();
    final now = clock.nowUtc();
    if (previous != null && now.difference(previous.at) < checkEvery) return null;
    final files = await list();
    if (files.isEmpty) return null;
    var result = AutoBackupCheckResult.ok;
    if (!await _opens(files.first)) {
      await files.first.file.delete();
      // A new backup is made right away (the due-check sees none is recent).
      await runIfDue();
      final left = await list();
      result = left.isNotEmpty && await _opens(left.first)
          ? AutoBackupCheckResult.fixed
          : AutoBackupCheckResult.failed;
    }
    final check = AutoBackupCheck(now, result);
    await _checkFile(await _dir()).writeAsString('${now.toIso8601String()} ${result.name}');
    return check;
  }

  Future<bool> _opens(AutoBackupFile f) async {
    try {
      await service.inspect(await f.file.readAsBytes(), await _password());
      return true;
    } on Object {
      return false;
    }
  }
}

enum AutoBackupCheckResult { ok, fixed, failed }

class AutoBackupCheck {
  const AutoBackupCheck(this.at, this.result);
  final DateTime at;
  final AutoBackupCheckResult result;
}
