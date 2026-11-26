import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/core/design_system/tokens.dart';
import 'package:future_os/features/settings/data/settings_repository.dart';

void main() {
  test('new installs use the lagoon design (teal accent)', () {
    expect(const AppSettings().accent, 'teal');
    expect(AppAccents.of('teal'), isNull); // the tuned default theme
    expect(AppAccents.of('violet'), Palette.violet);
  });

  test('installs saved before the lagoon design move from the old default', () {
    expect(AppSettings.fromJson({'accent': 'violet'}).accent, 'teal');
    expect(AppSettings.fromJson({'accent': 'rose'}).accent, 'rose');
  });

  test('a violet accent chosen after the change is kept', () {
    final saved = const AppSettings(accent: 'violet').toJson();
    expect(saved['design'], 2);
    expect(AppSettings.fromJson(saved).accent, 'violet');
  });
}
