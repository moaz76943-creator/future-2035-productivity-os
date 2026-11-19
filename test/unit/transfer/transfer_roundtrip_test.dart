import 'dart:io';

import 'package:flutter/widgets.dart' show Locale;
import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/core/transfer/markdown_doc.dart';
import 'package:future_os/core/transfer/office_writer.dart';
import 'package:future_os/core/transfer/transfer_model.dart';
import 'package:future_os/core/transfer/transfer_reader.dart';
import 'package:future_os/core/transfer/transfer_schema.dart';
import 'package:future_os/core/transfer/transfer_service.dart';
import 'package:future_os/features/flashcards/data/card_file_import.dart';
import 'package:future_os/features/flashcards/data/cards_transfer.dart';
import 'package:future_os/features/flashcards/data/flashcards_repository.dart';
import 'package:future_os/features/flashcards/domain/card_extras.dart';
import 'package:future_os/features/flashcards/domain/card_import.dart';
import 'package:future_os/features/notes/data/notes_repository.dart';
import 'package:future_os/features/notes/data/notes_transfer.dart';
import 'package:future_os/features/projects/data/projects_repository.dart';
import 'package:future_os/features/tasks/data/tasks_repository.dart';
import 'package:future_os/features/tasks/data/tasks_transfer.dart';
import 'package:future_os/l10n/gen/app_localizations.dart';

import '../../helpers.dart';

