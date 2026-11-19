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
}
