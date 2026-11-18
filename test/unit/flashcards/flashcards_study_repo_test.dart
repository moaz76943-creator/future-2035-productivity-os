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
}
