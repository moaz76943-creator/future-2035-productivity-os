import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/notes/data/notes_repository.dart';
import 'package:future_os/features/tasks/data/tasks_repository.dart';
import 'package:future_os/features/trash/presentation/trash_screen.dart';
import 'package:future_os/l10n/gen/app_localizations.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';
import '../widget_helpers.dart';

Future<(String, String, String)> _seed(TestEnv env) async {
  final tasks = TasksRepository(env.db, env.clock);
  final notes = NotesRepository(env.db, env.clock);
  final parent = await tasks.create(const TaskDraft(title: 'Old plan'));
  await tasks.create(TaskDraft(title: 'Old step', parentId: parent));
  await tasks.softDelete(parent);
  final note = await notes.create(title: 'Draft idea', body: 'x');
  await notes.softDelete(note);
  final untitled = await notes.create(body: 'no title');
  await notes.softDelete(untitled);
  return (parent, note, untitled);
}

void main() {
  for (final tag in ['en', 'ar']) {
    testWidgets('empty state ($tag)', (tester) async {
      final l10n = lookupAppLocalizations(Locale(tag));
      final env = await pumpScreen(tester, const TrashScreen(), localeTag: tag);
      await settle(tester);
      expect(find.text(l10n.trashEmpty), findsOneWidget);
      expect(
        Directionality.of(tester.element(find.byType(TrashScreen))),
        tag == 'ar' ? TextDirection.rtl : TextDirection.ltr,
      );
      await env.dispose();
    });

    testWidgets('lists, restores and purges items ($tag)', (tester) async {
      final l10n = lookupAppLocalizations(Locale(tag));
      final env = TestEnv();
      final (parent, note, _) = await _seed(env);
      await pumpScreen(tester, const TrashScreen(), localeTag: tag, env: env);
      await settle(tester);

      expect(find.text('Old plan'), findsOneWidget);
      expect(find.text('Old step'), findsNothing); // goes with its parent
      expect(find.text('Draft idea'), findsOneWidget);
      expect(find.text(l10n.untitled), findsOneWidget);
      expect(find.text(l10n.trashCount(3)), findsOneWidget);

      // Restore the task (and its subtask).
      await tester.tap(
        find.descendant(
          of: find.byKey(ValueKey('trash-task-$parent')),
          matching: find.byTooltip(l10n.actionRestore),
        ),
      );
      await settle(tester);
      final live = await (env.db.select(env.db.tasks)).get();
      expect(live.every((t) => t.deletedAt == null), isTrue);
      expect(find.text('Old plan'), findsNothing);

      // Delete a note forever, with confirmation.
      await tester.tap(
        find.descendant(
          of: find.byKey(ValueKey('trash-note-$note')),
          matching: find.byTooltip(l10n.actionDeleteForever),
        ),
      );
      await settle(tester);
      expect(find.text(l10n.trashDeleteNoteTitle), findsOneWidget);
      await tester.tap(find.widgetWithText(FilledButton, l10n.actionDeleteForever));
      await settle(tester);
      expect(await NotesRepository(env.db, env.clock).byId(note), isNull);
      await env.dispose();
    });
  }

  testWidgets('empty trash removes every trashed task, subtask and note', (tester) async {
    final l10n = lookupAppLocalizations(const Locale('en'));
    final env = TestEnv();
    await _seed(env);
    final keep = await TasksRepository(env.db, env.clock).create(const TaskDraft(title: 'Keep'));
    await pumpScreen(tester, const TrashScreen(), env: env);
    await settle(tester);
    await tester.tap(find.byKey(const ValueKey('trash-empty-all')));
    await settle(tester);
    expect(find.text(l10n.trashEmptyBody(3)), findsOneWidget);
    await tester.tap(find.widgetWithText(FilledButton, l10n.actionEmptyTrash));
    await settle(tester);
    final tasks = await env.db.select(env.db.tasks).get();
    expect(tasks.map((t) => t.id), [keep]);
    expect(await env.db.select(env.db.notes).get(), isEmpty);
    expect(find.text(l10n.trashEmpty), findsOneWidget);
    await env.dispose();
  });

  testWidgets('cancelling permanent deletion keeps the task', (tester) async {
    final l10n = lookupAppLocalizations(const Locale('en'));
    final env = TestEnv();
    final (parent, _, _) = await _seed(env);
    await pumpScreen(tester, const TrashScreen(), env: env);
    await settle(tester);
    await tester.tap(
      find.descendant(
        of: find.byKey(ValueKey('trash-task-$parent')),
        matching: find.byTooltip(l10n.actionDeleteForever),
      ),
    );
    await settle(tester);
    await tester.tap(find.text(l10n.actionCancel));
    await settle(tester);
    expect(await TasksRepository(env.db, env.clock).byId(parent), isNotNull);
    await env.dispose();
  });
}
