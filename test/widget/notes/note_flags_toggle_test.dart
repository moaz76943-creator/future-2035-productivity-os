import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/notes/data/notes_repository.dart';
import 'package:future_os/features/notes/presentation/note_editor_screen.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';
import '../widget_helpers.dart';

void main() {
  testWidgets('pin toggles on and off and is persisted each time', (tester) async {
    final env = TestEnv();
    final id = (await tester.runAsync(
      () => NotesRepository(env.db, env.clock).create(title: 'A', body: 'b'),
    ))!;
    await pumpScreen(tester, NoteEditorScreen(noteId: id), env: env);
    await settle(tester);
    // Edit the body first: the debounced autosave must not block or undo flag changes.
    await tester.enterText(find.byType(TextField).last, 'b **bold**');
    await tester.pump(NoteEditorScreen.autosaveDelay + const Duration(milliseconds: 100));
    await tester.runAsync(() => Future<void>.delayed(const Duration(milliseconds: 300)));
    await settle(tester);
    for (var i = 0; i < 3; i++) {
      final pinTip = find.byWidgetPredicate(
        (w) => w is IconButton && (w.tooltip == 'Pin' || w.tooltip == 'Unpin'),
      );
      final before = tester.widget<IconButton>(pinTip).tooltip;
      await tester.tap(pinTip);
      await settle(tester);
      await tester.runAsync(() => Future<void>.delayed(const Duration(milliseconds: 300)));
      await settle(tester);
      final row = await tester.runAsync(
        () => (env.db.select(env.db.notes)..where((n) => n.id.equals(id))).getSingle(),
      );
      expect(row!.pinned, before == 'Pin');
      expect(tester.widget<IconButton>(pinTip).tooltip, before == 'Pin' ? 'Unpin' : 'Pin');
    }
    for (var i = 0; i < 2; i++) {
      final fav = find.byWidgetPredicate(
        (w) => w is IconButton && (w.tooltip == 'Favorite' || w.tooltip == 'Remove from favorites'),
      );
      final before = tester.widget<IconButton>(fav).tooltip;
      await tester.tap(fav);
      await settle(tester);
      await tester.runAsync(() => Future<void>.delayed(const Duration(milliseconds: 300)));
      await settle(tester);
      final row = await tester.runAsync(
        () => (env.db.select(env.db.notes)..where((n) => n.id.equals(id))).getSingle(),
      );
      expect(row!.favorite, before == 'Favorite');
    }
    await closeEnv(tester, env);
  });
}
