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
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase(super.e);

  /// Bump when the schema changes and add a step in [migration].
  /// Never drop user tables to resolve a migration problem.
  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (m) async {
          await m.createAll();
          await _createIndexes();
        },
        onUpgrade: (m, from, to) async {
          // Future migrations go here, one guarded step per version, e.g.
          // if (from < 2) { await m.addColumn(tasks, tasks.someColumn); }
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
    ];
    for (final s in statements) {
      await customStatement(s);
    }
  }

  // ---------------------------------------------------------------------------
  // Key/value settings store
  // ---------------------------------------------------------------------------

  Future<String?> readValue(String key) async {
    final row = await (select(keyValues)..where((t) => t.key.equals(key)))
        .getSingleOrNull();
    return row?.value;
  }

  Stream<String?> watchValue(String key) {
    return (select(keyValues)..where((t) => t.key.equals(key)))
        .watchSingleOrNull()
        .map((r) => r?.value);
  }

  Future<void> writeValue(String key, String value) {
    return into(keyValues).insertOnConflictUpdate(
      KeyValuesCompanion.insert(key: key, value: value),
    );
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
