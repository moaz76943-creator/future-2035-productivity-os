import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/flashcards/data/flashcards_repository.dart';
import 'package:future_os/features/flashcards/domain/card_import.dart';
import 'package:future_os/features/flashcards/domain/exam_plan.dart';
import 'package:future_os/features/flashcards/presentation/deck_screen.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';
import '../widget_helpers.dart';

void main() {
  testWidgets('an exam date shows days left and cards per day; the limit can be raised (ar)', (
    tester,
  ) async {
    final env = TestEnv(); // 16 Nov 2026
    final repo = FlashcardsRepository(env.db, env.clock);
    late String deck;
    await tester.runAsync(() async {
      deck = await repo.createDeck('أحياء', color: 0xFF6C4CFF, dailyNewLimit: 5);
      await repo.importParsed(deck, [for (var i = 0; i < 90; i++) ImportedCard('س$i', 'ج$i')]);
      await env.db.writeValue(ExamPlan.key(deck), '2026-11-26'); // 10 days → 9 learning days
    });
    await pumpScreen(
      tester,
      DeckScreen(deckId: deck),
      localeTag: 'ar',
      env: env,
    );
    await settle(tester);
    expect(find.textContaining('الامتحان بعد 10 أيام'), findsOneWidget);
    expect(find.textContaining('تعلّم 10 بطاقات جديدة يومياً'), findsOneWidget);
    await tester.tap(find.byKey(const Key('examRaiseLimit')));
    await tester.runAsync(() => Future<void>.delayed(const Duration(milliseconds: 50)));
    await settle(tester);
    final d = (await tester.runAsync(() => env.db.select(env.db.decks).getSingle()))!;
    expect(d.dailyNewLimit, 10);
    expect(find.byKey(const Key('examRaiseLimit')), findsNothing);
    await closeEnv(tester, env);
  });
}
