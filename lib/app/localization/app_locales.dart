import 'package:cupertino_ui/cupertino_ui.dart' show GlobalCupertinoLocalizations;
import 'package:flutter_localizations/flutter_localizations.dart' show GlobalWidgetsLocalizations;
import 'package:material_ui/material_ui.dart';

import '../../l10n/custom/custom_words.dart';
import '../../l10n/gen/app_localizations.dart';

/// A language the product officially supports.
///
/// Add a language with `python3 tool/l10n_add_language.py <code> "<native name>"`: it
/// creates the ARB file, the Android strings and the entry below, and
/// tool/check_l10n.py fails until it is fully translated
/// (docs/localization/localization_guide.md).
@immutable
class SupportedLanguage {
  const SupportedLanguage({
    required this.tag,
    required this.locale,
    required this.nativeName,
    required this.intlLocale,
  });

  /// BCP-47 tag persisted in settings, e.g. `zh-CN`.
  final String tag;

  /// Locale handed to Flutter. Its language code selects the ARB file.
  final Locale locale;

  /// Language name written in the language itself. Never a flag.
  final String nativeName;

  /// Locale name used for `intl` date/number formatting.
  final String intlLocale;

  bool get isRtl => AppLocales.rtlLanguages.contains(locale.languageCode);
}

abstract final class AppLocales {
  /// Languages written right to left. tool/check_l10n.py keeps this in step
  /// with tool/l10n_common.py. (No Hebrew in this app.)
  static const rtlLanguages = {'ar', 'fa', 'ur', 'ps', 'sd', 'ug', 'ckb', 'dv', 'yi'};

  /// Delegates for app strings plus framework widgets (Material/Cupertino
  /// from the decoupled design libraries).
  static const delegates = <LocalizationsDelegate<dynamic>>[
    AppLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// [delegates] with the user's own wording (Settings → Language → Rename words).
  static List<LocalizationsDelegate<dynamic>> delegatesWith(CustomWords words) => [
    CustomWordsDelegate(words),
    ...delegates.skip(1),
  ];

  static const english = SupportedLanguage(
    tag: 'en',
    locale: Locale('en'),
    nativeName: 'English',
    intlLocale: 'en',
  );

  /// Display order in the language picker.
  static const all = <SupportedLanguage>[
    SupportedLanguage(tag: 'ar', locale: Locale('ar'), nativeName: 'العربية', intlLocale: 'ar'),
    english,
    SupportedLanguage(
      tag: 'zh-CN',
      locale: Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans', countryCode: 'CN'),
      nativeName: '中文',
      intlLocale: 'zh_CN',
    ),
    SupportedLanguage(tag: 'es', locale: Locale('es'), nativeName: 'Español', intlLocale: 'es'),
    SupportedLanguage(tag: 'ru', locale: Locale('ru'), nativeName: 'Русский', intlLocale: 'ru'),
    SupportedLanguage(tag: 'fr', locale: Locale('fr'), nativeName: 'Français', intlLocale: 'fr'),
    SupportedLanguage(
      tag: 'pt-BR',
      locale: Locale('pt', 'BR'),
      nativeName: 'Português (Brasil)',
      intlLocale: 'pt_BR',
    ),
    SupportedLanguage(
      tag: 'hi-IN',
      locale: Locale('hi', 'IN'),
      nativeName: 'हिन्दी',
      intlLocale: 'hi',
    ),
    SupportedLanguage(tag: 'de', locale: Locale('de'), nativeName: 'Deutsch', intlLocale: 'de'),
    SupportedLanguage(tag: 'it', locale: Locale('it'), nativeName: 'Italiano', intlLocale: 'it'),
    SupportedLanguage(tag: 'tr', locale: Locale('tr'), nativeName: 'Türkçe', intlLocale: 'tr'),
    SupportedLanguage(tag: 'pl', locale: Locale('pl'), nativeName: 'Polski', intlLocale: 'pl'),
    SupportedLanguage(tag: 'id', locale: Locale('id'), nativeName: 'Bahasa Indonesia', intlLocale: 'id'),
    SupportedLanguage(tag: 'vi', locale: Locale('vi'), nativeName: 'Tiếng Việt', intlLocale: 'vi'),
    SupportedLanguage(tag: 'ja', locale: Locale('ja'), nativeName: '日本語', intlLocale: 'ja'),
    SupportedLanguage(tag: 'ko', locale: Locale('ko'), nativeName: '한국어', intlLocale: 'ko'),
    SupportedLanguage(tag: 'th', locale: Locale('th'), nativeName: 'ไทย', intlLocale: 'th'),
    SupportedLanguage(tag: 'bn', locale: Locale('bn'), nativeName: 'বাংলা', intlLocale: 'bn'),
    SupportedLanguage(tag: 'ur', locale: Locale('ur'), nativeName: 'اردو', intlLocale: 'ur'),
    SupportedLanguage(tag: 'fa', locale: Locale('fa'), nativeName: 'فارسی', intlLocale: 'fa'),
  ];

  static List<Locale> get locales => [for (final l in all) l.locale];

  static SupportedLanguage? byTag(String? tag) {
    if (tag == null) return null;
    for (final l in all) {
      if (l.tag == tag) return l;
    }
    return null;
  }

  /// Exact language match only; there is no silent substitution of a
  /// different language. Unsupported device languages fall back to English,
  /// which is the documented default.
  static SupportedLanguage forLocale(Locale? locale) {
    if (locale == null) return english;
    for (final l in all) {
      if (l.locale.languageCode == locale.languageCode) return l;
    }
    return english;
  }

  /// Resolves the language to use: explicit user choice first, then the
  /// first supported device language, then English.
  static SupportedLanguage resolve(String? userTag, List<Locale> deviceLocales) {
    final chosen = byTag(userTag);
    if (chosen != null) return chosen;
    for (final d in deviceLocales) {
      for (final l in all) {
        if (l.locale.languageCode == d.languageCode) return l;
      }
    }
    return english;
  }
}
