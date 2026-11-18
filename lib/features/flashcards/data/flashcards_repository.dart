import 'dart:convert';

import 'dart:math' as math;

import 'package:drift/drift.dart';

import '../../../core/database/app_database.dart';
import '../../../core/ids.dart';
import '../../../core/time/clock.dart';
import '../domain/card_extras.dart';
import '../domain/study.dart';
import '../domain/card_import.dart';
import '../domain/srs_scheduler.dart';

class DeckStats {
  const DeckStats({
    required this.total,
    required this.newCount,
    required this.due,
    required this.mature,
  });
  final int total;
  final int newCount;
  final int due;

  /// Review cards with an interval of 21 days or more.
  final int mature;
}

/// Owns `decks`, `flashcards` and `card_reviews`.
class FlashcardsRepository {
  FlashcardsRepository(this._db, this._clock, {this.scheduler = const SrsScheduler()});
  final AppDatabase _db;
  final Clock _clock;
  final SrsScheduler scheduler;

  Future<String> createDeck(
    String name, {
    String description = '',
    String category = '',
    required int color,
    int? dailyNewLimit,
    int? dailyReviewTarget,
  }) async {
    if (name.trim().isEmpty) throw ArgumentError('name');
    final id = newId();
    final now = _clock.nowUtc();
    await _db
        .into(_db.decks)
        .insert(
          DecksCompanion.insert(
            id: id,
            name: name.trim(),
            description: Value(description),
            category: Value(category),
            color: color,
            dailyNewLimit: dailyNewLimit == null ? const Value.absent() : Value(dailyNewLimit),
            dailyReviewTarget: dailyReviewTarget == null
                ? const Value.absent()
                : Value(dailyReviewTarget),
            createdAt: now,
            updatedAt: now,
          ),
        );
    return id;
  }

  Future<void> updateDeck(
    String id, {
    required String name,
    required String description,
    required int color,
    int? dailyNewLimit,
    int? dailyReviewTarget,
  }) => (_db.update(_db.decks)..where((d) => d.id.equals(id))).write(
    DecksCompanion(
      name: Value(name.trim()),
      description: Value(description),
      color: Value(color),
      dailyNewLimit: dailyNewLimit == null ? const Value.absent() : Value(dailyNewLimit),
      dailyReviewTarget: dailyReviewTarget == null
          ? const Value.absent()
          : Value(dailyReviewTarget),
      updatedAt: Value(_clock.nowUtc()),
    ),
  );

  Future<void> deleteDeck(String id) => (_db.update(
    _db.decks,
  )..where((d) => d.id.equals(id))).write(DecksCompanion(deletedAt: Value(_clock.nowUtc())));

  Future<void> restoreDeck(String id) => (_db.update(
    _db.decks,
  )..where((d) => d.id.equals(id))).write(const DecksCompanion(deletedAt: Value(null)));

  Stream<List<DeckRow>> watchDecks() =>
      (_db.select(_db.decks)
            ..where((d) => d.deletedAt.isNull())
            ..orderBy([(d) => OrderingTerm.asc(d.name)]))
          .watch();

  Stream<DeckRow?> watchDeck(String id) =>
      (_db.select(_db.decks)..where((d) => d.id.equals(id))).watchSingleOrNull();

  Future<String> addCard(
    String deckId,
    String front,
    String back, {
    String tags = '',
    CardExtras extras = const CardExtras(),
  }) async {
    if (front.trim().isEmpty || back.trim().isEmpty) {
      throw ArgumentError('front/back');
    }
    final id = newId();
    final now = _clock.nowUtc();
    await _db
        .into(_db.flashcards)
        .insert(
          FlashcardsCompanion.insert(
            id: id,
            deckId: deckId,
            front: front.trim(),
            back: back.trim(),
            tags: Value(tags.trim()),
            extra: Value(extras.encode()),
            createdAt: now,
            updatedAt: now,
          ),
        );
    return id;
  }

  Future<void> updateCard(
    String id,
    String front,
    String back, {
    String? tags,
    CardExtras? extras,
  }) => (_db.update(_db.flashcards)..where((c) => c.id.equals(id))).write(
    FlashcardsCompanion(
      front: Value(front.trim()),
      back: Value(back.trim()),
      tags: tags == null ? const Value.absent() : Value(tags),
      extra: extras == null ? const Value.absent() : Value(extras.encode()),
      updatedAt: Value(_clock.nowUtc()),
    ),
  );

  Future<void> deleteCard(String id) => (_db.update(
    _db.flashcards,
  )..where((c) => c.id.equals(id))).write(FlashcardsCompanion(deletedAt: Value(_clock.nowUtc())));

