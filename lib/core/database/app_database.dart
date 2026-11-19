import 'package:drift/drift.dart';

import 'tables.dart';

export 'tables.dart';

part 'app_database.g.dart';

/// Name of the SQL function registered on every connection that applies
/// [TextNormalizer.normalize]. See `database_connection.dart`.
const String kNormalizeSqlFunction = 'fos_normalize';

@DriftDatabase(
  tables: [
    Projects,
    Tasks,
    ChecklistItems,
    Labels,
    TaskLabels,
    TaskDependencies,
    FocusSessions,
    Events,
    Notebooks,
    Notes,
    NoteTags,
    NoteTaskLinks,
    Decks,
    Flashcards,
    CardReviews,
    Goals,
    GoalEntries,
    GoalTasks,
    Habits,
    HabitLogs,
    KeyValues,
    RecentSearches,
    Milestones,
    CardMedia,
    NoteImages,
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase(super.e);

  /// Bump when the schema changes and add a step in [migration].
  /// Never drop user tables to resolve a migration problem.
  @override
  int get schemaVersion => 8;

  /// Tables introduced after schema v1, by version. Older backups lack them and
  /// restore them empty instead of being rejected.
  static const tablesAddedIn = {'milestones': 3, 'card_media': 7, 'note_images': 8};

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (m) async {
      await m.createAll();
      await _createIndexes();
    },
    onUpgrade: (m, from, to) async {
      // One guarded step per version. Never drop or recreate user tables here.
      if (from < 2) {
        // v2: optional flashcard fields. Existing cards get '' (no extras).
        await m.addColumn(flashcards, flashcards.extra);
      }
      if (from < 3) {
        // v3: project milestones.
        await m.createTable(milestones);
        await customStatement(
          'CREATE INDEX IF NOT EXISTS idx_milestones_project ON milestones (project_id, due_at)',
        );
      }
      if (from < 4) {
        // v4: task work status and archive. Existing tasks: not started, not archived.
        await m.addColumn(tasks, tasks.status);
        await m.addColumn(tasks, tasks.archivedAt);
      }
      if (from < 5) {
        // v5: suspended flashcards and per-deck speech languages.
        await m.addColumn(flashcards, flashcards.suspended);
        await m.addColumn(decks, decks.frontLang);
        await m.addColumn(decks, decks.backLang);
      }
      if (from < 6) {
        // v6: FSRS-4.5 memory state and favourites. Reviewed cards get a
        // starting state from their SM-2 data: stability = current interval,
        // difficulty from the ease factor (2.5 → 5), last review from history.
        await m.addColumn(flashcards, flashcards.stability);
        await m.addColumn(flashcards, flashcards.difficulty);
        await m.addColumn(flashcards, flashcards.lastReviewAt);
        await m.addColumn(flashcards, flashcards.favorite);
        await customStatement('''
          UPDATE flashcards SET
            stability = MAX(interval_days, 0.5),
            difficulty = MIN(10.0, MAX(1.0, 5.0 + (2500 - ease) / 200.0)),
            last_review_at = (SELECT MAX(reviewed_at) FROM card_reviews r WHERE r.card_id = flashcards.id)
          WHERE state <> 'new'
        ''');
      }
      if (from < 7) {
        // v7: custom field values and card images / audio.
        await m.addColumn(flashcards, flashcards.custom);
        await m.createTable(cardMedia);
        await customStatement('CREATE INDEX IF NOT EXISTS idx_card_media_card ON card_media (card_id)');
      }
      if (from < 8) {
        // v8: pictures in notes.
        await m.createTable(noteImages);
        await customStatement('CREATE INDEX IF NOT EXISTS idx_note_images_note ON note_images (note_id)');
      }
    },
    beforeOpen: (details) async {
      await customStatement('PRAGMA foreign_keys = ON');
    },
  );

  Future<void> _createIndexes() async {
    const statements = [
      'CREATE INDEX IF NOT EXISTS idx_tasks_due ON tasks (due_at)',
      'CREATE INDEX IF NOT EXISTS idx_tasks_project ON tasks (project_id)',
      'CREATE INDEX IF NOT EXISTS idx_tasks_parent ON tasks (parent_id)',
      'CREATE INDEX IF NOT EXISTS idx_tasks_done ON tasks (done, deleted_at)',
      'CREATE INDEX IF NOT EXISTS idx_checklist_task ON checklist_items (task_id)',
      'CREATE INDEX IF NOT EXISTS idx_sessions_started ON focus_sessions (started_at)',
      'CREATE INDEX IF NOT EXISTS idx_sessions_task ON focus_sessions (task_id)',
      'CREATE INDEX IF NOT EXISTS idx_events_start ON events (start_at)',
      'CREATE INDEX IF NOT EXISTS idx_notes_updated ON notes (updated_at)',
      'CREATE INDEX IF NOT EXISTS idx_notes_notebook ON notes (notebook_id)',
      'CREATE INDEX IF NOT EXISTS idx_cards_deck_due ON flashcards (deck_id, due_at)',
      'CREATE INDEX IF NOT EXISTS idx_reviews_card ON card_reviews (card_id, reviewed_at)',
      'CREATE INDEX IF NOT EXISTS idx_reviews_at ON card_reviews (reviewed_at)',
      'CREATE INDEX IF NOT EXISTS idx_goal_entries_goal ON goal_entries (goal_id, at)',
      'CREATE INDEX IF NOT EXISTS idx_habit_logs_day ON habit_logs (day)',
      'CREATE INDEX IF NOT EXISTS idx_milestones_project ON milestones (project_id, due_at)',
      'CREATE INDEX IF NOT EXISTS idx_card_media_card ON card_media (card_id)',
      'CREATE INDEX IF NOT EXISTS idx_note_images_note ON note_images (note_id)',
    ];
    for (final s in statements) {
      await customStatement(s);
    }
  }

  // ---------------------------------------------------------------------------
  // Key/value settings store
  // ---------------------------------------------------------------------------

  Future<String?> readValue(String key) async {
    final row = await (select(
      keyValues,
    )..where((t) => t.key.equals(key))).getSingleOrNull();
    return row?.value;
  }

  Stream<String?> watchValue(String key) {
    return (select(keyValues)..where((t) => t.key.equals(key)))
        .watchSingleOrNull()
        .map((r) => r?.value);
  }

  Future<void> writeValue(String key, String value) {
    return into(
      keyValues,
    ).insertOnConflictUpdate(KeyValuesCompanion.insert(key: key, value: value));
  }

  Future<void> deleteValue(String key) {
    return (delete(keyValues)..where((t) => t.key.equals(key))).go();
  }

  /// Removes every row from every table inside a single transaction.
  /// Used by "erase all data" and by restore before re-inserting.
  Future<void> wipeAllUserData() async {
    await transaction(() async {
      await customStatement('PRAGMA defer_foreign_keys = ON');
      for (final table in allTables.toList().reversed) {
        await delete(table).go();
      }
    });
  }
}
