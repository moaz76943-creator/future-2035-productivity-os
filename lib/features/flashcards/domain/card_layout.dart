import 'dart:convert';

import 'card_extras.dart';

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
  });

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
  }) => CardLayout(
    order: order ?? this.order,
    labels: labels ?? this.labels,
    hidden: hidden ?? this.hidden,
    stepReveal: stepReveal ?? this.stepReveal,
  );

  String encode() => jsonEncode({
    'order': [for (final f in order) f.name],
    'labels': {
      for (final e in labels.entries)
        if (e.value.trim().isNotEmpty) e.key.name: e.value.trim(),
    },
    'hidden': [for (final f in hidden) f.name],
    'stepReveal': stepReveal,
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
      );
    } on FormatException {
      return const CardLayout();
    }
  }
}
