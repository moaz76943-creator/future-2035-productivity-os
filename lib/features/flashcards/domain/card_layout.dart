import 'dart:convert';

import 'card_extras.dart';

/// Which side of the card a custom field belongs to.
enum CardSide { front, back }

/// A field the user added to a deck (e.g. "Translation (FR)", "Plural",
/// "Level"), with its own speech language. Values live in the card's
/// `custom` JSON keyed by [id], so renaming never touches content.
class CustomField {
  const CustomField({
    required this.id,
    required this.name,
    this.lang = '',
    this.side = CardSide.back,
  });
  final String id;
  final String name;

  /// BCP-47 speech language ('' = the side's deck language).
  final String lang;
  final CardSide side;

  Map<String, Object?> toJson() => {'id': id, 'name': name, 'lang': lang, 'side': side.name};

  static CustomField? tryParse(Object? j) {
    if (j is! Map) return null;
    final id = j['id'], name = j['name'];
    if (id is! String || !RegExp(r'^c\d{1,4}$').hasMatch(id)) return null;
    if (name is! String || name.trim().isEmpty) return null;
    return CustomField(
      id: id,
      name: name.length > CardLayout.maxLabel ? name.substring(0, CardLayout.maxLabel) : name,
      lang: j['lang'] is String ? j['lang'] as String : '',
      side: CardSide.values.asNameMap()[j['side']] ?? CardSide.back,
    );
  }

  CustomField copyWith({String? name, String? lang, CardSide? side}) => CustomField(
    id: id,
    name: name ?? this.name,
    lang: lang ?? this.lang,
    side: side ?? this.side,
  );
}

/// Values of custom fields for one card.
abstract final class CardCustom {
  static const maxLength = 2000;

  static Map<String, String> decode(String raw) {
    if (raw.trim().isEmpty) return const {};
    try {
      final j = jsonDecode(raw);
      if (j is! Map) return const {};
      return {
        for (final e in j.entries)
          if (e.key is String && e.value is String && (e.value as String).trim().isNotEmpty)
            e.key as String: e.value as String,
      };
    } on FormatException {
      return const {};
    }
  }

  static String encode(Map<String, String> values) {
    final out = {
      for (final e in values.entries)
        if (e.value.trim().isNotEmpty)
          e.key: e.value.trim().length > maxLength
              ? e.value.trim().substring(0, maxLength)
              : e.value.trim(),
    };
    return out.isEmpty ? '' : jsonEncode(out);
  }
}

/// Per-deck presentation of the optional card fields: their order, custom
/// names, which ones show during study, and whether the answer side reveals
/// them one at a time. Purely presentational: changing the layout never
/// touches card content, so no data is lost when fields are renamed,
/// hidden or reordered.
class CardLayout {
  const CardLayout({
    this.order = CardField.values,
    this.labels = const {},
    this.hidden = const {},
    this.stepReveal = false,
    this.customFields = const [],
    this.fieldLangs = const {},
  });

  static const maxCustomFields = 12;

  /// Fields added by the user, in display order.
  final List<CustomField> customFields;

  /// Speech language per built-in field ('' or missing = default).
  final Map<CardField, String> fieldLangs;

  /// Next free custom field id.
  String nextCustomId() {
    var n = 1;
    final used = {for (final f in customFields) f.id};
    while (used.contains('c$n')) {
      n++;
    }
    return 'c$n';
  }

  static const maxLabel = 40;

  final List<CardField> order;
  final Map<CardField, String> labels;
  final Set<CardField> hidden;

  /// Answer side shows the back first, then one more field per tap.
  final bool stepReveal;

  String? labelOf(CardField f) {
    final l = labels[f]?.trim();
    return l == null || l.isEmpty ? null : l;
  }

  /// Visible fields in display order.
  List<CardField> get visible => [
    for (final f in order)
      if (!hidden.contains(f)) f,
  ];

  CardLayout copyWith({
    List<CardField>? order,
    Map<CardField, String>? labels,
    Set<CardField>? hidden,
    bool? stepReveal,
    List<CustomField>? customFields,
    Map<CardField, String>? fieldLangs,
  }) => CardLayout(
    order: order ?? this.order,
    labels: labels ?? this.labels,
    hidden: hidden ?? this.hidden,
    stepReveal: stepReveal ?? this.stepReveal,
    customFields: customFields ?? this.customFields,
    fieldLangs: fieldLangs ?? this.fieldLangs,
  );

  String encode() => jsonEncode({
    'order': [for (final f in order) f.name],
    'labels': {
      for (final e in labels.entries)
        if (e.value.trim().isNotEmpty) e.key.name: e.value.trim(),
    },
    'hidden': [for (final f in hidden) f.name],
    'stepReveal': stepReveal,
    'custom': [for (final f in customFields) f.toJson()],
    'fieldLangs': {
      for (final e in fieldLangs.entries)
        if (e.value.isNotEmpty) e.key.name: e.value,
    },
  });

  /// Tolerant: unknown names are ignored and missing fields are appended, so
  /// a layout saved by an older version still lists every field.
  static CardLayout decode(String? raw) {
    if (raw == null || raw.trim().isEmpty) return const CardLayout();
    try {
      final j = jsonDecode(raw);
      if (j is! Map) return const CardLayout();
      final byName = CardField.values.asNameMap();
      final order = <CardField>[for (final n in (j['order'] as List?) ?? const []) ?byName[n]];
      for (final f in CardField.values) {
        if (!order.contains(f)) order.add(f);
      }
      final labels = <CardField, String>{
        for (final e in ((j['labels'] as Map?) ?? const {}).entries)
          if (byName[e.key] case final f? when e.value is String)
            f: (e.value as String).length > maxLabel
                ? (e.value as String).substring(0, maxLabel)
                : e.value as String,
      };
      final hidden = <CardField>{for (final n in (j['hidden'] as List?) ?? const []) ?byName[n]};
      return CardLayout(
        order: order.toSet().toList(),
        labels: labels,
        hidden: hidden,
        stepReveal: j['stepReveal'] == true,
        customFields: [for (final c in (j['custom'] as List?) ?? const []) ?CustomField.tryParse(c)]
            .take(maxCustomFields)
            .toList(),
        fieldLangs: {
          for (final e in ((j['fieldLangs'] as Map?) ?? const {}).entries)
            if (byName[e.key] case final f? when e.value is String) f: e.value as String,
        },
      );
    } on FormatException {
      return const CardLayout();
    }
  }
}

/// Ready-made layouts for common kinds of cards. Applying a template only
/// changes how fields are named and shown; existing card content stays.
enum CardTemplate { vocabulary, twoTranslations, questionAnswer, definition, grammar }

CardLayout templateLayout(CardTemplate t, {required String Function(String key) name}) =>
    switch (t) {
      CardTemplate.vocabulary => const CardLayout(
        order: [CardField.pronunciation, CardField.example, CardField.explanation, CardField.notes],
      ),
      CardTemplate.twoTranslations => CardLayout(
        order: const [
          CardField.example,
          CardField.pronunciation,
          CardField.explanation,
          CardField.notes,
        ],
        customFields: [CustomField(id: 'c1', name: name('translation2'))],
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
