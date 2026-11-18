import 'dart:convert';
import 'dart:io' show gzip;
import 'dart:isolate';
import 'dart:math' show Random;
import 'dart:typed_data';

import 'package:cryptography/cryptography.dart';
import 'package:drift/drift.dart';

import '../database/app_database.dart';

/// Versioned, password-encrypted backup format.
///
/// ```
/// bytes 0..3   magic "F35B"
/// bytes 4..7   header length N (uint32 big endian)
/// bytes 8..8+N UTF-8 JSON header (format version, KDF + cipher params)
/// rest         AES-256-GCM ciphertext followed by 16-byte tag
/// ```
///
/// The header is authenticated as associated data, so altering KDF
/// parameters, salt or nonce makes decryption fail. The plaintext is a
/// gzip-compressed JSON document containing the schema version and every
/// table's rows. Restore runs inside a single transaction: either every
/// row is restored or nothing changes.
class BackupService {
  BackupService(this._db, {Argon2id? kdf, this.offloadKdf = false})
    : _kdf =
          kdf ??
          Argon2id(
            memory: 19 * 1024, // KiB — OWASP baseline
            iterations: 2,
            parallelism: 1,
            hashLength: 32,
          );

  final AppDatabase _db;
  final Argon2id _kdf;

  /// Derive keys on a background isolate. Argon2id with 19 MiB runs for
  /// seconds in pure Dart; on the UI isolate it froze the screen (no
  /// progress indicator, "app not responding" risk). Tests keep it inline.
  final bool offloadKdf;

  Future<SecretKey> _derive(Argon2id kdf, String password, List<int> salt) async {
    if (!offloadKdf) return kdf.deriveKeyFromPassword(password: password, nonce: salt);
    final m = kdf.memory, it = kdf.iterations, par = kdf.parallelism, len = kdf.hashLength;
    final bytes = await Isolate.run(() async {
      final k = await Argon2id(
        memory: m,
        iterations: it,
        parallelism: par,
        hashLength: len,
      ).deriveKeyFromPassword(password: password, nonce: salt);
      return k.extractBytes();
    });
    return SecretKey(bytes);
  }

  static final _aes = AesGcm.with256bits();
  static const magic = [0x46, 0x33, 0x35, 0x42]; // F35B
  static const formatVersion = 1;

  static const int minPasswordLength = 8;

  Future<Map<String, Object?>> _snapshot() async {
    final tables = <String, Object?>{};
    for (final t in _db.allTables) {
      final rows = await _db.customSelect('SELECT * FROM "${t.actualTableName}"').get();
      tables[t.actualTableName] = rows.map((r) => r.data).toList();
    }
    return {'app': 'future-os', 'schemaVersion': _db.schemaVersion, 'tables': tables};
  }

  Future<Uint8List> export({required String password, DateTime? now}) async {
    if (password.length < minPasswordLength) {
      throw const BackupException(BackupError.weakPassword);
    }
    final plain = gzip.encode(utf8.encode(jsonEncode(await _snapshot())));
    final rnd = Random.secure();
    final salt = List<int>.generate(16, (_) => rnd.nextInt(256));
    final nonce = _aes.newNonce();
    final header = {
      'format': 'future-os-backup',
      'version': formatVersion,
      'createdAt': (now ?? DateTime.now()).toUtc().toIso8601String(),
      'schemaVersion': _db.schemaVersion,
      'kdf': {
        'alg': 'argon2id',
        'memoryKiB': _kdf.memory,
        'iterations': _kdf.iterations,
        'parallelism': _kdf.parallelism,
        'salt': base64Encode(salt),
      },
      'cipher': {'alg': 'aes-256-gcm', 'nonce': base64Encode(nonce)},
    };
    final headerBytes = utf8.encode(jsonEncode(header));
    final key = await _derive(_kdf, password, salt);
    final box = await _aes.encrypt(plain, secretKey: key, nonce: nonce, aad: headerBytes);
    final out = BytesBuilder(copy: false)
      ..add(magic)
      ..add((ByteData(4)..setUint32(0, headerBytes.length)).buffer.asUint8List())
      ..add(headerBytes)
      ..add(box.cipherText)
      ..add(box.mac.bytes);
    return out.takeBytes();
  }

  /// Parses and decrypts a backup without touching the database.
  static const int maxBackupBytes = 64 * 1024 * 1024;
  static const int maxHeaderBytes = 64 * 1024;
  static const int maxRestoredBytes = 128 * 1024 * 1024;

