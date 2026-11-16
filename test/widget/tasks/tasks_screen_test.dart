import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/tasks/data/tasks_repository.dart';
import 'package:future_os/features/tasks/presentation/tasks_screen.dart';
import 'package:future_os/features/tasks/presentation/widgets/task_tile.dart';
import 'package:future_os/l10n/gen/app_localizations.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';
import '../widget_helpers.dart';

AppLocalizations _l10n(WidgetTester t) => AppLocalizations.of(t.element(find.byType(TasksScreen)));

void main() {
  for (final tag in ['en', 'ar']) {
    testWidgets('quick add stores a task due today and completing it persists ($tag)', (
      tester,
    ) async {
      final env = TestEnv();
      await pumpScreen(tester, const TasksScreen(), localeTag: tag, env: env);
      await settle(tester);
      expect(
        Directionality.of(tester.element(find.byType(TasksScreen))),
        tag == 'ar' ? TextDirection.rtl : TextDirection.ltr,
      );

      await tester.enterText(find.byType(TextField).first, 'Write report');
      await tester.testTextInput.receiveAction(TextInputAction.done);
      await settle(tester);

      final rows = (await tester.runAsync(() => env.db.select(env.db.tasks).get()))!;
      expect(rows, hasLength(1));
      expect(rows.single.title, 'Write report');
      expect(rows.single.dueAt, isNotNull);
      expect(rows.single.dueAt!.toLocal().day, 16);
      expect(find.text('Write report'), findsOneWidget);

      await tester.tap(find.byType(CompletionOrb));
      await settle(tester);
      final after = (await tester.runAsync(() => env.db.select(env.db.tasks).get()))!;
      expect(after.single.done, isTrue);
      expect(after.single.completedAt, isNotNull);
      await env.dispose();
    });
  }

  testWidgets('overdue task is listed in the overdue section', (tester) async {
    final env = TestEnv();
    final repo = TasksRepository(env.db, env.clock);
    await tester.runAsync(
      () => repo.create(TaskDraft(title: 'Pay invoice', dueAt: DateTime(2026, 11, 10))),
    );
    await pumpScreen(tester, const TasksScreen(), env: env);
    await settle(tester);
    expect(find.text('Pay invoice'), findsOneWidget);
    expect(find.text(_l10n(tester).tasksSectionOverdue), findsWidgets);
    await env.dispose();
  });
}
