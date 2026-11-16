import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/assistant/domain/note_extractors.dart';

void main() {
  group('TaskExtractor', () {
    test('finds unchecked checkboxes and marker lines, skips checked items', () {
      const body = '''
# Weekly plan
- [ ] Call the bank
* [ ] Send invoice
- [x] Already done
TODO: Book flights
todo - renew passport
To do: Pay rent
Just a normal sentence: with a colon
- regular bullet
TODO:
- [ ] Call the bank
''';
      expect(TaskExtractor.extract(body), [
        'Call the bank',
        'Send invoice',
        'Book flights',
        'renew passport',
        'Pay rent',
      ]);
    });

    test('recognizes localized markers in all languages', () {
      const body = '''
مهمة: الاتصال بالبنك
مُهِمَّة: مراجعة الدرس
待办：买牛奶
Pendiente: llamar a Ana
Сделать: купить хлеб
À faire : appeler Paul
A fazer: pagar contas
करना है: दूध लाना
''';
      expect(TaskExtractor.extract(body), [
        'الاتصال بالبنك',
        'مراجعة الدرس',
        '买牛奶',
        'llamar a Ana',
        'купить хлеб',
        'appeler Paul',
        'pagar contas',
        'दूध लाना',
      ]);
    });

    test('empty note yields nothing', () {
      expect(TaskExtractor.extract(''), isEmpty);
      expect(TaskExtractor.extract('Plain text without tasks.'), isEmpty);
    });
  });

  group('CardExtractor', () {
    test('finds term: definition, term — definition and Q/A pairs', () {
      const body = '''
# Biology
Mitochondria: the powerhouse of the cell
- Ribosome — makes proteins
Osmosis – diffusion of water
Enzyme - a biological catalyst
Q: What is DNA?
A: The molecule that carries genetic information
See https://example.com/page
Meeting at 10:30 tomorrow
TODO: review chapter 3
- [ ] flash: not a card
''';
      expect(CardExtractor.extract(body), const [
        CardDraft('Mitochondria', 'the powerhouse of the cell'),
        CardDraft('Ribosome', 'makes proteins'),
        CardDraft('Osmosis', 'diffusion of water'),
        CardDraft('Enzyme', 'a biological catalyst'),
        CardDraft('What is DNA?', 'The molecule that carries genetic information'),
      ]);
    });

    test('supports Arabic question/answer prefixes and full-width colon', () {
      const body = '''
س: ما عاصمة الأردن؟
ج: عمّان
光合作用：植物利用光能制造养分
''';
      expect(CardExtractor.extract(body), const [
        CardDraft('ما عاصمة الأردن؟', 'عمّان'),
        CardDraft('光合作用', '植物利用光能制造养分'),
      ]);
    });

    test('a question without an answer is dropped and duplicates are removed', () {
      const body = 'Q: orphan question\nTerm: def\nTerm: def\n';
      expect(CardExtractor.extract(body), const [CardDraft('Term', 'def')]);
    });
  });
}
