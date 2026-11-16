import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/notes/application/note_text.dart';

TextEditingValue v(String text, int start, [int? end]) => TextEditingValue(
  text: text,
  selection: TextSelection(baseOffset: start, extentOffset: end ?? start),
);

void main() {
  group('wordCount', () {
    test('latin words, punctuation and markdown syntax', () {
      expect(NoteText.wordCount(''), 0);
      expect(NoteText.wordCount('Hello, world!'), 2);
      expect(NoteText.wordCount("# Plan\n- [ ] don't forget **milk**"), 4);
      expect(NoteText.wordCount('see [[Project Alpha]] and #work'), 5);
      expect(NoteText.wordCount('state-of-the-art'), 1);
    });

    test('Chinese counts characters individually', () {
      expect(NoteText.wordCount('今天天气很好'), 6);
      expect(NoteText.wordCount('我爱 Flutter 开发'), 5);
      expect(NoteText.wordCount('abc中文'), 3);
    });

    test('Arabic, Russian, Hindi count space separated words', () {
      expect(NoteText.wordCount('مرحبا بالعالم'), 2);
      expect(NoteText.wordCount('Привет мир'), 2);
      expect(NoteText.wordCount('नमस्ते दुनिया'), 2);
      expect(NoteText.wordCount('2026 год'), 2);
    });
  });

  group('preview and checklist', () {
    test('preview strips syntax and skips blank lines', () {
      expect(
        NoteText.preview('# Title\n\n**Bold** and _it_\n- [x] done\n[[Other]]'),
        'Title\nBold and it\ndone\nOther',
      );
      expect(NoteText.preview('a\nb\nc\nd', maxLines: 2), 'a\nb');
    });

    test('checklist progress and toggle', () {
      const body = '- [ ] one\n- [x] two\ntext\n  * [X] three';
      expect(NoteText.checklistProgress(body), (2, 3));
      expect(NoteText.toggleCheckbox(body, 0), '- [x] one\n- [x] two\ntext\n  * [X] three');
      expect(NoteText.toggleCheckbox(body, 1), '- [ ] one\n- [ ] two\ntext\n  * [X] three');
      expect(NoteText.toggleCheckbox(body, 3), '- [ ] one\n- [x] two\ntext\n  * [ ] three');
      expect(NoteText.toggleCheckbox(body, 2), body);
      expect(NoteText.toggleCheckbox(body, 99), body);
    });
  });

  group('direction', () {
    test('first strong character decides', () {
      expect(NoteText.firstStrongDirection('مرحبا hello'), TextDirection.rtl);
      expect(NoteText.firstStrongDirection('hello مرحبا'), TextDirection.ltr);
      expect(NoteText.firstStrongDirection('# 123 - مهمة'), TextDirection.rtl);
      expect(NoteText.firstStrongDirection('שלום'), TextDirection.rtl);
      expect(NoteText.firstStrongDirection('中文'), TextDirection.ltr);
      expect(NoteText.firstStrongDirection('123 !?'), isNull);
      expect(NoteText.firstStrongDirection(''), isNull);
    });
  });

  group('inline wrap', () {
    test('bold wraps a selection and unwraps it again', () {
      final a = NoteText.bold(v('make it bold', 8, 12));
      expect(a.text, 'make it **bold**');
      expect(a.selection, const TextSelection(baseOffset: 10, extentOffset: 14));
      final b = NoteText.bold(a);
      expect(b.text, 'make it bold');
      expect(b.selection, const TextSelection(baseOffset: 8, extentOffset: 12));
    });

    test('collapsed cursor inserts markers and places cursor inside', () {
      final a = NoteText.italic(v('ab', 1));
      expect(a.text, 'a__b');
      expect(a.selection, const TextSelection.collapsed(offset: 2));
    });

    test('selection containing markers is unwrapped', () {
      final a = NoteText.wikiLink(v('see [[Note]]', 4, 12));
      expect(a.text, 'see Note');
      expect(a.selection, const TextSelection(baseOffset: 4, extentOffset: 8));
    });

    test('wiki link wraps and invalid selection appends', () {
      expect(NoteText.wikiLink(v('Plan', 0, 4)).text, '[[Plan]]');
      final end = NoteText.bold(const TextEditingValue(text: 'x'));
      expect(end.text, 'x****');
      expect(end.selection, const TextSelection.collapsed(offset: 3));
    });
  });

  group('line prefixes', () {
    test('heading toggles on the current line', () {
      final a = NoteText.heading(v('one\ntwo', 5));
      expect(a.text, 'one\n# two');
      expect(a.selection, const TextSelection.collapsed(offset: 7));
      final b = NoteText.heading(a);
      expect(b.text, 'one\ntwo');
      expect(b.selection, const TextSelection.collapsed(offset: 5));
    });

    test('bullet list applies to all selected lines and removes when all have it', () {
      final a = NoteText.bulletList(v('a\nb\nc', 0, 3));
      expect(a.text, '- a\n- b\nc');
      final b = NoteText.bulletList(a);
      expect(b.text, 'a\nb\nc');
    });

    test('checklist converts bullets and toggles off', () {
      final a = NoteText.checklist(v('- milk', 3));
      expect(a.text, '- [ ] milk');
      final b = NoteText.checklist(a);
      expect(b.text, 'milk');
      final c = NoteText.bulletList(v('- [x] done', 0));
      expect(c.text, '- done');
    });

    test('checklist on empty text and keeps indentation', () {
      expect(NoteText.checklist(v('', 0)).text, '- [ ] ');
      expect(NoteText.checklist(v('', 0)).selection, const TextSelection.collapsed(offset: 6));
      expect(NoteText.bulletList(v('  nested', 4)).text, '  - nested');
    });

    test('works with Arabic text', () {
      expect(NoteText.checklist(v('شراء الحليب', 2)).text, '- [ ] شراء الحليب');
      expect(NoteText.bold(v('نص مهم', 3, 6)).text, 'نص **مهم**');
    });
  });
}
