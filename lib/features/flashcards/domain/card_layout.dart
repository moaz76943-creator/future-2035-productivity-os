import 'dart:convert';

import 'card_extras.dart';

part 'card_layout_fields.dart';
part 'card_layout_templates.dart';

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
    this.faces = const [],
    this.frontLang = '',
    this.backLang = '',
  });

  static const maxCustomFields = 12;
  static const maxFaces = 8;

  /// Fields added by the user, in display order.
  final List<CustomField> customFields;

  /// Speech language per built-in field ('' or missing = default).
  final Map<CardField, String> fieldLangs;

  /// Optional multi-face definitions (0 = front, 1 = back, 2+ = extra faces).
  final List<CardFace> faces;

  /// Optional layout-level language overrides for front/back.
  final String frontLang;
  final String backLang;

  /// Always returns at least 2 faces (front=0, back=1) plus any configured 2+ faces.
  List<CardFace> get effectiveFaces {
    final byIdx = <int, CardFace>{for (final f in faces) f.index: f};
    final maxIdx = faces.isEmpty ? 1 : faces.map((f) => f.index).reduce((a, b) => a > b ? a : b);
    final customMax = customFields.isEmpty
        ? 1
        : customFields.map((f) => f.faceIndex).reduce((a, b) => a > b ? a : b);
    final total = (maxIdx > customMax ? maxIdx : customMax).clamp(1, maxFaces - 1);
    return [
      for (var i = 0; i <= total; i++)
        byIdx[i] ??
            CardFace(
              index: i,
              lang: i == 0 ? frontLang : (i == 1 ? backLang : ''),
            ),
    ];
  }

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

  /// Custom fields assigned to [faceIndex] (0 = front, 1 = back, 2+ = extra faces).
  List<CustomField> customFieldsForFace(int faceIndex, {bool includeHidden = false}) => [
    for (final f in customFields)
      if (f.faceIndex == faceIndex && (includeHidden || !f.hidden)) f,
  ];

  /// Resolves the speech language for a built-in [CardField].
  String effectiveLanguageForField(
    CardField f, {
    String deckFrontLang = '',
    String deckBackLang = '',
  }) {
    final specific = fieldLangs[f]?.trim() ?? '';
    if (specific.isNotEmpty) return specific;
    if (backLang.trim().isNotEmpty) return backLang.trim();
    return deckBackLang.trim().isNotEmpty ? deckBackLang.trim() : deckFrontLang.trim();
  }

  /// Resolves the speech language for a [CustomField].
  String effectiveLanguageForCustomField(
    CustomField f, {
    String deckFrontLang = '',
    String deckBackLang = '',
  }) {
    if (f.lang.trim().isNotEmpty) return f.lang.trim();
    final face = effectiveFaces.where((x) => x.index == f.faceIndex).firstOrNull;
    if (face != null && face.lang.trim().isNotEmpty) return face.lang.trim();
    if (f.faceIndex == 0) {
      return frontLang.trim().isNotEmpty ? frontLang.trim() : deckFrontLang.trim();
    }
    if (f.faceIndex == 1) {
      return backLang.trim().isNotEmpty ? backLang.trim() : deckBackLang.trim();
    }
    return deckBackLang.trim().isNotEmpty ? deckBackLang.trim() : deckFrontLang.trim();
  }

  /// Adds a custom field without touching existing fields or card values.
  CardLayout addCustomField({
    required String name,
    String lang = '',
    CardSide side = CardSide.back,
    int? face,
    bool isTranslation = false,
  }) {
    if (customFields.length >= maxCustomFields || name.trim().isEmpty) return this;
    final trimmed = name.trim();
    final capped = trimmed.length > maxLabel ? trimmed.substring(0, maxLabel) : trimmed;
    final resolvedSide = face == 0 ? CardSide.front : side;
    return copyWith(
      customFields: [
        ...customFields,
        CustomField(
          id: nextCustomId(),
          name: capped,
          lang: lang.trim(),
          side: resolvedSide,
          face: face,
          isTranslation: isTranslation,
        ),
      ],
    );
  }

  /// Renames a custom field by [id] while keeping its id (preserving card data).
  CardLayout renameCustomField(String id, String newName) {
    final trimmed = newName.trim();
    if (trimmed.isEmpty) return this;
    final capped = trimmed.length > maxLabel ? trimmed.substring(0, maxLabel) : trimmed;
    return copyWith(
      customFields: [for (final f in customFields) f.id == id ? f.copyWith(name: capped) : f],
    );
  }

  /// Shows or hides a custom field without deleting its stored card values.
  CardLayout toggleCustomFieldVisibility(String id, bool visible) => copyWith(
    customFields: [for (final f in customFields) f.id == id ? f.copyWith(hidden: !visible) : f],
  );

  /// Moves a custom field by [delta] (-1 up, +1 down) in display order.
  CardLayout reorderCustomField(String id, int delta) {
    final i = customFields.indexWhere((f) => f.id == id);
    if (i < 0) return this;
    final j = i + delta;
    if (j < 0 || j >= customFields.length) return this;
    final next = [...customFields];
    final item = next.removeAt(i);
    next.insert(j, item);
    return copyWith(customFields: next);
  }

  /// Removes a custom field from the layout (card JSON values remain intact).
  CardLayout removeCustomField(String id) =>
      copyWith(customFields: [for (final f in customFields) if (f.id != id) f]);

  /// Adds a new face (index >= 2) to support multi-sided cards.
  CardLayout addFace({String label = '', String lang = ''}) {
    final current = effectiveFaces;
    if (current.length >= maxFaces) return this;
    final nextIdx = current.length;
    return copyWith(
      faces: [...current, CardFace(index: nextIdx, label: label.trim(), lang: lang.trim())],
    );
  }

  /// Renames or sets the speech language for face [index].
  CardLayout updateFace(int index, {String? label, String? lang}) {
    if (index < 0 || index >= maxFaces) return this;
    final current = effectiveFaces;
    final updated = [
      for (final f in current)
        f.index == index ? f.copyWith(label: label, lang: lang) : f,
    ];
    return copyWith(
      faces: updated,
      frontLang: index == 0 && lang != null ? lang.trim() : frontLang,
      backLang: index == 1 && lang != null ? lang.trim() : backLang,
    );
  }

  /// Non-destructively applies [template] onto this layout: assigns fresh IDs
  /// to template custom fields and preserves all existing custom fields, labels,
  /// field languages, and multi-face settings.
  CardLayout applyTemplateNonDestructive(CardLayout template) {
    var merged = copyWith(customFields: [...customFields]);
    final added = <CustomField>[];
    for (final f in template.customFields) {
      if (merged.customFields.length + added.length >= maxCustomFields) break;
      final withId = CustomField(
        id: merged.nextCustomId(),
        name: f.name,
        lang: f.lang,
        side: f.side,
        face: f.face,
        hidden: f.hidden,
        isTranslation: f.isTranslation,
      );
      added.add(withId);
      merged = merged.copyWith(customFields: [...merged.customFields, withId]);
    }
    return template.copyWith(
      labels: labels,
      fieldLangs: fieldLangs,
      faces: faces.isNotEmpty ? faces : template.faces,
      frontLang: frontLang.isNotEmpty ? frontLang : template.frontLang,
      backLang: backLang.isNotEmpty ? backLang : template.backLang,
      customFields: [...customFields, ...added].take(maxCustomFields).toList(),
    );
  }

  CardLayout copyWith({
    List<CardField>? order,
    Map<CardField, String>? labels,
    Set<CardField>? hidden,
    bool? stepReveal,
    List<CustomField>? customFields,
    Map<CardField, String>? fieldLangs,
    List<CardFace>? faces,
    String? frontLang,
    String? backLang,
  }) => CardLayout(
    order: order ?? this.order,
    labels: labels ?? this.labels,
    hidden: hidden ?? this.hidden,
    stepReveal: stepReveal ?? this.stepReveal,
    customFields: customFields ?? this.customFields,
    fieldLangs: fieldLangs ?? this.fieldLangs,
    faces: faces ?? this.faces,
    frontLang: frontLang ?? this.frontLang,
    backLang: backLang ?? this.backLang,
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
    if (faces.isNotEmpty) 'faces': [for (final f in faces) f.toJson()],
    if (frontLang.isNotEmpty) 'frontLang': frontLang,
    if (backLang.isNotEmpty) 'backLang': backLang,
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
        faces: [for (final f in (j['faces'] as List?) ?? const []) ?CardFace.tryParse(f)]
            .take(maxFaces)
            .toList(),
        frontLang: j['frontLang'] is String ? j['frontLang'] as String : '',
        backLang: j['backLang'] is String ? j['backLang'] as String : '',
      );
    } on FormatException {
      return const CardLayout();
    }
  }
}
