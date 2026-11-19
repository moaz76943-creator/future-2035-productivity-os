import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/flashcards/data/flashcards_repository.dart';
import 'package:future_os/features/flashcards/domain/card_extras.dart';
import 'package:future_os/features/flashcards/presentation/card_search_screen.dart';
import 'package:future_os/l10n/gen/app_localizations.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';
import '../widget_helpers.dart';

void main() {
  for (final tag in ['en', 'ar']) {
    testWidgets('search across decks by example text, deck and status ($tag)', (tester) async {
      final env = TestEnv();
      final repo = FlashcardsRepository(env.db, env.clock);
      await tester.runAsync(() async {
        final es = await repo.createDeck('Spanish', color: 0xFF6C4CFF, category: 'A1');
        await repo.setDeckLanguages(es, front: 'es-ES', back: 'ar');
        final de = await repo.createDeck('German', color: 0xFF2BB5A0, category: 'B1');
        await repo.setDeckLanguages(de, front: 'de-DE', back: 'ar');
        await repo.addCard(
          es,
          'la llave',
          'المفتاح',
          extras: const CardExtras({CardField.example: 'Tengo la llave'}),
        );
        final h = await repo.addCard(de, 'der Hund', 'الكلب');
        await repo.setFavorite([h], true);
      });
      await pumpScreen(tester, const CardSearchScreen(), env: env, localeTag: tag);
      await settle(tester);
      final l10n = AppLocalizations.of(tester.element(find.byType(CardSearchScreen)));
      expect(find.text(l10n.flashcardsShownOf(2, 2)), findsOneWidget);
      await tester.enterText(find.byKey(const Key('globalCardSearch')), 'tengo');
      await settle(tester);
      expect(find.text('la llave'), findsOneWidget);
      expect(find.text('der Hund'), findsNothing);
      // Arabic answer without diacritics matches.
      await tester.enterText(find.byKey(const Key('globalCardSearch')), 'الْكَلْب');
      await settle(tester);
      expect(find.text('der Hund'), findsOneWidget);
      await tester.enterText(find.byKey(const Key('globalCardSearch')), '');
      await tester.tap(find.byKey(const Key('searchState_favorites')));
      await settle(tester);
      expect(find.text(l10n.flashcardsShownOf(1, 2)), findsOneWidget);
      await scrollPageTo(tester, find.byKey(const Key('overviewByLevel')));
      expect(find.text('A1'), findsOneWidget);
      expect(find.text('B1'), findsOneWidget);
      await closeEnv(tester, env);
    });
  }
}
