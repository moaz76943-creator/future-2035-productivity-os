import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/flashcards/data/flashcards_repository.dart';
import 'package:future_os/features/flashcards/data/word_packs.dart';
import 'package:future_os/features/flashcards/presentation/widgets/word_packs_sheet.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';
import '../widget_helpers.dart';

class _Packs implements WordPackSource {
  int calls = 0;
  @override
  Future<WordPack> load(String code) async {
    calls++;
    final words = {
      'en': ['sofa', 'lamp', 'table', 'chair', 'rug'],
      'de': ['das Sofa', 'die Lampe', 'der Tisch', 'der Stuhl', 'der Teppich'],
    }[code];
    if (words == null) return const WordPack(names: {}, items: {});
    const ids = ['sofa', 'lamp', 'table', 'chair', 'rug'];
    return WordPack(
      names: {'home': code == 'en' ? 'Home' : 'Zuhause', 'home.living': 'Living room'},
      items: {for (var i = 0; i < 5; i++) 'home.living.${ids[i]}': words[i]},
      emoji: code == 'en' ? {'home': '🏠', 'home.living.sofa': '🛋️'} : const {},
    );
  }
}

void main() {
  test('pack file parses; bad values are ignored; codes map from tags', () {
    final p = WordPack.parse('{"names":{"a":"A","a.b":"B"},"items":{"a.b.x":"x","a.b.y":3}}');
    expect(p.tree(), {
      'a': ['a.b'],
    });
    expect(p.branch('a.b'), {'a.b.x': 'x'});
    expect(WordPack.parse('[]').items, isEmpty);
    expect(packCode('pt-BR'), 'pt');
    expect(packCode('zh-TW'), 'zh_Hant');
  });

  testWidgets('choose a language, download one branch as a deck', (tester) async {
    final env = TestEnv();
    final packs = _Packs();
    await pumpScreen(
      tester,
      const Scaffold(body: WordPacksSheet()),
      env: env,
      overrides: [wordPackSourceProvider.overrideWithValue(packs)],
    );
    await settle(tester);
    await tester.tap(find.byKey(const Key('wordPacksLanguage')));
    await settle(tester);
    await tester.tap(find.text('Deutsch').last);
    await settle(tester);
    expect(find.byKey(const Key('wordTopic_home')), findsOneWidget);
    await tester.tap(find.byKey(const Key('wordPacksAddAll')));
    await settle(tester);
    expect(find.byIcon(Icons.check_circle_rounded), findsOneWidget);
    final decks = await tester.runAsync(
      () => FlashcardsRepository(env.db, env.clock).watchDecks().first,
    );
    expect(decks!.single.name, 'Living room · Home');
    await closeEnv(tester, env);
  });
}
