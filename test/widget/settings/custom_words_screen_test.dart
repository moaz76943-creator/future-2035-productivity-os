import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/app/localization/app_locales.dart';
import 'package:future_os/features/settings/application/custom_words_provider.dart';
import 'package:future_os/features/settings/presentation/custom_words/custom_words_screen.dart';
import 'package:future_os/l10n/gen/app_localizations.dart';
import 'package:material_ui/material_ui.dart';

import '../widget_helpers.dart';

/// The screen inside the app's real delegates, so a renamed word shows at once.
class _App extends ConsumerWidget {
  const _App();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final words = ref.watch(customWordsProvider).value ?? const <String, Map<String, String>>{};
    return Localizations.override(
      context: context,
      delegates: AppLocales.delegatesWith(words),
      child: const CustomWordsScreen(),
    );
  }
}

void main() {
  testWidgets('rename a word, see it everywhere, then go back to the original', (tester) async {
    final env = await pumpScreen(tester, const _App());
    await settle(tester);
    final en = lookupAppLocalizations(const Locale('en'));

    await tester.enterText(find.byKey(const Key('wordsSearch')), en.navTasks);
    await settle(tester);
    await tester.tap(find.byKey(const Key('word_navTasks')));
    await settle(tester);
    await tester.enterText(find.byKey(const Key('wordsField')), 'To-dos');
    await tester.tap(find.byKey(const Key('wordsSave')));
    await settle(tester);

    final c = ProviderScope.containerOf(tester.element(find.byType(CustomWordsScreen)));
    expect(c.read(customWordsProvider).value, {
      'en': {'navTasks': 'To-dos'},
    });
    final shown = tester.element(find.byType(CustomWordsScreen));
    expect(AppLocalizations.of(shown).navTasks, 'To-dos');
    expect(find.text(en.wordsOriginal(en.navTasks)), findsOneWidget);
    final stored = await tester.runAsync(() => env.db.readValue(CustomWordsNotifier.key));
    expect(stored, contains('To-dos'));

    await tester.tap(find.byKey(const Key('word_navTasks')));
    await settle(tester);
    await tester.tap(find.byKey(const Key('wordsUseOriginal')));
    await settle(tester);
    expect(c.read(customWordsProvider).value, isEmpty);
    expect(AppLocalizations.of(shown).navTasks, en.navTasks);
    await closeEnv(tester, env);
  });
}
