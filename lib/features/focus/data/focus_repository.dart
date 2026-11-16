import 'package:drift/drift.dart';

import '../../../core/database/app_database.dart';
import '../domain/focus_engine.dart';
import '../domain/focus_timer_state.dart';

/// Owns the `focus_sessions` table and the persisted active timer state.
class FocusRepository {
  FocusRepository(this._db);
  final AppDatabase _db;

  static const activeKey = 'focus.active';

  Future<FocusTimerState?> loadActive() async =>
      FocusTimerState.tryDecode(await _db.readValue(activeKey));

  Future<void> saveActive(FocusTimerState s) =>
      _db.writeValue(activeKey, s.encode());

  Future<void> clearActive() => _db.deleteValue(activeKey);

  /// Records a finished session and clears the active state atomically.
  /// Uses the session id as primary key with `insertOrIgnore`, so a session
  /// can never be recorded twice even if finish is triggered from both the
  /// UI and restore logic.
  Future<bool> recordFinished(FinishedSession f, {String note = ''}) {
    return _db.transaction(() async {
      final existing = await (_db.select(
        _db.focusSessions,
      )..where((s) => s.id.equals(f.id))).getSingleOrNull();
      if (existing != null) {
        await _db.deleteValue(activeKey);
        return false;
      }
      await _db
          .into(_db.focusSessions)
          .insert(
            FocusSessionsCompanion.insert(
              id: f.id,
              mode: f.mode.name,
              phase: Value(f.phase.name),
              plannedSeconds: Value(f.plannedSeconds),
              activeSeconds: f.activeSeconds,
              startedAt: f.startedAtUtc,
              endedAt: f.endedAtUtc,
              outcome: f.outcome.name,
              taskId: Value(f.taskId),
              projectId: Value(f.projectId),
              note: Value(note),
            ),
          );
      await _db.deleteValue(activeKey);
      return true;
    });
  }

  Future<void> updateNote(String sessionId, String note) =>
      (_db.update(_db.focusSessions)..where((s) => s.id.equals(sessionId)))
          .write(FocusSessionsCompanion(note: Value(note)));

  Future<void> deleteSession(String id) =>
      (_db.delete(_db.focusSessions)..where((s) => s.id.equals(id))).go();

  Stream<List<FocusSessionRow>> watchHistory({int limit = 50}) =>
      (_db.select(_db.focusSessions)
            ..orderBy([(s) => OrderingTerm.desc(s.startedAt)])
            ..limit(limit))
          .watch();

  Stream<List<FocusSessionRow>> watchBetween(DateTime from, DateTime to) =>
      (_db.select(_db.focusSessions)
            ..where(
              (s) =>
                  s.startedAt.isBiggerOrEqualValue(from.toUtc()) &
                  s.startedAt.isSmallerThanValue(to.toUtc()),
            )
            ..orderBy([(s) => OrderingTerm.asc(s.startedAt)]))
          .watch();

  /// Measured work seconds whose start falls within [from, to).
  Stream<int> watchWorkSeconds(DateTime from, DateTime to) {
    final sum = _db.focusSessions.activeSeconds.sum();
    final q = _db.selectOnly(_db.focusSessions)
      ..addColumns([sum])
      ..where(
        _db.focusSessions.phase.equals('work') &
            _db.focusSessions.startedAt.isBiggerOrEqualValue(from.toUtc()) &
            _db.focusSessions.startedAt.isSmallerThanValue(to.toUtc()),
      );
    return q.watchSingle().map((r) => r.read(sum) ?? 0);
  }
}
