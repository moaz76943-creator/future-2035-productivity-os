import 'dart:convert';
import 'dart:io';

import 'package:cupertino_ui/cupertino_ui.dart' show GlobalCupertinoLocalizations;
import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/app/localization/app_locales.dart';
import 'package:future_os/core/design_system/app_theme.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:material_ui/material_ui.dart';

/// What every language needs beyond its texts, checked against the real
/// libraries (tool/data/l10n_support.json must agree with them).
void main() {
  final support = jsonDecode(File('tool/data/l10n_support.json').readAsStringSync()) as Map;

  test('languages.json and its generated files agree', () async {
    final r = await Process.run('python3', ['tool/gen_languages.py', '--check']);
    expect(r.exitCode, 0, reason: '${r.stdout}${r.stderr}');
  });

  test('every language has date and number data', () async {
    await initializeDateFormatting();
    for (final l in AppLocales.all) {
      expect(DateFormat.localeExists(l.intlLocale), isTrue, reason: l.tag);
      expect(DateFormat.yMMMd(l.intlLocale).format(DateTime(2026, 1, 2)), isNotEmpty);
    }
  });

  test('tool/data/l10n_support.json matches the framework', () {
    final material = (support['material'] as List).cast<String>().toSet();
    final cupertino = (support['cupertino'] as List).cast<String>().toSet();
    for (final code in {...material, 'ckb', 'ha', 'yo', 'so', ...AppLocales.all.map((l) => l.tag)}) {
      final locale = Locale(code.split('-').first);
      expect(
        GlobalMaterialLocalizations.delegate.isSupported(locale),
        material.contains(locale.languageCode),
        reason: 'Material $code: run python3 tool/gen_l10n_support_data.py',
      );
      expect(
        GlobalCupertinoLocalizations.delegate.isSupported(locale),
        cupertino.contains(locale.languageCode),
        reason: 'Cupertino $code: run python3 tool/gen_l10n_support_data.py',
      );
    }
  });

  testWidgets('a language Flutter lacks still works, right to left', (tester) async {
    for (final (code, dir) in [('ckb', TextDirection.rtl), ('ha', TextDirection.ltr)]) {
      late BuildContext ctx;
      await tester.pumpWidget(
        Localizations(
          locale: Locale(code),
          delegates: AppLocales.delegates.skip(1).toList(),
          child: Builder(
            builder: (c) {
              ctx = c;
              return const SizedBox();
            },
          ),
        ),
      );
      await tester.pump();
      expect(Directionality.of(ctx), dir, reason: code);
      expect(MaterialLocalizations.of(ctx).okButtonLabel, 'OK', reason: code);
    }
  });

  test('each writing system gets a font that has its letters', () {
    Locale tag(String t) => AppLocales.byTag(t)!.locale;
    expect(AppFonts.primaryFor(tag('ar')), AppFonts.arabic);
    expect(AppFonts.primaryFor(tag('en')), AppFonts.latin);
    expect(AppFonts.primaryFor(tag('hi-IN')), AppFonts.devanagari);
    // The bundled Arabic font lacks Persian and Urdu letters: the phone draws them.
    expect(AppFonts.primaryFor(tag('fa')), isNull);
    expect(AppFonts.primaryFor(tag('ur')), isNull);
    // Han characters look different per language.
    expect(AppFonts.primaryFor(tag('ja')), isNull);
    expect(AppFonts.fallbackFor(tag('ja')).first, contains('JP'));
    expect(AppFonts.fallbackFor(tag('ko')).first, contains('KR'));
    expect(AppFonts.fallbackFor(tag('zh-CN')).first, contains('SC'));
    // Joined and stacked scripts get no letter spacing and more line height.
    for (final t in ['ar', 'fa', 'ur', 'hi-IN', 'th', 'bn']) {
      expect(AppFonts.allowsTracking(tag(t)), isFalse, reason: t);
      expect(AppFonts.lineHeightFactor(tag(t)), greaterThan(1), reason: t);
    }
    expect(AppFonts.allowsTracking(tag('de')), isTrue);
  });

  test('phones get the variant made for their region, never another language', () {
    String pick(Locale l) => AppLocales.resolve(null, [l]).tag;
    expect(pick(const Locale('en', 'AU')), 'en-GB');
    expect(pick(const Locale('en', 'US')), 'en');
    expect(pick(const Locale('en')), 'en');
    expect(pick(const Locale('pt', 'BR')), 'pt-BR');
    expect(pick(const Locale('xx')), 'en');
    for (final l in AppLocales.all) {
      expect(AppLocales.forLocale(l.locale), same(l), reason: l.tag);
    }
  });

  test('every language is unique and complete', () {
    final tags = AppLocales.all.map((l) => l.tag).toList();
    expect(tags.toSet().length, tags.length);
    for (final l in AppLocales.all) {
      expect(l.nativeName.trim(), isNotEmpty);
      expect(l.englishName.trim(), isNotEmpty);
      expect(l.script, matches(RegExp(r'^[A-Z][a-z]{3}$')), reason: l.tag);
    }
  });
}
