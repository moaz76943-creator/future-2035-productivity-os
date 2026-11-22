import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/notes/application/note_text.dart';
import 'package:future_os/features/notes/presentation/note_editing_controller.dart';
import 'package:material_ui/material_ui.dart';

void main() {
  lists();
  cleanup();
  testWidgets('formatting shows as style, symbols are hidden, boxes toggle', (tester) async {
    final c = NoteEditingController(text: '# عنوان\n- [ ] شراء **خبز** و _حليب_\n- عنصر');
    var toggled = -1;
    c.onToggleCheckbox = (i) => toggled = i;
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(body: TextField(controller: c, maxLines: null)),
      ),
    );
    await tester.pump();
    expect(find.byIcon(Icons.check_box_outline_blank_rounded), findsOneWidget);
    expect(find.byIcon(Icons.circle), findsOneWidget);
    await tester.tap(find.byIcon(Icons.check_box_outline_blank_rounded));
    await tester.pump();
    expect(toggled, 1);
    // Typing still works and keeps the formatting.
    await tester.enterText(find.byType(TextField), '**a**');
    await tester.pump();
    expect(c.text, '**a**');
  });
}

TextEditingValue typeEnter(String text) {
  final old = TextEditingValue(
    text: text,
    selection: TextSelection.collapsed(offset: text.length),
  );
  final next = TextEditingValue(
    text: '$text\n',
    selection: TextSelection.collapsed(offset: text.length + 1),
  );
  return const NoteListFormatter().formatEditUpdate(old, next);
}

void lists() {
  test('Enter continues a list and ends it on an empty item', () {
    expect(typeEnter('- [x] bread').text, '- [x] bread\n- [ ] ');
    expect(typeEnter('- milk').text, '- milk\n- ');
    expect(typeEnter('2. two').text, '2. two\n3. ');
    expect(typeEnter('a\n- [ ] ').text, 'a\n');
    expect(typeEnter('plain').text, 'plain\n');
  });

  test('a button pressed twice leaves no symbols; heading replaces a list', () {
    var v = const TextEditingValue(selection: TextSelection.collapsed(offset: 0));
    v = NoteText.bold(v);
    expect(v.text, '****');
    v = NoteText.bold(v);
    expect(v.text, '');
    v = NoteText.checklist(
      const TextEditingValue(text: 'x', selection: TextSelection.collapsed(offset: 1)),
    );
    expect(v.text, '- [ ] x');
    v = NoteText.heading(v);
    expect(v.text, '# x');
    expect(NoteText.checklist(v).text, '- [ ] x');
  });
}

void cleanup() {
  test('empty formatting leftovers are removed, real text kept', () {
    expect(NoteText.removeEmptyMarkers('- [ ] # هلا**__**'), '- [ ] # هلا');
    expect(NoteText.removeEmptyMarkers('a****b ____ **x**'), 'ab  **x**');
  });
}
