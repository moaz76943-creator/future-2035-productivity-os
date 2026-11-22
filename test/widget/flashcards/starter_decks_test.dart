import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/flashcards/presentation/decks_screen.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';
import '../widget_helpers.dart';

void main() {
  testWidgets('a starter deck is added with its cards (ar)', (tester) async {
    final env = TestEnv();
    await pumpScreen(tester, const DecksScreen(), localeTag: 'ar', env: env);
    await tester.tap(find.byKey(const Key('starterDecksEmpty')));
    await settle(tester);
    expect(find.text('عواصم العالم'), findsOneWidget);
    await tester.tap(find.byKey(const Key('starterAdd_capitals')));
    for (var i = 0; i < 4; i++) {
      await tester.runAsync(() => Future<void>.delayed(const Duration(milliseconds: 50)));
      await settle(tester);
    }
    expect(find.byKey(const Key('starterAdd_capitals')), findsNothing);
    final decks = (await tester.runAsync(() => env.db.select(env.db.decks).get()))!;
    expect(decks.single.name, 'عواصم العالم');
    expect(decks.single.frontLang, 'ar');
    final cards = (await tester.runAsync(() => env.db.select(env.db.flashcards).get()))!;
    expect(cards.length, 42);
    expect(cards.any((c) => c.front == 'الأردن' && c.back == 'عمّان'), isTrue);
    await closeEnv(tester, env);
  });

  testWidgets('the decks menu opens the starter decks and settings (ar)', (tester) async {
    final env = TestEnv();
    await pumpScreen(tester, const DecksScreen(), localeTag: 'ar', env: env);
    await tester.tap(find.byKey(const Key('decksMenu')));
    await settle(tester);
    await tester.tap(find.byKey(const Key('starterDecksButton')));
    await settle(tester);
    expect(find.text('عواصم العالم'), findsOneWidget);
    await closeEnv(tester, env);
  });
}
