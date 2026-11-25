import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';
import '../widget_helpers.dart';
import 'notes_test.dart' show db, repoOf, routed;

void main() {
  testWidgets('drag a note onto a notebook chip moves it; undo moves it back', (tester) async {
    final env = TestEnv();
    final repo = repoOf(env);
    final nb = await db(tester, () => repo.createNotebook('Physics', 0xFF6C4CFF));
    final id = await db(tester, () => repo.create(title: 'Waves', body: 'x'));
    await pumpScreen(tester, routed(), env: env);
    await settle(tester);

    final g = await tester.startGesture(tester.getCenter(find.text('Waves')));
    await tester.pump(const Duration(milliseconds: 700));
    final target = tester.getCenter(find.widgetWithText(ChoiceChip, 'Physics'));
    await g.moveTo(target - const Offset(0, 20));
    await tester.pump();
    await g.moveTo(target);
    await tester.pump();
    await g.up();
    await settle(tester);

    expect((await db(tester, () => repo.byId(id)))!.notebookId, nb);
    expect(find.text('Moved to Physics'), findsOneWidget);
    await tester.tap(find.text('Undo'));
    await settle(tester);
    expect((await db(tester, () => repo.byId(id)))!.notebookId, isNull);
    await closeEnv(tester, env);
  });

  testWidgets('long press and release without moving opens the note actions', (tester) async {
    final env = TestEnv();
    await db(tester, () => repoOf(env).create(title: 'Waves', body: 'x'));
    await pumpScreen(tester, routed(), env: env);
    await settle(tester);
    await tester.longPress(find.text('Waves'));
    await settle(tester);
    expect(find.text('Delete'), findsOneWidget);
    await closeEnv(tester, env);
  });
}
