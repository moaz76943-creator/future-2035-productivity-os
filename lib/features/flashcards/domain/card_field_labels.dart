import 'package:flutter/widgets.dart' show Locale;

import '../../../app/localization/app_locales.dart';
import '../../../l10n/gen/app_localizations.dart';
import 'card_extras.dart';

/// Name of an optional card field in the app language.
String cardFieldLabel(AppLocalizations l10n, CardField f) => switch (f) {
  CardField.example => l10n.cardFieldExample,
  CardField.explanation => l10n.cardFieldExplanation,
  CardField.pronunciation => l10n.cardFieldPronunciation,
  CardField.notes => l10n.cardFieldNotes,
};

Map<String, String>? _aliases;

/// Column names a cards file may use, in every app language (the names the
/// app itself writes on export), mapped to field names. Lower-case.
Map<String, String> cardHeaderAliases() => _aliases ??= {
  for (final lang in AppLocales.all)
    ...() {
      final l = lookupAppLocalizations(Locale(lang.locale.languageCode));
      return {
        l.cardFront.trim().toLowerCase(): 'front',
        l.cardBack.trim().toLowerCase(): 'back',
        l.cardTags.trim().toLowerCase(): 'tags',
        for (final f in CardField.values) cardFieldLabel(l, f).trim().toLowerCase(): f.name,
      };
    }(),
};
