import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/flashcards/data/flashcards_repository.dart';
import 'package:future_os/features/flashcards/domain/card_extras.dart';
import 'package:future_os/features/flashcards/presentation/deck_screen.dart';
import 'package:future_os/features/flashcards/presentation/review_screen.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';
import '../widget_helpers.dart';

void main() {
  testWidgets('optional fields are saved from the card form and shown on the answer side', (
    tester,
  ) async {
    final env = TestEnv();
    final repo = FlashcardsRepository(env.db, env.clock);
    final deck = (await tester.runAsync(() => repo.createDeck('Words', color: 0xFF6C4CFF)))!;
    await pumpScreen(tester, DeckScreen(deckId: deck), env: env);
    await settle(tester);
    await tester.tap(find.byKey(const Key('addCardFab')));
    await settle(tester);
    await tester.enterText(find.byKey(const Key('cardFrontField')), 'gato');
    await tester.enterText(find.byKey(const Key('cardBackField')), 'cat');
    await tester.tap(find.byKey(const Key('cardMoreFieldsButton')));
    await settle(tester);
    await tester.enterText(find.byKey(const Key('cardField_example')), 'El gato duerme.');
    await tester.enterText(find.byKey(const Key('cardField_pronunciation')), 'GAH-toh');
    await tester.ensureVisible(find.byKey(const Key('cardSaveButton')));
    await tester.tap(find.byKey(const Key('cardSaveButton')));
    await settle(tester);
    final card = (await tester.runAsync(() => env.db.select(env.db.flashcards).getSingle()))!;
    final extras = CardExtras.decode(card.extra);
    expect(extras[CardField.example], 'El gato duerme.');
    expect(extras[CardField.pronunciation], 'GAH-toh');
    expect(extras[CardField.explanation], isNull);

    await pumpScreen(tester, ReviewScreen(deckId: deck), env: env);
    await settle(tester);
    expect(find.text('El gato duerme.'), findsNothing, reason: 'question side shows the front only');
    await tester.tap(find.byKey(const Key('showAnswerButton')));
    await settle(tester);
    await tester.pump(const Duration(seconds: 1));
    expect(find.text('El gato duerme.'), findsOneWidget);
    expect(find.text('Example'), findsOneWidget);
    expect(find.text('GAH-toh'), findsOneWidget);
    await closeEnv(tester, env);
  });

  test('deck export/import keeps optional fields', () async {
    final env = TestEnv();
    final repo = FlashcardsRepository(env.db, env.clock);
    final a = await repo.createDeck('A', color: 1);
    await repo.addCard(a, 'sol', 'sun', extras: const CardExtras({CardField.notes: 'masculine'}));
    final json = await repo.exportDeck(a);
    final b = await repo.createDeck('B', color: 2);
    expect(await repo.importInto(b, json), 1);
    final imported = await (env.db.select(env.db.flashcards)..where((c) => c.deckId.equals(b))).getSingle();
    expect(CardExtras.decode(imported.extra)[CardField.notes], 'masculine');
    await env.dispose();
  });
}
