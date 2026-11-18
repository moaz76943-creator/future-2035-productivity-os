import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/calendar/presentation/calendar_screen.dart';
import 'package:future_os/features/projects/data/milestones_repository.dart';
import 'package:future_os/features/projects/data/projects_repository.dart';
import 'package:future_os/features/projects/presentation/project_detail_screen.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';
import '../widget_helpers.dart';

void main() {
  testWidgets('add a milestone, complete it, progress and calendar reflect it', (tester) async {
    final env = TestEnv();
    final pid = (await tester.runAsync(
      () => ProjectsRepository(
        env.db,
        env.clock,
      ).create(const ProjectDraft(name: 'Thesis', color: 0xFF6C4CFF)),
    ))!;
    await pumpScreen(tester, ProjectDetailScreen(projectId: pid), env: env);
    await settle(tester);
    await scrollPageTo(tester, find.text('Add milestone'));
    await tester.tap(find.text('Add milestone'));
    await settle(tester);
    // Empty title is refused with a message; the dialog stays open.
    await tester.tap(find.byKey(const Key('milestoneSaveButton')));
    await settle(tester);
    expect(find.byKey(const Key('milestoneTitleField')), findsOneWidget);
    await tester.enterText(find.byKey(const Key('milestoneTitleField')), 'Draft chapter');
    await tester.tap(find.byKey(const Key('milestoneSaveButton')));
    await settle(tester);
    await tester.runAsync(() => Future<void>.delayed(const Duration(milliseconds: 200)));
    await settle(tester);
    expect(find.text('Draft chapter'), findsOneWidget);
    final rows = (await tester.runAsync(() => env.db.select(env.db.milestones).get()))!;
    expect(rows.single.title, 'Draft chapter');

    await tester.tap(find.bySemanticsLabel('Mark milestone "Draft chapter" as done'));
    await settle(tester);
    await tester.runAsync(() => Future<void>.delayed(const Duration(milliseconds: 200)));
    await settle(tester);
    final p = (await tester.runAsync(
      () => ProjectsRepository(env.db, env.clock).watchProgress(pid).first,
    ))!;
    expect((p.done, p.total), (1, 1));

    // A dated milestone shows on the calendar day as a milestone, not an event.
    await tester.runAsync(
      () => MilestonesRepository(
        env.db,
        env.clock,
      ).add(pid, 'Submit', dueAt: DateTime(2026, 11, 16, 23, 59)),
    );
    await pumpScreen(tester, const CalendarScreen(), env: env);
    await settle(tester);
    await tester.runAsync(() => Future<void>.delayed(const Duration(milliseconds: 200)));
    await settle(tester);
    await scrollPageTo(tester, find.text('Submit'));
    expect(find.text('Milestone · Thesis'), findsOneWidget);
    await closeEnv(tester, env);
  });
}
