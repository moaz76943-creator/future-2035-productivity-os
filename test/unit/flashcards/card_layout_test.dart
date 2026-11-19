import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/flashcards/domain/card_extras.dart';
import 'package:future_os/features/flashcards/domain/card_layout.dart';

void main() {
  test('layout round-trips and keeps every field', () {
    const l = CardLayout(
      order: [CardField.notes, CardField.example, CardField.explanation, CardField.pronunciation],
      labels: {CardField.example: 'Sentence'},
      hidden: {CardField.notes},
      stepReveal: true,
    );
    final d = CardLayout.decode(l.encode());
    expect(d.order, l.order);
    expect(d.labelOf(CardField.example), 'Sentence');
    expect(d.labelOf(CardField.notes), isNull);
    expect(d.visible, [CardField.example, CardField.explanation, CardField.pronunciation]);
    expect(d.stepReveal, isTrue);
  });

  test('older or damaged layouts fall back without losing fields', () {
    final partial = CardLayout.decode('{"order":["notes","bogus"],"hidden":["x"]}');
    expect(partial.order.first, CardField.notes);
    expect(partial.order.toSet(), CardField.values.toSet());
    expect(partial.hidden, isEmpty);
    expect(CardLayout.decode('not json').order, CardField.values);
    expect(CardLayout.decode(null).stepReveal, isFalse);
  });

  test('custom fields, field languages and templates', () {
    const l = CardLayout(
      customFields: [
        CustomField(id: 'c1', name: 'Plural', lang: 'de-DE'),
        CustomField(id: 'c2', name: 'Hint', side: CardSide.front),
      ],
      fieldLangs: {CardField.example: 'es-ES'},
    );
    final d = CardLayout.decode(l.encode());
    expect(d.customFields.map((f) => (f.id, f.name, f.lang, f.side)), [
      ('c1', 'Plural', 'de-DE', CardSide.back),
      ('c2', 'Hint', '', CardSide.front),
    ]);
    expect(d.fieldLangs[CardField.example], 'es-ES');
    expect(d.nextCustomId(), 'c3');
    // Bad ids or names are dropped.
    final bad = CardLayout.decode('{"custom":[{"id":"x","name":"A"},{"id":"c1","name":""}]}');
    expect(bad.customFields, isEmpty);
    for (final t in CardTemplate.values) {
      final tl = templateLayout(t, name: (k) => k);
      expect(tl.order.toSet(), CardField.values.toSet());
    }
  });

  test('custom values encode only non-empty text and decode tolerantly', () {
    expect(CardCustom.encode({'c1': ' der Hund ', 'c2': '  '}), '{"c1":"der Hund"}');
    expect(CardCustom.decode('{"c1":"x","c2":3}'), {'c1': 'x'});
    expect(CardCustom.decode('oops'), isEmpty);
  });
}
