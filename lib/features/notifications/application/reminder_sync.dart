import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart' show AppLifecycleListener;

import '../../../app/localization/app_format.dart';
import '../../../core/providers/core_providers.dart';
import '../../calendar/application/calendar_providers.dart';
import '../../calendar/data/events_repository.dart';
import '../../focus/application/focus_controller.dart';
import '../../habits/application/habits_providers.dart';
import '../../settings/application/settings_providers.dart';
import '../../settings/data/settings_repository.dart';
import '../data/notification_service.dart';
import '../domain/notification_plan.dart';
import 'notification_providers.dart';

/// Starts reconciling OS notifications with the database while alive.
/// Reading it also restores the focus timer, so a session that completed
/// while the app was closed is recorded at launch.
final reminderSyncProvider = Provider<ReminderSync>((ref) {
  final sync = ReminderSync(ref);
  ref.onDispose(sync.dispose);
  ref.read(focusControllerProvider);
  sync.start();
  return sync;
});

/// Watches tasks, events, habits, flashcards and settings and keeps the
/// scheduled notifications equal to [NotificationPlanner.plan].
class ReminderSync {
  ReminderSync(this._ref, {this.debounce = const Duration(milliseconds: 400)});

  final Ref _ref;
  final Duration debounce;
  final _subs = <StreamSubscription<Object?>>[];
  StreamSubscription<List<EventOccurrence>>? _eventsSub;
  AppLifecycleListener? _lifecycle;
  Timer? _debounceTimer;
  Future<void> _running = Future.value();
  bool _disposed = false;

  List<TaskReminderInput>? _tasks;
  List<EventReminderInput>? _events;
  List<HabitReminderInput>? _habits;
  DateTime? _reviewDue;
  bool _reviewLoaded = false;
  String? _lastLocaleTag;

  void start() {
    final sources = _ref.read(reminderSourcesProvider);
    _subs
      ..add(
        sources.watchTaskReminders().listen((v) {
          _tasks = v;
          _schedule();
        }, onError: (_) {}),
      )
      ..add(
        _ref.read(habitsRepositoryProvider).watchHabits().listen((rows) {
          _habits = [
            for (final h in rows)
              if (h.reminderMinute case final m?)
                HabitReminderInput(
                  id: h.id,
                  name: h.name,
                  reminderMinute: m,
                  weekdays: h.weekdays,
                  paused: h.paused,
                ),
          ];
          _schedule();
        }, onError: (_) {}),
      )
      ..add(
        sources.watchEarliestReviewDue().listen((v) {
          _reviewDue = v;
          _reviewLoaded = true;
          _schedule();
        }, onError: (_) {}),
      );
    _watchEvents();
    _ref.listen<AppSettings>(settingsProvider, (prev, next) {
      if (prev?.localeTag != next.localeTag) _lastLocaleTag = null;
      _schedule();
    });
    try {
      _lifecycle = AppLifecycleListener(
        onResume: () {
          // The 14-day event window and "now" move forward while paused.
          _watchEvents();
          unawaited(_ref.read(focusControllerProvider.notifier).onAppResumed());
        },
      );
    } on Object {
      _lifecycle = null;
    }
  }

  void _watchEvents() {
    unawaited(_eventsSub?.cancel());
    final now = _ref.read(clockProvider).now();
    final to = now.add(NotificationPlanner.horizon + const Duration(days: 1));
    _eventsSub = _ref.read(eventsRepositoryProvider).watchOccurrences(now, to).listen((occ) {
      _events = [
        for (final o in occ)
          if (o.event.reminderMinutes case final m?)
            EventReminderInput(
              eventId: o.event.id,
              title: o.event.title,
              start: o.start,
              reminderMinutes: m,
              allDay: o.event.allDay,
            ),
      ];
      _schedule();
    }, onError: (_) {});
  }

  void _schedule() {
    if (_disposed) return;
    _debounceTimer?.cancel();
    _debounceTimer = Timer(debounce, () {
      _running = _running.then((_) => reconcile()).catchError((_) {});
    });
  }

  /// Completes when every pending reconciliation has run.
  Future<void> flush() async {
    if (_debounceTimer?.isActive ?? false) {
      _debounceTimer!.cancel();
      _running = _running.then((_) => reconcile()).catchError((_) {});
    }
    await _running;
  }

  Future<void> reconcile() async {
    if (_disposed) return;
    if (_tasks == null || _events == null || _habits == null || !_reviewLoaded) return;
    final service = _ref.read(notificationServiceProvider);
    if (!service.isReady) return;
    final settings = _ref.read(settingsProvider);
    final language = notificationLanguage(settings);
    final l10n = notificationL10n(settings);
    if (_lastLocaleTag != language.tag) {
      await service.updateChannels(l10n);
      _lastLocaleTag = language.tag;
    }
    final fmt = AppFormat(language, l10n);
    final now = _ref.read(clockProvider).now();
    final desired = NotificationPlanner.plan(
      inputs: ReminderInputs(
        tasks: _tasks!,
        events: _events!,
        habits: _habits!,
        earliestReviewDue: _reviewDue,
      ),
      settings: settings,
      now: now,
      l10n: l10n,
      formatTime: fmt.time,
    );
    final sources = _ref.read(reminderSourcesProvider);
    final scheduled = await sources.loadScheduled();
    final diff = diffNotifications(scheduled, desired, now);
    if (diff.isEmpty) return;
    for (final id in diff.cancel) {
      await service.cancel(id);
      scheduled.remove(id);
    }
    for (final n in diff.schedule) {
      final succeeded = await service.schedule(n);
      if (succeeded) {
        scheduled[n.id] = ScheduledRecord.of(n);
      }
      // On failure leave the record unchanged so the next reconciliation
      // retries this notification instead of falsely marking it scheduled.
    }
    diff.forget.forEach(scheduled.remove);
    if (_disposed) return;
    await sources.saveScheduled(scheduled);
  }

  void dispose() {
    _disposed = true;
    _debounceTimer?.cancel();
    _lifecycle?.dispose();
    unawaited(_eventsSub?.cancel());
    for (final s in _subs) {
      unawaited(s.cancel());
    }
  }
}
