import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/core/time/hijri.dart';
import 'package:future_os/features/settings/data/settings_repository.dart';
import 'package:future_os/l10n/gen/app_localizations.dart';
import 'package:flutter/widgets.dart';

void main() {
  test('Umm al-Qura dates', () {
    final r = HijriDay.of(DateTime(2026, 2, 18))!;
    expect((r.day, r.month, r.year), (1, 9, 1447));
    final ar = lookupAppLocalizations(const Locale('ar'));
    expect(r.long(ar), '1 رمضان 1447 هـ');
    expect(r.long(lookupAppLocalizations(const Locale('en'))), '1 Ramadan 1447 AH');
    expect(HijriDay.of(DateTime(1800)), isNull);
  });

  test('shown automatically in Arabic, or when turned on', () {
    expect(const AppSettings().showHijri('ar'), isTrue);
    expect(const AppSettings().showHijri('en'), isFalse);
    expect(const AppSettings(hijri: 'on').showHijri('en'), isTrue);
    expect(const AppSettings(hijri: 'off').showHijri('ar'), isFalse);
  });
}
