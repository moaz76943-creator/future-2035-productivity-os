import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/app/localization/app_locales.dart';
import 'package:future_os/features/settings/presentation/language_chips.dart';
import 'package:future_os/features/settings/presentation/language_options.dart';
import 'package:material_ui/material_ui.dart';

import '../widget_helpers.dart';

void main() {
  testWidgets('the language list can be searched by any name or code', (tester) async {
    final env = await pumpScreen(
      tester,
      const Scaffold(body: SingleChildScrollView(child: LanguageOptionList())),
    );
    expect(find.byKey(const ValueKey('lang-system')), findsOneWidget);
    await tester.enterText(find.byKey(const ValueKey('lang-search')), 'germ');
    await tester.pump();
    expect(find.byKey(const ValueKey('lang-de')), findsOneWidget);
    expect(find.byKey(const ValueKey('lang-ar')), findsNothing);
    expect(find.byKey(const ValueKey('lang-system')), findsNothing);

    await tester.enterText(find.byKey(const ValueKey('lang-search')), 'العربية');
    await tester.pump();
    expect(find.byKey(const ValueKey('lang-ar')), findsOneWidget);

    await tester.enterText(find.byKey(const ValueKey('lang-search')), 'zzzz');
    await tester.pump();
    expect(find.byType(ListTile), findsNothing);
    expect(find.text('No language matches'), findsOneWidget);

    await tester.enterText(find.byKey(const ValueKey('lang-search')), 'ja');
    await tester.pump();
    await tester.tap(find.byKey(const ValueKey('lang-ja')));
    await settle(tester);
    expect(tester.widget<ListTile>(find.byKey(const ValueKey('lang-ja'))).selected, isTrue);
    await closeEnv(tester, env);
  });

  test('the first screen suggests a few languages, the phone ones first', () {
    final s = suggested(null, const [Locale('tr'), Locale('fa')]);
    expect(s.length, LanguageChips.max);
    expect(s.take(2).map((l) => l.tag), ['tr', 'fa']);
    expect(suggested('ko', const []).first.tag, 'ko');
    expect(s.toSet().length, s.length);
    expect(AppLocales.all.length, greaterThan(LanguageChips.max));
  });
}
