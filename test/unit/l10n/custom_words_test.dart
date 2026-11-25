import 'dart:io';

import 'package:material_ui/material_ui.dart' show Locale;
import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/app/localization/app_locales.dart';
import 'package:future_os/l10n/custom/custom_words.dart';
import 'package:future_os/l10n/gen/app_localizations.dart';

void main() {
  test('own words replace plain texts of their language only', () {
    final en = lookupAppLocalizations(const Locale('en'));
    final ar = lookupAppLocalizations(const Locale('ar'));
    const words = {
      'en': {'navTasks': 'To-dos'},
    };
    expect(withCustomWords(en, words).navTasks, 'To-dos');
    expect(withCustomWords(en, words).navHome, en.navHome);
    expect(withCustomWords(ar, words).navTasks, ar.navTasks);
    // Texts with placeholders keep working through the layer.
    expect(withCustomWords(en, words).guardAppsCount(2), en.guardAppsCount(2));
  });

  test('every plain text can be renamed and its base value is shown', () {
    final en = lookupAppLocalizations(const Locale('en'));
    expect(customWordKeys.length, greaterThan(1000));
    expect(customWordBase(en, 'navTasks'), en.navTasks);
    expect(customWordKeys.toSet().length, customWordKeys.length);
  });

  test('the wording layer is generated from the current translations', () async {
    final r = await Process.run('python3', ['tool/gen_l10n_custom.py', '--check']);
    expect(r.exitCode, 0, reason: '${r.stdout}${r.stderr}');
  });

  test('every language loads, with Material texts and the right direction', () async {
    for (final lang in AppLocales.all) {
      expect(AppLocalizations.delegate.isSupported(lang.locale), isTrue, reason: lang.tag);
      final l = await const CustomWordsDelegate({}).load(lang.locale);
      expect(l.appName, isNotEmpty);
      for (final d in AppLocales.delegates.skip(1)) {
        expect(d.isSupported(lang.locale), isTrue, reason: '${d.runtimeType} ${lang.tag}');
      }
      expect(lang.isRtl, AppLocales.rtlLanguages.contains(lang.locale.languageCode));
    }
    expect(AppLocales.byTag('ar')!.isRtl, isTrue);
    expect(AppLocales.byTag('en')!.isRtl, isFalse);
  });
}
