import 'dart:io';

import 'package:drift/drift.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/database/app_database.dart';
import '../../../core/ids.dart';
import '../../../core/providers/core_providers.dart';
import '../../../core/time/clock.dart';

/// Picture references in note text: one line `![](img:<id>)`.
abstract final class NoteImageRefs {
  static final line = RegExp(r'^!\[[^\]]*\]\(img:([A-Za-z0-9_-]{1,64})\)\s*$');
  static final any = RegExp(r'!\[[^\]]*\]\(img:([A-Za-z0-9_-]{1,64})\)');

  static String markdown(String id) => '![](img:$id)';

  static Set<String> ids(String body) => {for (final m in any.allMatches(body)) m.group(1)!};
}

/// Makes pictures small (upright, at most 1600 px, JPEG) on the phone.
abstract class ImageShrinker {
  /// Null when the bytes are not a picture.
  Future<Uint8List?> shrink(Uint8List bytes);
}

class ChannelImageShrinker implements ImageShrinker {
  static const _c = MethodChannel('future_os/image');
  @override
  Future<Uint8List?> shrink(Uint8List bytes) async {
    try {
      return await _c.invokeMethod<Uint8List>('shrink', {
        'bytes': bytes,
        'maxSide': 1600,
        'quality': 82,
      });
    } on Object {
      return null;
    }
  }
}

/// Tests and desktop: kept as is.
class MemoryImageShrinker implements ImageShrinker {
  @override
  Future<Uint8List?> shrink(Uint8List bytes) async => bytes.isEmpty ? null : bytes;
}

final imageShrinkerProvider = Provider<ImageShrinker>(
  (ref) => Platform.isAndroid ? ChannelImageShrinker() : MemoryImageShrinker(),
);

class NoteImagesRepository {
  NoteImagesRepository(this._db, this._clock);
  final AppDatabase _db;
  final Clock _clock;

  /// Largest picture kept (after shrinking).
  static const maxBytes = 3 * 1024 * 1024;

  Future<String> add(String noteId, Uint8List bytes) async {
    if (bytes.isEmpty || bytes.length > maxBytes) throw const FormatException('size');
    final id = newId();
    await _db
        .into(_db.noteImages)
        .insert(
          NoteImagesCompanion.insert(
            id: id,
            noteId: noteId,
            bytes: bytes,
            createdAt: _clock.nowUtc(),
          ),
        );
    return id;
  }

  Future<Uint8List?> bytes(String id) async =>
      (await (_db.select(_db.noteImages)..where((i) => i.id.equals(id))).getSingleOrNull())?.bytes;

  /// Removes pictures of [noteId] that its text no longer shows.
  Future<int> removeUnused(String noteId, String body) {
    final keep = NoteImageRefs.ids(body);
    return (_db.delete(
      _db.noteImages,
    )..where((i) => i.noteId.equals(noteId) & i.id.isNotIn(keep.toList()))).go();
  }
}

final noteImagesRepositoryProvider = Provider<NoteImagesRepository>(
  (ref) => NoteImagesRepository(ref.watch(databaseProvider), ref.watch(clockProvider)),
);

final noteImageProvider = FutureProvider.autoDispose.family<Uint8List?, String>(
  (ref, id) => ref.watch(noteImagesRepositoryProvider).bytes(id),
);
