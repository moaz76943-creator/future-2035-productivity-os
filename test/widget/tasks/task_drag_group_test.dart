import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/tasks/data/tasks_repository.dart';
import 'package:future_os/features/tasks/presentation/tasks_screen.dart';

import '../../helpers.dart';
import '../settings/settings_test_utils.dart' show containerOf;
import '../widget_helpers.dart';

void main() {
  testWidgets('long-press a task and drop it on another group to move it (ar)', (tester) async {
    final env = TestEnv();
    final repo = TasksRepository(env.db, env.clock);
    final urgent = (await tester.runAsync(
      () => repo.create(const TaskDraft(title: 'عاجلة جداً', priority: 4)),
    ))!;
    await tester.runAsync(() => repo.create(const TaskDraft(title: 'هادئة', priority: 1)));
    await pumpScreen(tester, const TasksScreen(), env: env, localeTag: 'ar');
    await settle(tester);
    containerOf(tester, TasksScreen).read(tasksTabProvider.notifier).set(TasksTab.byPriority);
    await settle(tester);

    final from = tester.getCenter(find.text('عاجلة جداً'));
    final to = tester.getCenter(find.text('هادئة'));
    final g = await tester.startGesture(from);
    await tester.pump(const Duration(seconds: 1));
    await g.moveTo(to);
    await tester.pump();
    await g.up();
    for (var i = 0; i < 3; i++) {
      await tester.runAsync(() => Future<void>.delayed(const Duration(milliseconds: 50)));
      await settle(tester);
    }
    final row = (await tester.runAsync(
      () => (env.db.select(env.db.tasks)..where((t) => t.id.equals(urgent))).getSingle(),
    ))!;
    expect(row.priority, 1, reason: 'dropped into the low-priority group');
    await closeEnv(tester, env);
  });
}
