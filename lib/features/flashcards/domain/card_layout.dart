import 'dart:convert';

import 'card_extras.dart';

part 'card_layout_fields.dart';
part 'card_layout_templates.dart';
part 'card_layout_mutations.dart';

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
    this.fieldVoices = const {},
    this.fieldRates = const {},
    this.fieldRepeats = const {},
    this.faces = const [],
    this.frontLang = '',
    this.backLang = '',
    this.frontVoice = '',
    this.backVoice = '',
    this.frontRate = 1.0,
    this.backRate = 1.0,
    this.frontRepeat = 1,
    this.backRepeat = 1,
  });

  static const maxCustomFields = 12;
  static const maxFaces = 8;

  /// Fields added by the user, in display order.
  final List<CustomField> customFields;

  /// Speech language per built-in field ('' or missing = default).
  final Map<CardField, String> fieldLangs;

  /// Speech voice per built-in field.
  final Map<CardField, String> fieldVoices;

  /// Speech rate per built-in field.
  final Map<CardField, double> fieldRates;

  /// Repeat count per built-in field.
  final Map<CardField, int> fieldRepeats;

  /// Optional multi-face definitions (0 = front, 1 = back, 2+ = extra faces).
  final List<CardFace> faces;

  /// Optional layout-level language overrides for front/back.
  final String frontLang;
  final String backLang;

  /// Optional layout-level voice overrides for front/back.
  final String frontVoice;
  final String backVoice;

  /// Optional layout-level rate overrides for front/back.
  final double frontRate;
  final double backRate;

  /// Optional layout-level repeat overrides for front/back.
  final int frontRepeat;
  final int backRepeat;

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
              voice: i == 0 ? frontVoice : (i == 1 ? backVoice : ''),
              rate: i == 0 ? frontRate : (i == 1 ? backRate : 1.0),
              repeat: i == 0 ? frontRepeat : (i == 1 ? backRepeat : 1),
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

  CardLayout copyWith({
    List<CardField>? order,
    Map<CardField, String>? labels,
    Set<CardField>? hidden,
    bool? stepReveal,
    List<CustomField>? customFields,
    Map<CardField, String>? fieldLangs,
    Map<CardField, String>? fieldVoices,
    Map<CardField, double>? fieldRates,
    Map<CardField, int>? fieldRepeats,
    List<CardFace>? faces,
    String? frontLang,
    String? backLang,
    String? frontVoice,
    String? backVoice,
    double? frontRate,
    double? backRate,
    int? frontRepeat,
    int? backRepeat,
  }) => CardLayout(
    order: order ?? this.order,
    labels: labels ?? this.labels,
    hidden: hidden ?? this.hidden,
    stepReveal: stepReveal ?? this.stepReveal,
    customFields: customFields ?? this.customFields,
    fieldLangs: fieldLangs ?? this.fieldLangs,
    fieldVoices: fieldVoices ?? this.fieldVoices,
    fieldRates: fieldRates ?? this.fieldRates,
    fieldRepeats: fieldRepeats ?? this.fieldRepeats,
    faces: faces ?? this.faces,
    frontLang: frontLang ?? this.frontLang,
    backLang: backLang ?? this.backLang,
    frontVoice: frontVoice ?? this.frontVoice,
    backVoice: backVoice ?? this.backVoice,
    frontRate: frontRate ?? this.frontRate,
    backRate: backRate ?? this.backRate,
    frontRepeat: frontRepeat ?? this.frontRepeat,
    backRepeat: backRepeat ?? this.backRepeat,
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
    'fieldVoices': {
      for (final e in fieldVoices.entries)
        if (e.value.isNotEmpty) e.key.name: e.value,
    },
    'fieldRates': {
      for (final e in fieldRates.entries)
        if (e.value != 1.0) e.key.name: e.value,
    },
    'fieldRepeats': {
      for (final e in fieldRepeats.entries)
        if (e.value != 1) e.key.name: e.value,
    },
    if (faces.isNotEmpty) 'faces': [for (final f in faces) f.toJson()],
    if (frontLang.isNotEmpty) 'frontLang': frontLang,
    if (backLang.isNotEmpty) 'backLang': backLang,
    if (frontVoice.isNotEmpty) 'frontVoice': frontVoice,
    if (backVoice.isNotEmpty) 'backVoice': backVoice,
    if (frontRate != 1.0) 'frontRate': frontRate,
    if (backRate != 1.0) 'backRate': backRate,
    if (frontRepeat != 1) 'frontRepeat': frontRepeat,
    if (backRepeat != 1) 'backRepeat': backRepeat,
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
        fieldVoices: {
          for (final e in ((j['fieldVoices'] as Map?) ?? const {}).entries)
            if (byName[e.key] case final f? when e.value is String) f: e.value as String,
        },
        fieldRates: {
          for (final e in ((j['fieldRates'] as Map?) ?? const {}).entries)
            if (byName[e.key] case final f? when e.value is num) f: (e.value as num).toDouble(),
        },
        fieldRepeats: {
          for (final e in ((j['fieldRepeats'] as Map?) ?? const {}).entries)
            if (byName[e.key] case final f? when e.value is int) f: e.value as int,
        },
        faces: [for (final f in (j['faces'] as List?) ?? const []) ?CardFace.tryParse(f)]
            .take(maxFaces)
            .toList(),
        frontLang: j['frontLang'] is String ? j['frontLang'] as String : '',
        backLang: j['backLang'] is String ? j['backLang'] as String : '',
        frontVoice: j['frontVoice'] is String ? j['frontVoice'] as String : '',
        backVoice: j['backVoice'] is String ? j['backVoice'] as String : '',
        frontRate: j['frontRate'] is num ? (j['frontRate'] as num).toDouble() : 1.0,
        backRate: j['backRate'] is num ? (j['backRate'] as num).toDouble() : 1.0,
        frontRepeat: j['frontRepeat'] is int ? j['frontRepeat'] as int : 1,
        backRepeat: j['backRepeat'] is int ? j['backRepeat'] as int : 1,
      );
    } on FormatException {
      return const CardLayout();
    }
  }
}
