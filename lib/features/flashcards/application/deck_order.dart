import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/database/app_database.dart';
import '../../../core/providers/core_providers.dart';

/// The user's own order of decks (ids, first on top), kept in the settings store.
class DeckOrderNotifier extends AsyncNotifier<List<String>> {
  static const key = 'flash.deckOrder';

  @override
  Future<List<String>> build() async {
    final raw = await ref.read(databaseProvider).readValue(key);
    if (raw == null) return const [];
    try {
      return (jsonDecode(raw) as List).cast<String>();
    } on Object {
      return const [];
    }
  }

  Future<void> save(List<String> ids) async {
    state = AsyncData(ids);
    await ref.read(databaseProvider).writeValue(key, jsonEncode(ids));
  }
}

final deckOrderProvider = AsyncNotifierProvider<DeckOrderNotifier, List<String>>(
  DeckOrderNotifier.new,
);

/// [decks] in the saved order; decks not in it yet keep their place after the ordered ones.
List<DeckRow> orderDecks(List<DeckRow> decks, List<String> order) {
  final pos = {for (final (i, id) in order.indexed) id: i};
  final sorted = [...decks];
  sorted.sort((a, b) => (pos[a.id] ?? 1 << 30).compareTo(pos[b.id] ?? 1 << 30));
  return sorted;
}
