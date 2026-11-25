import 'package:cupertino_ui/cupertino_ui.dart'
    show CupertinoLocalizations, GlobalCupertinoLocalizations;
import 'package:flutter_localizations/flutter_localizations.dart' show GlobalWidgetsLocalizations;
import 'package:material_ui/material_ui.dart';

import '../../l10n/custom/custom_words.dart';
import '../../l10n/gen/app_localizations.dart';
import 'fallback_localizations.dart';

part 'app_languages.g.dart';

/// A language the product officially supports.
///
/// The list lives in lib/l10n/languages.json and is generated into
/// app_languages.g.dart by `python3 tool/gen_languages.py`. Add a language with
/// `python3 tool/l10n_add_language.py`; tool/check_l10n.py fails until it is
/// fully translated (docs/localization/localization_guide.md).
@immutable
class SupportedLanguage {
  const SupportedLanguage({
    required this.tag,
    required this.locale,
    required this.nativeName,
    required this.intlLocale,
    required this.englishName,
    required this.script,
    this.regions = const [],
  });

  /// BCP-47 tag persisted in settings, e.g. `zh-CN`.
  final String tag;

  /// Locale handed to Flutter. Its language code selects the ARB file.
  final Locale locale;

  /// Language name written in the language itself. Never a flag.
  final String nativeName;

  /// Locale name used for `intl` date/number formatting.
  final String intlLocale;

  /// Name in English, so the picker can be searched either way.
  final String englishName;

  /// Writing system (ISO 15924), e.g. `Latn`, `Arab`, `Jpan`.
  final String script;

  /// Countries whose phones get this language variant (en-GB: GB, AU, ...).
  final List<String> regions;

  bool get isRtl => AppLocales.rtlLanguages.contains(locale.languageCode);
}

abstract final class AppLocales {
  /// Languages written right to left (generated). No Hebrew in this app.
  static const rtlLanguages = _rtlLanguages;

  /// Delegates for app strings plus framework widgets (Material/Cupertino
  /// from the decoupled design libraries). A language the framework has no
  /// translations for gets its English texts and still the right direction.
  static const delegates = <LocalizationsDelegate<dynamic>>[
    AppLocalizations.delegate,
    FallbackLocalizationsDelegate<MaterialLocalizations>(GlobalMaterialLocalizations.delegate),
    FallbackLocalizationsDelegate<CupertinoLocalizations>(GlobalCupertinoLocalizations.delegate),
    FallbackWidgetsLocalizationsDelegate(GlobalWidgetsLocalizations.delegate, _rtlLanguages),
  ];

  /// [delegates] with the user's own wording (Settings → Language → Rename words).
  static List<LocalizationsDelegate<dynamic>> delegatesWith(CustomWords words) => [
    CustomWordsDelegate(words),
    ...delegates.skip(1),
  ];

  static final english = byTag('en')!;

  /// Display order in the language picker (lib/l10n/languages.json).
  static const all = _languages;

  static List<Locale> get locales => [for (final l in all) l.locale];

  static SupportedLanguage? byTag(String? tag) {
    if (tag == null) return null;
    for (final l in all) {
      if (l.tag == tag) return l;
    }
    return null;
  }

  /// The best app language for a device [locale]: same language, preferring
  /// the same script (zh-Hant) and a variant made for its region (en-GB for
  /// GB or AU, pt-PT for PT, zh-Hant for TW or HK). Never a different
  /// language: unsupported device languages fall back to English.
  static SupportedLanguage? match(Locale locale) {
    SupportedLanguage? best;
    var bestScore = 0;
    for (final l in all) {
      if (l.locale.languageCode != locale.languageCode) continue;
      var score = l.regions.isEmpty ? 1 : 0;
      if (locale.scriptCode != null && locale.scriptCode == l.locale.scriptCode) score += 4;
      if (locale.countryCode != null && l.regions.contains(locale.countryCode)) score += 2;
      if (score > bestScore) {
        best = l;
        bestScore = score;
      }
    }
    return best;
  }

  static SupportedLanguage forLocale(Locale? locale) =>
      (locale == null ? null : match(locale)) ?? english;

  /// Resolves the language to use: explicit user choice first, then the
  /// first supported device language, then English.
  static SupportedLanguage resolve(String? userTag, List<Locale> deviceLocales) {
    final chosen = byTag(userTag);
    if (chosen != null) return chosen;
    for (final d in deviceLocales) {
      final m = match(d);
      if (m != null) return m;
    }
    return english;
  }
}
