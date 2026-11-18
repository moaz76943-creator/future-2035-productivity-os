import 'dart:math' as math;

import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/flashcards/data/flashcards_repository.dart';
import 'package:future_os/features/flashcards/domain/srs_scheduler.dart';

import '../../helpers.dart';

void main() {
  late TestEnv env;
  late FlashcardsRepository repo;

  setUp(() {
    env = TestEnv();
    repo = FlashcardsRepository(env.db, env.clock);
  });
  tearDown(() => env.dispose());

  test('suspended cards leave the queue and the stats until resumed', () async {
    final deck = await repo.createDeck('D', color: 1);
    final a = await repo.addCard(deck, 'a', '1');
    await repo.addCard(deck, 'b', '2');
    expect(await repo.reviewQueue(deck), hasLength(2));
    await repo.setSuspended(a, true);
    expect((await repo.reviewQueue(deck)).map((c) => c.front), ['b']);
    expect((await repo.watchDeckStats(deck).first).newCount, 1);
    expect(await repo.practiceCards(deck, mistakesOnly: false), hasLength(1));
    await repo.setSuspended(a, false);
    expect(await repo.reviewQueue(deck), hasLength(2));
  });

  test('import skips duplicates (case/diacritics-insensitive) and counts invalid rows', () async {
    final deck = await repo.createDeck('D', color: 1);
    await repo.addCard(deck, 'Café', 'coffee');
    final r = await repo.importCards(deck, 'front,back\ncafe,x\nthé,tea\nthe,tea again\n,empty\n');
    expect(r.added, 1);
    expect(r.duplicates, 2);
    expect(r.invalid, 1);
    expect((await repo.findDuplicate(deck, 'THE'))?.front, 'thé');
  });

  test('JSON deck import still works and rejects other JSON', () async {
    final deck = await repo.createDeck('D', color: 1);
    await repo.addCard(deck, 'hola', 'hello');
    final json = await repo.exportDeck(deck);
    final other = await repo.createDeck('E', color: 1);
    expect((await repo.importCards(other, json)).added, 1);
    expect(() => repo.importCards(other, '{"format":"x"}'), throwsFormatException);
  });

  test('CSV export round-trips through the importer', () async {
    final deck = await repo.createDeck('D', color: 1);
    await repo.addCard(deck, 'a, "quoted"', 'line1\nline2', tags: 'x');
    await repo.addCard(deck, '=1+1', 'formula');
    final csv = await repo.exportCsv(deck);
    final other = await repo.createDeck('E', color: 1);
    final r = await repo.importCards(other, csv);
    expect(r.added, 2);
    final fronts = (await repo.watchCards(other).first).map((c) => c.front).toSet();
    expect(fronts, {'a, "quoted"', "'=1+1"});
  });

  test('practice mistakes returns cards answered Again recently', () async {
    final deck = await repo.createDeck('D', color: 1);
    final a = await repo.addCard(deck, 'a', '1');
    final b = await repo.addCard(deck, 'b', '2');
    await repo.recordReview(a, ReviewRating.again);
    await repo.recordReview(b, ReviewRating.good);
    final m = await repo.practiceCards(deck, mistakesOnly: true, random: math.Random(1));
    expect(m.map((c) => c.id), [a]);
    expect(await repo.practiceCards(deck, mistakesOnly: false), hasLength(2));
  });

  test('deck speech languages are stored', () async {
    final deck = await repo.createDeck('D', color: 1);
    await repo.setDeckLanguages(deck, front: 'es-ES', back: 'ar');
    final d = await repo.watchDeck(deck).first;
    expect(d!.frontLang, 'es-ES');
    expect(d.backLang, 'ar');
  });

  test('organisation: favourites, move, tag, duplicate, bulk delete/restore', () async {
    final a = await repo.createDeck('A', color: 1);
    final b = await repo.createDeck('B', color: 1);
    final x = await repo.addCard(a, 'x', '1', tags: 'one');
    final y = await repo.addCard(a, 'y', '2');
    await repo.setFavorite([x], true);
    expect(await repo.practiceCards(a, filter: PracticeFilter.favorites), hasLength(1));
    await repo.addTag([x, y], 'verbs');
    await repo.addTag([x], 'verbs');
    expect((await repo.getCard(x))!.tags, 'one verbs');
    final copy = await repo.duplicateCard(y);
    expect((await repo.getCard(copy))!.front, 'y');
    expect((await repo.getCard(copy))!.state, 'new');
    await repo.moveCards([x, y], b);
    expect((await repo.watchCards(b).first).map((c) => c.front).toSet(), {'x', 'y'});
    await repo.deleteCards([x, y]);
    expect(await repo.watchCards(b).first, isEmpty);
    await repo.restoreCards([x, y]);
    expect(await repo.watchCards(b).first, hasLength(2));
  });

  test('hard and new-only practice filters', () async {
    final d = await repo.createDeck('D', color: 1);
    final hard = await repo.addCard(d, 'h', '1');
    await repo.addCard(d, 'n', '2');
    for (var i = 0; i < 3; i++) {
      await repo.recordReview(hard, ReviewRating.again);
    }
    expect((await repo.practiceCards(d, filter: PracticeFilter.hard)).map((c) => c.front), ['h']);
    expect((await repo.practiceCards(d, filter: PracticeFilter.newOnly)).map((c) => c.front), [
      'n',
    ]);
  });
}
