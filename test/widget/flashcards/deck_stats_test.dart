import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/flashcards/data/flashcards_repository.dart';
import 'package:future_os/features/flashcards/domain/srs_scheduler.dart';
import 'package:future_os/features/flashcards/presentation/deck_stats_screen.dart';
import 'package:future_os/l10n/gen/app_localizations.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';
import '../widget_helpers.dart';

void main() {
  for (final tag in ['en', 'ar']) {
    testWidgets('deck statistics show measured values ($tag)', (tester) async {
      final env = TestEnv();
      final repo = FlashcardsRepository(env.db, env.clock);
      late String deck;
      await tester.runAsync(() async {
        deck = await repo.createDeck('Words', color: 0xFF6C4CFF);
        final a = await repo.addCard(deck, 'hola', 'hello');
        await repo.recordReview(a, ReviewRating.good);
        await repo.recordReview(a, ReviewRating.again);
      });
      await pumpScreen(
        tester,
        DeckStatsScreen(deckId: deck),
        env: env,
        localeTag: tag,
      );
      await settle(tester);
      final l10n = AppLocalizations.of(tester.element(find.byType(DeckStatsScreen)));
      expect(find.text(l10n.flashcardsStatReviewsToday), findsOneWidget);
      expect(
        find.descendant(of: find.byKey(const Key('statCorrect')), matching: find.text('50%')),
        findsOneWidget,
      );
      await scrollPageTo(tester, find.text('hola').first);
      expect(find.text(l10n.reviewAgain), findsWidgets);
      await closeEnv(tester, env);
    });
  }
}
