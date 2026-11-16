import 'package:drift/drift.dart';

import '../../../core/database/app_database.dart';
import '../../../core/text/text_normalizer.dart';
import '../../../core/time/clock.dart';

enum SearchCategory { task, project, note, flashcard, deck, goal, habit, event, session }

class SearchResult {
  const SearchResult({
    required this.category,
    required this.id,
    required this.title,
    this.subtitle = '',
    this.parentId,
    this.score = 0,
  });
  final SearchCategory category;
  final String id;
  final String title;
  final String subtitle;

  /// e.g. the deck of a flashcard.
  final String? parentId;
  final int score;
}

/// Local-only search across all modules. Matching is done inside SQLite by
/// the `fos_normalize` function so Arabic diacritics, Latin accents and
/// letter variants match; CJK text matches as substrings. Nothing leaves
/// the device.
class SearchService {
  SearchService(this._db, this._clock);
  final AppDatabase _db;
  final Clock _clock;

  static String likePattern(String normalized) {
    final escaped = normalized
        .replaceAll(r'\', r'\\')
        .replaceAll('%', r'\%')
        .replaceAll('_', r'\_');
    return '%$escaped%';
  }

  static int _score(String normalizedTitle, String q) {
    if (normalizedTitle == q) return 100;
    if (normalizedTitle.startsWith(q)) return 80;
    if (normalizedTitle.contains(q)) return 60;
    return 20;
  }

  Future<List<SearchResult>> search(
    String rawQuery, {
    Set<SearchCategory>? categories,
    int perCategoryLimit = 25,
  }) async {
    final q = TextNormalizer.normalize(rawQuery.trim());
    if (q.isEmpty) return const [];
    final pat = likePattern(q);
    bool want(SearchCategory c) => categories == null || categories.contains(c);
    const fn = kNormalizeSqlFunction;
    final results = <SearchResult>[];

    Future<void> run(SearchCategory cat, String sql, SearchResult Function(QueryRow r) map) async {
      if (!want(cat)) return;
      final rows = await _db
          .customSelect('$sql LIMIT $perCategoryLimit', variables: [Variable(pat)])
          .get();
      results.addAll(rows.map(map));
    }

    String m(String cols) => "$fn($cols) LIKE ?1 ESCAPE '\\'";

    await run(
      SearchCategory.task,
      "SELECT id, title, description FROM tasks WHERE deleted_at IS NULL AND "
      "${m("title || ' ' || description || ' ' || notes || ' ' || category")}",
      (r) => SearchResult(
        category: SearchCategory.task,
        id: r.read('id'),
        title: r.read('title'),
        subtitle: r.read<String>('description'),
        score: _score(TextNormalizer.normalize(r.read('title')), q),
      ),
    );
    await run(
      SearchCategory.project,
      "SELECT id, name, description FROM projects WHERE deleted_at IS NULL AND "
      "${m("name || ' ' || description || ' ' || goal || ' ' || notes")}",
      (r) => SearchResult(
        category: SearchCategory.project,
        id: r.read('id'),
        title: r.read('name'),
        subtitle: r.read<String>('description'),
        score: _score(TextNormalizer.normalize(r.read('name')), q),
      ),
    );
    await run(
      SearchCategory.note,
      "SELECT id, title, body FROM notes WHERE deleted_at IS NULL AND "
      "${m("title || ' ' || body")}",
      (r) => SearchResult(
        category: SearchCategory.note,
        id: r.read('id'),
        title: r.read('title'),
        subtitle: _snippet(r.read<String>('body'), q),
        score: _score(TextNormalizer.normalize(r.read('title')), q),
      ),
    );
    await run(
      SearchCategory.deck,
      "SELECT id, name, description FROM decks WHERE deleted_at IS NULL AND "
      "${m("name || ' ' || description || ' ' || category")}",
      (r) => SearchResult(
        category: SearchCategory.deck,
        id: r.read('id'),
        title: r.read('name'),
        subtitle: r.read<String>('description'),
        score: _score(TextNormalizer.normalize(r.read('name')), q),
      ),
    );
    await run(
      SearchCategory.flashcard,
      "SELECT f.id, f.front, f.back, f.deck_id FROM flashcards f "
      "JOIN decks d ON d.id = f.deck_id WHERE f.deleted_at IS NULL AND "
      "d.deleted_at IS NULL AND ${m("f.front || ' ' || f.back || ' ' || f.tags")}",
      (r) => SearchResult(
        category: SearchCategory.flashcard,
        id: r.read('id'),
        title: r.read('front'),
        subtitle: r.read<String>('back'),
        parentId: r.read('deck_id'),
        score: _score(TextNormalizer.normalize(r.read('front')), q),
      ),
    );
    await run(
      SearchCategory.goal,
      "SELECT id, title, description FROM goals WHERE deleted_at IS NULL AND "
      "${m("title || ' ' || description")}",
      (r) => SearchResult(
        category: SearchCategory.goal,
        id: r.read('id'),
        title: r.read('title'),
        subtitle: r.read<String>('description'),
        score: _score(TextNormalizer.normalize(r.read('title')), q),
      ),
    );
    await run(
      SearchCategory.habit,
      "SELECT id, name FROM habits WHERE archived = 0 AND ${m('name')}",
      (r) => SearchResult(
        category: SearchCategory.habit,
        id: r.read('id'),
        title: r.read('name'),
        score: _score(TextNormalizer.normalize(r.read('name')), q),
      ),
    );
    await run(
      SearchCategory.event,
      "SELECT id, title, description FROM events WHERE deleted_at IS NULL AND "
      "${m("title || ' ' || description")}",
      (r) => SearchResult(
        category: SearchCategory.event,
        id: r.read('id'),
        title: r.read('title'),
        subtitle: r.read<String>('description'),
        score: _score(TextNormalizer.normalize(r.read('title')), q),
      ),
    );
    await run(
      SearchCategory.session,
      "SELECT id, note FROM focus_sessions WHERE note <> '' AND ${m('note')}",
      (r) => SearchResult(
        category: SearchCategory.session,
        id: r.read('id'),
        title: r.read('note'),
        score: 40,
      ),
    );

    results.sort((a, b) => b.score.compareTo(a.score));
    return results;
  }

  static String _snippet(String body, String normalizedQuery, {int radius = 60}) {
    final flat = body.replaceAll(RegExp(r'\s+'), ' ').trim();
    if (flat.length <= radius * 2) return flat;
    final i = TextNormalizer.normalize(flat).indexOf(normalizedQuery);
    if (i < 0) return '${flat.substring(0, radius * 2)}…';
    final s = (i - radius).clamp(0, flat.length);
    final e = (i + normalizedQuery.length + radius).clamp(0, flat.length);
    return '${s > 0 ? '…' : ''}${flat.substring(s, e)}${e < flat.length ? '…' : ''}';
  }

  // recent searches -----------------------------------------------------------

  Future<void> remember(String query) async {
    final q = query.trim();
    if (q.isEmpty) return;
    await _db
        .into(_db.recentSearches)
        .insertOnConflictUpdate(RecentSearchesCompanion.insert(query: q, at: _clock.nowUtc()));
    // Keep the 15 most recent.
    await _db.customStatement(
      'DELETE FROM recent_searches WHERE query NOT IN '
      '(SELECT query FROM recent_searches ORDER BY at DESC LIMIT 15)',
    );
  }

  Stream<List<String>> watchRecent() => (_db.select(
    _db.recentSearches,
  )..orderBy([(r) => OrderingTerm.desc(r.at)])).watch().map((r) => r.map((e) => e.query).toList());

  Future<void> clearRecent() => _db.delete(_db.recentSearches).go();
}