/// Every format the user can pick for a table must read back the same rows.
/// These tests export, import into an empty app and export again: if a
/// column is added to an export but not to the import (or the other way
/// round), the second export differs and the test fails.
void main() {
  final ar = lookupAppLocalizations(const Locale('ar'));
  final en = lookupAppLocalizations(const Locale('en'));
  const encoder = TransferEncoder(_NoPdf());

  Future<List<List<String>>> through(TransferTable t, TransferFormat f) async {
    final rows = TransferReader.rows(await encoder.table(t, f));
    expect(rows, isNotNull, reason: f.name);
    return rows!;
  }

  List<Map<String, String>> rowsOf(TransferTable t) => t.rows;

  test('tasks: Excel, CSV and Word keep every column (Arabic headers)', () async {
    for (final f in [TransferFormat.xlsx, TransferFormat.csv, TransferFormat.docx]) {
      final a = TestEnv();
      final projects = ProjectsRepository(a.db, a.clock);
      await projects.create(const ProjectDraft(name: 'دراسة', color: 0xFF000000));
      final pid = (await a.db.select(a.db.projects).getSingle()).id;
      final tasks = TasksRepository(a.db, a.clock);
      await tasks.create(
        TaskDraft(
          title: 'مراجعة الفصل 3, "مهم"',
          notes: 'سطر 1\nسطر 2',
          dueAt: DateTime(2026, 12, 1, 9, 30),
          dueHasTime: true,
          priority: 3,
          category: 'جامعة',
          projectId: pid,
        ),
      );
      final done = await tasks.create(const TaskDraft(title: '=SUM(A1)', priority: 1));
      await tasks.complete(done);
      final first = await TasksTransfer(a.db, tasks).table(ar, rtl: true);

      final b = TestEnv();
      await ProjectsRepository(
        b.db,
        b.clock,
      ).create(const ProjectDraft(name: 'دراسة', color: 0xFF000000));
      final tasksB = TasksRepository(b.db, b.clock);
      final result = await TasksTransfer(b.db, tasksB).import(await through(first, f));
      expect(result.added, 2, reason: f.name);
      final second = await TasksTransfer(b.db, tasksB).table(ar, rtl: true);
      expect(rowsOf(second), rowsOf(first), reason: '${f.name}: a column is lost on the way back');
      await a.dispose();
      await b.dispose();
    }
  });

  test('tasks: a file with English headers, columns in any order, extra columns', () async {
    final env = TestEnv();
    final tasks = TasksRepository(env.db, env.clock);
    final r = await TasksTransfer(env.db, tasks).import([
      ['Ignored', 'Due date', 'Title', 'Done'],
      ['x', '٢٠٢٦-١٢-٠١', 'Read', 'yes'],
      ['x', '', '', ''],
    ]);
    expect((r.added, r.skipped), (1, 0));
    final t = await env.db.select(env.db.tasks).getSingle();
    expect((t.title, t.done, t.dueAt?.toLocal().day), ('Read', true, 1));
    await env.dispose();
  });

  test('notes: Excel keeps title and text; Word keeps headings, lists and bold', () async {
    final a = TestEnv();
    final notes = NotesRepository(a.db, a.clock);
    await notes.create(
      title: 'محاضرة',
      body: '# مقدمة\n- [x] **مهم** جداً\n- بند\n> اقتباس\nنص _مائل_',
    );
    final first = await NotesTransfer(a.db, notes).table(ar);

    final b = TestEnv();
    final notesB = NotesRepository(b.db, b.clock);
    await NotesTransfer(
      b.db,
      notesB,
    ).import((name: 'n.xlsx', bytes: await encoder.table(first, TransferFormat.xlsx)));
    expect(rowsOf(await NotesTransfer(b.db, notesB).table(ar)), rowsOf(first));

    final note = await a.db.select(a.db.notes).getSingle();
    final docx = await encoder.doc(
      NotesTransfer.noteDoc(note, ar.untitled, rtl: true),
      TransferFormat.docx,
    );
    final c = TestEnv();
    final notesC = NotesRepository(c.db, c.clock);
    await NotesTransfer(c.db, notesC).import((name: 'محاضرة.docx', bytes: docx));
    final back = await c.db.select(c.db.notes).getSingle();
    expect(back.title, 'محاضرة');
    expect(back.body, startsWith('# مقدمة'), reason: 'the title is not repeated in the text');
    expect(back.body, contains('> اقتباس'));
    expect(back.body, contains('- [x] **مهم** جداً'));
    expect(back.body, contains('_مائل_'));
    for (final e in [a, b, c]) {
      await e.dispose();
    }
  });

  test('cards: every field (and any field added later) comes back from Excel and CSV', () async {
    for (final f in [TransferFormat.xlsx, TransferFormat.csv, TransferFormat.docx]) {
      final env = TestEnv();
      final repo = FlashcardsRepository(env.db, env.clock);
      final deck = await repo.createDeck('كلمات', color: 0xFF000000);
      await repo.importParsed(deck, [
        ImportedCard(
          '=كتاب',
          'book, "a" thing',
          tags: 'أسماء',
          extras: CardExtras({for (final x in CardField.values) x: '${x.name} نص'}),
        ),
      ]);
      final t = await CardsTransfer(env.db).table(deck, 'كلمات', ar, rtl: true);
      final text = await CardFileImport.toText(
        await encoder.table(t, f),
        temp: Directory.systemTemp,
      );
      final card = CardImportParser.parse(text).cards.single;
      expect(
        (card.front, card.back, card.tags),
        ('=كتاب', 'book, "a" thing', 'أسماء'),
        reason: f.name,
      );
      for (final x in CardField.values) {
        expect(card.extras[x], '${x.name} نص', reason: '${f.name}: ${x.name}');
      }
      await env.dispose();
    }
  });

  test('values: dates, digits and yes in several languages', () {
    expect(TransferValues.date('2026-12-01 09:30')?.$2, isTrue);
    expect(TransferValues.date('01/12/2026')?.$1, DateTime(2026, 12));
    expect(TransferValues.date('46357')?.$1.year, 2026);
    expect(TransferValues.yes('نعم'), isTrue);
    expect(TransferValues.yes(''), isFalse);
    expect(OfficeWriter.esc('<a&b>'), '&lt;a&amp;b&gt;');
    expect(MarkdownDoc.plainInline('**a** _b_ [[c]]'), 'a b c');
    expect(en.transferColTitle, isNotEmpty);
  });
}

class _NoPdf implements PdfRenderer {
  const _NoPdf();
  @override
  Future<Never> render(TransferDoc doc) => throw UnimplementedError();
}
