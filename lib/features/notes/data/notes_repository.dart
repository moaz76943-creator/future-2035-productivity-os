import 'package:drift/drift.dart';

import '../../../core/database/app_database.dart';
import '../../../core/ids.dart';
import '../../../core/time/clock.dart';

enum NotesView { all, pinned, favorites, archived, trash }

/// Owns `notes`, `notebooks`, `note_tags` and `note_task_links`.
class NotesRepository {
  NotesRepository(this._db, this._clock);
  final AppDatabase _db;
  final Clock _clock;

  static final _wikiLink = RegExp(r'\[\[([^\[\]]{1,200})\]\]');
  static final _hashTag = RegExp(r'(?:^|\s)#([\p{L}\p{N}_-]{1,50})', unicode: true);

  /// Tags written inline as `#tag` in the body.
  static Set<String> extractTags(String body) =>
      _hashTag.allMatches(body).map((m) => m.group(1)!.toLowerCase()).toSet();

  /// Titles referenced as `[[Note title]]`.
  static Set<String> extractLinks(String body) =>
      _wikiLink.allMatches(body).map((m) => m.group(1)!.trim()).toSet();

  Future<String> create({
    String title = '',
    String body = '',
    String? notebookId,
    String? projectId,
  }) async {
    final id = newId();
    final now = _clock.nowUtc();
    await _db.transaction(() async {
      await _db
          .into(_db.notes)
          .insert(
            NotesCompanion.insert(
              id: id,
              title: Value(title),
              body: Value(body),
              notebookId: Value(notebookId),
              projectId: Value(projectId),
              createdAt: now,
              updatedAt: now,
            ),
          );
      await _syncTags(id, body);
    });
    return id;
  }

  /// Saves title/body. Returns the saved `updatedAt`. The editor calls
  /// this debounced; each call is a single transaction so content and
  /// derived tags never diverge.
  Future<DateTime> save(String id, {required String title, required String body}) async {
    final now = _clock.nowUtc();
    await _db.transaction(() async {
      await (_db.update(_db.notes)..where((n) => n.id.equals(id))).write(
        NotesCompanion(title: Value(title), body: Value(body), updatedAt: Value(now)),
      );
      await _syncTags(id, body);
    });
    return now;
  }

  Future<void> _syncTags(String noteId, String body) async {
    await (_db.delete(_db.noteTags)..where((t) => t.noteId.equals(noteId))).go();
    for (final tag in extractTags(body)) {
      await _db
          .into(_db.noteTags)
          .insertOnConflictUpdate(NoteTagsCompanion.insert(noteId: noteId, tag: tag));
    }
  }

  Future<void> setFlags(String id, {bool? pinned, bool? favorite, bool? archived}) =>
      (_db.update(_db.notes)..where((n) => n.id.equals(id))).write(
        NotesCompanion(
          pinned: pinned == null ? const Value.absent() : Value(pinned),
          favorite: favorite == null ? const Value.absent() : Value(favorite),
          archived: archived == null ? const Value.absent() : Value(archived),
        ),
      );

  Future<void> moveTo(String id, {String? notebookId, String? projectId}) =>
      (_db.update(_db.notes)..where((n) => n.id.equals(id))).write(
        NotesCompanion(notebookId: Value(notebookId), projectId: Value(projectId)),
      );

  Future<void> softDelete(String id) => (_db.update(
    _db.notes,
  )..where((n) => n.id.equals(id))).write(NotesCompanion(deletedAt: Value(_clock.nowUtc())));

  Future<void> restore(String id) => (_db.update(
    _db.notes,
  )..where((n) => n.id.equals(id))).write(const NotesCompanion(deletedAt: Value(null)));

  Future<void> purge(String id) => (_db.delete(_db.notes)..where((n) => n.id.equals(id))).go();

  Future<void> emptyTrash() => (_db.delete(_db.notes)..where((n) => n.deletedAt.isNotNull())).go();

  Future<NoteRow?> byId(String id) =>
      (_db.select(_db.notes)..where((n) => n.id.equals(id))).getSingleOrNull();

  Stream<NoteRow?> watchById(String id) =>
      (_db.select(_db.notes)..where((n) => n.id.equals(id))).watchSingleOrNull();

