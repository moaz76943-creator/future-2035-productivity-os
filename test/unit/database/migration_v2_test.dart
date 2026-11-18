import 'dart:io';

import 'package:drift/drift.dart' show Value;
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/core/database/app_database.dart';
import 'package:sqlite3/sqlite3.dart';

/// Schema v1 -> v2 (flashcards.extra): existing decks and cards survive, the
/// new column defaults to '' and can be written.
void main() {
  test('upgrading a v1 database keeps cards and adds flashcards.extra', () async {
    final dir = await Directory.systemTemp.createTemp('fos_mig');
    addTearDown(() => dir.delete(recursive: true));
    final file = File('${dir.path}/db.sqlite');

    // Build the current schema, then turn it back into v1 with data in it.
    final seed = AppDatabase(NativeDatabase(file));
    await seed.customSelect('SELECT 1').get();
    await seed.close();
    final raw = sqlite3.open(file.path);
    // Dates are stored as ISO-8601 text (build.yaml: store_date_time_values_as_text).
    final now = "'${DateTime.utc(2026, 11, 1).toIso8601String()}'";
    raw.execute(
      "INSERT INTO decks (id, name, color, created_at, updated_at) VALUES ('d1', 'Words', 1, $now, $now)",
    );
    raw.execute(
      "INSERT INTO flashcards (id, deck_id, front, back, created_at, updated_at) "
      "VALUES ('c1', 'd1', 'hola', 'hello', $now, $now)",
    );
    raw.execute('ALTER TABLE flashcards DROP COLUMN extra');
    raw.execute('DROP INDEX IF EXISTS idx_milestones_project');
    raw.execute('DROP TABLE milestones');
    raw.execute('PRAGMA user_version = 1');
    raw.close();

    final db = AppDatabase(NativeDatabase(file));
    addTearDown(db.close);
    final cards = await db.select(db.flashcards).get();
    expect(cards.single.front, 'hola');
    expect(cards.single.extra, '');
    expect((await db.customSelect('PRAGMA user_version').getSingle()).read<int>('user_version'), 3);
    await (db.update(db.flashcards)..where((c) => c.id.equals('c1'))).write(
      const FlashcardsCompanion(extra: Value('{"example":"¡Hola!"}')),
    );
    expect((await db.select(db.flashcards).getSingle()).extra, '{"example":"¡Hola!"}');
    expect((await db.select(db.decks).get()).single.name, 'Words');
  });

  test('upgrading a v2 database creates milestones and keeps projects', () async {
    final dir = await Directory.systemTemp.createTemp('fos_mig3');
    addTearDown(() => dir.delete(recursive: true));
    final file = File('${dir.path}/db.sqlite');
    final seed = AppDatabase(NativeDatabase(file));
    await seed.customSelect('SELECT 1').get();
    await seed.close();
    final raw = sqlite3.open(file.path);
    final now = "'${DateTime.utc(2026, 11, 1).toIso8601String()}'";
    raw.execute(
      "INSERT INTO projects (id, name, color, created_at, updated_at) VALUES ('p1', 'Thesis', 1, $now, $now)",
    );
    raw.execute('DROP INDEX IF EXISTS idx_milestones_project');
    raw.execute('DROP TABLE milestones');
    raw.execute('PRAGMA user_version = 2');
    raw.close();

    final db = AppDatabase(NativeDatabase(file));
    addTearDown(db.close);
    expect((await db.select(db.projects).getSingle()).name, 'Thesis');
    await db
        .into(db.milestones)
        .insert(
          MilestonesCompanion.insert(
            id: 'm1',
            projectId: 'p1',
            title: 'Draft',
            createdAt: DateTime.utc(2026, 11, 2),
            updatedAt: DateTime.utc(2026, 11, 2),
          ),
        );
    expect((await db.select(db.milestones).getSingle()).title, 'Draft');
    expect((await db.customSelect('PRAGMA user_version').getSingle()).read<int>('user_version'), 3);
  });
}
