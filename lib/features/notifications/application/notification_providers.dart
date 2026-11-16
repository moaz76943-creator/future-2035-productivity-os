import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers/core_providers.dart';
import '../../settings/application/settings_providers.dart';
import '../data/notification_service.dart';
import '../data/reminder_sources.dart';

/// Platform notifications. Tests override this with a fake.
final notificationServiceProvider = Provider<NotificationService>(
  (ref) => LocalNotificationService.shared,
);

final reminderSourcesProvider = Provider<ReminderSources>(
  (ref) => ReminderSources(ref.watch(databaseProvider)),
);

/// Current OS permission state; invalidate to re-check (e.g. on resume).
final notificationAccessProvider = FutureProvider.autoDispose<NotificationAccess>((ref) {
  return ref.watch(notificationServiceProvider).access();
});

/// True when alerts can be delivered: allowed in app settings and not
/// blocked by the OS. Unknown OS state (unsupported platform) counts as
/// not blocked.
final notificationsDeliverableProvider = Provider.autoDispose<AsyncValue<bool>>((ref) {
  final enabled = ref.watch(settingsProvider.select((s) => s.notificationsEnabled));
  return ref
      .watch(notificationAccessProvider)
      .whenData((a) => enabled && a != NotificationAccess.denied);
});
