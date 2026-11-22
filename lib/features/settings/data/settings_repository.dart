import 'dart:convert';

import '../../../core/database/app_database.dart';

part 'settings_repository/app_settings.dart';
part 'settings_repository/focus_preset.dart';
part 'settings_repository/prayer_settings.dart';

enum ThemePreference { light, dark, system }

class SettingsRepository {
  SettingsRepository(this._db);
  final AppDatabase _db;
  static const key = 'app.settings';

  Future<AppSettings> load() async => _decode(await _db.readValue(key));

  Stream<AppSettings> watch() => _db.watchValue(key).map(_decode);

  Future<void> save(AppSettings s) => _db.writeValue(key, jsonEncode(s.toJson()));

  AppSettings _decode(String? raw) {
    if (raw == null) return const AppSettings();
    try {
      return AppSettings.fromJson(jsonDecode(raw) as Map<String, Object?>);
    } on Object {
      return const AppSettings();
    }
  }
}
