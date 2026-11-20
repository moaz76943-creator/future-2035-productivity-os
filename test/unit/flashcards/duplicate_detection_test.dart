import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/flashcards/data/flashcards_repository.dart';
import '../../helpers.dart';

void main() {
  late TestEnv env;
  late FlashcardsRepository repo;

  setUp(() {
    env = TestEnv();
    repo = FlashcardsRepository(env.db, env.clock);
  });
  tearDown(() => env.dispose());

  test('findDuplicates finds cards with exact same front text', () async {
    final deckId = await repo.createDeck('Test Deck', color: 1);
    await repo.addCard(deckId, 'Hello', 'World');
    
    final dups = await repo.findDuplicates(front: 'Hello');
    expect(dups.length, 1);
    expect(dups.first.front, 'Hello');
  });

  test('findDuplicates finds cards with normalized Arabic text (tashkeel-stripped)', () async {
    final deckId = await repo.createDeck('Arabic Deck', color: 1);
    // Card with tashkeel
    await repo.addCard(deckId, 'مَدْرَسَة', 'School');
    
    // Search without tashkeel
    final dups1 = await repo.findDuplicates(front: 'مدرسة');
    expect(dups1.length, 1);
    expect(dups1.first.front, 'مَدْرَسَة');

    // Search with different alef/taa marbuta
    final dups2 = await repo.findDuplicates(front: 'مدرسه');
    expect(dups2.length, 1);
  });

  test('findDuplicates finds cards with case-insensitive and accent-insensitive text', () async {
    final deckId = await repo.createDeck('Langs', color: 1);
    await repo.addCard(deckId, 'Café', 'Coffee');
    
    final dups1 = await repo.findDuplicates(front: 'cafe');
    expect(dups1.length, 1);

    final dups2 = await repo.findDuplicates(front: 'CAFE');
    expect(dups2.length, 1);
  });

  test('findDuplicates respects deckId filter', () async {
    final deck1 = await repo.createDeck('Deck 1', color: 1);
    final deck2 = await repo.createDeck('Deck 2', color: 1);
    await repo.addCard(deck1, 'Unique', 'Value');
    await repo.addCard(deck2, 'Unique', 'Value');

    final dupsGlobal = await repo.findDuplicates(front: 'Unique');
    expect(dupsGlobal.length, 2);

    final dupsDeck1 = await repo.findDuplicates(front: 'Unique', deckId: deck1);
    expect(dupsDeck1.length, 1);
    expect(dupsDeck1.first.deckId, deck1);
  });

  test('findDuplicates respects excludeId', () async {
    final deckId = await repo.createDeck('Deck', color: 1);
    final id1 = await repo.addCard(deckId, 'Duplicate', '1');
    await repo.addCard(deckId, 'Duplicate', '2');

    final dups = await repo.findDuplicates(front: 'Duplicate', excludeId: id1);
    expect(dups.length, 1);
    expect(dups.first.id, isNot(id1));
  });
}