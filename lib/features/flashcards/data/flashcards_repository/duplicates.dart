part of '../flashcards_repository.dart';

extension FlashcardsDuplicateDetection on FlashcardsRepository {
  /// Finds cards in [deckId] (or globally if null) that have a [front] text
  /// similar to [front] after normalization (Arabic diacritics stripped,
  /// case-insensitive, etc.).
  Future<List<CardRow>> findDuplicates({
    required String front,
    String? deckId,
    String? excludeId,
  }) async {
    final normalized = StudyRules.searchKey(front);
    if (normalized.isEmpty) return const [];

    final query = _db.select(_db.flashcards)
      ..where((c) {
        var cond = c.deletedAt.isNull();
        if (deckId != null) cond &= c.deckId.equals(deckId);
        if (excludeId != null) cond &= c.id.isNotValue(excludeId);
        // We use the SQL function mapped to TextNormalizer.normalize
        return cond &
            FunctionCallExpression<String>(kNormalizeSqlFunction, [c.front]).equals(normalized);
      });

    return query.get();
  }
}