  Stream<List<NoteRow>> watch(
    NotesView view, {
    String? notebookId,
    String? tag,
    String? projectId,
    int limit = 200,
  }) {
    final q = _db.select(_db.notes);
    switch (view) {
      case NotesView.trash:
        q.where((n) => n.deletedAt.isNotNull());
      case NotesView.archived:
        q.where((n) => n.deletedAt.isNull() & n.archived.equals(true));
      case NotesView.pinned:
        q.where((n) => n.deletedAt.isNull() & n.archived.equals(false) & n.pinned.equals(true));
      case NotesView.favorites:
        q.where((n) => n.deletedAt.isNull() & n.archived.equals(false) & n.favorite.equals(true));
      case NotesView.all:
        q.where((n) => n.deletedAt.isNull() & n.archived.equals(false));
    }
    if (notebookId != null) q.where((n) => n.notebookId.equals(notebookId));
    if (projectId != null) q.where((n) => n.projectId.equals(projectId));
    if (tag != null) {
      q.where(
        (n) => existsQuery(
          _db.select(_db.noteTags)..where((t) => t.noteId.equalsExp(n.id) & t.tag.equals(tag)),
        ),
      );
    }
    q
      ..orderBy([(n) => OrderingTerm.desc(n.pinned), (n) => OrderingTerm.desc(n.updatedAt)])
      ..limit(limit);
    return q.watch();
  }

  Stream<List<String>> watchAllTags() {
    final q = _db.selectOnly(_db.noteTags, distinct: true)
      ..addColumns([_db.noteTags.tag])
      ..orderBy([OrderingTerm.asc(_db.noteTags.tag)]);
    return q.watch().map((r) => r.map((e) => e.read(_db.noteTags.tag)!).toList());
  }

  Stream<List<String>> watchTags(String noteId) =>
      (_db.select(_db.noteTags)..where((t) => t.noteId.equals(noteId))).watch().map(
        (r) => r.map((e) => e.tag).toList()..sort(),
      );

  /// Resolves `[[Title]]` links in a body to existing notes.
  Future<List<NoteRow>> resolveLinks(String body) async {
    final titles = extractLinks(body);
    if (titles.isEmpty) return const [];
    return (_db.select(_db.notes)..where((n) => n.deletedAt.isNull() & n.title.isIn(titles))).get();
  }

  /// Notes whose body links to [title].
  Stream<List<NoteRow>> watchBacklinks(String noteId, String title) {
    if (title.trim().isEmpty) return Stream.value(const []);
    return (_db.select(_db.notes)..where(
          (n) =>
              n.deletedAt.isNull() &
              n.id.equals(noteId).not() &
              n.body.contains('[[${title.trim()}]]'),
        ))
        .watch();
  }

  // notebooks
  Stream<List<NotebookRow>> watchNotebooks() =>
      (_db.select(_db.notebooks)..orderBy([(n) => OrderingTerm.asc(n.name)])).watch();

  Future<String> createNotebook(String name, int color) async {
    final id = newId();
    await _db
        .into(_db.notebooks)
        .insert(
          NotebooksCompanion.insert(
            id: id,
            name: name.trim(),
            color: color,
            createdAt: _clock.nowUtc(),
          ),
        );
    return id;
  }

  Future<void> deleteNotebook(String id) =>
      (_db.delete(_db.notebooks)..where((n) => n.id.equals(id))).go();

  // task links
  Future<void> linkTask(String noteId, String taskId) => _db
      .into(_db.noteTaskLinks)
      .insertOnConflictUpdate(NoteTaskLinksCompanion.insert(noteId: noteId, taskId: taskId));

  Future<void> unlinkTask(String noteId, String taskId) => (_db.delete(
    _db.noteTaskLinks,
  )..where((l) => l.noteId.equals(noteId) & l.taskId.equals(taskId))).go();

  Stream<List<TaskRow>> watchLinkedTasks(String noteId) {
    final q = _db.select(_db.tasks).join([
      innerJoin(_db.noteTaskLinks, _db.noteTaskLinks.taskId.equalsExp(_db.tasks.id)),
    ])..where(_db.noteTaskLinks.noteId.equals(noteId) & _db.tasks.deletedAt.isNull());
    return q.watch().map((r) => r.map((e) => e.readTable(_db.tasks)).toList());
  }

  Stream<List<NoteRow>> watchNotesForTask(String taskId) {
    final q = _db.select(_db.notes).join([
      innerJoin(_db.noteTaskLinks, _db.noteTaskLinks.noteId.equalsExp(_db.notes.id)),
    ])..where(_db.noteTaskLinks.taskId.equals(taskId) & _db.notes.deletedAt.isNull());
    return q.watch().map((r) => r.map((e) => e.readTable(_db.notes)).toList());
  }
}
