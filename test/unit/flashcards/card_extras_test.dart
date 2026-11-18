import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/flashcards/domain/card_extras.dart';

void main() {
  test('encodes only non-empty known fields and round-trips', () {
    const e = CardExtras({CardField.example: '  ¿Qué tal?  ', CardField.notes: '   '});
    expect(e.encode(), '{"example":"¿Qué tal?"}');
    final d = CardExtras.decode(e.encode());
    expect(d[CardField.example], '¿Qué tal?');
    expect(d[CardField.notes], isNull);
    expect(const CardExtras().encode(), '');
  });

  test('decoding ignores malformed JSON, unknown keys and non-strings', () {
    expect(CardExtras.decode('not json').isEmpty, isTrue);
    expect(CardExtras.decode('[1,2]').isEmpty, isTrue);
    final d = CardExtras.decode('{"example":"ok","evil":"x","notes":5}');
    expect(d[CardField.example], 'ok');
    expect(d.values.length, 1);
  });

  test('long values are capped', () {
    final long = 'a' * (CardExtras.maxLength + 50);
    final d = CardExtras.decode(CardExtras({CardField.explanation: long}).encode());
    expect(d[CardField.explanation]!.length, CardExtras.maxLength);
  });
}