  /// Parses and decrypts a backup without touching the database.
  ///
  /// Untrusted headers are validated before constructing the KDF. Malformed
  /// containers are normalized to [BackupException] and decompression is
  /// bounded to prevent resource-exhaustion backups.
  Future<Map<String, Object?>> inspect(Uint8List bytes, String password) async {
    if (bytes.length > maxBackupBytes) {
      throw const BackupException(BackupError.corrupted);
    }
    if (bytes.length < 8 + 16 || !_bytesEqual(bytes.sublist(0, 4), magic)) {
      throw const BackupException(BackupError.notABackup);
    }
    final hlen = ByteData.sublistView(bytes, 4, 8).getUint32(0);
    if (hlen <= 0 || hlen > maxHeaderBytes || 8 + hlen + 16 > bytes.length) {
      throw const BackupException(BackupError.corrupted);
    }

    try {
      final headerBytes = bytes.sublist(8, 8 + hlen);
      final decodedHeader = jsonDecode(utf8.decode(headerBytes));
      if (decodedHeader is! Map) {
        throw const BackupException(BackupError.corrupted);
      }
      final header = Map<String, Object?>.from(decodedHeader);
      if (header['format'] != 'future-os-backup') {
        throw const BackupException(BackupError.notABackup);
      }
      final version = header['version'];
      if (version is! int || version < 1) {
        throw const BackupException(BackupError.corrupted);
      }
      if (version > formatVersion) {
        throw const BackupException(BackupError.newerVersion);
      }
      if (version != formatVersion) {
        throw const BackupException(BackupError.corrupted);
      }

      final kdfValue = header['kdf'];
      final cipherValue = header['cipher'];
      if (kdfValue is! Map || cipherValue is! Map) {
        throw const BackupException(BackupError.corrupted);
      }
      final kdfJ = Map<String, Object?>.from(kdfValue);
      final cipherJ = Map<String, Object?>.from(cipherValue);
      if (kdfJ['alg'] != 'argon2id' || cipherJ['alg'] != 'aes-256-gcm') {
        throw const BackupException(BackupError.corrupted);
      }

      final memory = kdfJ['memoryKiB'];
      final iterations = kdfJ['iterations'];
      final parallelism = kdfJ['parallelism'];
      if (memory is! int ||
          iterations is! int ||
          parallelism is! int ||
          memory <= 0 ||
          memory > 64 * 1024 ||
          iterations < 1 ||
          iterations > 6 ||
          parallelism < 1 ||
          parallelism > 4) {
        throw const BackupException(BackupError.corrupted);
      }

      final saltValue = kdfJ['salt'];
      final nonceValue = cipherJ['nonce'];
      if (saltValue is! String || nonceValue is! String) {
        throw const BackupException(BackupError.corrupted);
      }
      final salt = base64Decode(saltValue);
      final nonce = base64Decode(nonceValue);
      if (salt.length != 16 || nonce.length != _aes.nonceLength) {
        throw const BackupException(BackupError.corrupted);
      }

      final body = bytes.sublist(8 + hlen);
      if (body.length < 16) {
        throw const BackupException(BackupError.corrupted);
      }
      final kdf = Argon2id(
        memory: memory,
        iterations: iterations,
        parallelism: parallelism,
        hashLength: 32,
      );
      final key = await _derive(kdf, password, salt);
      final box = SecretBox(
        body.sublist(0, body.length - 16),
        nonce: nonce,
        mac: Mac(body.sublist(body.length - 16)),
      );
      final List<int> plain;
      try {
        plain = await _aes.decrypt(box, secretKey: key, aad: headerBytes);
      } on SecretBoxAuthenticationError {
        throw const BackupException(BackupError.wrongPasswordOrTampered);
      }

      final expanded = await _gunzipBounded(plain);
      final decodedDocument = jsonDecode(utf8.decode(expanded));
      if (decodedDocument is! Map) {
        throw const BackupException(BackupError.corrupted);
      }
      final doc = Map<String, Object?>.from(decodedDocument);
      if (doc['app'] != 'future-os') {
        throw const BackupException(BackupError.notABackup);
      }
      final schemaVersion = doc['schemaVersion'];
      if (schemaVersion is! int || schemaVersion < 1) {
        throw const BackupException(BackupError.corrupted);
      }
      if (schemaVersion > _db.schemaVersion) {
        throw const BackupException(BackupError.newerVersion);
      }
      if (doc['tables'] is! Map) {
        throw const BackupException(BackupError.corrupted);
      }
      return doc;
    } on BackupException {
      rethrow;
    } on Object {
      throw const BackupException(BackupError.corrupted);
    }
  }

