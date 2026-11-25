import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/platform/phone_care.dart';
import '../domain/world_languages.dart';

/// Loads every card language's name in the app language [tag] from the phone
/// and makes [languageDisplayName] use it ("Indonesian (Bahasa Indonesia)").
final languageNamesProvider = FutureProvider.family<void, String>((ref, tag) async {
  final names = await ref.read(phoneCareProvider).languageNames(worldLanguages.keys.toList(), tag);
  localLanguageNames = {
    for (final e in names.entries)
      if (e.value.isNotEmpty && e.value != e.key) e.key: e.value,
  };
});
