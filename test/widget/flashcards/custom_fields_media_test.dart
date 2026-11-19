import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/core/platform/media_picker.dart';
import 'package:future_os/features/flashcards/data/flashcards_repository.dart';
import 'package:future_os/features/flashcards/domain/card_layout.dart';
import 'package:future_os/features/flashcards/presentation/deck_screen.dart';
import 'package:future_os/features/flashcards/presentation/review_screen.dart';
import 'package:future_os/l10n/gen/app_localizations.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';
import '../widget_helpers.dart';

class _Picker implements MediaPicker {
  @override
  Future<PickedMedia?> pick({required bool image}) async =>
      image ? const PickedMedia([1, 2, 3], 'dog.png') : const PickedMedia([9, 9], 'dog.m4a');
}

void main() {
  testWidgets('card form: custom fields of the deck and an image are saved', (tester) async {
    final env = TestEnv();
    final repo = FlashcardsRepository(env.db, env.clock);
    late String deck;
    await tester.runAsync(() async {
      deck = await repo.createDeck('German', color: 0xFF6C4CFF);
      await repo.saveLayout(
        deck,
        const CardLayout(
          customFields: [CustomField(id: 'c1', name: 'Plural')],
        ),
      );
    });
    await pumpScreen(
      tester,
      DeckScreen(deckId: deck),
      env: env,
      overrides: [mediaPickerProvider.overrideWithValue(_Picker())],
    );
    await settle(tester);
    await tester.tap(find.byKey(const Key('addCardFab')));
    await settle(tester);
    await tester.enterText(find.byKey(const Key('cardFrontField')), 'der Hund');
    await tester.enterText(find.byKey(const Key('cardBackField')), 'dog');
    await tester.enterText(find.byKey(const Key('customField_c1')), 'die Hunde');
    await tester.tap(find.byKey(const Key('media_front_image')));
    await settle(tester);
    expect(find.text('dog.png'), findsOneWidget);
    await tester.tap(find.byKey(const Key('cardSaveButton')));
    await settle(tester);
    final card = (await tester.runAsync(() => env.db.select(env.db.flashcards).getSingle()))!;
    expect(card.custom, '{"c1":"die Hunde"}');
    final media = (await tester.runAsync(() => repo.mediaFor(card.id)))!;
    expect(media.single.side, 'front');
    expect(media.single.bytes, [1, 2, 3]);
    await closeEnv(tester, env);
  });

  testWidgets('review shows the front image, front fields with the question, back fields after', (
    tester,
  ) async {
    final env = TestEnv();
    final repo = FlashcardsRepository(env.db, env.clock);
    late String deck;
    await tester.runAsync(() async {
      deck = await repo.createDeck('German', color: 0xFF6C4CFF);
      await repo.saveLayout(
        deck,
        const CardLayout(
          customFields: [
            CustomField(id: 'c1', name: 'Plural'),
            CustomField(id: 'c2', name: 'Hint', side: CardSide.front),
          ],
        ),
      );
      final c = await repo.addCard(
        deck,
        'der Hund',
        'dog',
        custom: {'c1': 'die Hunde', 'c2': 'animal'},
      );
      await repo.addMedia(c, side: 'front', kind: 'image', bytes: [1, 2, 3]);
    });
    await pumpScreen(tester, ReviewScreen(deckId: deck), env: env);
    await settle(tester);
    final l10n = AppLocalizations.of(tester.element(find.byType(ReviewScreen)));
    expect(find.byKey(const Key('questionImage')), findsOneWidget);
    expect(find.text('animal'), findsOneWidget);
    expect(find.text('die Hunde'), findsNothing);
    await tester.tap(find.byKey(const Key('showAnswerButton')));
    await settle(tester);
    expect(find.text('die Hunde'), findsOneWidget);
    expect(find.text('Plural'), findsOneWidget);
    expect(find.text(l10n.flashcardsPlayAudio), findsNothing);
    await closeEnv(tester, env);
  });
}
