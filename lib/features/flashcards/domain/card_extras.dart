import 'dart:convert';

/// Optional fields of a flashcard beyond front/back, stored as a small JSON
/// object in `flashcards.extra` ('' when none). Only these keys are accepted.
enum CardField { example, explanation, pronunciation, notes }

class CardExtras {
  const CardExtras([this.values = const {}]);

  static const maxLength = 2000;

  final Map<CardField, String> values;

  bool get isEmpty => values.values.every((v) => v.trim().isEmpty);

  String? operator [](CardField f) {
    final v = values[f]?.trim();
    return v == null || v.isEmpty ? null : v;
  }

  CardExtras copyWith(CardField f, String value) => CardExtras({...values, f: value});

  /// '' for no extras, otherwise compact JSON with trimmed, non-empty values.
  String encode() {
    final out = <String, String>{
      for (final f in CardField.values)
        if (this[f] case final v?) f.name: v.length > maxLength ? v.substring(0, maxLength) : v,
    };
    return out.isEmpty ? '' : jsonEncode(out);
  }

  /// Tolerant decoding: unknown keys, non-string values and malformed JSON
  /// (e.g. a hand-edited backup) are ignored instead of breaking the card.
  static CardExtras decode(String raw) {
    if (raw.trim().isEmpty) return const CardExtras();
    try {
      final map = jsonDecode(raw);
      if (map is! Map) return const CardExtras();
      return CardExtras({
        for (final f in CardField.values)
          if (map[f.name] case final String v when v.trim().isNotEmpty) f: v,
      });
    } on FormatException {
      return const CardExtras();
    }
  }
}
