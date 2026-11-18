import 'dart:ui' show Tristate;

import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/core/database/app_database.dart';
import 'package:future_os/features/flashcards/data/flashcards_repository.dart';
import 'package:future_os/features/flashcards/domain/study.dart';
import 'package:future_os/features/flashcards/presentation/review_screen.dart';
import 'package:future_os/l10n/gen/app_localizations.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';
import '../widget_helpers.dart';

Future<List<ReviewRow>> _reviews(AppDatabase db) => db.select(db.cardReviews).get();

AppLocalizations _l10n(WidgetTester t) => AppLocalizations.of(t.element(find.byType(ReviewScreen)));

Future<(TestEnv, String)> _deck(WidgetTester tester, List<(String, String)> cards) async {
  final env = TestEnv();
  final repo = FlashcardsRepository(env.db, env.clock);
  late String deck;
  await tester.runAsync(() async {
    deck = await repo.createDeck('Words', color: 0xFF6C4CFF);
    for (final (f, b) in cards) {
      await repo.addCard(deck, f, b);
    }
  });
  return (env, deck);
}

void main() {
  for (final tag in ['en', 'ar']) {
    testWidgets('typed answer: near miss is "almost" and suggests Hard ($tag)', (tester) async {
      final (env, deck) = await _deck(tester, [('puente', 'bridge')]);
      await pumpScreen(
        tester,
        ReviewScreen(deckId: deck, mode: StudyMode.typed),
        localeTag: tag,
        env: env,
      );
      await settle(tester);
      final l10n = _l10n(tester);
      expect(find.text('puente'), findsOneWidget);
      await tester.enterText(find.byKey(const Key('typedAnswerField')), 'bridje');
      await tester.pump();
      await tester.tap(find.byKey(const Key('checkAnswerButton')));
      await settle(tester);
      expect(find.text(l10n.studyAlmost), findsOneWidget);
      expect(find.text('bridge'), findsOneWidget);
      final hard = tester.getSemantics(find.byKey(const Key('rating_hard')));
      expect(hard.flagsCollection.isSelected, Tristate.isTrue);
      await tester.tap(find.byKey(const Key('rating_hard')));
      await settle(tester);
      expect((await tester.runAsync(() => _reviews(env.db)))!.single.rating, 2);
      await closeEnv(tester, env);
    });
  }

  testWidgets('multiple choice: wrong pick is marked and goes to the missed list', (tester) async {
    final (env, deck) = await _deck(tester, [
      ('uno', 'one'),
      ('dos', 'two'),
      ('tres', 'three'),
      ('cuatro', 'four'),
    ]);
    await pumpScreen(
      tester,
      ReviewScreen(deckId: deck, mode: StudyMode.choice, scope: StudyScope.practiceAll),
      env: env,
    );
    await settle(tester);
    final l10n = _l10n(tester);
    for (var i = 0; i < 4; i++) {
      // Pick the first option that is not the right answer, if any.
      final front = [
        'uno',
        'dos',
        'tres',
        'cuatro',
      ].firstWhere((f) => find.text(f).evaluate().isNotEmpty);
      final answer = {'uno': 'one', 'dos': 'two', 'tres': 'three', 'cuatro': 'four'}[front]!;
      final options = [
        for (var k = 0; k < 4; k++)
          (tester.widget<OutlinedButton>(find.byKey(Key('choice_$k'))).child! as Text).data!,
      ];
      expect(options, contains(answer));
      expect(options.toSet(), hasLength(4));
      final wrong = i == 0;
      final pick = options.indexWhere((o) => wrong ? o != answer : o == answer);
      await tester.tap(find.byKey(Key('choice_$pick')));
      await settle(tester);
      expect(find.text(wrong ? l10n.studyWrong : l10n.studyCorrect), findsOneWidget);
      await tester.tap(find.byKey(Key(wrong ? 'practiceWrong' : 'practiceRight')));
      await settle(tester);
    }
    expect(find.byKey(const Key('summary_right')), findsOneWidget);
    expect(find.text(l10n.studyMistakes(1)), findsOneWidget);
    // Practice never writes review history.
    expect(await tester.runAsync(() => _reviews(env.db)), isEmpty);

    // Repeat the missed card as a new practice round.
    await scrollPageTo(tester, find.byKey(const Key('repeatMistakesButton')));
    await tester.tap(find.byKey(const Key('repeatMistakesButton')));
    await settle(tester);
    expect(find.text(l10n.reviewProgress(0, 1)), findsOneWidget);
    await closeEnv(tester, env);
  });

  testWidgets('listening hides the question until revealed; suspend skips the card', (
    tester,
  ) async {
    final (env, deck) = await _deck(tester, [('hola', 'hello'), ('adiós', 'bye')]);
    await pumpScreen(
      tester,
      ReviewScreen(deckId: deck, mode: StudyMode.listening),
      env: env,
    );
    await settle(tester);
    final l10n = _l10n(tester);
    expect(find.text('hola'), findsNothing);
    await tester.tap(find.byKey(const Key('revealQuestionButton')));
    await settle(tester);
    expect(find.text('hola'), findsOneWidget);

    await tester.tap(find.byKey(const Key('reviewMenu')));
    await settle(tester);
    await tester.tap(find.text(l10n.flashcardsSuspend));
    await settle(tester);
    expect(find.text(l10n.reviewProgress(0, 1)), findsOneWidget);
    final cards = (await tester.runAsync(() => env.db.select(env.db.flashcards).get()))!;
    expect(cards.firstWhere((c) => c.front == 'hola').suspended, isTrue);
    await closeEnv(tester, env);
  });

  testWidgets('reverse mode asks the back first', (tester) async {
    final (env, deck) = await _deck(tester, [('hola', 'hello')]);
    await pumpScreen(
      tester,
      ReviewScreen(deckId: deck, mode: StudyMode.reverse),
      env: env,
    );
    await settle(tester);
    expect(find.text('hello'), findsOneWidget);
    expect(find.text('hola'), findsNothing);
    await tester.tap(find.byKey(const Key('showAnswerButton')));
    await settle(tester);
    expect(find.text('hola'), findsOneWidget);
    await closeEnv(tester, env);
  });
}