  Future<void> restoreCard(String id) => (_db.update(
    _db.flashcards,
  )..where((c) => c.id.equals(id))).write(const FlashcardsCompanion(deletedAt: Value(null)));

  Future<CardRow?> getCard(String id) =>
      (_db.select(_db.flashcards)..where((c) => c.id.equals(id))).getSingleOrNull();

  /// Scheduling state stored on [row].
  static SrsCard srsOf(CardRow row) => SrsCard(
    state: cardStateFromDb(row.state),
    stability: row.stability,
    difficulty: row.difficulty,
    lastReviewAt: row.lastReviewAt,
    intervalDays: row.intervalDays,
    repetitions: row.repetitions,
    lapses: row.lapses,
    learningStep: row.learningStep,
    dueAt: row.dueAt,
  );

  /// What each rating would do to [row] if given right now. Uses the same
  /// scheduler and clock as [recordReview], so previews match outcomes.
  Map<ReviewRating, SrsCard> previewRatings(CardRow row) {
    final now = _clock.now();
    final before = srsOf(row);
    return {for (final r in ReviewRating.values) r: scheduler.review(before, r, now)};
  }

  /// Id of the non-deleted deck with the most due (non-new) cards, or null.
  Future<String?> deckWithMostDue() async {
    final now = _clock.nowUtc();
    final c = _db.flashcards;
    final due = c.id.count();
    final q = _db.selectOnly(c).join([innerJoin(_db.decks, _db.decks.id.equalsExp(c.deckId))])
      ..addColumns([c.deckId, due])
      ..where(c.deletedAt.isNull() & _db.decks.deletedAt.isNull() & _isDue(c, now))
      ..groupBy([c.deckId])
      ..orderBy([OrderingTerm.desc(due)])
      ..limit(1);
    final row = await q.getSingleOrNull();
    return row?.read(c.deckId);
  }

  Stream<List<CardRow>> watchCards(String deckId) =>
      (_db.select(_db.flashcards)
            ..where((c) => c.deckId.equals(deckId) & c.deletedAt.isNull())
            ..orderBy([(c) => OrderingTerm.desc(c.createdAt)]))
          .watch();

  Expression<bool> _isDue(Flashcards c, DateTime nowUtc) =>
      c.state.equals('new').not() &
      c.suspended.equals(false) &
      c.dueAt.isSmallerOrEqualValue(nowUtc);

  /// Number of new cards already introduced today in [deckId].
  Future<int> _newIntroducedToday(String deckId) async {
    final start = Days.startOfDay(_clock.now()).toUtc();
    final count = _db.cardReviews.id.count(distinct: true);
    final q =
        _db.selectOnly(_db.cardReviews).join([
            innerJoin(_db.flashcards, _db.flashcards.id.equalsExp(_db.cardReviews.cardId)),
          ])
          ..addColumns([count])
          ..where(
            _db.flashcards.deckId.equals(deckId) &
                _db.cardReviews.stateBefore.equals('new') &
                _db.cardReviews.reviewedAt.isBiggerOrEqualValue(start),
          );
    return (await q.getSingle()).read(count) ?? 0;
  }

  /// Builds today's review queue: due learning/review cards first (oldest
  /// due first), then new cards up to the deck's remaining daily limit.
  Future<List<CardRow>> reviewQueue(String deckId) async {
    final now = _clock.nowUtc();
    final deck = await (_db.select(_db.decks)..where((d) => d.id.equals(deckId))).getSingle();
    final due =
        await (_db.select(_db.flashcards)
              ..where((c) => c.deckId.equals(deckId) & c.deletedAt.isNull() & _isDue(c, now))
              ..orderBy([(c) => OrderingTerm.asc(c.dueAt)]))
            .get();
    final remainingNew = (deck.dailyNewLimit - await _newIntroducedToday(deckId)).clamp(0, 9999);
    final fresh = remainingNew == 0
        ? <CardRow>[]
        : await (_db.select(_db.flashcards)
                ..where(
                  (c) =>
                      c.deckId.equals(deckId) &
                      c.deletedAt.isNull() &
                      c.suspended.equals(false) &
                      c.state.equals('new'),
                )
                ..orderBy([(c) => OrderingTerm.asc(c.createdAt)])
                ..limit(remainingNew))
              .get();
    return [...due, ...fresh];
  }

