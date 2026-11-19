import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/help/presentation/help_screen.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';
import '../widget_helpers.dart';

void main() {
  testWidgets('help: an answer opens, the tour has three pages (ar)', (tester) async {
    final env = TestEnv();
    await pumpScreen(tester, const HelpScreen(), localeTag: 'ar', env: env);
    await tester.tap(find.text('ما فائدة «ابدأ يومي»؟'));
    await settle(tester);
    expect(find.textContaining('أداة الشاشة الرئيسية'), findsOneWidget);
    expect(find.byKey(const Key('faqOpen_myDay')), findsOneWidget);

    await tester.tap(find.byKey(const Key('helpTour')));
    await settle(tester);
    expect(find.text('خطّط ليومك'), findsOneWidget);
    for (var i = 0; i < 2; i++) {
      await tester.tap(find.byKey(const Key('tourNext')));
      await tester.pump(const Duration(seconds: 1));
      await settle(tester);
    }
    expect(find.text('تعلّم ليبقى'), findsOneWidget);
    expect(find.text('لنبدأ'), findsOneWidget);
    await tester.tap(find.byKey(const Key('tourNext')));
    await tester.pump(const Duration(seconds: 1));
    await settle(tester);
    expect(find.text('تعلّم ليبقى'), findsNothing);
    await closeEnv(tester, env);
  });
}
