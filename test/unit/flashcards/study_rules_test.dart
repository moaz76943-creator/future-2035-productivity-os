import 'dart:math' as math;

import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/flashcards/domain/card_extras.dart';
import 'package:future_os/features/flashcards/domain/card_import.dart';
import 'package:future_os/features/flashcards/domain/study.dart';

void main() {
  group('typed answers', () {
    test('exact ignores case, accents, Arabic diacritics and punctuation', () {
      expect(StudyRules.check('Café!', 'cafe'), AnswerMatch.exact);
      expect(StudyRules.check('مَدْرَسَة', 'مدرسه'), AnswerMatch.exact);
      expect(StudyRules.check('  hello  ', 'Hello.'), AnswerMatch.exact);
    });
    test('several meanings: any line or ; part counts', () {
      expect(StudyRules.check('house', 'home; house'), AnswerMatch.exact);
      expect(StudyRules.check('بيت', 'منزل\nبيت'), AnswerMatch.exact);
    });
    test('small slip is close, otherwise wrong', () {
      expect(StudyRules.check('bridje', 'bridge'), AnswerMatch.close);
      expect(StudyRules.check('window', 'bridge'), AnswerMatch.wrong);
      expect(StudyRules.check('', 'bridge'), AnswerMatch.wrong);
      expect(StudyRules.check('ab', 'ac'), AnswerMatch.wrong, reason: 'too short to be close');
    });
  });

  test('choices: correct plus up to three distinct distractors', () {
    final c = StudyRules.choices('key', [
      'Key',
      'door',
      'window',
      'door',
      'roof',
      'wall',
    ], math.Random(1));
    expect(c, contains('key'));
    expect(c, hasLength(4));
    expect(c.map((e) => e.toLowerCase()).toSet(), hasLength(4));
    expect(StudyRules.choices('a', const [], math.Random(1)), ['a']);
  });

  test('mixed direction is stable per card', () {
    final a = StudyRules.reversed(StudyMode.mixed, 'card-1');
    expect(StudyRules.reversed(StudyMode.mixed, 'card-1'), a);
    expect(StudyRules.reversed(StudyMode.classic, 'card-1'), isFalse);
    expect(StudyRules.reversed(StudyMode.reverse, 'card-1'), isTrue);
  });

  group('import parser', () {
    test('CSV with quotes, embedded commas, quotes and newlines', () {
      final p = CardImportParser.parse('front,back\n"a, b","say ""hi""\nthere"\nx,y\n,missing\n');
      expect(p.cards.map((c) => c.front), ['a, b', 'x']);
      expect(p.cards.first.back, 'say "hi"\nthere');
      expect(p.invalid, 1);
    });
    test('TSV without header: front, back, tags', () {
      final p = CardImportParser.parse('hola\thello\tes\nadiós\tbye\n');
      expect(p.cards, hasLength(2));
      expect(p.cards.first.tags, 'es');
    });
    test('header maps optional fields, Arabic header names too', () {
      final p = CardImportParser.parse('الكلمة;المعنى;مثال\nla llave;المفتاح;Tengo la llave\n');
      expect(p.cards.single.front, 'la llave');
      expect(p.cards.single.extras[CardField.example], 'Tengo la llave');
    });
    test('CSV export cell neutralises formulas but keeps numbers', () {
      expect(CardImportParser.csvCell('=HYPERLINK("x")'), '"\'=HYPERLINK(""x"")"');
      expect(CardImportParser.csvCell('-5'), '-5');
      expect(CardImportParser.csvCell('@cmd'), "'@cmd");
      expect(CardImportParser.csvCell('a,b'), '"a,b"');
    });
  });
}
