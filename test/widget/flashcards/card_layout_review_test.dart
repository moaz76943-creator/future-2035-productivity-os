import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/flashcards/data/flashcards_repository.dart';
import 'package:future_os/features/flashcards/domain/card_extras.dart';
import 'package:future_os/features/flashcards/domain/card_layout.dart';
import 'package:future_os/features/flashcards/presentation/review_screen.dart';
import 'package:future_os/l10n/gen/app_localizations.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';
import '../widget_helpers.dart';

void main() {
  testWidgets('deck layout renames, hides and reveals fields step by step', (tester) async {
    final env = TestEnv();
    final repo = FlashcardsRepository(env.db, env.clock);
    late String deck;
    await tester.runAsync(() async {
      deck = await repo.createDeck('Words', color: 0xFF6C4CFF);
      await repo.addCard(
        deck,
        'la llave',
        'key',
        extras: const CardExtras({
          CardField.example: 'Tengo la llave.',
          CardField.notes: 'private note',
          CardField.explanation: 'opens a lock',
        }),
      );
      await repo.saveLayout(
        deck,
        const CardLayout(
          order: [
            CardField.explanation,
            CardField.example,
            CardField.pronunciation,
            CardField.notes,
          ],
          labels: {CardField.example: 'Sentence'},
          hidden: {CardField.notes},
          stepReveal: true,
        ),
      );
    });
    await pumpScreen(tester, ReviewScreen(deckId: deck), env: env);
    await settle(tester);
    final l10n = AppLocalizations.of(tester.element(find.byType(ReviewScreen)));
    await tester.tap(find.byKey(const Key('showAnswerButton')));
    await settle(tester);
    expect(find.text('key'), findsOneWidget);
    expect(find.text('opens a lock'), findsNothing);
    await tester.tap(find.byKey(const Key('revealNextField')));
    await settle(tester);
    expect(find.text('opens a lock'), findsOneWidget);
    expect(find.text('Tengo la llave.'), findsNothing);
    expect(find.text(l10n.flashcardsRevealNext('Sentence')), findsOneWidget);
    await tester.tap(find.byKey(const Key('revealNextField')));
    await settle(tester);
    expect(find.text('Tengo la llave.'), findsOneWidget);
    expect(find.text('Sentence'), findsOneWidget);
    // Hidden field never shows; nothing left to reveal.
    expect(find.text('private note'), findsNothing);
    expect(find.byKey(const Key('revealNextField')), findsNothing);
    await closeEnv(tester, env);
  });
}
