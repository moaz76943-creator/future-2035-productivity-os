import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/core/providers/core_providers.dart';
import 'package:future_os/features/notifications/application/notification_providers.dart';
import 'package:future_os/features/notifications/application/reminder_sync.dart';
import 'package:future_os/features/notifications/data/reminder_sources.dart';
import 'package:future_os/features/notifications/domain/notification_ids.dart';
import 'package:future_os/features/settings/application/settings_providers.dart';
import 'package:future_os/features/settings/data/settings_repository.dart';
import 'package:future_os/features/tasks/data/tasks_repository.dart';

import '../../helpers.dart';
import 'fake_notification_service.dart';

void main() {
  test('failed OS scheduling is not persisted and is retried', () async {
    final env = TestEnv();
    final reminderAt = env.clock.now().add(const Duration(hours: 1));
    await TasksRepository(
      env.db,
      env.clock,
    ).create(TaskDraft(title: 'Retry notification', reminderAt: reminderAt));

    final service = FakeNotificationService()..scheduleSucceeds = false;
    final container = ProviderContainer(
      overrides: [
        databaseProvider.overrideWithValue(env.db),
        clockProvider.overrideWithValue(env.clock),
        notificationServiceProvider.overrideWithValue(service),
        initialSettingsProvider.overrideWithValue(
          const AppSettings(onboardingDone: true),
        ),
      ],
    );
    addTearDown(() async {
      container.dispose();
      await env.dispose();
    });

    final sync = container.read(reminderSyncProvider);
    // Allow the four source streams to deliver their initial database values.
    await Future<void>.delayed(const Duration(milliseconds: 500));
    await sync.flush();

    final id = NotificationIds.task((await env.db.select(env.db.tasks).getSingle()).id);
    expect(service.log, contains('schedule $id'));
    expect(await ReminderSources(env.db).loadScheduled(), isEmpty);

    service.scheduleSucceeds = true;
    await sync.reconcile();

    expect(service.scheduled, contains(id));
    expect(await ReminderSources(env.db).loadScheduled(), contains(id));
  });
}
