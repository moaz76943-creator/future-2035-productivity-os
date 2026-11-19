import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/app/routing/routes.dart';
import 'package:future_os/core/database/app_database.dart';
import 'package:future_os/features/notes/data/notes_repository.dart';
import 'package:future_os/l10n/gen/app_localizations.dart';
import 'package:future_os/features/notes/presentation/note_editor_screen.dart';
import 'package:future_os/features/notes/presentation/notes_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';
import '../widget_helpers.dart';

NotesRepository repoOf(TestEnv env) => NotesRepository(env.db, env.clock);

Future<T> db<T>(WidgetTester tester, Future<T> Function() fn) async =>
    (await tester.runAsync(fn)) as T;

/// NotesScreen inside a real GoRouter so navigation works.
Widget routed({String initial = Routes.notes}) => Router.withConfig(
  config: GoRouter(
    initialLocation: initial,
    routes: [
      GoRoute(path: Routes.notes, builder: (_, _) => const NotesScreen()),
      GoRoute(
        path: '/notes/:id',
        builder: (_, s) => NoteEditorScreen(noteId: s.pathParameters['id']!),
      ),
    ],
  ),
);

Widget scaled(Widget child, double scale) => Builder(
  builder: (c) => MediaQuery(
    data: MediaQuery.of(c).copyWith(textScaler: TextScaler.linear(scale)),
    child: child,
  ),
);

Future<void> waitAutosave(WidgetTester tester) async {
  await tester.pump(NoteEditorScreen.autosaveDelay + const Duration(milliseconds: 50));
  await settle(tester);
}

