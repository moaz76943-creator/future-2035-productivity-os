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

  test('deck insights are measured from cards and the review log', () async {
    final d = await repo.createDeck('D', color: 1);
    final a = await repo.addCard(d, 'a', '1');
    final b = await repo.addCard(d, 'b', '2');
    await repo.addCard(d, 'c', '3');
    await repo.recordReview(a, ReviewRating.again);
    await repo.recordReview(a, ReviewRating.good);
    await repo.recordReview(b, ReviewRating.easy);
    await repo.setFavorite([b], true);
    final i = await repo.deckInsights(d);
    expect(i.total, 3);
    expect(i.newCards, 1);
    expect(i.favorites, 1);
    expect(i.reviewsToday, 3);
    expect(i.reviewsInRange, 3);
    expect(i.correctRate, closeTo(2 / 3, 1e-9));
    expect(i.forgetRate, isNull, reason: 'no graduated card was reviewed yet');
    expect(i.averageRecall, isNotNull);
    expect(i.perDay.last, 3);
    expect(i.recent.map((r) => r.cardId).toSet(), {a, b});
  });

  test(
    'media: one image/audio per side, size limits, copied with the card, cascade delete',
    () async {
      final d = await repo.createDeck('D', color: 1);
      final c = await repo.addCard(d, 'perro', 'dog', custom: {'c1': 'perros'});
      await repo.addMedia(c, side: 'front', kind: 'image', bytes: [1, 2, 3], name: 'a.png');
      await repo.addMedia(c, side: 'front', kind: 'image', bytes: [4, 5], name: 'b.png');
      await repo.addMedia(c, side: 'back', kind: 'audio', bytes: [9], name: 'dog.m4a');
      final m = await repo.mediaFor(c);
      expect(m, hasLength(2));
      expect(m.firstWhere((x) => x.kind == 'image').bytes, [4, 5]);
      expect(
        () => repo.addMedia(
          c,
          side: 'front',
          kind: 'image',
          bytes: List.filled(FlashcardsRepository.maxImageBytes + 1, 0),
        ),
        throwsA(isA<MediaTooLarge>()),
      );
      final copy = await repo.duplicateCard(c);
      expect(await repo.mediaFor(copy), hasLength(2));
      expect((await repo.getCard(copy))!.custom, '{"c1":"perros"}');
      await env.db.customStatement("DELETE FROM flashcards WHERE id = '$c'");
      expect(await repo.mediaFor(c), isEmpty);
    },
  );
}
