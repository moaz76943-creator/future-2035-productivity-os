part of '../flashcards_repository.dart';

extension FlashcardsStudy on FlashcardsRepository {
  /// What each rating would do to [row] if given right now. Uses the same
  /// scheduler and clock as [recordReview], so previews match outcomes.
  Map<ReviewRating, SrsCard> previewRatings(CardRow row) {
    final now = _clock.now();
    final before = FlashcardsRepository.srsOf(row);
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
      final before = FlashcardsRepository.srsOf(row);
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
      PracticeFilter.hard => active.where(FlashcardsRepository.isHard).toList(),
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
}
