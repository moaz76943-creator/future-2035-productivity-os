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

  test('multi-face, multi-lang, non-destructive field edits and templates', () {
    var layout = const CardLayout(frontLang: 'ar', backLang: 'en-US')
        .addFace(label: 'Context', lang: 'fr-FR')
        .addCustomField(name: 'French', lang: 'fr-FR', face: 2, isTranslation: true)
        .addCustomField(name: 'Spanish', lang: 'es-ES', isTranslation: true);

    expect(layout.effectiveFaces.length, 3);
    expect(layout.effectiveFaces[2].label, 'Context');
    expect(layout.effectiveFaces[2].lang, 'fr-FR');
    expect(layout.customFieldsForFace(2).map((f) => f.id), ['c1']);
    expect(layout.customFieldsForFace(1).map((f) => f.id), ['c2']);

    // Language resolution cascades from field -> face -> deck.
    expect(
      layout.effectiveLanguageForCustomField(layout.customFields[0], deckFrontLang: 'ar'),
      'fr-FR',
    );
    expect(
      layout.effectiveLanguageForField(CardField.example, deckBackLang: 'de-DE'),
      'en-US',
    );

    // Rename, reorder, hide and remove are non-destructive to card data.
    final cardData = {'c1': 'bonjour', 'c2': 'hola'};
    layout = layout
        .renameCustomField('c1', 'Translation FR')
        .reorderCustomField('c2', -1)
        .toggleCustomFieldVisibility('c1', false);
    expect(layout.customFields.map((f) => f.id), ['c2', 'c1']);
    expect(layout.customFieldsForFace(2), isEmpty);
    expect(layout.customFieldsForFace(2, includeHidden: true).single.name, 'Translation FR');

    // Source text vs multiple translations separation.
    final translations = CardCustom.translationsOf(cardData, layout);
    expect(translations.length, 2);
    expect(translations.map((t) => t.value), ['hola', 'bonjour']);

    // Switching templates preserves existing custom fields & assigns fresh IDs.
    final tpl = templateLayout(CardTemplate.grammar, name: (k) => k);
    final merged = layout.applyTemplateNonDestructive(tpl);
    expect(merged.customFields.any((f) => f.id == 'c1' && f.name == 'Translation FR'), isTrue);
    expect(merged.customFields.any((f) => f.id == 'c2' && f.name == 'Spanish'), isTrue);
    expect(merged.customFields.any((f) => f.id == 'c3' && f.name == 'rule'), isTrue);

    // Round-trip encode/decode preserves faces, hidden, isTranslation, and langs.
    final decoded = CardLayout.decode(merged.encode());
    expect(decoded.effectiveFaces.length, 3);
    expect(decoded.frontLang, 'ar');
    expect(decoded.backLang, 'en-US');
    expect(decoded.customFields.firstWhere((f) => f.id == 'c1').hidden, isTrue);
    expect(decoded.customFields.firstWhere((f) => f.id == 'c2').isTranslation, isTrue);

    // SavedCardTemplate list round-trips.
    final saved = SavedCardTemplate(id: 'tpl-1', name: 'Trilingual', layout: decoded);
    final list = SavedCardTemplate.decodeList(SavedCardTemplate.encodeList([saved]));
    expect(list.single.id, 'tpl-1');
    expect(list.single.name, 'Trilingual');
    expect(list.single.layout.effectiveFaces.length, 3);
  });
}