void main() {
  group('NotesScreen', () {
    for (final tag in ['en', 'ar']) {
      testWidgets('empty state and FAB creates a note and opens the editor ($tag)', (tester) async {
        final env = TestEnv();
        await pumpScreen(tester, routed(), localeTag: tag, env: env);
        await settle(tester);
        final l10n = AppLocalizations.of(tester.element(find.byType(NotesScreen)));
        expect(find.text(l10n.notesEmptyTitle), findsOneWidget);
        final fab = find.byType(FloatingActionButton);
        expect(fab, findsOneWidget);
        await tester.tap(fab);
        await settle(tester);
        // Route transitions can coexist with persistent app tickers; advance the
        // known transition window instead of waiting for global quiescence.
        await tester.pump(const Duration(milliseconds: 400));
        await settle(tester);
        expect(find.byType(NoteEditorScreen), findsOneWidget);
        final notes = await db(tester, () => env.db.select(env.db.notes).get());
        expect(notes, hasLength(1));
        expect(
          Directionality.of(tester.element(find.byType(NoteEditorScreen))),
          tag == 'ar' ? TextDirection.rtl : TextDirection.ltr,
        );
        await closeEnv(tester, env);
      });
    }

    testWidgets('pinned section first, previews strip markdown, filters by view', (tester) async {
      final env = TestEnv();
      final repo = repoOf(env);
      await db(tester, () async {
        await repo.create(title: 'Groceries', body: '- [x] milk\n- [ ] **eggs**');
        final p = await repo.create(title: 'Roadmap', body: '# Q1\nShip [[Groceries]] #work');
        await repo.setFlags(p, pinned: true);
        final f = await repo.create(title: 'Fav', body: 'loved');
        await repo.setFlags(f, favorite: true);
      });
      await pumpScreen(tester, routed(), env: env);
      await settle(tester);

      expect(find.text('Pinned'), findsWidgets);
      expect(find.text('Other notes'), findsOneWidget);
      final pinnedY = tester.getTopLeft(find.text('Roadmap')).dy;
      expect(pinnedY, lessThan(tester.getTopLeft(find.text('Groceries')).dy));
      expect(find.text('Q1\nShip Groceries #work'), findsOneWidget);
      expect(find.text('1 of 2 done'), findsOneWidget);
      expect(find.text('#work'), findsOneWidget); // tag filter chip

      await tester.tap(find.widgetWithText(ChoiceChip, 'Favorites'));
      await settle(tester);
      expect(find.text('Fav'), findsOneWidget);
      expect(find.text('Roadmap'), findsNothing);
      await closeEnv(tester, env);
    });

    testWidgets('delete from the menu with undo restores the note', (tester) async {
      final env = TestEnv();
      final repo = repoOf(env);
      final id = await db(tester, () => repo.create(title: 'Temp', body: 'x'));
      await pumpScreen(tester, routed(), env: env);
      await settle(tester);
      await tester.tap(find.byTooltip('More options'));
      await settle(tester);
      await tester.tap(find.text('Delete'));
      await settle(tester);
      await settle(tester);
      expect(find.text('Temp'), findsNothing);
      expect((await db(tester, () => repo.byId(id)))!.deletedAt, isNotNull);
      await tester.tap(find.text('Undo'));
      await settle(tester);
      expect((await db(tester, () => repo.byId(id)))!.deletedAt, isNull);
      expect(find.text('Temp'), findsOneWidget);
      await closeEnv(tester, env);
    });

    testWidgets('large font and long text render without overflow', (tester) async {
      final env = TestEnv();
      final repo = repoOf(env);
      await db(tester, () async {
        for (var i = 0; i < 4; i++) {
          await repo.create(
            title: 'Очень длинный заголовок заметки номер $i ' * 3,
            body: 'слово ' * 120,
          );
        }
        await repo.createNotebook('Исследования и разработка продукта', 0xFF6C4CFF);
      });
      await pumpScreen(tester, scaled(routed(), 2.0), localeTag: 'ru', env: env);
      await settle(tester);
      expect(tester.takeException(), isNull);
      await closeEnv(tester, env);
    });
  });

  group('NoteEditorScreen', () {
    testWidgets('typing autosaves after the debounce and shows Saved', (tester) async {
      final env = TestEnv();
      final repo = repoOf(env);
      final id = await db(tester, repo.create);
      await pumpScreen(tester, NoteEditorScreen(noteId: id), env: env);
      await settle(tester);

      await tester.enterText(find.byKey(const ValueKey('note-title')), 'Meeting');
      await tester.enterText(find.byKey(const ValueKey('note-body')), 'Agenda for #team today');
      await tester.pump();
      expect(find.text('Unsaved changes'), findsOneWidget);
      expect(find.text('4 words'), findsOneWidget);

      await waitAutosave(tester);
      final saved = await db(tester, () => repo.byId(id));
      expect(saved!.title, 'Meeting');
      expect(saved.body, 'Agenda for #team today');
      expect(find.text('Saved'), findsOneWidget);
      expect(find.text('#team'), findsOneWidget); // tag chip from note_tags
      await closeEnv(tester, env);
    });

    testWidgets('pending edits are saved when the editor closes', (tester) async {
      final env = TestEnv();
      final repo = repoOf(env);
      final id = await db(tester, () => repo.create(title: 'Draft'));
      await pumpScreen(tester, NoteEditorScreen(noteId: id), env: env);
      await settle(tester);
      await tester.enterText(find.byKey(const ValueKey('note-body')), 'do not lose me');
      await tester.pump();
      await tester.pumpWidget(const SizedBox());
      await settle(tester);
      expect((await db(tester, () => repo.byId(id)))!.body, 'do not lose me');
      await closeEnv(tester, env);
    });

    testWidgets('untouched blank note is removed on close', (tester) async {
      final env = TestEnv();
      final repo = repoOf(env);
      final id = await db(tester, repo.create);
      await pumpScreen(tester, NoteEditorScreen(noteId: id), env: env);
      await settle(tester);
      await tester.pumpWidget(const SizedBox());
      await settle(tester);
      expect(await db(tester, () => repo.byId(id)), isNull);
      await closeEnv(tester, env);
    });

    testWidgets('toolbar bold wraps the selection', (tester) async {
      final env = TestEnv();
      final repo = repoOf(env);
      final id = await db(tester, () => repo.create(title: 'T', body: 'hello world'));
      await pumpScreen(tester, NoteEditorScreen(noteId: id), env: env);
      await settle(tester);
      final field = tester.widget<TextField>(find.byKey(const ValueKey('note-body')));
      field.controller!.selection = const TextSelection(baseOffset: 6, extentOffset: 11);
      await tester.tap(find.byTooltip('Bold'));
      await tester.pump();
      expect(field.controller!.text, 'hello **world**');
      await tester.tap(find.byTooltip('Checklist'));
      await tester.pump();
      expect(field.controller!.text, '- [ ] hello **world**');
      await waitAutosave(tester);
      expect((await db(tester, () => repo.byId(id)))!.body, '- [ ] hello **world**');
      await closeEnv(tester, env);
    });

    testWidgets('preview renders markdown and checkbox toggles the source', (tester) async {
      final env = TestEnv();
      final repo = repoOf(env);
      final id = await db(
        tester,
        () => repo.create(title: 'List', body: '# Shopping\n- [ ] milk\n- [x] **bread**'),
      );
      await pumpScreen(tester, NoteEditorScreen(noteId: id), env: env);
      await settle(tester);
      await tester.tap(find.byTooltip('Preview'));
      await tester.pump();
      expect(find.byType(Checkbox), findsNWidgets(2));
      expect(find.text('Shopping'), findsOneWidget);
      // Markdown syntax is rendered, not shown as raw source. The tags section
      // intentionally includes a localized #tag instruction outside the preview.
      expect(find.text('# Shopping'), findsNothing);
      expect(find.text('- [ ] milk'), findsNothing);

      await tester.tap(find.byType(Checkbox).first);
      await settle(tester);
      expect(
        (await db(tester, () => repo.byId(id)))!.body,
        '# Shopping\n- [x] milk\n- [x] **bread**',
      );
      expect(tester.widget<Checkbox>(find.byType(Checkbox).first).value, isTrue);
      await closeEnv(tester, env);
    });

    testWidgets('Arabic content is RTL, Latin content LTR, in the Arabic UI', (tester) async {
      final env = TestEnv();
      final repo = repoOf(env);
      final id = await db(tester, () => repo.create(title: 'Plan', body: 'مرحبا بالعالم'));
      await pumpScreen(
        tester,
        NoteEditorScreen(noteId: id),
        localeTag: 'ar',
        env: env,
      );
      await settle(tester);
      TextField body() => tester.widget<TextField>(find.byKey(const ValueKey('note-body')));
      TextField title() => tester.widget<TextField>(find.byKey(const ValueKey('note-title')));
      expect(body().textDirection, TextDirection.rtl);
      expect(title().textDirection, TextDirection.ltr);

      await tester.enterText(find.byKey(const ValueKey('note-body')), 'Hello مرحبا');
      await tester.pump();
      expect(body().textDirection, TextDirection.ltr);

      // Mixed lines in preview pick their own direction.
      await tester.enterText(find.byKey(const ValueKey('note-body')), 'مرحبا\nHello');
      await tester.pump();
      final l10n = AppLocalizations.of(tester.element(find.byType(NoteEditorScreen)));
      expect(find.text(l10n.noteWordCount(2)), findsOneWidget);
      await tester.tap(find.byIcon(Icons.visibility_outlined));
      await tester.pump();
      expect(Directionality.of(tester.element(find.text('Hello'))), TextDirection.ltr);
      expect(Directionality.of(tester.element(find.text('مرحبا'))), TextDirection.rtl);
      await waitAutosave(tester);
      expect((await db(tester, () => repo.byId(id)))!.body, 'مرحبا\nHello');
      await closeEnv(tester, env);
    });

    testWidgets('Chinese word count counts characters', (tester) async {
      final env = TestEnv();
      final repo = repoOf(env);
      final id = await db(tester, () => repo.create(title: '会议', body: '今天开会'));
      await pumpScreen(
        tester,
        NoteEditorScreen(noteId: id),
        localeTag: 'zh-CN',
        env: env,
      );
      await settle(tester);
      final l10n = AppLocalizations.of(tester.element(find.byType(NoteEditorScreen)));
      expect(find.text(l10n.noteWordCount(4)), findsOneWidget);
      expect(tester.takeException(), isNull);
      await closeEnv(tester, env);
    });

    testWidgets('missing note shows not found', (tester) async {
      final env = TestEnv();
      await pumpScreen(tester, const NoteEditorScreen(noteId: 'nope'), env: env);
      await settle(tester);
      expect(find.text('This note no longer exists.'), findsOneWidget);
      await closeEnv(tester, env);
    });

    testWidgets('linked tasks and backlinks render from stored data', (tester) async {
      final env = TestEnv();
      final repo = repoOf(env);
      late String id;
      await db(tester, () async {
        id = await repo.create(title: 'Alpha', body: 'core');
        await repo.create(title: 'Beta', body: 'see [[Alpha]]');
        final now = env.clock.nowUtc();
        await env.db
            .into(env.db.tasks)
            .insert(
              TasksCompanion.insert(id: 't1', title: 'Write spec', createdAt: now, updatedAt: now),
            );
        await repo.linkTask(id, 't1');
      });
      await pumpScreen(tester, NoteEditorScreen(noteId: id), env: env);
      await settle(tester);
      await tester.scrollUntilVisible(
        find.text('Tags, links and tasks'),
        100,
        scrollable: find
            .ancestor(
              of: find.byKey(const Key('noteConnections')),
              matching: find.byType(Scrollable),
            )
            .first,
      );
      await tester.tap(find.text('Tags, links and tasks'));
      await settle(tester);
      final linkedTasksScroll = find
          .ancestor(of: find.text('Write spec'), matching: find.byType(Scrollable))
          .first;
      await tester.scrollUntilVisible(find.text('Write spec'), 200, scrollable: linkedTasksScroll);
      expect(find.text('Beta'), findsOneWidget);
      await tester.ensureVisible(find.byTooltip('Unlink'));
      await settle(tester);
      await tester.tap(find.byTooltip('Unlink'));
      await settle(tester);
      expect(find.text('Write spec'), findsNothing);
      expect(find.text('No tasks linked to this note.'), findsOneWidget);
      await closeEnv(tester, env);
    });
  });
}
