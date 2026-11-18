import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/projects/data/projects_repository.dart';
import 'package:future_os/features/tasks/data/tasks_repository.dart';

import '../../helpers.dart';

void main() {
  late TestEnv env;
  late TasksRepository repo;
  setUp(() {
    env = TestEnv();
    repo = TasksRepository(env.db, env.clock);
  });
  tearDown(() => env.dispose());

  test('validation rejects empty title and inverted dates', () async {
    expect(
      () => repo.create(const TaskDraft(title: '  ')),
      throwsA(isA<TaskValidationException>()),
    );
    expect(
      () => repo.create(
        TaskDraft(title: 'x', startAt: DateTime(2026, 11, 20), dueAt: DateTime(2026, 11, 18)),
      ),
      throwsA(isA<TaskValidationException>()),
    );
    expect(
      () => repo.create(const TaskDraft(title: 'x', recurrence: 'nope')),
      throwsA(isA<TaskValidationException>()),
    );
  });

  test('views: today, upcoming, overdue, completed', () async {
    await repo.create(TaskDraft(title: 'today', dueAt: DateTime(2026, 11, 16, 18)));
    await repo.create(TaskDraft(title: 'late', dueAt: DateTime(2026, 11, 14)));
    await repo.create(TaskDraft(title: 'later', dueAt: DateTime(2026, 11, 20)));
    final doneId = await repo.create(const TaskDraft(title: 'done'));
    await repo.complete(doneId);

    Future<List<String>> titles(TaskView v) async =>
        (await repo.watch(TaskFilter(view: v)).first).map((t) => t.title).toList();

    expect(await titles(TaskView.today), ['late', 'today']);
    expect(await titles(TaskView.overdue), ['late']);
    expect(await titles(TaskView.upcoming), ['later']);
    expect(await titles(TaskView.completed), ['done']);
    expect((await titles(TaskView.all)).length, 3);
  });

  test('completing a recurring task creates exactly one successor', () async {
    final id = await repo.create(
      TaskDraft(
        title: 'water plants',
        dueAt: DateTime(2026, 11, 16, 9),
        dueHasTime: true,
        recurrence: 'FREQ=WEEKLY;COUNT=3',
      ),
    );
    await repo.addChecklistItem(id, 'kitchen');
    final next = await repo.complete(id);
    final again = await repo.complete(id); // double tap
    expect(next, isNotNull);
    expect(again, isNull);
    final open = await repo.watch(const TaskFilter()).first;
    expect(open, hasLength(1));
    expect(open.single.dueAt!.toLocal(), DateTime(2026, 11, 23, 9));
    expect(open.single.recurrence, 'FREQ=WEEKLY;COUNT=2');
    expect(await repo.watchChecklist(open.single.id).first, hasLength(1));
  });

  test('last occurrence of a COUNT series does not recur', () async {
    final id = await repo.create(
      TaskDraft(title: 'x', dueAt: DateTime(2026, 11, 16), recurrence: 'FREQ=DAILY;COUNT=1'),
    );
    expect(await repo.complete(id), isNull);
  });

  test('reopen, soft delete and restore', () async {
    final id = await repo.create(const TaskDraft(title: 'a'));
    final sub = await repo.create(TaskDraft(title: 'sub', parentId: id));
    await repo.complete(id);
    await repo.reopen(id);
    expect((await repo.byId(id))!.done, isFalse);
    await repo.softDelete(id);
    expect(await repo.watch(const TaskFilter()).first, isEmpty);
    expect((await repo.byId(sub))!.deletedAt, isNotNull);
    expect(await repo.watchTrash().first, hasLength(2));
    await repo.restore(id);
    expect(await repo.watch(const TaskFilter()).first, hasLength(1));
    expect(await repo.watchSubtasks(id).first, hasLength(1));
  });

  test('project filter, priority filter and sort', () async {
    final p = await ProjectsRepository(
      env.db,
      env.clock,
    ).create(const ProjectDraft(name: 'Launch', color: 0xFF6C4CFF));
    await repo.create(TaskDraft(title: 'b', projectId: p, priority: 1));
    await repo.create(TaskDraft(title: 'a', projectId: p, priority: 4));
    await repo.create(const TaskDraft(title: 'c', priority: 3));
    final inProject = await repo.watch(TaskFilter(projectId: p, sort: TaskSort.priority)).first;
    expect(inProject.map((t) => t.title), ['a', 'b']);
    final high = await repo.watch(const TaskFilter(minPriority: 3)).first;
    expect(high.map((t) => t.title).toSet(), {'a', 'c'});
    final progress = await ProjectsRepository(env.db, env.clock).watchProgress(p).first;
    expect(progress.total, 2);
  });

  test('dependencies reject cycles', () async {
    final a = await repo.create(const TaskDraft(title: 'a'));
    final b = await repo.create(const TaskDraft(title: 'b'));
    final c = await repo.create(const TaskDraft(title: 'c'));
    await repo.addDependency(a, b);
    await repo.addDependency(b, c);
    expect(() => repo.addDependency(c, a), throwsA(isA<TaskValidationException>()));
    expect(() => repo.addDependency(a, a), throwsA(isA<TaskValidationException>()));
    expect((await repo.watchBlockers(a).first).single.id, b);
  });

  test('labels', () async {
    final t = await repo.create(const TaskDraft(title: 't'));
    final l = await repo.ensureLabel('deep work', 0xFF00C2B8);
    expect(await repo.ensureLabel('deep work', 0), l);
    await repo.setLabel(t, l, true);
    expect((await repo.watchLabelsFor(t).first).single.name, 'deep work');
    expect(await repo.watch(TaskFilter(labelId: l)).first, hasLength(1));
    await repo.setLabel(t, l, false);
    expect(await repo.watchLabelsFor(t).first, isEmpty);
  });

  test('inbox, in-progress status and archive', () async {
    final inbox = await repo.create(const TaskDraft(title: 'loose'));
    final dated = await repo.create(TaskDraft(title: 'dated', dueAt: DateTime(2026, 11, 16, 18)));
    final pid = await ProjectsRepository(
      env.db,
      env.clock,
    ).create(const ProjectDraft(name: 'P', color: 0xFF6C4CFF));
    await repo.create(TaskDraft(title: 'filed', projectId: pid));
    final sub = await repo.create(TaskDraft(title: 'child', parentId: inbox));

    Future<List<String>> titles(TaskView v) async =>
        (await repo.watch(TaskFilter(view: v)).first).map((t) => t.title).toList();

    expect(await titles(TaskView.inbox), ['loose']);

    await repo.setInProgress(dated, true);
    expect((await repo.byId(dated))!.status, TaskStatus.inProgress);
    await repo.setInProgress(dated, false);
    expect((await repo.byId(dated))!.status, TaskStatus.notStarted);

    await repo.archive(inbox);
    await repo.archive(inbox); // idempotent: keeps the first archive moment
    expect(await titles(TaskView.inbox), isEmpty);
    expect(await titles(TaskView.all), isNot(contains('loose')));
    expect(await titles(TaskView.archived), ['loose']);
    expect((await repo.byId(sub))!.archivedAt, isNotNull);

    await repo.archive(dated);
    final day = DateTime(2026, 11, 16);
    expect(await repo.watchForDay(day).first, isEmpty);
    expect(await titles(TaskView.today), isEmpty);

    await repo.unarchive(inbox);
    expect(await titles(TaskView.inbox), ['loose']);
    expect((await repo.byId(sub))!.archivedAt, isNull);
  });
}
