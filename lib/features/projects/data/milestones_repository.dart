import 'package:drift/drift.dart';

import '../../../core/database/app_database.dart';
import '../../../core/ids.dart';
import '../../../core/time/clock.dart';

/// Owns the `milestones` table (schema v3).
class MilestonesRepository {
  MilestonesRepository(this._db, this._clock);
  final AppDatabase _db;
  final Clock _clock;

  static const maxTitle = 200;

  Future<String> add(String projectId, String title, {DateTime? dueAt}) async {
    final t = title.trim();
    if (t.isEmpty || t.length > maxTitle) throw ArgumentError('title');
    final id = newId();
    final now = _clock.nowUtc();
    await _db
        .into(_db.milestones)
        .insert(
          MilestonesCompanion.insert(
            id: id,
            projectId: projectId,
            title: t,
            dueAt: Value(dueAt?.toUtc()),
            createdAt: now,
            updatedAt: now,
          ),
        );
    return id;
  }

  Future<void> update(String id, {required String title, DateTime? dueAt}) {
    final t = title.trim();
    if (t.isEmpty || t.length > maxTitle) throw ArgumentError('title');
    return (_db.update(_db.milestones)..where((m) => m.id.equals(id))).write(
      MilestonesCompanion(
        title: Value(t),
        dueAt: Value(dueAt?.toUtc()),
        updatedAt: Value(_clock.nowUtc()),
      ),
    );
  }

  /// Idempotent: completing an already completed milestone keeps its doneAt.
  Future<void> setDone(String id, bool done) async {
    final now = _clock.nowUtc();
    await (_db.update(_db.milestones)..where((m) => m.id.equals(id) & m.done.equals(!done))).write(
      MilestonesCompanion(
        done: Value(done),
        doneAt: Value(done ? now : null),
        updatedAt: Value(now),
      ),
    );
  }

  Future<void> softDelete(String id) => (_db.update(
    _db.milestones,
  )..where((m) => m.id.equals(id))).write(MilestonesCompanion(deletedAt: Value(_clock.nowUtc())));

  Future<void> restore(String id) => (_db.update(
    _db.milestones,
  )..where((m) => m.id.equals(id))).write(const MilestonesCompanion(deletedAt: Value(null)));

  /// Open first, then by due date (undated last), then by creation.
  Stream<List<MilestoneRow>> watchForProject(String projectId) =>
      (_db.select(_db.milestones)
            ..where((m) => m.projectId.equals(projectId) & m.deletedAt.isNull())
            ..orderBy([
              (m) => OrderingTerm.asc(m.done),
              (m) => OrderingTerm(expression: m.dueAt, nulls: NullsOrder.last),
              (m) => OrderingTerm.asc(m.createdAt),
            ]))
          .watch();

  /// Dated milestones of live (not deleted) projects due in [from, to), for the calendar.
  Stream<List<(MilestoneRow, ProjectRow)>> watchDueBetween(DateTime from, DateTime to) {
    final q =
        _db.select(_db.milestones).join([
            innerJoin(_db.projects, _db.projects.id.equalsExp(_db.milestones.projectId)),
          ])
          ..where(
            _db.milestones.deletedAt.isNull() &
                _db.projects.deletedAt.isNull() &
                _db.milestones.dueAt.isBiggerOrEqualValue(from.toUtc()) &
                _db.milestones.dueAt.isSmallerThanValue(to.toUtc()),
          )
          ..orderBy([OrderingTerm.asc(_db.milestones.dueAt)]);
    return q.watch().map(
      (rows) => [for (final r in rows) (r.readTable(_db.milestones), r.readTable(_db.projects))],
    );
  }
}
