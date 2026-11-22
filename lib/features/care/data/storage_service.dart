import '../../../core/database/app_database.dart';

/// What takes space in the app's data.
class StorageUsage {
  const StorageUsage({
    required this.pictureCount,
    required this.pictureBytes,
    required this.unusedCount,
    required this.unusedBytes,
    required this.mediaCount,
    required this.mediaBytes,
    required this.notesBytes,
    required this.noteCount,
    required this.cardCount,
  });
  final int pictureCount, pictureBytes, unusedCount, unusedBytes;
  final int mediaCount, mediaBytes, notesBytes, noteCount, cardCount;
}

/// Sizes of pictures, card media and notes, and the removal of note pictures
/// that no note shows any more (the editor already removes them when a note
/// closes; this catches leftovers, for instance after a restored backup).
class StorageService {
  StorageService(this._db);
  final AppDatabase _db;

  // A picture is in use when some note (trash included) has its `img:<id>` line.
  static const _unused =
      "FROM note_images WHERE NOT EXISTS (SELECT 1 FROM notes WHERE INSTR(notes.body, 'img:' || note_images.id) > 0)";

  Future<int> _n(String sql) async =>
      (await _db.customSelect(sql).getSingle()).read<int?>('n') ?? 0;

  Future<StorageUsage> usage() async => StorageUsage(
    pictureCount: await _n('SELECT COUNT(*) AS n FROM note_images'),
    pictureBytes: await _n('SELECT SUM(LENGTH(bytes)) AS n FROM note_images'),
    unusedCount: await _n('SELECT COUNT(*) AS n $_unused'),
    unusedBytes: await _n('SELECT SUM(LENGTH(bytes)) AS n $_unused'),
    mediaCount: await _n('SELECT COUNT(*) AS n FROM card_media'),
    mediaBytes: await _n('SELECT SUM(LENGTH(bytes)) AS n FROM card_media'),
    notesBytes: await _n('SELECT SUM(LENGTH(body)) AS n FROM notes'),
    noteCount: await _n('SELECT COUNT(*) AS n FROM notes'),
    cardCount: await _n('SELECT COUNT(*) AS n FROM flashcards'),
  );

  /// Deletes the unused pictures; returns how many.
  Future<int> removeUnused() async {
    final n = await _n('SELECT COUNT(*) AS n $_unused');
    if (n == 0) return 0;
    await _db.customStatement(
      "DELETE FROM note_images WHERE NOT EXISTS (SELECT 1 FROM notes WHERE INSTR(notes.body, 'img:' || note_images.id) > 0)",
    );
    return n;
  }
}

/// 1.4 MB, 820 KB, 12 B (Western digits, units are international symbols).
String formatBytes(int bytes) {
  if (bytes < 1024) return '$bytes B';
  if (bytes < 1024 * 1024) return '${(bytes / 1024).round()} KB';
  if (bytes < 1024 * 1024 * 1024) return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
  return '${(bytes / (1024 * 1024 * 1024)).toStringAsFixed(1)} GB';
}
