import 'package:flutter/widgets.dart';

import '../gen/app_localizations.dart';

part 'custom_l10n.g.dart';

/// The user's own wording: language code → message key → text. Applied on top of
/// the translations for every screen, notification and widget text.
typedef CustomWords = Map<String, Map<String, String>>;

/// The wording in use, for code that builds texts outside the widget tree
/// (notifications, the phone's guard and widgets). Set by the settings provider.
CustomWords currentCustomWords = const {};

/// [base] with the user's wording for its language, if any.
AppLocalizations withCustomWords(AppLocalizations base, [CustomWords? words]) {
  final lang = Locale(base.localeName.split(RegExp('[_-]')).first).languageCode;
  final o = (words ?? currentCustomWords)[lang];
  return o == null || o.isEmpty ? base : _CustomL10n(base, o);
}

/// Replaces AppLocalizations.delegate: the same translations plus the user's wording.
class CustomWordsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const CustomWordsDelegate(this.words);
  final CustomWords words;

  @override
  bool isSupported(Locale locale) => AppLocalizations.delegate.isSupported(locale);

  @override
  Future<AppLocalizations> load(Locale locale) async =>
      withCustomWords(await AppLocalizations.delegate.load(locale), words);

  @override
  bool shouldReload(CustomWordsDelegate old) => !identical(old.words, words);
}
