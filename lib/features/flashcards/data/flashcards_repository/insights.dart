part of '../flashcards_repository.dart';

extension FlashcardsInsights on FlashcardsRepository {
  // ---- cross-deck search and overview -------------------------------------

  /// Every card of live decks, with its deck, for search and grouping.
  Future<List<(CardRow, DeckRow)>> allCards() async {
    final q = _db.select(_db.flashcards).join([
      innerJoin(_db.decks, _db.decks.id.equalsExp(_db.flashcards.deckId)),
    ])..where(_db.flashcards.deletedAt.isNull() & _db.decks.deletedAt.isNull());
    return [for (final r in await q.get()) (r.readTable(_db.flashcards), r.readTable(_db.decks))];
  }

  /// Groups for the overview: by speech language of the front side and by
  /// deck level/topic. Numbers are counts from stored cards and the review
  /// log of the last [days] days.
  Future<FlashOverview> overview({int days = 30}) async {
    final now = _clock.nowUtc();
    final rows = await allCards();
    final since = now.subtract(Duration(days: days));
    final reviews = await (_db.select(
      _db.cardReviews,
    )..where((r) => r.reviewedAt.isBiggerOrEqualValue(since))).get();
    final byCard = <String, List<ReviewRow>>{};
    for (final r in reviews) {
      byCard.putIfAbsent(r.cardId, () => []).add(r);
    }
    GroupStats build(Iterable<(CardRow, DeckRow)> items) {
      final cards = items.map((e) => e.$1).toList();
      final rs = [for (final c in cards) ...?byCard[c.id]];
      return GroupStats(
        decks: items.map((e) => e.$2.id).toSet().length,
        cards: cards.length,
        mature: cards.where((c) => c.state == 'review' && c.stability >= 21).length,
        due: cards
            .where(
              (c) => !c.suspended && c.state != 'new' && c.dueAt != null && !c.dueAt!.isAfter(now),
            )
            .length,
        reviews: rs.length,
        correctRate: rs.isEmpty ? null : rs.where((r) => r.rating > 1).length / rs.length,
      );
    }

    final byLang = <String, List<(CardRow, DeckRow)>>{};
    final byLevel = <String, List<(CardRow, DeckRow)>>{};
    for (final e in rows) {
      byLang.putIfAbsent(e.$2.frontLang.split(RegExp('[-_]')).first, () => []).add(e);
      byLevel.putIfAbsent(e.$2.category.trim(), () => []).add(e);
    }
    return FlashOverview(
      byLanguage: {for (final e in byLang.entries) e.key: build(e.value)},
      byLevel: {for (final e in byLevel.entries) e.key: build(e.value)},
    );
  }

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
        if (!c.suspended) ?FlashcardsRepository.srsOf(c).retrievability(now.toUtc()),
    ];
    final today = Days.startOfDay(now).toUtc();
    return DeckInsights(
      total: cards.length,
      newCards: cards.where((c) => c.state == 'new').length,
      learning: cards.where((c) => c.state == 'learning' || c.state == 'relearning').length,
      mature: cards.where((c) => c.state == 'review' && c.stability >= 21).length,
      suspended: cards.where((c) => c.suspended).length,
      hard: cards.where((c) => !c.suspended && FlashcardsRepository.isHard(c)).length,
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
}
