import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/projects/data/milestones_repository.dart';
import 'package:future_os/features/projects/data/projects_repository.dart';
import 'package:future_os/features/tasks/data/tasks_repository.dart';

import '../../helpers.dart';

void main() {
  late TestEnv env;
  late ProjectsRepository projects;
  late MilestonesRepository milestones;
  late String project;

  setUp(() async {
    env = TestEnv();
    projects = ProjectsRepository(env.db, env.clock);
    milestones = MilestonesRepository(env.db, env.clock);
    project = await projects.create(const ProjectDraft(name: 'Thesis', color: 1));
  });
  tearDown(() => env.dispose());

  test('progress counts tasks and milestones, ignoring trashed items', () async {
    final tasks = TasksRepository(env.db, env.clock);
    final t1 = await tasks.create(TaskDraft(title: 'Write', projectId: project));
    await tasks.create(TaskDraft(title: 'Edit', projectId: project));
    final m1 = await milestones.add(project, 'Draft done', dueAt: DateTime(2026, 12, 1));
    final m2 = await milestones.add(project, 'Submit');
    expect((await projects.watchProgress(project).first).total, 4);

    await tasks.complete(t1);
    await milestones.setDone(m1, true);
    var p = await projects.watchProgress(project).first;
    expect((p.done, p.total), (2, 4));

    await milestones.softDelete(m2);
    p = await projects.watchProgress(project).first;
    expect((p.done, p.total), (2, 3), reason: 'trashed milestones do not count');
  });

  test('completing twice keeps the first completion time; reopening clears it', () async {
    final id = await milestones.add(project, 'Draft');
    await milestones.setDone(id, true);
    final first = (await milestones.watchForProject(project).first).single.doneAt;
    env.clock.advance(const Duration(hours: 3));
    await milestones.setDone(id, true);
    expect((await milestones.watchForProject(project).first).single.doneAt, first);
    await milestones.setDone(id, false);
    expect((await milestones.watchForProject(project).first).single.doneAt, isNull);
  });

  test('validation and ordering: open before done, dated before undated', () async {
    expect(() => milestones.add(project, '   '), throwsArgumentError);
    final undated = await milestones.add(project, 'Someday');
    final later = await milestones.add(project, 'Later', dueAt: DateTime(2027, 1, 10));
    final sooner = await milestones.add(project, 'Sooner', dueAt: DateTime(2026, 12, 1));
    final done = await milestones.add(project, 'Done one', dueAt: DateTime(2026, 11, 1));
    await milestones.setDone(done, true);
    final order = (await milestones.watchForProject(project).first).map((m) => m.id).toList();
    expect(order, [sooner, later, undated, done]);
  });

  test('calendar range returns dated milestones of live projects only', () async {
    await milestones.add(project, 'In range', dueAt: DateTime(2026, 11, 20, 23, 59));
    await milestones.add(project, 'Out of range', dueAt: DateTime(2027, 2, 1));
    await milestones.add(project, 'Undated');
    final other = await projects.create(const ProjectDraft(name: 'Gone', color: 2));
    await milestones.add(other, 'Of trashed project', dueAt: DateTime(2026, 11, 21));
    await projects.softDelete(other);
    final due = await milestones
        .watchDueBetween(DateTime(2026, 11, 16), DateTime(2026, 12, 16))
        .first;
    expect(due.map((e) => e.$1.title), ['In range']);
    expect(due.single.$2.name, 'Thesis');
  });
}
