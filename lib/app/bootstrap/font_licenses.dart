import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

/// Bundled fonts are not Dart packages, so their SIL Open Font License texts
/// are added to the licenses page (Settings → Licenses) here.
const bundledFontLicenses = {
  'Manrope': 'assets/fonts/OFL-Manrope.txt',
  'Readex Pro': 'assets/fonts/OFL-ReadexPro.txt',
  'Noto Sans Devanagari': 'assets/fonts/OFL-NotoSansDevanagari.txt',
};

void registerFontLicenses() {
  LicenseRegistry.addLicense(() async* {
    for (final e in bundledFontLicenses.entries) {
      final text = await rootBundle.loadString(e.value);
      yield LicenseEntryWithLineBreaks([e.key], text);
    }
  });
}
