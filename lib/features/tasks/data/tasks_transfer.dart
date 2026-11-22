import 'package:drift/drift.dart';

import '../../../core/database/app_database.dart';
import '../../../core/transfer/transfer_model.dart';
import '../../../core/transfer/transfer_schema.dart';
import '../../../l10n/gen/app_localizations.dart';
import 'tasks_repository.dart';

typedef TaskRecord = ({TaskRow task, String project});

/// Columns of a tasks file. Export and import both use this list.
final taskSchema = TransferSchema<TaskRecord>([
  TransferField('title', (l) => l.transferColTitle, (r) => r.task.title),
  TransferField('notes', (l) => l.transferColNotes, (r) => r.task.notes),
  TransferField(
    'due',
    (l) => l.transferColDue,
    (r) => TransferValues.formatDate(r.task.dueAt, withTime: r.task.dueHasTime),
  ),
  TransferField(
    'priority',
    (l) => l.transferColPriority,
    (r) => r.task.priority == 0 ? '' : '${r.task.priority}',
  ),
  TransferField('done', (l) => l.transferColDone, (r) => r.task.done ? '✓' : ''),
  TransferField('project', (l) => l.transferColProject, (r) => r.project),
  TransferField('category', (l) => l.transferColCategory, (r) => r.task.category),
]);

/// Result of importing a file of tasks.
class TransferImportResult {
  const TransferImportResult(this.added, this.skipped);
  final int added;

  /// Rows without a title or already in the app.
  final int skipped;
}

class TasksTransfer {
  TasksTransfer(this._db, this._repo);
  final AppDatabase _db;
  final TasksRepository _repo;

  Future<List<TaskRecord>> _records() async {
    final tasks =
        await (_db.select(_db.tasks)
              ..where((t) => t.deletedAt.isNull())
              ..orderBy([
                (t) => OrderingTerm.asc(t.done),
                (t) => OrderingTerm.asc(t.sortOrder),
                (t) => OrderingTerm.asc(t.createdAt),
              ]))
            .get();
    final projects = {for (final p in await _db.select(_db.projects).get()) p.id: p.name};
    return [for (final t in tasks) (task: t, project: projects[t.projectId] ?? '')];
  }

  Future<TransferTable> table(AppLocalizations l10n, {bool rtl = false}) async =>
      taskSchema.table(l10n.navTasks, await _records(), l10n, rtl: rtl);

  /// Adds the rows as tasks; open tasks with the same title are skipped.
  Future<TransferImportResult> import(List<List<String>> rows) async {
    final existing = {
      for (final t in await (_db.select(
        _db.tasks,
      )..where((t) => t.deletedAt.isNull() & t.done.equals(false))).get())
        t.title.trim().toLowerCase(),
    };
    final projects = {
      for (final p in await (_db.select(_db.projects)..where((p) => p.deletedAt.isNull())).get())
        p.name.trim().toLowerCase(): p.id,
    };
    var added = 0, skipped = 0;
    for (final r in taskSchema.records(rows)) {
      final title = (r['title'] ?? '').trim();
      if (title.isEmpty || title.length > 500 || !existing.add(title.toLowerCase())) {
        skipped++;
        continue;
      }
      final due = TransferValues.date(r['due']);
      final priority = (int.tryParse(TransferValues.westernDigits(r['priority'] ?? '')) ?? 0).clamp(
        0,
        3,
      );
      final id = await _repo.create(
        TaskDraft(
          title: title,
          notes: r['notes'] ?? '',
          dueAt: due?.$1,
          dueHasTime: due?.$2 ?? false,
          priority: priority,
          category: r['category'] ?? '',
          projectId: projects[(r['project'] ?? '').trim().toLowerCase()],
        ),
      );
      if (TransferValues.yes(r['done'])) await _repo.complete(id);
      added++;
    }
    return TransferImportResult(added, skipped);
  }
}
