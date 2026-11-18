import 'package:drift/drift.dart';

import '../../../core/database/app_database.dart';
import '../../../core/ids.dart';
import '../../../core/time/clock.dart';

class ProjectProgress {
  const ProjectProgress({required this.total, required this.done});
  final int total;
  final int done;
  double get ratio => total == 0 ? 0 : done / total;
}

class ProjectDraft {
  const ProjectDraft({
    required this.name,
    required this.color,
    this.description = '',
    this.icon = 'spark',
    this.goal = '',
    this.deadline,
    this.notes = '',
  });
  final String name;
  final int color;
  final String description;
  final String icon;
  final String goal;
  final DateTime? deadline;
  final String notes;
}

/// Owns the `projects` table.
class ProjectsRepository {
  ProjectsRepository(this._db, this._clock);
  final AppDatabase _db;
  final Clock _clock;

  Future<String> create(ProjectDraft d) async {
    if (d.name.trim().isEmpty) throw ArgumentError('name');
    final now = _clock.nowUtc();
    final id = newId();
    await _db
        .into(_db.projects)
        .insert(
          ProjectsCompanion.insert(
            id: id,
            name: d.name.trim(),
            color: d.color,
            description: Value(d.description),
            icon: Value(d.icon),
            goal: Value(d.goal),
            deadline: Value(d.deadline?.toUtc()),
            notes: Value(d.notes),
            createdAt: now,
            updatedAt: now,
          ),
        );
    return id;
  }

  Future<void> update(String id, ProjectDraft d) async {
    if (d.name.trim().isEmpty) throw ArgumentError('name');
    await (_db.update(_db.projects)..where((p) => p.id.equals(id))).write(
      ProjectsCompanion(
        name: Value(d.name.trim()),
        color: Value(d.color),
        description: Value(d.description),
        icon: Value(d.icon),
        goal: Value(d.goal),
        deadline: Value(d.deadline?.toUtc()),
        notes: Value(d.notes),
        updatedAt: Value(_clock.nowUtc()),
      ),
    );
  }

  Future<void> setArchived(String id, bool archived) =>
      (_db.update(_db.projects)..where((p) => p.id.equals(id))).write(
        ProjectsCompanion(archived: Value(archived), updatedAt: Value(_clock.nowUtc())),
      );

  Future<void> softDelete(String id) => (_db.update(
    _db.projects,
  )..where((p) => p.id.equals(id))).write(ProjectsCompanion(deletedAt: Value(_clock.nowUtc())));

  Future<void> restore(String id) => (_db.update(
    _db.projects,
  )..where((p) => p.id.equals(id))).write(const ProjectsCompanion(deletedAt: Value(null)));

  Stream<List<ProjectRow>> watchAll({bool archived = false}) =>
      (_db.select(_db.projects)
            ..where((p) => p.deletedAt.isNull() & p.archived.equals(archived))
            ..orderBy([(p) => OrderingTerm.asc(p.name)]))
          .watch();

  Stream<ProjectRow?> watchById(String id) =>
      (_db.select(_db.projects)..where((p) => p.id.equals(id))).watchSingleOrNull();

  /// Progress = completed items / all items, where items are the project's
  /// tasks (subtasks included) and milestones. Deleted (trashed) tasks and
  /// milestones do not count. A project with no items reports 0 of 0.
  Stream<ProjectProgress> watchProgress(String id) {
    return _db
        .customSelect(
          'SELECT '
          '(SELECT COUNT(*) FROM tasks WHERE project_id = ?1 AND deleted_at IS NULL) + '
          '(SELECT COUNT(*) FROM milestones WHERE project_id = ?1 AND deleted_at IS NULL) AS total, '
          '(SELECT COUNT(*) FROM tasks WHERE project_id = ?1 AND deleted_at IS NULL AND done = 1) + '
          '(SELECT COUNT(*) FROM milestones WHERE project_id = ?1 AND deleted_at IS NULL AND done = 1) AS done',
          variables: [Variable.withString(id)],
          readsFrom: {_db.tasks, _db.milestones},
        )
        .watchSingle()
        .map((r) => ProjectProgress(total: r.read<int>('total'), done: r.read<int>('done')));
  }


  Stream<int> watchFocusSeconds(String id) {
    final sum = _db.focusSessions.activeSeconds.sum();
    final q = _db.selectOnly(_db.focusSessions)
      ..addColumns([sum])
      ..where(_db.focusSessions.projectId.equals(id) & _db.focusSessions.phase.equals('work'));
    return q.watchSingle().map((r) => r.read(sum) ?? 0);
  }
}
