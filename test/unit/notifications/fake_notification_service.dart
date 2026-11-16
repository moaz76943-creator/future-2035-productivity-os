import 'dart:async';

import 'package:future_os/features/notifications/data/notification_service.dart';
import 'package:future_os/features/notifications/domain/notification_plan.dart';
import 'package:future_os/l10n/gen/app_localizations.dart';
import 'package:future_os/features/settings/data/settings_repository.dart';

/// Records notification calls instead of talking to the OS.
class FakeNotificationService implements NotificationService {
  FakeNotificationService({this.accessValue = NotificationAccess.granted, this.ready = true});

  NotificationAccess accessValue;
  bool ready;
  final scheduled = <int, PlannedNotification>{};
  final cancelled = <int>[];
  final log = <String>[];
  int permissionRequests = 0;
  int settingsOpened = 0;
  AppLocalizations? channelL10n;

  @override
  bool get isReady => ready;
  @override
  Future<void> init(AppSettings settings) async {}
  @override
  Future<NotificationAccess> access() async => accessValue;
  @override
  Future<bool> requestPermission() async {
    permissionRequests++;
    return accessValue == NotificationAccess.granted;
  }

  @override
  Future<void> openSystemSettings() async => settingsOpened++;
  @override
  Future<bool> canScheduleExact() async => false;
  @override
  Future<void> requestExactAlarms() async {}
  @override
  Future<void> updateChannels(AppLocalizations l10n) async => channelL10n = l10n;
  @override
  Future<void> schedule(PlannedNotification n, {bool silent = false}) async {
    scheduled[n.id] = n;
    log.add('schedule ${n.id}');
  }

  @override
  Future<void> cancel(int id) async {
    scheduled.remove(id);
    cancelled.add(id);
    log.add('cancel $id');
  }

  @override
  Stream<String> get taps => const Stream.empty();
  @override
  String? get launchPayload => null;
}