  /// Applies a rating and stores review history in one transaction.
  Future<SrsCard> recordReview(String cardId, ReviewRating rating) {
    return _db.transaction(() async {
      final row = await (_db.select(_db.flashcards)..where((c) => c.id.equals(cardId))).getSingle();
      final before = srsOf(row);
      final now = _clock.now();
      final after = scheduler.review(before, rating, now);
      await (_db.update(_db.flashcards)..where((c) => c.id.equals(cardId))).write(
        FlashcardsCompanion(
          state: Value(cardStateToDb(after.state)),
          stability: Value(after.stability),
          difficulty: Value(after.difficulty),
          lastReviewAt: Value(after.lastReviewAt?.toUtc()),
          intervalDays: Value(after.intervalDays),
          repetitions: Value(after.repetitions),
          lapses: Value(after.lapses),
          learningStep: Value(after.learningStep),
          dueAt: Value(after.dueAt?.toUtc()),
          updatedAt: Value(now.toUtc()),
        ),
      );
      await _db
          .into(_db.cardReviews)
          .insert(
            CardReviewsCompanion.insert(
              id: newId(),
              cardId: cardId,
              reviewedAt: now.toUtc(),
              rating: rating.value,
              stateBefore: row.state,
              intervalBefore: row.intervalDays,
              intervalAfter: after.intervalDays,
              // Review log keeps the memory state: difficulty ×100 in the ease columns.
              easeBefore: (row.difficulty * 100).round(),
              easeAfter: (after.difficulty * 100).round(),
            ),
          );
      return after;
    });
  }

  Stream<DeckStats> watchDeckStats(String deckId) {
    final now = _clock.nowUtc();
    final c = _db.flashcards;
    final total = c.id.count();
    final fresh = c.id.count(filter: c.state.equals('new') & c.suspended.equals(false));
    final due = c.id.count(filter: _isDue(c, now));
    final mature = c.id.count(
      filter: c.state.equals('review') & c.intervalDays.isBiggerOrEqualValue(21),
    );
    final q = _db.selectOnly(c)
      ..addColumns([total, fresh, due, mature])
      ..where(c.deckId.equals(deckId) & c.deletedAt.isNull());
    return q.watchSingle().map(
      (r) => DeckStats(
        total: r.read(total) ?? 0,
        newCount: r.read(fresh) ?? 0,
        due: r.read(due) ?? 0,
        mature: r.read(mature) ?? 0,
      ),
    );
  }

