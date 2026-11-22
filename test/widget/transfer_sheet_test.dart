import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/core/transfer/transfer_reader.dart';
import 'package:future_os/core/transfer/transfer_service.dart';
import 'package:future_os/features/notes/presentation/notes_screen.dart';
import 'package:future_os/features/tasks/presentation/tasks_screen.dart';
import 'package:material_ui/material_ui.dart';

import '../helpers.dart';
import 'widget_helpers.dart';

Future<void> wait(WidgetTester tester) async {
  for (var i = 0; i < 5; i++) {
    await tester.runAsync(() => Future<void>.delayed(const Duration(milliseconds: 40)));
    await settle(tester);
  }
}

void main() {
  testWidgets('tasks: import a CSV, then save as Excel (ar)', (tester) async {
    final env = TestEnv();
    final files = MemoryTransferFiles()
      ..next = (
        name: 'tasks.csv',
        bytes: Uint8List.fromList(utf8.encode('العنوان,تاريخ الاستحقاق\nمراجعة,2026-12-01\n')),
      );
    await pumpScreen(
      tester,
      const TasksScreen(),
      localeTag: 'ar',
      env: env,
      overrides: [transferFilesProvider.overrideWithValue(files)],
    );
    await tester.tap(find.byKey(const Key('tasksTransfer')));
    await settle(tester);
    await tester.tap(find.byKey(const Key('transferImport')));
    await wait(tester);
    expect(
      (await tester.runAsync(() => env.db.select(env.db.tasks).get()))!.single.title,
      'مراجعة',
    );

    await tester.tap(find.byKey(const Key('tasksTransfer')));
    await settle(tester);
    await tester.tap(find.byKey(const Key('export__xlsx')));
    await wait(tester);
    final saved = files.saved.entries.single;
    expect(saved.key, endsWith('.xlsx'));
    final rows = TransferReader.rows(saved.value)!;
    expect(rows[1].first, 'مراجعة');
    await closeEnv(tester, env);
  });

  testWidgets('notes: all notes as Word; a text file becomes a note', (tester) async {
    final env = TestEnv();
    final files = MemoryTransferFiles()
      ..next = (
        name: 'خطة.md',
        bytes: Uint8List.fromList(utf8.encode('# خطة الأسبوع\n- [ ] قراءة')),
      );
    await pumpScreen(
      tester,
      const NotesScreen(),
      localeTag: 'ar',
      env: env,
      overrides: [transferFilesProvider.overrideWithValue(files)],
    );
    await tester.tap(find.byKey(const Key('notesTransfer')));
    await settle(tester);
    await tester.tap(find.byKey(const Key('transferImport')));
    await wait(tester);
    final note = (await tester.runAsync(() => env.db.select(env.db.notes).get()))!.single;
    expect((note.title, note.body), ('خطة الأسبوع', '- [ ] قراءة'));

    await tester.tap(find.byKey(const Key('notesTransfer')));
    await settle(tester);
    await tester.tap(find.textContaining('Word').first);
    await wait(tester);
    expect(files.saved.keys.single, endsWith('.docx'));
    await closeEnv(tester, env);
  });
}
