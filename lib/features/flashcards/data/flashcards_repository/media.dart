part of '../flashcards_repository.dart';

extension FlashcardsMedia on FlashcardsRepository {
  Stream<CardLayout> watchLayout(String deckId) =>
      _db.watchValue(FlashcardsRepository._layoutKey(deckId)).map(CardLayout.decode);

  Future<CardLayout> layout(String deckId) async =>
      CardLayout.decode(await _db.readValue(FlashcardsRepository._layoutKey(deckId)));

  Future<void> saveLayout(String deckId, CardLayout layout) =>
      _db.writeValue(FlashcardsRepository._layoutKey(deckId), layout.encode());

  /// Attaches an image or audio clip to one side of a card (replacing an
  /// earlier one of the same kind on that side).
  Future<String> addMedia(
    String cardId, {
    required String side,
    required String kind,
    required List<int> bytes,
    String mime = '',
    String name = '',
  }) async {
    if (side != 'front' && side != 'back') throw ArgumentError.value(side, 'side');
    if (kind != 'image' && kind != 'audio') throw ArgumentError.value(kind, 'kind');
    final limit = kind == 'image'
        ? FlashcardsRepository.maxImageBytes
        : FlashcardsRepository.maxAudioBytes;
    if (bytes.isEmpty || bytes.length > limit) throw const MediaTooLarge();
    final id = newId();
    await _db.transaction(() async {
      await (_db.delete(
        _db.cardMedia,
      )..where((m) => m.cardId.equals(cardId) & m.side.equals(side) & m.kind.equals(kind))).go();
      await _db
          .into(_db.cardMedia)
          .insert(
            CardMediaCompanion.insert(
              id: id,
              cardId: cardId,
              side: side,
              kind: kind,
              mime: Value(mime),
              name: Value(name.length > 120 ? name.substring(0, 120) : name),
              bytes: Uint8List.fromList(bytes),
              createdAt: _clock.nowUtc(),
            ),
          );
    });
    return id;
  }

  Future<void> removeMedia(String mediaId) =>
      (_db.delete(_db.cardMedia)..where((m) => m.id.equals(mediaId))).go();

  Future<List<CardMediaRow>> mediaFor(String cardId) =>
      (_db.select(_db.cardMedia)..where((m) => m.cardId.equals(cardId))).get();

  Stream<List<CardMediaRow>> watchMedia(String cardId) =>
      (_db.select(_db.cardMedia)..where((m) => m.cardId.equals(cardId))).watch();
}
