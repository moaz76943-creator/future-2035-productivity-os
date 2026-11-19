import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/app/bootstrap/font_licenses.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('every bundled font license is an OFL text listed on the licenses page', () async {
    for (final path in bundledFontLicenses.values) {
      expect(File(path).readAsStringSync(), contains('SIL Open Font License'));
    }
    registerFontLicenses();
    final packages = <String>{};
    await for (final l in LicenseRegistry.licenses) {
      packages.addAll(l.packages);
    }
    expect(packages, containsAll(bundledFontLicenses.keys));
  });
}
