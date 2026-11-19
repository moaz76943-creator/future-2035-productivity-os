import 'dart:async';
import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/database/app_database.dart';
import '../../../core/providers/core_providers.dart';
import '../data/flashcards_repository.dart';

/// Order of the card list.
enum DeckSort { newest, alpha, due, hard }

/// How a deck's cards are shown: a two-column table (default) or tiles,
/// which column comes first, and the order. Shared by all decks.
class DeckViewPrefs {
  const DeckViewPrefs({this.table = true, this.swapped = false, this.sort = DeckSort.newest});
  final bool table;
  final bool swapped;
  final DeckSort sort;

  DeckViewPrefs copyWith({bool? table, bool? swapped, DeckSort? sort}) => DeckViewPrefs(
    table: table ?? this.table,
    swapped: swapped ?? this.swapped,
    sort: sort ?? this.sort,
  );

  String encode() => jsonEncode({'table': table, 'swapped': swapped, 'sort': sort.name});

  static DeckViewPrefs decode(String? raw) {
    if (raw == null) return const DeckViewPrefs();
    try {
      final j = jsonDecode(raw);
      if (j is! Map) return const DeckViewPrefs();
      return DeckViewPrefs(
        table: j['table'] != false,
        swapped: j['swapped'] == true,
        sort: DeckSort.values.asNameMap()[j['sort']] ?? DeckSort.newest,
      );
    } on FormatException {
      return const DeckViewPrefs();
    }
  }

  /// Sorted copy of [cards] (stable; ties keep the newest first).
  List<CardRow> apply(List<CardRow> cards, DateTime nowUtc) {
    final out = [...cards];
    int newest(CardRow a, CardRow b) => b.createdAt.compareTo(a.createdAt);
    switch (sort) {
      case DeckSort.newest:
        out.sort(newest);
      case DeckSort.alpha:
        String key(CardRow c) => (swapped ? c.back : c.front).toLowerCase();
        out.sort((a, b) => key(a).compareTo(key(b)));
      case DeckSort.due:
        DateTime due(CardRow c) => c.state == 'new' || c.dueAt == null ? DateTime(9999) : c.dueAt!;
        out.sort((a, b) {
          final c = due(a).compareTo(due(b));
          return c != 0 ? c : newest(a, b);
        });
      case DeckSort.hard:
        int rank(CardRow c) => FlashcardsRepository.isHard(c) ? 0 : 1;
        out.sort((a, b) {
          final c = rank(a).compareTo(rank(b));
          if (c != 0) return c;
          final d = b.difficulty.compareTo(a.difficulty);
          return d != 0 ? d : newest(a, b);
        });
    }
    return out;
  }
}

final deckViewPrefsProvider = NotifierProvider<DeckViewPrefsController, DeckViewPrefs>(
  DeckViewPrefsController.new,
);

class DeckViewPrefsController extends Notifier<DeckViewPrefs> {
  static const _key = 'flash.deckView';

  @override
  DeckViewPrefs build() {
    unawaited(_load());
    return const DeckViewPrefs();
  }

  Future<void> _load() async {
    final raw = await ref.read(databaseProvider).readValue(_key);
    if (ref.mounted && raw != null) state = DeckViewPrefs.decode(raw);
  }

  Future<void> set(DeckViewPrefs p) async {
    state = p;
    await ref.read(databaseProvider).writeValue(_key, p.encode());
  }
}
