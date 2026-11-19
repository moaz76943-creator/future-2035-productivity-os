import 'package:drift/drift.dart' show Value;
import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/core/database/app_database.dart';
import 'package:future_os/features/flashcards/data/flashcards_repository.dart';
import 'package:future_os/features/notes/data/notes_repository.dart';

import '../../helpers.dart';

/// A heavy user: 20 000 cards in a few decks and 5 000 notes. Lists, counts
/// and the cards-per-deck view must stay fast, and a hand-made order of the
/// whole deck must save in one go.
void main() {
  test('20 000 cards and 5 000 notes stay quick', () async {
    final env = TestEnv();
    addTearDown(env.dispose);
    final repo = FlashcardsRepository(env.db, env.clock);
    final notes = NotesRepository(env.db, env.clock);
    final deck = await repo.createDeck('Big', color: 0xFF6C4CFF);
    final now = env.clock.nowUtc();

    await env.db.batch((b) {
      b.insertAll(env.db.flashcards, [
        for (var i = 0; i < 20000; i++)
          FlashcardsCompanion.insert(
            id: 'c$i',
            deckId: deck,
            front: 'word $i',
            back: 'كلمة $i',
            createdAt: now.add(Duration(milliseconds: i)),
            updatedAt: now,
          ),
      ]);
      b.insertAll(env.db.notes, [
        for (var i = 0; i < 5000; i++)
          NotesCompanion.insert(
            id: 'n$i',
            title: Value('Note $i'),
            body: Value('# Title $i\n- [ ] item\nSome longer text $i'),
            createdAt: now,
            updatedAt: now,
          ),
      ]);
    });

    final sw = Stopwatch()..start();
    final cards = await repo.watchCards(deck).first;
    final loadCards = sw.elapsedMilliseconds;
    expect(cards.length, 20000);

    sw
      ..reset()
      ..start();
    final listed = await notes.watch(NotesView.all).first;
    final loadNotes = sw.elapsedMilliseconds;
    expect(listed, isNotEmpty);

    sw
      ..reset()
      ..start();
    final stats = await repo.watchDeckStats(deck).first;
    final statsMs = sw.elapsedMilliseconds;
    expect(stats.total, 20000);

    sw
      ..reset()
      ..start();
    await repo.setCardOrder(cards.reversed.toList(), [for (var i = 0; i < 20000; i++) i + 1]);
    final reorderMs = sw.elapsedMilliseconds;

    // ignore: avoid_print
    print('cards $loadCards ms, notes $loadNotes ms, stats $statsMs ms, reorder $reorderMs ms');
    expect(loadCards, lessThan(4000));
    expect(loadNotes, lessThan(2000));
    expect(statsMs, lessThan(2000));
    expect(reorderMs, lessThan(8000));
  });
}
