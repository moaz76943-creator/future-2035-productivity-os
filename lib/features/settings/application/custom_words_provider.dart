import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers/core_providers.dart';
import '../../../l10n/custom/custom_words.dart';

/// The user's own wording per language, kept as one JSON value in the settings
/// store (and so in backups). Empty texts are never stored: "reset" deletes.
class CustomWordsNotifier extends AsyncNotifier<CustomWords> {
  static const key = 'l10n.custom';
  static const maxLength = 200;

  @override
  Future<CustomWords> build() async {
    final raw = await ref.read(databaseProvider).readValue(key);
    final words = _parse(raw);
    currentCustomWords = words;
    return words;
  }

  static CustomWords _parse(String? raw) {
    if (raw == null) return const {};
    try {
      final j = jsonDecode(raw) as Map<String, Object?>;
      return {
        for (final e in j.entries)
          if (e.value is Map)
            e.key: {
              for (final w in (e.value! as Map).entries)
                if (w.value is String && (w.value as String).trim().isNotEmpty)
                  '${w.key}': w.value as String,
            },
      };
    } on Object {
      return const {};
    }
  }

  Future<void> _save(CustomWords next) async {
    final clean = {
      for (final e in next.entries)
        if (e.value.isNotEmpty) e.key: e.value,
    };
    currentCustomWords = clean;
    state = AsyncData(clean);
    await ref.read(databaseProvider).writeValue(key, jsonEncode(clean));
  }

  /// Sets the text of [word] in [lang]; an empty or unchanged text resets it.
  Future<void> rename(String lang, String word, String text, {required String original}) {
    final t = text.trim();
    final words = {...?state.value?[lang]};
    if (t.isEmpty || t == original) {
      words.remove(word);
    } else {
      words[word] = t.length > maxLength ? t.substring(0, maxLength) : t;
    }
    return _save({...?state.value, lang: words});
  }

  Future<void> resetAll(String lang) => _save({...?state.value}..remove(lang));
}

final customWordsProvider = AsyncNotifierProvider<CustomWordsNotifier, CustomWords>(
  CustomWordsNotifier.new,
);
