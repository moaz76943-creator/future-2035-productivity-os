import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/notes/data/notes_repository.dart';
import 'package:future_os/features/search/presentation/search_screen.dart';
import 'package:future_os/features/tasks/data/tasks_repository.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';
import '../widget_helpers.dart';

Future<void> typeQuery(WidgetTester tester, String q) async {
  await tester.enterText(find.byKey(const ValueKey('search-field')), q);
  await tester.pump(SearchScreen.debounce + const Duration(milliseconds: 50));
  await settle(tester);
}

void main() {
  for (final tag in ['en', 'ar']) {
    testWidgets('Arabic query without diacritics finds vocalized text ($tag)', (tester) async {
      final env = TestEnv();
      await TasksRepository(env.db, env.clock).create(const TaskDraft(title: 'مراجعة الدَّرسِ'));
      await NotesRepository(env.db, env.clock).create(title: 'Préparer la réunion');
      await pumpScreen(tester, const SearchScreen(), env: env, localeTag: tag);
      await settle(tester);

      // Intro states that search stays on device.
      expect(find.textContaining(tag == 'en' ? 'stays on this device' : ''), findsWidgets);

      await typeQuery(tester, 'الدرس');
      expect(find.text('مراجعة الدَّرسِ'), findsOneWidget);
      expect(find.text('Préparer la réunion'), findsNothing);

      // Accent- and case-insensitive.
      await typeQuery(tester, 'REUNION');
      expect(find.text('Préparer la réunion'), findsOneWidget);

      expect(
        Directionality.of(tester.element(find.byType(SearchScreen))),
        tag == 'ar' ? TextDirection.rtl : TextDirection.ltr,
      );
      await env.dispose();
    });
  }

  testWidgets('category filter, no results and recent searches', (tester) async {
    final env = TestEnv();
    await TasksRepository(env.db, env.clock).create(const TaskDraft(title: 'Budget review'));
    await NotesRepository(env.db, env.clock).create(title: 'Budget notes');
    await pumpScreen(tester, const SearchScreen(), env: env);
    await settle(tester);

    await typeQuery(tester, 'budget');
    expect(find.text('Budget review'), findsOneWidget);
    expect(find.text('Budget notes'), findsOneWidget);
    expect(find.text('2 results'), findsOneWidget);

    // The chip row scrolls horizontally; bring the chip into view first.
    await tester.ensureVisible(find.widgetWithText(ChoiceChip, 'Notes'));
    await tester.pumpAndSettle();
    await tester.tap(find.widgetWithText(ChoiceChip, 'Notes'));
    await settle(tester);
    expect(find.text('Budget review'), findsNothing);
    expect(find.text('Budget notes'), findsOneWidget);

    await typeQuery(tester, 'zzz');
    expect(find.text('No results for "zzz"'), findsOneWidget);

    // Submitting remembers the query; it appears once the field is cleared.
    await tester.enterText(find.byKey(const ValueKey('search-field')), 'budget');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await settle(tester);
    await tester.tap(find.byTooltip('Clear'));
    await settle(tester);
    expect(find.text('Recent searches'), findsOneWidget);
    expect(find.widgetWithText(ListTile, 'budget'), findsOneWidget);
    // One-shot read on the real event loop: a drift watch() stream never delivers in a widget test.
    final recent = await tester.runAsync(() => env.db.select(env.db.recentSearches).get());
    expect(recent!.map((r) => r.query).toList(), ['budget']);

    await tester.tap(find.text('Clear recent searches'));
    await settle(tester);
    expect(find.text('Recent searches'), findsNothing);
    await env.dispose();
  });
}
