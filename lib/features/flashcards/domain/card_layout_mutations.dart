part of 'card_layout.dart';

extension CardLayoutMutations on CardLayout {
  /// Adds a custom field without touching existing fields or card values.
  CardLayout addCustomField({
    required String name,
    String lang = '',
    CardSide side = CardSide.back,
    int? face,
    bool isTranslation = false,
  }) {
    if (customFields.length >= CardLayout.maxCustomFields || name.trim().isEmpty) return this;
    final trimmed = name.trim();
    final capped = trimmed.length > CardLayout.maxLabel ? trimmed.substring(0, CardLayout.maxLabel) : trimmed;
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
    final capped = trimmed.length > CardLayout.maxLabel ? trimmed.substring(0, CardLayout.maxLabel) : trimmed;
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
    if (current.length >= CardLayout.maxFaces) return this;
    final nextIdx = current.length;
    return copyWith(
      faces: [...current, CardFace(index: nextIdx, label: label.trim(), lang: lang.trim())],
    );
  }

  /// Renames or sets the speech language for face [index].
  CardLayout updateFace(int index, {String? label, String? lang, String? voice, double? rate, int? repeat}) {
    if (index < 0 || index >= CardLayout.maxFaces) return this;
    final current = effectiveFaces;
    final updated = [
      for (final f in current)
        f.index == index ? f.copyWith(label: label, lang: lang, voice: voice, rate: rate, repeat: repeat) : f,
    ];
    return copyWith(
      faces: updated,
      frontLang: index == 0 && lang != null ? lang.trim() : frontLang,
      backLang: index == 1 && lang != null ? lang.trim() : backLang,
      frontVoice: index == 0 && voice != null ? voice.trim() : frontVoice,
      backVoice: index == 1 && voice != null ? voice.trim() : backVoice,
      frontRate: index == 0 && rate != null ? rate : frontRate,
      backRate: index == 1 && rate != null ? rate : backRate,
      frontRepeat: index == 0 && repeat != null ? repeat : frontRepeat,
      backRepeat: index == 1 && repeat != null ? repeat : backRepeat,
    );
  }

  /// Non-destructively applies [template] onto this layout: assigns fresh IDs
  /// to template custom fields and preserves all existing custom fields, labels,
  /// field languages, and multi-face settings.
  CardLayout applyTemplateNonDestructive(CardLayout template) {
    var merged = copyWith(customFields: [...customFields]);
    final added = <CustomField>[];
    for (final f in template.customFields) {
      if (merged.customFields.length + added.length >= CardLayout.maxCustomFields) break;
      final withId = CustomField(
        id: merged.nextCustomId(),
        name: f.name,
        lang: f.lang,
        voice: f.voice,
        rate: f.rate,
        repeat: f.repeat,
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
      fieldVoices: fieldVoices,
      fieldRates: fieldRates,
      fieldRepeats: fieldRepeats,
      faces: faces.isNotEmpty ? faces : template.faces,
      frontLang: frontLang.isNotEmpty ? frontLang : template.frontLang,
      backLang: backLang.isNotEmpty ? backLang : template.backLang,
      frontVoice: frontVoice.isNotEmpty ? frontVoice : template.frontVoice,
      backVoice: backVoice.isNotEmpty ? backVoice : template.backVoice,
      frontRate: frontRate != 1.0 ? frontRate : template.frontRate,
      backRate: backRate != 1.0 ? backRate : template.backRate,
      frontRepeat: frontRepeat != 1 ? frontRepeat : template.frontRepeat,
      backRepeat: backRepeat != 1 ? backRepeat : template.backRepeat,
      customFields: [...customFields, ...added].take(CardLayout.maxCustomFields).toList(),
    );
  }
}
