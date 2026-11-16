import 'dart:convert';

import 'package:drift/drift.dart';

import '../../../core/database/app_database.dart';
import '../../../core/ids.dart';
import '../../../core/time/clock.dart';
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

  Future<String> addCard(String deckId, String front, String back, {String tags = ''}) async {
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
            createdAt: now,
            updatedAt: now,
          ),
        );
    return id;
  }

  Future<void> updateCard(String id, String front, String back, {String? tags}) =>
      (_db.update(_db.flashcards)..where((c) => c.id.equals(id))).write(
        FlashcardsCompanion(
          front: Value(front.trim()),
          back: Value(back.trim()),
          tags: tags == null ? const Value.absent() : Value(tags),
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
    easePermille: row.ease,
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
      c.state.equals('new').not() & c.dueAt.isSmallerOrEqualValue(nowUtc);

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
                  (c) => c.deckId.equals(deckId) & c.deletedAt.isNull() & c.state.equals('new'),
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
          ease: Value(after.easePermille),
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
              easeBefore: row.ease,
              easeAfter: after.easePermille,
            ),
          );
      return after;
    });
  }

  Stream<DeckStats> watchDeckStats(String deckId) {
    final now = _clock.nowUtc();
    final c = _db.flashcards;
    final total = c.id.count();
    final fresh = c.id.count(filter: c.state.equals('new'));
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
        for (final c in cards) {'front': c.front, 'back': c.back, 'tags': c.tags},
      ],
    });
  }

  /// Imports either the JSON deck format or tab/semicolon separated
  /// `front<TAB>back` lines. Returns the number of cards imported.
  Future<int> importInto(String deckId, String source) async {
    final pairs = <(String, String, String)>[];
    final trimmed = source.trimLeft();
    if (trimmed.startsWith('{')) {
      final j = jsonDecode(trimmed);
      if (j is! Map || j['format'] != 'future-os-deck') {
        throw const FormatException('Unsupported deck format');
      }
      for (final c in (j['cards'] as List)) {
        final m = c as Map;
        pairs.add(('${m['front'] ?? ''}', '${m['back'] ?? ''}', '${m['tags'] ?? ''}'));
      }
    } else {
      for (final line in const LineSplitter().convert(source)) {
        if (line.trim().isEmpty) continue;
        final sep = line.contains('\t') ? '\t' : ';';
        final i = line.indexOf(sep);
        if (i <= 0) continue;
        pairs.add((line.substring(0, i), line.substring(i + 1), ''));
      }
    }
    var n = 0;
    await _db.transaction(() async {
      for (final (f, b, t) in pairs) {
        if (f.trim().isEmpty || b.trim().isEmpty) continue;
        await addCard(deckId, f, b, tags: t);
        n++;
      }
    });
    return n;
  }
}
