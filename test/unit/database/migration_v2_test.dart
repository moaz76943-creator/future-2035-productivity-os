import 'dart:io';

import 'package:drift/drift.dart' show Value;

import 'dart:typed_data';

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
    final now = "'${DateTime.utc(2026, 11).toIso8601String()}'";
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
    raw.execute('ALTER TABLE tasks DROP COLUMN status');
    raw.execute('ALTER TABLE tasks DROP COLUMN archived_at');
    raw.execute('ALTER TABLE flashcards DROP COLUMN suspended');
    raw.execute('ALTER TABLE flashcards DROP COLUMN stability');
    raw.execute('ALTER TABLE flashcards DROP COLUMN difficulty');
    raw.execute('ALTER TABLE flashcards DROP COLUMN last_review_at');
    raw.execute('ALTER TABLE flashcards DROP COLUMN favorite');
    raw.execute('DROP INDEX IF EXISTS idx_card_media_card');
    raw.execute('DROP TABLE card_media');
    raw.execute('ALTER TABLE flashcards DROP COLUMN custom');
    raw.execute('ALTER TABLE decks DROP COLUMN front_lang');
    raw.execute('ALTER TABLE decks DROP COLUMN back_lang');
    raw.execute('PRAGMA user_version = 1');
    raw.close();

    final db = AppDatabase(NativeDatabase(file));
    addTearDown(db.close);
    final cards = await db.select(db.flashcards).get();
    expect(cards.single.front, 'hola');
    expect(cards.single.extra, '');
    expect((await db.customSelect('PRAGMA user_version').getSingle()).read<int>('user_version'), 7);
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
    final now = "'${DateTime.utc(2026, 11).toIso8601String()}'";
    raw.execute(
      "INSERT INTO projects (id, name, color, created_at, updated_at) VALUES ('p1', 'Thesis', 1, $now, $now)",
    );
    raw.execute('DROP INDEX IF EXISTS idx_milestones_project');
    raw.execute('DROP TABLE milestones');
    raw.execute('ALTER TABLE tasks DROP COLUMN status');
    raw.execute('ALTER TABLE tasks DROP COLUMN archived_at');
    raw.execute('ALTER TABLE flashcards DROP COLUMN suspended');
    raw.execute('ALTER TABLE flashcards DROP COLUMN stability');
    raw.execute('ALTER TABLE flashcards DROP COLUMN difficulty');
    raw.execute('ALTER TABLE flashcards DROP COLUMN last_review_at');
    raw.execute('ALTER TABLE flashcards DROP COLUMN favorite');
    raw.execute('DROP INDEX IF EXISTS idx_card_media_card');
    raw.execute('DROP TABLE card_media');
    raw.execute('ALTER TABLE flashcards DROP COLUMN custom');
    raw.execute('ALTER TABLE decks DROP COLUMN front_lang');
    raw.execute('ALTER TABLE decks DROP COLUMN back_lang');
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
    expect((await db.customSelect('PRAGMA user_version').getSingle()).read<int>('user_version'), 7);
  });

  test('upgrading a v3 database adds task status and archive without touching tasks', () async {
    final dir = await Directory.systemTemp.createTemp('fos_mig4');
    addTearDown(() => dir.delete(recursive: true));
    final file = File('${dir.path}/db.sqlite');
    final seed = AppDatabase(NativeDatabase(file));
    await seed.customSelect('SELECT 1').get();
    await seed.close();
    final raw = sqlite3.open(file.path);
    final now = "'${DateTime.utc(2026, 11).toIso8601String()}'";
    raw.execute(
      "INSERT INTO tasks (id, title, created_at, updated_at) VALUES ('t1', 'Write intro', $now, $now)",
    );
    raw.execute('ALTER TABLE tasks DROP COLUMN status');
    raw.execute('ALTER TABLE tasks DROP COLUMN archived_at');
    raw.execute('ALTER TABLE flashcards DROP COLUMN suspended');
    raw.execute('ALTER TABLE flashcards DROP COLUMN stability');
    raw.execute('ALTER TABLE flashcards DROP COLUMN difficulty');
    raw.execute('ALTER TABLE flashcards DROP COLUMN last_review_at');
    raw.execute('ALTER TABLE flashcards DROP COLUMN favorite');
    raw.execute('DROP INDEX IF EXISTS idx_card_media_card');
    raw.execute('DROP TABLE card_media');
    raw.execute('ALTER TABLE flashcards DROP COLUMN custom');
    raw.execute('ALTER TABLE decks DROP COLUMN front_lang');
    raw.execute('ALTER TABLE decks DROP COLUMN back_lang');
    raw.execute('PRAGMA user_version = 3');
    raw.close();

    final db = AppDatabase(NativeDatabase(file));
    addTearDown(db.close);
    final t = await db.select(db.tasks).getSingle();
    expect(t.title, 'Write intro');
    expect(t.status, 'notStarted');
    expect(t.archivedAt, isNull);
    expect((await db.customSelect('PRAGMA user_version').getSingle()).read<int>('user_version'), 7);
  });

  test('upgrading a v4 database adds card suspension and deck languages', () async {
    final dir = await Directory.systemTemp.createTemp('fos_mig5');
    addTearDown(() => dir.delete(recursive: true));
    final file = File('${dir.path}/db.sqlite');
    final seed = AppDatabase(NativeDatabase(file));
    await seed.customSelect('SELECT 1').get();
    await seed.close();
    final raw = sqlite3.open(file.path);
    final now = "'${DateTime.utc(2026, 11).toIso8601String()}'";
    raw.execute(
      "INSERT INTO decks (id, name, color, created_at, updated_at) VALUES ('d1', 'Words', 1, $now, $now)",
    );
    raw.execute(
      "INSERT INTO flashcards (id, deck_id, front, back, created_at, updated_at) "
      "VALUES ('c1', 'd1', 'hola', 'hello', $now, $now)",
    );
    raw.execute('ALTER TABLE flashcards DROP COLUMN suspended');
    raw.execute('ALTER TABLE flashcards DROP COLUMN stability');
    raw.execute('ALTER TABLE flashcards DROP COLUMN difficulty');
    raw.execute('ALTER TABLE flashcards DROP COLUMN last_review_at');
    raw.execute('ALTER TABLE flashcards DROP COLUMN favorite');
    raw.execute('DROP INDEX IF EXISTS idx_card_media_card');
    raw.execute('DROP TABLE card_media');
    raw.execute('ALTER TABLE flashcards DROP COLUMN custom');
    raw.execute('ALTER TABLE decks DROP COLUMN front_lang');
    raw.execute('ALTER TABLE decks DROP COLUMN back_lang');
    raw.execute('PRAGMA user_version = 4');
    raw.close();

    final db = AppDatabase(NativeDatabase(file));
    addTearDown(db.close);
    final card = await db.select(db.flashcards).getSingle();
    expect(card.suspended, isFalse);
    final deck = await db.select(db.decks).getSingle();
    expect(deck.frontLang, '');
    expect(deck.backLang, '');
    expect((await db.customSelect('PRAGMA user_version').getSingle()).read<int>('user_version'), 7);
  });

  test('upgrading a v5 database derives an FSRS state from SM-2 data', () async {
    final dir = await Directory.systemTemp.createTemp('fos_mig6');
    addTearDown(() => dir.delete(recursive: true));
    final file = File('${dir.path}/db.sqlite');
    final seed = AppDatabase(NativeDatabase(file));
    await seed.customSelect('SELECT 1').get();
    await seed.close();
    final raw = sqlite3.open(file.path);
    final now = "'${DateTime.utc(2026, 11).toIso8601String()}'";
    final reviewed = "'${DateTime.utc(2026, 10, 20).toIso8601String()}'";
    raw.execute(
      "INSERT INTO decks (id, name, color, created_at, updated_at) VALUES ('d1', 'Words', 1, $now, $now)",
    );
    raw.execute(
      "INSERT INTO flashcards (id, deck_id, front, back, state, ease, interval_days, created_at, updated_at) "
      "VALUES ('c1', 'd1', 'hola', 'hello', 'review', 2500, 12, $now, $now), "
      "('c2', 'd1', 'adiós', 'bye', 'new', 2500, 0, $now, $now)",
    );
    raw.execute(
      "INSERT INTO card_reviews (id, card_id, reviewed_at, rating, state_before, interval_before, interval_after, ease_before, ease_after) "
      "VALUES ('r1', 'c1', $reviewed, 3, 'learning', 0, 12, 2500, 2500)",
    );
    raw.execute('ALTER TABLE flashcards DROP COLUMN stability');
    raw.execute('ALTER TABLE flashcards DROP COLUMN difficulty');
    raw.execute('ALTER TABLE flashcards DROP COLUMN last_review_at');
    raw.execute('ALTER TABLE flashcards DROP COLUMN favorite');
    raw.execute('DROP INDEX IF EXISTS idx_card_media_card');
    raw.execute('DROP TABLE card_media');
    raw.execute('ALTER TABLE flashcards DROP COLUMN custom');
    raw.execute('PRAGMA user_version = 5');
    raw.close();

    final db = AppDatabase(NativeDatabase(file));
    addTearDown(db.close);
    final cards = {for (final c in await db.select(db.flashcards).get()) c.id: c};
    expect(cards['c1']!.stability, 12);
    expect(cards['c1']!.difficulty, 5);
    expect(cards['c1']!.lastReviewAt, DateTime.utc(2026, 10, 20));
    expect(cards['c1']!.favorite, isFalse);
    expect(cards['c2']!.stability, 0);
    expect(cards['c2']!.lastReviewAt, isNull);
    expect((await db.customSelect('PRAGMA user_version').getSingle()).read<int>('user_version'), 7);
  });

  test('upgrading a v6 database adds custom field values and card media', () async {
    final dir = await Directory.systemTemp.createTemp('fos_mig7');
    addTearDown(() => dir.delete(recursive: true));
    final file = File('${dir.path}/db.sqlite');
    final seed = AppDatabase(NativeDatabase(file));
    await seed.customSelect('SELECT 1').get();
    await seed.close();
    final raw = sqlite3.open(file.path);
    final now = "'${DateTime.utc(2026, 11).toIso8601String()}'";
    raw.execute(
      "INSERT INTO decks (id, name, color, created_at, updated_at) VALUES ('d1', 'Words', 1, $now, $now)",
    );
    raw.execute(
      "INSERT INTO flashcards (id, deck_id, front, back, created_at, updated_at) "
      "VALUES ('c1', 'd1', 'hola', 'hello', $now, $now)",
    );
    raw.execute('DROP INDEX IF EXISTS idx_card_media_card');
    raw.execute('DROP TABLE card_media');
    raw.execute('ALTER TABLE flashcards DROP COLUMN custom');
    raw.execute('PRAGMA user_version = 6');
    raw.close();

    final db = AppDatabase(NativeDatabase(file));
    addTearDown(db.close);
    expect((await db.select(db.flashcards).getSingle()).custom, '');
    await db
        .into(db.cardMedia)
        .insert(
          CardMediaCompanion.insert(
            id: 'm1',
            cardId: 'c1',
            side: 'front',
            kind: 'image',
            bytes: Uint8List.fromList([1, 2, 3]),
            createdAt: DateTime.utc(2026, 11, 2),
          ),
        );
    expect((await db.select(db.cardMedia).getSingle()).bytes, [1, 2, 3]);
    expect((await db.customSelect('PRAGMA user_version').getSingle()).read<int>('user_version'), 7);
  });
}
