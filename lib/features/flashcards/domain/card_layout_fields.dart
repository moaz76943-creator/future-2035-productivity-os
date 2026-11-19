part of 'card_layout.dart';

/// Which side of the card a custom field belongs to.
enum CardSide { front, back }

/// One face of a multi-sided card (0 = front/source, 1 = back/primary,
/// 2+ = extra faces). Each face can carry its own label and speech language.
class CardFace {
  const CardFace({required this.index, this.label = '', this.lang = ''});

  final int index;
  final String label;

  /// BCP-47 speech language for this face ('' = deck default).
  final String lang;

  Map<String, Object?> toJson() => {
    'index': index,
    if (label.trim().isNotEmpty) 'label': label.trim(),
    if (lang.trim().isNotEmpty) 'lang': lang.trim(),
  };

  static CardFace? tryParse(Object? j) {
    if (j is! Map) return null;
    final idx = j['index'];
    if (idx is! int || idx < 0 || idx >= CardLayout.maxFaces) return null;
    final rawLabel = j['label'] is String ? (j['label'] as String).trim() : '';
    final label = rawLabel.length > CardLayout.maxLabel
        ? rawLabel.substring(0, CardLayout.maxLabel)
        : rawLabel;
    final lang = j['lang'] is String ? (j['lang'] as String).trim() : '';
    return CardFace(index: idx, label: label, lang: lang);
  }

  CardFace copyWith({String? label, String? lang}) =>
      CardFace(index: index, label: label ?? this.label, lang: lang ?? this.lang);
}

/// A field the user added to a deck (e.g. "Translation (FR)", "Plural",
/// "Level"), with its own speech language. Values live in the card's
/// `custom` JSON keyed by [id], so renaming never touches content.
class CustomField {
  const CustomField({
    required this.id,
    required this.name,
    this.lang = '',
    this.side = CardSide.back,
    this.face,
    this.hidden = false,
    this.isTranslation = false,
  });
  final String id;
  final String name;

  /// BCP-47 speech language ('' = the side/face's deck language).
  final String lang;
  final CardSide side;

  /// Optional 0-based face index for multi-sided cards (2+ faces).
  /// When null, resolves to `0` for [CardSide.front] and `1` for [CardSide.back].
  final int? face;

  /// Whether this field is hidden in study view without deleting its data.
  final bool hidden;

  /// Marks this field as an additional translation (kept distinct from source text).
  final bool isTranslation;

  int get faceIndex => face ?? (side == CardSide.front ? 0 : 1);

  Map<String, Object?> toJson() => {
    'id': id,
    'name': name,
    'lang': lang,
    'side': side.name,
    if (face != null && face! >= 2) 'face': face,
    if (hidden) 'hidden': true,
    if (isTranslation) 'isTranslation': true,
  };

  static CustomField? tryParse(Object? j) {
    if (j is! Map) return null;
    final id = j['id'], name = j['name'];
    if (id is! String || !RegExp(r'^c\d{1,4}$').hasMatch(id)) return null;
    if (name is! String || name.trim().isEmpty) return null;
    final rawFace = j['face'];
    final face = rawFace is int && rawFace >= 0 && rawFace < CardLayout.maxFaces ? rawFace : null;
    final side = face == 0
        ? CardSide.front
        : (CardSide.values.asNameMap()[j['side']] ?? CardSide.back);
    return CustomField(
      id: id,
      name: name.length > CardLayout.maxLabel ? name.substring(0, CardLayout.maxLabel) : name,
      lang: j['lang'] is String ? j['lang'] as String : '',
      side: side,
      face: face,
      hidden: j['hidden'] == true,
      isTranslation: j['isTranslation'] == true,
    );
  }

  CustomField copyWith({
    String? name,
    String? lang,
    CardSide? side,
    int? face,
    bool clearFace = false,
    bool? hidden,
    bool? isTranslation,
  }) => CustomField(
    id: id,
    name: name ?? this.name,
    lang: lang ?? this.lang,
    side: side ?? this.side,
    face: clearFace ? null : (face ?? this.face),
    hidden: hidden ?? this.hidden,
    isTranslation: isTranslation ?? this.isTranslation,
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

  /// Extracts non-empty translation values defined by [layout], keeping them
  /// strictly separated from the source text (`front`).
  static List<({CustomField field, String value})> translationsOf(
    Map<String, String> values,
    CardLayout layout,
  ) => [
    for (final f in layout.customFields)
      if (f.isTranslation && (values[f.id]?.trim().isNotEmpty ?? false))
        (field: f, value: values[f.id]!.trim()),
  ];
}
