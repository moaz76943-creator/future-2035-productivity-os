import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/database/app_database.dart';
import '../../../core/providers/core_providers.dart';
import '../data/flashcards_repository.dart';

final flashcardsRepositoryProvider = Provider<FlashcardsRepository>(
  (ref) => FlashcardsRepository(ref.watch(databaseProvider), ref.watch(clockProvider)),
);

final decksProvider = StreamProvider.autoDispose<List<DeckRow>>(
  (ref) => ref.watch(flashcardsRepositoryProvider).watchDecks(),
);

final deckProvider = StreamProvider.autoDispose.family<DeckRow?, String>(
  (ref, id) => ref.watch(flashcardsRepositoryProvider).watchDeck(id),
);

final deckStatsProvider = StreamProvider.autoDispose.family<DeckStats, String>(
  (ref, id) => ref.watch(flashcardsRepositoryProvider).watchDeckStats(id),
);

final deckCardsProvider = StreamProvider.autoDispose.family<List<CardRow>, String>(
  (ref, id) => ref.watch(flashcardsRepositoryProvider).watchCards(id),
);

final totalDueProvider = StreamProvider.autoDispose<int>(
  (ref) => ref.watch(flashcardsRepositoryProvider).watchTotalDue(),
);

/// Size of today's study queue (due cards plus new cards within the daily
/// limit). Recomputed whenever the deck's card statistics change.
final studyQueueSizeProvider = FutureProvider.autoDispose.family<int, String>((ref, id) async {
  await ref.watch(deckStatsProvider(id).future);
  final queue = await ref.read(flashcardsRepositoryProvider).reviewQueue(id);
  return queue.length;
});
