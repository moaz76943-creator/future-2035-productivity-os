import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/database/app_database.dart';
import '../../notes/application/notes_providers.dart';
import '../../notes/data/notes_repository.dart';
import '../../tasks/application/tasks_providers.dart';

/// Deleted top-level tasks. Subtasks deleted together with their parent are
/// restored and purged with it, so they are not listed separately.
final trashedTasksProvider = StreamProvider.autoDispose<List<TaskRow>>((ref) {
  return ref.watch(tasksRepositoryProvider).watchTrash().map((rows) {
    final ids = {for (final r in rows) r.id};
    return [
      for (final r in rows)
        if (r.parentId == null || !ids.contains(r.parentId)) r,
    ];
  });
});

final trashedNotesProvider = StreamProvider.autoDispose<List<NoteRow>>(
  (ref) => ref.watch(notesRepositoryProvider).watch(NotesView.trash, limit: 1000),
);

/// Permanent deletion helpers used by the trash screen.
class TrashActions {
  TrashActions(this._ref);
  final Ref _ref;

  Future<void> purgeTask(TaskRow t, List<TaskRow> allTrashed) async {
    final repo = _ref.read(tasksRepositoryProvider);
    // Purge children explicitly so nothing is left orphaned.
    for (final c in allTrashed.where((c) => c.parentId == t.id)) {
      await repo.purge(c.id);
    }
    await repo.purge(t.id);
  }

  Future<void> emptyAll() async {
    final repo = _ref.read(tasksRepositoryProvider);
    final tasks = await repo.watchTrash().first;
    // Children first, then parents.
    final sorted = [...tasks]
      ..sort((a, b) => (b.parentId != null ? 1 : 0) - (a.parentId != null ? 1 : 0));
    for (final t in sorted) {
      await repo.purge(t.id);
    }
    await _ref.read(notesRepositoryProvider).emptyTrash();
  }
}

final trashActionsProvider = Provider<TrashActions>(TrashActions.new);
