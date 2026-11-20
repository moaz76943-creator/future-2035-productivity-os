import 'dart:convert';

import 'dart:math' as math;

import 'package:drift/drift.dart';

import '../../../core/database/app_database.dart';
import '../../../core/ids.dart';
import '../../../core/time/clock.dart';
import '../domain/card_extras.dart';
import '../domain/study.dart';
import '../domain/card_import.dart';
import '../domain/card_layout.dart';
import '../domain/srs_scheduler.dart';

part 'flashcards_repository/deck_stats.dart';
part 'flashcards_repository/media.dart';
part 'flashcards_repository/bulk.dart';
part 'flashcards_repository/insights.dart';
part 'flashcards_repository/transfer.dart';
part 'flashcards_repository/study.dart';
part 'flashcards_repository/duplicates.dart';

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
    String? category,
  }) => (_db.update(_db.decks)..where((d) => d.id.equals(id))).write(
    DecksCompanion(
      name: Value(name.trim()),
      category: category == null ? const Value.absent() : Value(category.trim()),
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
    Map<String, String> custom = const {},
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
            custom: Value(CardCustom.encode(custom)),
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
    Map<String, String>? custom,
  }) => (_db.update(_db.flashcards)..where((c) => c.id.equals(id))).write(
    FlashcardsCompanion(
      front: Value(front.trim()),
      back: Value(back.trim()),
      tags: tags == null ? const Value.absent() : Value(tags),
      extra: extras == null ? const Value.absent() : Value(extras.encode()),
      custom: custom == null ? const Value.absent() : Value(CardCustom.encode(custom)),
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

  Stream<List<CardRow>> watchCards(String deckId) =>
      (_db.select(_db.flashcards)
            ..where((c) => c.deckId.equals(deckId) & c.deletedAt.isNull())
            ..orderBy([(c) => OrderingTerm.desc(c.createdAt)]))
          .watch();

  static const maxImportChars = 8 * 1024 * 1024;

  /// A card the user struggles with: high FSRS difficulty or repeated lapses.
  static bool isHard(CardRow c) => c.difficulty >= 7 || c.lapses >= 3;

  // ---- card layout ---------------------------------------------------------

  static String _layoutKey(String deckId) => 'deck.layout.$deckId';

  // ---- media ---------------------------------------------------------------

  static const maxImageBytes = 4 * 1024 * 1024;
  static const maxAudioBytes = 8 * 1024 * 1024;
}

/// Which active cards a practice round uses.
enum PracticeFilter { all, mistakes, newOnly, hard, favorites }
