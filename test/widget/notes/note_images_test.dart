import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/core/platform/media_picker.dart';
import 'package:future_os/features/notes/data/note_images.dart';
import 'package:future_os/features/notes/presentation/note_editor_screen.dart';
import 'package:future_os/features/notes/presentation/note_image_view.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';
import '../widget_helpers.dart';
import 'notes_test.dart' show repoOf;

class _Picker implements MediaPicker {
  @override
  Future<PickedMedia?> pick({required bool image}) async =>
      const PickedMedia([1, 2, 3, 4], 'board.jpg');
}

void main() {
  testWidgets('a picture goes on its own line, shows in the note and is kept in the database', (
    tester,
  ) async {
    final env = TestEnv();
    final id = (await tester.runAsync(() => repoOf(env).create(title: 'Lecture', body: 'Intro')))!;
    await pumpScreen(
      tester,
      NoteEditorScreen(noteId: id),
      env: env,
      overrides: [mediaPickerProvider.overrideWithValue(_Picker())],
    );
    await settle(tester);
    await tester.tap(find.byKey(const Key('note-add-image')));
    for (var i = 0; i < 4; i++) {
      await tester.runAsync(() => Future<void>.delayed(const Duration(milliseconds: 40)));
      await settle(tester);
    }
    final images = (await tester.runAsync(() => env.db.select(env.db.noteImages).get()))!;
    expect(images.single.bytes, [1, 2, 3, 4]);
    final body = tester.widgetList<TextField>(find.byType(TextField)).last.controller!.text;
    expect(body, 'Intro\n${NoteImageRefs.markdown(images.single.id)}\n');
    expect(find.byType(NoteImageView), findsOneWidget);
    await closeEnv(tester, env);
  });

  test('pictures no longer in the text are removed; others stay', () async {
    final env = TestEnv();
    final notes = repoOf(env);
    final id = await notes.create(title: 'x');
    final repo = NoteImagesRepository(env.db, env.clock);
    final keep = await repo.add(id, Uint8List.fromList([1]));
    await repo.add(id, Uint8List.fromList([2]));
    expect(await repo.removeUnused(id, 'a\n${NoteImageRefs.markdown(keep)}'), 1);
    expect((await env.db.select(env.db.noteImages).getSingle()).id, keep);
    await env.dispose();
  });
}
