part of '../flashcards_repository.dart';

extension FlashcardsBulk on FlashcardsRepository {
  Future<void> setSuspended(String cardId, bool suspended) =>
      (_db.update(_db.flashcards)..where((c) => c.id.equals(cardId))).write(
        FlashcardsCompanion(suspended: Value(suspended), updatedAt: Value(_clock.nowUtc())),
      );

  Future<void> setDeckLanguages(String deckId, {required String front, required String back}) =>
      (_db.update(_db.decks)..where((d) => d.id.equals(deckId))).write(
        DecksCompanion(
          frontLang: Value(front),
          backLang: Value(back),
          updatedAt: Value(_clock.nowUtc()),
        ),
      );

  // ---- organisation --------------------------------------------------------

  Future<void> setFavorite(Iterable<String> ids, bool favorite) =>
      (_db.update(_db.flashcards)..where((c) => c.id.isIn(ids))).write(
        FlashcardsCompanion(favorite: Value(favorite), updatedAt: Value(_clock.nowUtc())),
      );

  Future<void> setSuspendedMany(Iterable<String> ids, bool suspended) =>
      (_db.update(_db.flashcards)..where((c) => c.id.isIn(ids))).write(
        FlashcardsCompanion(suspended: Value(suspended), updatedAt: Value(_clock.nowUtc())),
      );

  Future<void> deleteCards(Iterable<String> ids) =>
      (_db.update(_db.flashcards)..where((c) => c.id.isIn(ids))).write(
        FlashcardsCompanion(deletedAt: Value(_clock.nowUtc()), updatedAt: Value(_clock.nowUtc())),
      );

  Future<void> restoreCards(Iterable<String> ids) =>
      (_db.update(_db.flashcards)..where((c) => c.id.isIn(ids))).write(
        FlashcardsCompanion(deletedAt: const Value(null), updatedAt: Value(_clock.nowUtc())),
      );

  /// Moves cards (with their schedule and history) to another deck.
  Future<void> moveCards(Iterable<String> ids, String toDeckId) =>
      (_db.update(_db.flashcards)..where((c) => c.id.isIn(ids))).write(
        FlashcardsCompanion(deckId: Value(toDeckId), updatedAt: Value(_clock.nowUtc())),
      );

  /// Adds [tag] to each card (no duplicates).
  Future<void> addTag(Iterable<String> ids, String tag) async {
    final t = tag.trim().replaceAll(RegExp(r'[,\s]+'), '-');
    if (t.isEmpty) return;
    await _db.transaction(() async {
      final rows = await (_db.select(_db.flashcards)..where((c) => c.id.isIn(ids))).get();
      for (final r in rows) {
        final tags = r.tags.split(RegExp(r'[,\s]+')).where((x) => x.isNotEmpty).toList();
        if (tags.contains(t)) continue;
        await (_db.update(_db.flashcards)..where((c) => c.id.equals(r.id))).write(
          FlashcardsCompanion(
            tags: Value([...tags, t].join(' ')),
            updatedAt: Value(_clock.nowUtc()),
          ),
        );
      }
    });
  }

  /// A new card with the same content (and tags), starting as new.
  Future<String> duplicateCard(String id) async {
    final c = (await getCard(id))!;
    final copy = await addCard(
      c.deckId,
      c.front,
      c.back,
      tags: c.tags,
      extras: CardExtras.decode(c.extra),
      custom: CardCustom.decode(c.custom),
    );
    for (final m in await mediaFor(id)) {
      await addMedia(copy, side: m.side, kind: m.kind, mime: m.mime, name: m.name, bytes: m.bytes);
    }
    return copy;
  }
}
