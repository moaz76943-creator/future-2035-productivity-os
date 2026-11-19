import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/tasks/data/tasks_repository.dart';
import 'package:future_os/features/tasks/presentation/task_editor_screen.dart';
import 'package:future_os/features/tasks/presentation/tasks_screen.dart';
import 'package:future_os/features/tasks/presentation/widgets/task_tile.dart';
import 'package:future_os/l10n/gen/app_localizations.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';
import '../widget_helpers.dart';

AppLocalizations _l10n(WidgetTester t) => AppLocalizations.of(t.element(find.byType(TasksScreen)));

Future<void> _openTab(WidgetTester tester, String label) async {
  final chip = find.widgetWithText(ChoiceChip, label);
  if (chip.evaluate().isEmpty) {
    // Less common views sit behind the "more" chip.
    final more = find.byKey(const Key('tasksMoreViews'));
    await tester.scrollUntilVisible(
      more,
      120,
      scrollable: find.descendant(
        of: find.byKey(const Key('tasksTabs')),
        matching: find.byType(Scrollable),
      ),
    );
    await tester.ensureVisible(more);
    await tester.pumpAndSettle();
    await tester.tap(more);
    await tester.pumpAndSettle();
    await tester.tap(find.text(label).last);
  } else {
    await tester.tap(chip);
  }
  await settle(tester);
}

void main() {
  for (final tag in ['en', 'ar']) {
    testWidgets('inbox shows loose tasks with status; archive is its own tab ($tag)', (
      tester,
    ) async {
      final env = TestEnv();
      final repo = TasksRepository(env.db, env.clock);
      await tester.runAsync(() async {
        final loose = await repo.create(const TaskDraft(title: 'Sort photos'));
        await repo.setInProgress(loose, true);
        await repo.create(TaskDraft(title: 'Dated', dueAt: DateTime(2026, 11, 20)));
        final old = await repo.create(const TaskDraft(title: 'Old idea'));
        await repo.archive(old);
      });
      await pumpScreen(tester, const TasksScreen(), localeTag: tag, env: env);
      await settle(tester);
      final l10n = _l10n(tester);

      await _openTab(tester, l10n.tasksViewInbox);
      expect(find.text('Sort photos'), findsOneWidget);
      expect(find.text('Dated'), findsNothing);
      expect(find.text('Old idea'), findsNothing);
      expect(
        find.descendant(of: find.byType(TaskTile), matching: find.text(l10n.taskStatusInProgress)),
        findsOneWidget,
      );

      await _openTab(tester, l10n.tasksViewArchived);
      expect(find.text('Old idea'), findsOneWidget);
      expect(find.text('Sort photos'), findsNothing);
      expect(
        find.descendant(of: find.byType(TaskTile), matching: find.text(l10n.taskArchivedBadge)),
        findsOneWidget,
      );
      // Nothing is created straight into the archive.
      expect(find.text(l10n.tasksQuickAddHint), findsNothing);
      await env.dispose();
    });
  }

  testWidgets('editor toggles in-progress and archives the task', (tester) async {
    final env = TestEnv();
    final repo = TasksRepository(env.db, env.clock);
    final id = (await tester.runAsync(() => repo.create(const TaskDraft(title: 'Draft plan'))))!;
    await pumpScreen(tester, TaskEditorScreen(taskId: id), env: env, withRouter: true);
    await settle(tester);

    await tester.tap(find.byKey(const Key('taskInProgressSwitch')));
    await settle(tester);
    expect((await tester.runAsync(() => repo.byId(id)))!.status, TaskStatus.inProgress);

    await tester.tap(find.byKey(const Key('taskArchiveButton')));
    await settle(tester);
    expect((await tester.runAsync(() => repo.byId(id)))!.archivedAt, isNotNull);
    // Leaves the editor for the task list.
    expect(find.textContaining('route:/tasks'), findsOneWidget);
    await closeEnv(tester, env);
  });
}
