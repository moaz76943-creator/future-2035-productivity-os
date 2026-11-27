import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/flashcards/domain/card_extras.dart';
import 'package:future_os/features/flashcards/domain/card_layout.dart';

void main() {
  group('CustomField', () {
    test('toJson and copyWith preserve and update fields', () {
      const f = CustomField(id: 'c1', name: 'Plural', lang: 'de', side: CardSide.front);
      expect(f.toJson(), {'id': 'c1', 'name': 'Plural', 'lang': 'de', 'side': 'front'});

      final updated = f.copyWith(name: 'Gender', side: CardSide.back);
      expect(updated.id, 'c1');
      expect(updated.name, 'Gender');
      expect(updated.lang, 'de');
      expect(updated.side, CardSide.back);
    });

    test('tryParse validates id, name, lang, side and truncates long names', () {
      expect(CustomField.tryParse('not-a-map'), isNull);
      expect(CustomField.tryParse({'id': 'x1', 'name': 'A'}), isNull);
      expect(CustomField.tryParse({'id': 'c12345', 'name': 'A'}), isNull);
      expect(CustomField.tryParse({'id': 'c1', 'name': '   '}), isNull);
      expect(CustomField.tryParse({'id': 'c1', 'name': 42}), isNull);

      final longName = 'A' * 50;
      final parsed = CustomField.tryParse({
        'id': 'c9999',
        'name': longName,
        'lang': 123,
        'side': 'unknown',
      });
      expect(parsed, isNotNull);
      expect(parsed!.id, 'c9999');
      expect(parsed.name.length, CardLayout.maxLabel);
      expect(parsed.lang, '');
      expect(parsed.side, CardSide.back);

      final front = CustomField.tryParse({
        'id': 'c2',
        'name': 'Hint',
        'lang': 'fr',
        'side': 'front',
      });
      expect(front?.side, CardSide.front);
      expect(front?.lang, 'fr');
    });
  });

  group('CardCustom', () {
    test('decode handles empty, malformed, non-map and filters invalid entries', () {
      expect(CardCustom.decode(''), isEmpty);
      expect(CardCustom.decode('   '), isEmpty);
      expect(CardCustom.decode('{bad json'), isEmpty);
      expect(CardCustom.decode('[1,2,3]'), isEmpty);

      final decoded = CardCustom.decode(
        jsonEncode({'c1': 'hello', 'c2': '   ', 'c3': 123, 'c4': null}),
      );
      expect(decoded, {'c1': 'hello'});
    });

    test('encode skips blank values, trims and truncates at maxLength', () {
      expect(CardCustom.encode({}), '');
      expect(CardCustom.encode({'c1': '   '}), '');

      final tooLong = 'x' * (CardCustom.maxLength + 100);
      final encoded = CardCustom.encode({'c1': '  trimmed  ', 'c2': tooLong, 'c3': ' '});
      final decoded = jsonDecode(encoded) as Map<String, dynamic>;
      expect(decoded['c1'], 'trimmed');
      expect((decoded['c2'] as String).length, CardCustom.maxLength);
      expect(decoded.containsKey('c3'), isFalse);
    });
  });

  group('CardLayout', () {
    test('defaults, visible, labelOf and nextCustomId', () {
      const def = CardLayout();
      expect(def.order, CardField.values);
      expect(def.visible, CardField.values);
      expect(def.nextCustomId(), 'c1');
      expect(def.labelOf(CardField.notes), isNull);

      const layout = CardLayout(
        order: [CardField.notes, CardField.example, CardField.explanation, CardField.pronunciation],
        labels: {CardField.notes: '  Tip  ', CardField.example: '   '},
        hidden: {CardField.example, CardField.pronunciation},
        customFields: [
          CustomField(id: 'c1', name: 'One'),
          CustomField(id: 'c3', name: 'Three'),
        ],
      );
      expect(layout.visible, [CardField.notes, CardField.explanation]);
      expect(layout.labelOf(CardField.notes), 'Tip');
      expect(layout.labelOf(CardField.example), isNull);
      expect(layout.nextCustomId(), 'c2');
    });

    test('encode and decode roundtrip and copyWith', () {
      const base = CardLayout(
        order: [CardField.explanation, CardField.notes, CardField.example, CardField.pronunciation],
        labels: {CardField.notes: '  Extra  ', CardField.example: '  '},
        hidden: {CardField.pronunciation},
        stepReveal: true,
        customFields: [CustomField(id: 'c1', name: 'Plural', lang: 'de', side: CardSide.front)],
        fieldLangs: {CardField.example: 'en', CardField.notes: ''},
      );
      final copy = base.copyWith(stepReveal: false);
      expect(copy.stepReveal, isFalse);
      expect(copy.hidden, base.hidden);

      final decoded = CardLayout.decode(base.encode());
      expect(decoded.order, base.order);
      expect(decoded.labels, {CardField.notes: 'Extra'});
      expect(decoded.hidden, base.hidden);
      expect(decoded.stepReveal, isTrue);
      expect(decoded.customFields.single.id, 'c1');
      expect(decoded.customFields.single.side, CardSide.front);
      expect(decoded.fieldLangs, {CardField.example: 'en'});
    });

    test('decode tolerates invalid inputs, duplicates, unknown fields and caps', () {
      expect(CardLayout.decode(null).order, CardField.values);
      expect(CardLayout.decode('  ').order, CardField.values);
      expect(CardLayout.decode('{invalid').order, CardField.values);
      expect(CardLayout.decode('[]').order, CardField.values);

      final manyCustom = [
        for (var i = 1; i <= 15; i++) {'id': 'c$i', 'name': 'F$i'},
        {'id': 'bad', 'name': 'Skip'},
      ];
      final raw = jsonEncode({
        'order': ['notes', 'unknownField', 'notes'],
        'labels': {'notes': 'N' * 60, 'unknown': 'X', 'example': 42},
        'hidden': ['example', 'ghost'],
        'stepReveal': 'not-bool',
        'custom': manyCustom,
        'fieldLangs': {'notes': 'ja', 'ghost': 'fr', 'example': 99},
      });
      final decoded = CardLayout.decode(raw);
      expect(decoded.order.first, CardField.notes);
      expect(decoded.order.length, CardField.values.length);
      expect(decoded.order.toSet(), CardField.values.toSet());
      expect(decoded.labels[CardField.notes]!.length, CardLayout.maxLabel);
      expect(decoded.labels.containsKey(CardField.example), isFalse);
      expect(decoded.hidden, {CardField.example});
      expect(decoded.stepReveal, isFalse);
      expect(decoded.customFields.length, CardLayout.maxCustomFields);
      expect(decoded.fieldLangs, {CardField.notes: 'ja'});
    });
  });

  group('templateLayout', () {
    test('builds expected layouts for all CardTemplate values', () {
      String lookup(String key) => 'localized_$key';

      final vocab = templateLayout(CardTemplate.vocabulary, name: lookup);
      expect(vocab.order.first, CardField.pronunciation);
      expect(vocab.customFields, isEmpty);
      expect(vocab.stepReveal, isFalse);

      final two = templateLayout(CardTemplate.twoTranslations, name: lookup);
      expect(two.customFields.single.name, 'localized_translation2');
      expect(two.customFields.single.side, CardSide.back);

      final qa = templateLayout(CardTemplate.questionAnswer, name: lookup);
      expect(qa.hidden, {CardField.pronunciation});
      expect(qa.stepReveal, isTrue);

      final def = templateLayout(CardTemplate.definition, name: lookup);
      expect(def.customFields.single.name, 'localized_synonyms');

      final grammar = templateLayout(CardTemplate.grammar, name: lookup);
      expect(grammar.hidden, {CardField.pronunciation});
      expect(grammar.stepReveal, isTrue);
      expect(grammar.customFields.single.name, 'localized_rule');
      expect(grammar.customFields.single.side, CardSide.front);
    });
  });
}