  /// Due cards across all decks (excluding new cards).
  Stream<int> watchTotalDue() {
    final now = _clock.nowUtc();
    final c = _db.flashcards;
    final due = c.id.count();
    final q = _db.selectOnly(c).join([innerJoin(_db.decks, _db.decks.id.equalsExp(c.deckId))])
      ..addColumns([due])
      ..where(c.deletedAt.isNull() & _db.decks.deletedAt.isNull() & _isDue(c, now));
    return q.watchSingle().map((r) => r.read(due) ?? 0);
  }

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
          },
      ],
    });
  }

  /// Imports the JSON deck format or CSV / TSV / semicolon text (quoted
  /// fields and a header row supported, see [CardImportParser]). Cards whose
  /// front already exists in the deck (ignoring case and diacritics) are
  /// skipped. All-or-nothing: one transaction.
  Future<ImportResult> importCards(String deckId, String source) async {
    if (source.length > maxImportChars) throw const FormatException('too large');
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
        await addCard(deckId, c.front, c.back, tags: c.tags, extras: c.extras);
        added++;
      }
    });
    return ImportResult(added: added, duplicates: duplicates, invalid: invalid);
  }

  /// Back-compat wrapper: number of cards imported.
  Future<int> importInto(String deckId, String source) async =>
      (await importCards(deckId, source)).added;

  static const maxImportChars = 8 * 1024 * 1024;

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

  /// Cards for a practice round (no scheduling), shuffled with [random].
  Future<List<CardRow>> practiceCards(
    String deckId, {
    bool mistakesOnly = false,
    PracticeFilter filter = PracticeFilter.all,
    math.Random? random,
  }) async {
    final f = mistakesOnly ? PracticeFilter.mistakes : filter;
    final active =
        await (_db.select(_db.flashcards)..where(
              (c) => c.deckId.equals(deckId) & c.deletedAt.isNull() & c.suspended.equals(false),
            ))
            .get();
    var cards = switch (f) {
      PracticeFilter.all => active,
      PracticeFilter.newOnly => active.where((c) => c.state == 'new').toList(),
      PracticeFilter.hard => active.where(isHard).toList(),
      PracticeFilter.favorites => active.where((c) => c.favorite).toList(),
      PracticeFilter.mistakes => active,
    };
    if (f == PracticeFilter.mistakes) {
      final since = _clock.nowUtc().subtract(const Duration(days: 14));
      final missed =
          await (_db.selectOnly(_db.cardReviews)
                ..addColumns([_db.cardReviews.cardId])
                ..where(
                  _db.cardReviews.rating.equals(ReviewRating.again.value) &
                      _db.cardReviews.reviewedAt.isBiggerOrEqualValue(since),
                ))
              .map((r) => r.read(_db.cardReviews.cardId)!)
              .get();
      final ids = missed.toSet();
      cards = active.where((c) => ids.contains(c.id) || c.lapses > 0).toList();
    }
    return cards..shuffle(random ?? math.Random());
  }

  /// A card the user struggles with: high FSRS difficulty or repeated lapses.
  static bool isHard(CardRow c) => c.difficulty >= 7 || c.lapses >= 3;

  // ---- statistics ----------------------------------------------------------

  /// Measured statistics for one deck. Every number comes from stored cards
  /// and the review log; nothing is estimated except the recall probability,
  /// which is the FSRS model's value for each reviewed card.
  Future<DeckInsights> deckInsights(String deckId, {int days = 14}) async {
    final now = _clock.now();
    final cards = await (_db.select(
      _db.flashcards,
    )..where((c) => c.deckId.equals(deckId) & c.deletedAt.isNull())).get();
    final since = Days.addDays(Days.startOfDay(now), -(days - 1)).toUtc();
    final ids = {for (final c in cards) c.id};
    final reviews = ids.isEmpty
        ? <ReviewRow>[]
        : await (_db.select(_db.cardReviews)
                ..where((r) => r.cardId.isIn(ids) & r.reviewedAt.isBiggerOrEqualValue(since))
                ..orderBy([(r) => OrderingTerm.desc(r.reviewedAt)]))
              .get();
    final perDay = List<int>.filled(days, 0);
    final start = Days.startOfDay(now);
    for (final r in reviews) {
      final d = Days.startOfDay(r.reviewedAt.toLocal());
      final i = days - 1 - start.difference(d).inDays;
      if (i >= 0 && i < days) perDay[i]++;
    }
    final matured = reviews.where((r) => r.stateBefore == 'review').toList();
    final recalls = [
      for (final c in cards)
        if (!c.suspended) ?srsOf(c).retrievability(now.toUtc()),
    ];
    final today = Days.startOfDay(now).toUtc();
    return DeckInsights(
      total: cards.length,
      newCards: cards.where((c) => c.state == 'new').length,
      learning: cards.where((c) => c.state == 'learning' || c.state == 'relearning').length,
      mature: cards.where((c) => c.state == 'review' && c.stability >= 21).length,
      suspended: cards.where((c) => c.suspended).length,
      hard: cards.where((c) => !c.suspended && isHard(c)).length,
      favorites: cards.where((c) => c.favorite).length,
      dueNow: cards
          .where(
            (c) =>
                !c.suspended &&
                c.state != 'new' &&
                c.dueAt != null &&
                !c.dueAt!.isAfter(now.toUtc()),
          )
          .length,
      reviewsToday: reviews.where((r) => !r.reviewedAt.isBefore(today)).length,
      reviewsInRange: reviews.length,
      correctRate: reviews.isEmpty
          ? null
          : reviews.where((r) => r.rating > 1).length / reviews.length,
      forgetRate: matured.isEmpty
          ? null
          : matured.where((r) => r.rating == 1).length / matured.length,
      averageRecall: recalls.isEmpty ? null : recalls.reduce((a, b) => a + b) / recalls.length,
      perDay: perDay,
      firstDay: Days.addDays(start, -(days - 1)),
      recent: reviews.take(30).toList(),
      fronts: {for (final c in cards) c.id: c.front},
    );
  }

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
    return addCard(c.deckId, c.front, c.back, tags: c.tags, extras: CardExtras.decode(c.extra));
  }
}

/// Which active cards a practice round uses.
enum PracticeFilter { all, mistakes, newOnly, hard, favorites }

class DeckInsights {
  const DeckInsights({
    required this.total,
    required this.newCards,
    required this.learning,
    required this.mature,
    required this.suspended,
    required this.hard,
    required this.favorites,
    required this.dueNow,
    required this.reviewsToday,
    required this.reviewsInRange,
    required this.correctRate,
    required this.forgetRate,
    required this.averageRecall,
    required this.perDay,
    required this.firstDay,
    required this.recent,
    required this.fronts,
  });
  final int total, newCards, learning, mature, suspended, hard, favorites, dueNow;
  final int reviewsToday, reviewsInRange;

  /// Share of answers that were not "Again" (null without reviews).
  final double? correctRate;

  /// Share of "Again" among reviews of graduated cards (lapses).
  final double? forgetRate;

  /// Mean FSRS recall probability of reviewed, active cards right now.
  final double? averageRecall;

  /// Reviews per day, oldest first, starting at [firstDay].
  final List<int> perDay;
  final DateTime firstDay;
  final List<ReviewRow> recent;
  final Map<String, String> fronts;
}

class ImportResult {
  const ImportResult({required this.added, required this.duplicates, required this.invalid});
  final int added;
  final int duplicates;
  final int invalid;
}
