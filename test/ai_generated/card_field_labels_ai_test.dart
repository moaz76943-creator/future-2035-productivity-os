import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/flashcards/domain/card_field_labels.dart';
import 'package:future_os/features/flashcards/domain/card_extras.dart';
import 'package:future_os/app/localization/app_locales.dart';
import 'package:future_os/l10n/gen/app_localizations.dart';
import 'package:flutter/widgets.dart' show Locale;

class _FakeAppLocalizations implements AppLocalizations {
  @override
  String get cardFieldExample => 'Example';
  @override
  String get cardFieldExplanation => 'Explanation';
  @override
  String get cardFieldPronunciation => 'Pronunciation';
  @override
  String get cardFieldNotes => 'Notes';
  @override
  String get cardFront => 'Front';
  @override
  String get cardBack => 'Back';
  @override
  String get cardTags => 'Tags';
  @override
  String get localeName => 'en';
  @override
  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

void main() {
  group('cardFieldLabel', () {
    final l10n = _FakeAppLocalizations();

    test('returns correct label for each CardField', () {
      expect(cardFieldLabel(l10n, CardField.example), 'Example');
      expect(cardFieldLabel(l10n, CardField.explanation), 'Explanation');
      expect(cardFieldLabel(l10n, CardField.pronunciation), 'Pronunciation');
      expect(cardFieldLabel(l10n, CardField.notes), 'Notes');
    });
  });

  group('cardHeaderAliases', () {
    test('returns a map and caches the result', () {
      final first = cardHeaderAliases();
      final second = cardHeaderAliases();
      expect(first, same(second));
      expect(first, isNotEmpty);
    });

    test('contains expected keys for each locale', () {
      final aliases = cardHeaderAliases();
      for (final lang in AppLocales.all) {
        final l10n = lookupAppLocalizations(Locale(lang.locale.languageCode));
        final expectedKeys = {
          l10n.cardFront.trim().toLowerCase(): 'front',
          l10n.cardBack.trim().toLowerCase(): 'back',
          l10n.cardTags.trim().toLowerCase(): 'tags',
          for (final f in CardField.values) cardFieldLabel(l10n, f).trim().toLowerCase(): f.name,
        };
        for (final entry in expectedKeys.entries) {
          expect(
            aliases[entry.key],
            entry.value,
            reason: 'Locale ${lang.locale.languageCode} key ${entry.key}',
          );
        }
      }
    });
  });
}
