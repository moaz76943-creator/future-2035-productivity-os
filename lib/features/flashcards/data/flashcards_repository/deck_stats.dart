part of '../flashcards_repository.dart';

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

/// Image or audio over the size limit.
class MediaTooLarge implements Exception {
  const MediaTooLarge();
}

class GroupStats {
  const GroupStats({
    required this.decks,
    required this.cards,
    required this.mature,
    required this.due,
    required this.reviews,
    required this.correctRate,
  });
  final int decks, cards, mature, due, reviews;
  final double? correctRate;
}

class FlashOverview {
  const FlashOverview({required this.byLanguage, required this.byLevel});

  /// Key: language code of the deck's front side ('' = not set).
  final Map<String, GroupStats> byLanguage;

  /// Key: deck level/topic ('' = none).
  final Map<String, GroupStats> byLevel;
}

class ImportResult {
  const ImportResult({required this.added, required this.duplicates, required this.invalid});
  final int added;
  final int duplicates;
  final int invalid;
}