  Future<Uint8List> _gunzipBounded(List<int> compressed) async {
    final out = BytesBuilder(copy: false);
    await for (final chunk in gzip.decoder.bind(Stream<List<int>>.value(compressed))) {
      if (out.length + chunk.length > maxRestoredBytes) {
        throw const BackupException(BackupError.corrupted);
      }
      out.add(chunk);
    }
    return out.takeBytes();
  }

  /// Replaces all local data with the backup contents atomically.
  /// Returns the number of rows restored.
  Future<int> restore(Uint8List bytes, String password) async {
    final doc = await inspect(bytes, password);
    final rawTables = doc['tables'];
    if (rawTables is! Map) {
      throw const BackupException(BackupError.corrupted);
    }
    final Map<String, Object?> tables;
    try {
      tables = Map<String, Object?>.from(rawTables);
    } on Object {
      throw const BackupException(BackupError.corrupted);
    }
    final known = {for (final t in _db.allTables) t.actualTableName: t};
    final backupSchema = doc['schemaVersion'];
    if (backupSchema is! int || backupSchema < 1) {
      throw const BackupException(BackupError.corrupted);
    }
    if (backupSchema > _db.schemaVersion) {
      throw const BackupException(BackupError.newerVersion);
    }
    // An export contains every table of its schema version. Refuse partial
    // snapshots (omitted tables would be silently emptied); only tables added
    // in a later schema than the backup's may be absent, and restore empty.
    final mayBeAbsent = {
      for (final e in AppDatabase.tablesAddedIn.entries)
        if (e.value > backupSchema) e.key,
    };
    if (tables.keys.toSet().difference(known.keys.toSet()).isNotEmpty ||
        known.keys.toSet().difference(tables.keys.toSet()).difference(mayBeAbsent).isNotEmpty) {
      throw const BackupException(BackupError.corrupted);
    }
    for (final entry in tables.entries) {
      final rows = entry.value;
      if (rows is! List) {
        throw const BackupException(BackupError.corrupted);
      }
      final allowed = known[entry.key]!.$columns.map((c) => c.name).toSet();
      for (final raw in rows) {
        if (raw is! Map) {
          throw const BackupException(BackupError.corrupted);
        }
        try {
          final row = Map<String, Object?>.from(raw);
          if (row.keys.any((key) => !allowed.contains(key))) {
            // Unknown columns are rejected rather than silently ignored. A
            // future schema needs an explicit migration/backup version.
            throw const BackupException(BackupError.corrupted);
          }
        } on BackupException {
          rethrow;
        } on Object {
          throw const BackupException(BackupError.corrupted);
        }
      }
    }
    var count = 0;
    await _db.transaction(() async {
      await _db.customStatement('PRAGMA defer_foreign_keys = ON');
      for (final t in _db.allTables.toList().reversed) {
        await _db.customStatement('DELETE FROM "${t.actualTableName}"');
      }
      // Insert in declaration order (parents before children).
      for (final t in _db.allTables) {
        final rows = (tables[t.actualTableName] as List?) ?? const [];
        final allowed = t.$columns.map((c) => c.name).toSet();
        for (final raw in rows) {
          final row = (raw as Map).cast<String, Object?>();
          final cols = row.keys.where(allowed.contains).toList();
          if (cols.isEmpty) continue;
          final placeholders = List.filled(cols.length, '?').join(', ');
          await _db.customInsert(
            'INSERT INTO "${t.actualTableName}" '
            '(${cols.map((c) => '"$c"').join(', ')}) VALUES ($placeholders)',
            variables: [for (final c in cols) _variable(row[c])],
            updates: {t},
          );
          count++;
        }
      }
    });
    return count;
  }

  static Variable<Object> _variable(Object? v) => switch (v) {
    null => const Variable(null),
    final int i => Variable<int>(i),
    final double d => Variable<double>(d),
    final bool b => Variable<int>(b ? 1 : 0),
    final String s => Variable<String>(s),
    _ => Variable<String>(v.toString()),
  };
}

enum BackupError { weakPassword, notABackup, corrupted, wrongPasswordOrTampered, newerVersion }

class BackupException implements Exception {
  const BackupException(this.error);
  final BackupError error;
  @override
  String toString() => 'BackupException(${error.name})';
}

bool _bytesEqual(List<int> a, List<int> b) {
  if (a.length != b.length) return false;
  for (var i = 0; i < a.length; i++) {
    if (a[i] != b[i]) return false;
  }
  return true;
}
