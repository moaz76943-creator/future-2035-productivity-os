import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers/core_providers.dart';
import '../data/settings_repository.dart';

final settingsRepositoryProvider = Provider<SettingsRepository>(
  (ref) => SettingsRepository(ref.watch(databaseProvider)),
);

/// Settings loaded before the first frame (overridden in bootstrap) so the
/// app starts directly in the right language and theme.
final initialSettingsProvider = Provider<AppSettings>((ref) => const AppSettings());

final settingsProvider = NotifierProvider<SettingsController, AppSettings>(SettingsController.new);

class SettingsController extends Notifier<AppSettings> {
  @override
  AppSettings build() => ref.watch(initialSettingsProvider);

  Future<void> update(AppSettings Function(AppSettings current) change) async {
    final next = change(state);
    state = next;
    await ref.read(settingsRepositoryProvider).save(next);
  }

  /// Re-reads persisted settings, e.g. after restoring a backup.
  Future<void> reload() async {
    state = await ref.read(settingsRepositoryProvider).load();
  }
}

/// Whether the operating system currently blocks notifications for the app.
/// Defaults to false (unknown); the notifications layer overrides it with
/// the real permission state so Settings can show a hint.
final notificationsBlockedProvider = Provider<bool>((ref) => false);

/// App version shown in About. Keep in sync with `version:` in pubspec.yaml.
const appVersion = '1.0.0+1';
