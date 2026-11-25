import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/notes/presentation/note_editor_screen.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';
import '../widget_helpers.dart';
import 'notes_test.dart' show repoOf;

void main() {
  testWidgets('an empty note offers templates; one fills title and text, then they hide (ar)', (
    tester,
  ) async {
    final env = TestEnv();
    final id = (await tester.runAsync(() => repoOf(env).create()))!;
    await pumpScreen(
      tester,
      NoteEditorScreen(noteId: id),
      env: env,
      localeTag: 'ar',
    );
    await tester.pump(const Duration(milliseconds: 300));
    await settle(tester);
    await tester.tap(find.byKey(const Key('template_lecture')));
    await settle(tester);
    expect(find.byKey(const Key('template_lecture')), findsNothing);
    final fields = tester.widgetList<TextField>(find.byType(TextField)).toList();
    expect(fields.first.controller!.text, 'محاضرة');
    expect(fields[1].controller!.text, startsWith('## النقاط الرئيسية'));
    await closeEnv(tester, env);
  });
}
