import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/projects/data/projects_repository.dart';
import 'package:future_os/features/projects/presentation/project_detail_screen.dart';
import 'package:future_os/features/projects/presentation/projects_screen.dart';
import 'package:future_os/features/tasks/data/tasks_repository.dart';
import 'package:future_os/l10n/gen/app_localizations.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';
import '../widget_helpers.dart';

void main() {
  for (final tag in ['en', 'ar']) {
    testWidgets('empty state then create project via sheet ($tag)', (tester) async {
      final env = TestEnv();
      await pumpScreen(tester, const ProjectsScreen(), localeTag: tag, env: env, withRouter: true);
      await settle(tester);
      final l10n = AppLocalizations.of(tester.element(find.byType(ProjectsScreen)));
      expect(find.text(l10n.projectsEmptyTitle), findsOneWidget);

      await tester.tap(find.byType(FloatingActionButton));
      await settle(tester);
      await tester.tap(find.text(l10n.actionSave));
      await settle(tester);
      expect(find.text(l10n.validationNameRequired), findsOneWidget);

      await tester.enterText(find.byType(TextField).first, 'Launch');
      await tester.tap(find.text(l10n.actionSave));
      await settle(tester);
      final rows = (await tester.runAsync(() => env.db.select(env.db.projects).get()))!;
      expect(rows.single.name, 'Launch');
      expect(find.text('route:/projects/${rows.single.id}'), findsOneWidget);
      await env.dispose();
    });
  }

  testWidgets('progress is derived from stored tasks', (tester) async {
    final env = TestEnv();
    late String pid;
    await tester.runAsync(() async {
      pid = await ProjectsRepository(
        env.db,
        env.clock,
      ).create(const ProjectDraft(name: 'Thesis', color: 0xFF6C4CFF));
      final tasks = TasksRepository(env.db, env.clock);
      final a = await tasks.create(TaskDraft(title: 'Outline', projectId: pid));
      await tasks.create(TaskDraft(title: 'Draft', projectId: pid));
      await tasks.complete(a);
    });
    await pumpScreen(tester, const ProjectsScreen(), env: env);
    await settle(tester);
    final l10n = AppLocalizations.of(tester.element(find.byType(ProjectsScreen)));
    expect(find.text('Thesis'), findsOneWidget);
    expect(find.text(l10n.projectTasksDone(1, 2)), findsOneWidget);
    expect(find.text('50%'), findsOneWidget);

    await pumpScreen(tester, ProjectDetailScreen(projectId: pid), env: env);
    await settle(tester);
    expect(find.text('Draft'), findsOneWidget);
    expect(find.text('Outline'), findsOneWidget);
    expect(find.text(l10n.projectTasksCompleted), findsOneWidget);
    await env.dispose();
  });
}
