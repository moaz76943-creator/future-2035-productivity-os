part of 'card_layout.dart';

/// Ready-made layouts for common kinds of cards. Applying a template only
/// changes how fields are named and shown; existing card content stays.
enum CardTemplate { vocabulary, twoTranslations, questionAnswer, definition, grammar }

CardLayout templateLayout(CardTemplate t, {required String Function(String key) name}) =>
    switch (t) {
      CardTemplate.vocabulary => const CardLayout(
        order: [
          CardField.pronunciation,
          CardField.example,
          CardField.explanation,
          CardField.notes,
        ],
      ),
      CardTemplate.twoTranslations => CardLayout(
        order: const [
          CardField.example,
          CardField.pronunciation,
          CardField.explanation,
          CardField.notes,
        ],
        customFields: [CustomField(id: 'c1', name: name('translation2'), isTranslation: true)],
      ),
      CardTemplate.questionAnswer => const CardLayout(
        order: [CardField.explanation, CardField.example, CardField.notes, CardField.pronunciation],
        hidden: {CardField.pronunciation},
        stepReveal: true,
      ),
      CardTemplate.definition => CardLayout(
        order: const [
          CardField.example,
          CardField.explanation,
          CardField.notes,
          CardField.pronunciation,
        ],
        customFields: [CustomField(id: 'c1', name: name('synonyms'))],
      ),
      CardTemplate.grammar => CardLayout(
        order: const [
          CardField.explanation,
          CardField.example,
          CardField.notes,
          CardField.pronunciation,
        ],
        hidden: const {CardField.pronunciation},
        stepReveal: true,
        customFields: [CustomField(id: 'c1', name: name('rule'), side: CardSide.front)],
      ),
    };

/// User-saved reusable card template.
class SavedCardTemplate {
  const SavedCardTemplate({
    required this.id,
    required this.name,
    required this.layout,
    this.description = '',
  });

  final String id;
  final String name;
  final String description;
  final CardLayout layout;

  Map<String, Object?> toJson() => {
    'id': id,
    'name': name,
    if (description.trim().isNotEmpty) 'description': description.trim(),
    'layout': jsonDecode(layout.encode()),
  };

  static SavedCardTemplate? tryParse(Object? j) {
    if (j is! Map) return null;
    final id = j['id'];
    final name = j['name'];
    if (id is! String || id.trim().isEmpty) return null;
    if (name is! String || name.trim().isEmpty) return null;
    final layoutRaw = j['layout'];
    final layout = layoutRaw is Map
        ? CardLayout.decode(jsonEncode(layoutRaw))
        : (layoutRaw is String ? CardLayout.decode(layoutRaw) : const CardLayout());
    return SavedCardTemplate(
      id: id.trim(),
      name: name.trim().length > CardLayout.maxLabel
          ? name.trim().substring(0, CardLayout.maxLabel)
          : name.trim(),
      description: j['description'] is String ? (j['description'] as String).trim() : '',
      layout: layout,
    );
  }

  static String encodeList(List<SavedCardTemplate> templates) =>
      templates.isEmpty ? '' : jsonEncode([for (final t in templates) t.toJson()]);

  static List<SavedCardTemplate> decodeList(String? raw) {
    if (raw == null || raw.trim().isEmpty) return const [];
    try {
      final j = jsonDecode(raw);
      if (j is! List) return const [];
      return [for (final item in j) ?tryParse(item)];
    } on FormatException {
      return const [];
    }
  }
}
