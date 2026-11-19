part of '../tasks_repository.dart';

extension TaskRelations on TasksRepository {
  // ---- checklist -----------------------------------------------------------

  Stream<List<ChecklistItemRow>> watchChecklist(String taskId) =>
      (_db.select(_db.checklistItems)
            ..where((c) => c.taskId.equals(taskId))
            ..orderBy([(c) => OrderingTerm.asc(c.position)]))
          .watch();

  Future<void> addChecklistItem(String taskId, String label) async {
    if (label.trim().isEmpty) return;
    final maxPos =
        await (_db.selectOnly(_db.checklistItems)
              ..addColumns([_db.checklistItems.position.max()])
              ..where(_db.checklistItems.taskId.equals(taskId)))
            .map((r) => r.read(_db.checklistItems.position.max()))
            .getSingle();
    await _db
        .into(_db.checklistItems)
        .insert(
          ChecklistItemsCompanion.insert(
            id: newId(),
            taskId: taskId,
            label: label.trim(),
            position: Value((maxPos ?? -1) + 1),
          ),
        );
  }

  Future<void> toggleChecklistItem(String id, bool done) => (_db.update(
    _db.checklistItems,
  )..where((c) => c.id.equals(id))).write(ChecklistItemsCompanion(done: Value(done)));

  Future<void> deleteChecklistItem(String id) =>
      (_db.delete(_db.checklistItems)..where((c) => c.id.equals(id))).go();

  // ---- labels --------------------------------------------------------------

  Stream<List<LabelRow>> watchLabels() =>
      (_db.select(_db.labels)..orderBy([(l) => OrderingTerm.asc(l.name)])).watch();

  Future<String> ensureLabel(String name, int color) async {
    final existing = await (_db.select(
      _db.labels,
    )..where((l) => l.name.equals(name.trim()))).getSingleOrNull();
    if (existing != null) return existing.id;
    final id = newId();
    await _db
        .into(_db.labels)
        .insert(LabelsCompanion.insert(id: id, name: name.trim(), color: color));
    return id;
  }

  Stream<List<LabelRow>> watchLabelsFor(String taskId) {
    final q = _db.select(_db.labels).join([
      innerJoin(_db.taskLabels, _db.taskLabels.labelId.equalsExp(_db.labels.id)),
    ])..where(_db.taskLabels.taskId.equals(taskId));
    return q.watch().map((rows) => rows.map((r) => r.readTable(_db.labels)).toList());
  }

  Future<void> setLabel(String taskId, String labelId, bool on) async {
    if (on) {
      await _db
          .into(_db.taskLabels)
          .insertOnConflictUpdate(TaskLabelsCompanion.insert(taskId: taskId, labelId: labelId));
    } else {
      await (_db.delete(
        _db.taskLabels,
      )..where((t) => t.taskId.equals(taskId) & t.labelId.equals(labelId))).go();
    }
  }

  // ---- dependencies --------------------------------------------------------

  Future<void> addDependency(String taskId, String dependsOnId) async {
    if (taskId == dependsOnId) {
      throw const TaskValidationException('dependencyCycle');
    }
    // Reject cycles: walk from dependsOnId; if we reach taskId it's a cycle.
    final seen = <String>{};
    final stack = [dependsOnId];
    while (stack.isNotEmpty) {
      final cur = stack.removeLast();
      if (cur == taskId) throw const TaskValidationException('dependencyCycle');
      if (!seen.add(cur)) continue;
      final next = await (_db.select(
        _db.taskDependencies,
      )..where((d) => d.taskId.equals(cur))).get();
      stack.addAll(next.map((d) => d.dependsOnId));
    }
    await _db
        .into(_db.taskDependencies)
        .insertOnConflictUpdate(
          TaskDependenciesCompanion.insert(taskId: taskId, dependsOnId: dependsOnId),
        );
  }

  Future<void> removeDependency(String taskId, String dependsOnId) => (_db.delete(
    _db.taskDependencies,
  )..where((d) => d.taskId.equals(taskId) & d.dependsOnId.equals(dependsOnId))).go();

  Stream<List<TaskRow>> watchBlockers(String taskId) {
    final q = _db.select(_db.tasks).join([
      innerJoin(_db.taskDependencies, _db.taskDependencies.dependsOnId.equalsExp(_db.tasks.id)),
    ])..where(_db.taskDependencies.taskId.equals(taskId));
    return q.watch().map((r) => r.map((e) => e.readTable(_db.tasks)).toList());
  }

  /// Total measured focus seconds logged against a task.
  Stream<int> watchTrackedSeconds(String taskId) {
    final sum = _db.focusSessions.activeSeconds.sum();
    final q = _db.selectOnly(_db.focusSessions)
      ..addColumns([sum])
      ..where(_db.focusSessions.taskId.equals(taskId) & _db.focusSessions.phase.equals('work'));
    return q.watchSingle().map((r) => r.read(sum) ?? 0);
  }
}
