part of '../flashcards_repository.dart';

extension FlashcardsTransfer on FlashcardsRepository {
  // ---- import / export -----------------------------------------------------

  /// Exports a deck as a versioned JSON document.
  Future<String> exportDeck(String deckId) async {
    final deck = await (_db.select(_db.decks)..where((d) => d.id.equals(deckId))).getSingle();
    final cards = await (_db.select(
      _db.flashcards,
    )..where((c) => c.deckId.equals(deckId) & c.deletedAt.isNull())).get();
    return const JsonEncoder.withIndent('  ').convert({
      'format': 'future-os-deck',
      'version': 1,
      'name': deck.name,
      'description': deck.description,
      'cards': [
        for (final c in cards)
          {
            'front': c.front,
            'back': c.back,
            'tags': c.tags,
            // Optional fields (version 1 readers ignore unknown keys).
            if (c.extra.isNotEmpty) 'fields': jsonDecode(c.extra),
            if (c.custom.isNotEmpty) 'custom': jsonDecode(c.custom),
          },
      ],
    });
  }

  /// Imports the JSON deck format or CSV / TSV / semicolon text (quoted
  /// fields and a header row supported, see [CardImportParser]). Cards whose
  /// front already exists in the deck (ignoring case and diacritics) are
  /// skipped. All-or-nothing: one transaction.
  Future<ImportResult> importCards(String deckId, String source) async {
    if (source.length > FlashcardsRepository.maxImportChars) {
      throw const FormatException('too large');
    }
    final List<ImportedCard> cards;
    var invalid = 0;
    final trimmed = source.trimLeft();
    if (trimmed.startsWith('{')) {
      final j = jsonDecode(trimmed);
      if (j is! Map || j['format'] != 'future-os-deck' || j['cards'] is! List) {
        throw const FormatException('Unsupported deck format');
      }
      cards = [];
      for (final c in j['cards'] as List) {
        if (c is! Map) {
          invalid++;
          continue;
        }
        final fields = c['fields'];
        final front = '${c['front'] ?? ''}'.trim(), back = '${c['back'] ?? ''}'.trim();
        if (front.isEmpty || back.isEmpty) {
          invalid++;
          continue;
        }
        cards.add(
          ImportedCard(
            front,
            back,
            tags: '${c['tags'] ?? ''}',
            extras: fields is Map ? CardExtras.decode(jsonEncode(fields)) : const CardExtras(),
            custom: c['custom'] is Map ? CardCustom.decode(jsonEncode(c['custom'])) : const {},
          ),
        );
      }
    } else {
      final parsed = CardImportParser.parse(source);
      cards = parsed.cards;
      invalid = parsed.invalid;
    }
    return importParsed(deckId, cards, invalid: invalid);
  }

  /// Adds parsed cards, skipping fronts already in the deck. One transaction.
  Future<ImportResult> importParsed(
    String deckId,
    List<ImportedCard> cards, {
    int invalid = 0,
  }) async {
    var added = 0, duplicates = 0;
    await _db.transaction(() async {
      final existing = {
        for (final f
            in await (_db.selectOnly(_db.flashcards)
                  ..addColumns([_db.flashcards.front])
                  ..where(_db.flashcards.deckId.equals(deckId) & _db.flashcards.deletedAt.isNull()))
                .map((r) => r.read(_db.flashcards.front)!)
                .get())
          StudyRules.searchKey(f),
      };
      for (final c in cards) {
        if (!existing.add(StudyRules.searchKey(c.front))) {
          duplicates++;
          continue;
        }
        await addCard(deckId, c.front, c.back, tags: c.tags, extras: c.extras, custom: c.custom);
        added++;
      }
    });
    return ImportResult(added: added, duplicates: duplicates, invalid: invalid);
  }

  /// Back-compat wrapper: number of cards imported.
  Future<int> importInto(String deckId, String source) async =>
      (await importCards(deckId, source)).added;

  /// CSV with a header row (front, back, tags, optional fields). Cells that
  /// a spreadsheet would execute as formulas are neutralised.
  Future<String> exportCsv(String deckId) async {
    final cards =
        await (_db.select(_db.flashcards)
              ..where((c) => c.deckId.equals(deckId) & c.deletedAt.isNull())
              ..orderBy([(c) => OrderingTerm.asc(c.createdAt)]))
            .get();
    final cols = ['front', 'back', 'tags', for (final f in CardField.values) f.name];
    final out = StringBuffer()..writeln(cols.join(','));
    for (final c in cards) {
      final x = CardExtras.decode(c.extra);
      out.writeln(
        [
          c.front,
          c.back,
          c.tags,
          for (final f in CardField.values) x[f] ?? '',
        ].map(CardImportParser.csvCell).join(','),
      );
    }
    return out.toString();
  }

  // ---- study helpers -------------------------------------------------------

  /// Front already used in [deckId] (ignoring case/diacritics), if any.
  Future<CardRow?> findDuplicate(String deckId, String front, {String? exceptId}) async {
    final key = StudyRules.searchKey(front);
    if (key.isEmpty) return null;
    final cards = await (_db.select(
      _db.flashcards,
    )..where((c) => c.deckId.equals(deckId) & c.deletedAt.isNull())).get();
    for (final c in cards) {
      if (c.id != exceptId && StudyRules.searchKey(c.front) == key) return c;
    }
    return null;
  }
}
