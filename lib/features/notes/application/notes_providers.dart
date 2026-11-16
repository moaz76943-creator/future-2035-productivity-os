import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/database/app_database.dart';
import '../../../core/providers/core_providers.dart';
import '../data/notes_repository.dart';

final notesRepositoryProvider = Provider<NotesRepository>(
  (ref) => NotesRepository(ref.watch(databaseProvider), ref.watch(clockProvider)),
);

/// Filter for the notes list.
typedef NotesQuery = ({NotesView view, String? notebookId, String? tag});

final notesListProvider = StreamProvider.autoDispose.family<List<NoteRow>, NotesQuery>(
  (ref, q) =>
      ref.watch(notesRepositoryProvider).watch(q.view, notebookId: q.notebookId, tag: q.tag),
);

final notebooksProvider = StreamProvider.autoDispose<List<NotebookRow>>(
  (ref) => ref.watch(notesRepositoryProvider).watchNotebooks(),
);

final noteAllTagsProvider = StreamProvider.autoDispose<List<String>>(
  (ref) => ref.watch(notesRepositoryProvider).watchAllTags(),
);

final noteByIdProvider = StreamProvider.autoDispose.family<NoteRow?, String>(
  (ref, id) => ref.watch(notesRepositoryProvider).watchById(id),
);

final noteTagsProvider = StreamProvider.autoDispose.family<List<String>, String>(
  (ref, id) => ref.watch(notesRepositoryProvider).watchTags(id),
);

final noteBacklinksProvider = StreamProvider.autoDispose
    .family<List<NoteRow>, ({String id, String title})>(
      (ref, k) => ref.watch(notesRepositoryProvider).watchBacklinks(k.id, k.title),
    );

final noteLinkedTasksProvider = StreamProvider.autoDispose.family<List<TaskRow>, String>(
  (ref, id) => ref.watch(notesRepositoryProvider).watchLinkedTasks(id),
);
