import '../../../app/routing/routes.dart';
import '../../../l10n/gen/app_localizations.dart';
import '../../settings/data/settings_repository.dart';
import 'notification_ids.dart';

enum NotificationChannelKind { reminders, focus }

/// How a planned notification repeats once delivered.
enum NotificationRepeat { none, daily, weekly }

/// One notification the app wants the OS to hold.
class PlannedNotification {
  const PlannedNotification({
    required this.id,
    required this.channel,
    required this.title,
    required this.body,
    required this.at,
    this.repeat = NotificationRepeat.none,
    this.payload,
    this.tone,
  });

  final int id;
  final NotificationChannelKind channel;
  final String title;
  final String body;

  /// First delivery moment. For repeating notifications only the local
  /// time of day (and weekday for weekly) matters after the first one.
  final DateTime at;
  final NotificationRepeat repeat;

  /// In-app route opened when the notification is tapped.
  final String? payload;

  /// Raw sound resource for focus alerts (null = the phone's sound).
  final String? tone;

  /// Changes whenever anything visible or the timing changes, so the sync
  /// only reschedules what actually differs.
  String get signature {
    final local = at.toLocal();
    final when = switch (repeat) {
      NotificationRepeat.none => '${at.toUtc().millisecondsSinceEpoch}',
      NotificationRepeat.daily => 'd${local.hour * 60 + local.minute}',
      NotificationRepeat.weekly => 'w${local.weekday}:${local.hour * 60 + local.minute}',
    };
    return [when, channel.name, title, body, payload ?? '', tone ?? ''].join('\u0001');
  }

  @override
  String toString() => 'PlannedNotification($id, ${repeat.name}, $at)';
}

class TaskReminderInput {
  const TaskReminderInput({required this.id, required this.title, required this.reminderAt});
  final String id;
  final String title;
  final DateTime reminderAt;
}

class EventReminderInput {
  const EventReminderInput({
    required this.eventId,
    required this.title,
    required this.start,
    required this.reminderMinutes,
    this.allDay = false,
  });
  final String eventId;
  final String title;
  final DateTime start;
  final int reminderMinutes;
  final bool allDay;
}

class HabitReminderInput {
  const HabitReminderInput({
    required this.id,
    required this.name,
    required this.reminderMinute,
    required this.weekdays,
    this.paused = false,
  });
  final String id;
  final String name;

  /// Minutes after local midnight.
  final int reminderMinute;

  /// Bit 0 = Monday … bit 6 = Sunday.
  final int weekdays;
  final bool paused;
}

class ReminderInputs {
  const ReminderInputs({
    this.tasks = const [],
    this.events = const [],
    this.habits = const [],
    this.earliestReviewDue,
  });
  final List<TaskReminderInput> tasks;
  final List<EventReminderInput> events;
  final List<HabitReminderInput> habits;

  /// Due moment of the earliest non-new flashcard, or null if none exist.
  final DateTime? earliestReviewDue;
}

/// Pure planning of all reminder notifications. No I/O.
abstract final class NotificationPlanner {
  /// Event occurrences are considered within this window.
  static const horizon = Duration(days: 14);

  /// Android caps pending alarms per app at 500; keep well below.
  static const maxScheduled = 400;

  static List<PlannedNotification> plan({
    required ReminderInputs inputs,
    required AppSettings settings,
    required DateTime now,
    required AppLocalizations l10n,
    required String Function(DateTime local) formatTime,
  }) {
    if (!settings.notificationsEnabled) return const [];
    final localNow = now.toLocal();
    final horizonEnd = localNow.add(horizon);
    final repeating = <PlannedNotification>[];
    final once = <PlannedNotification>[];

    // Tasks: user-set reminder moments are honoured exactly (no quiet hours).
    for (final t in inputs.tasks) {
      final at = t.reminderAt.toLocal();
      if (!at.isAfter(localNow)) continue;
      once.add(
        PlannedNotification(
          id: NotificationIds.task(t.id),
          channel: NotificationChannelKind.reminders,
          title: l10n.notifTaskTitle,
          body: t.title,
          at: at,
          payload: Routes.task(t.id),
        ),
      );
    }

    // Events: occurrence start minus the reminder offset (no quiet hours).
    for (final e in inputs.events) {
      final start = e.start.toLocal();
      final at = start.subtract(Duration(minutes: e.reminderMinutes));
      if (!at.isAfter(localNow) || at.isAfter(horizonEnd)) continue;
      once.add(
        PlannedNotification(
          id: NotificationIds.event(e.eventId, start),
          channel: NotificationChannelKind.reminders,
          title: l10n.notifEventTitle,
          body: e.allDay ? e.title : l10n.notifEventBody(e.title, formatTime(start)),
          at: at,
          payload: Routes.event(e.eventId),
        ),
      );
    }

    // Habits: repeating at the chosen minute, skipped inside quiet hours.
    for (final h in inputs.habits) {
      if (h.paused || h.weekdays & 0x7F == 0) continue;
      final minute = h.reminderMinute.clamp(0, 24 * 60 - 1);
      if (settings.inQuietHours(_atMinute(localNow, minute))) continue;
      if (h.weekdays & 0x7F == 0x7F) {
        repeating.add(
          PlannedNotification(
            id: NotificationIds.habit(h.id, 0),
            channel: NotificationChannelKind.reminders,
            title: l10n.notifHabitTitle,
            body: h.name,
            at: _nextAt(localNow, minute),
            repeat: NotificationRepeat.daily,
            payload: Routes.habit(h.id),
          ),
        );
        continue;
      }
      for (var wd = DateTime.monday; wd <= DateTime.sunday; wd++) {
        if (h.weekdays & (1 << (wd - 1)) == 0) continue;
        repeating.add(
          PlannedNotification(
            id: NotificationIds.habit(h.id, wd),
            channel: NotificationChannelKind.reminders,
            title: l10n.notifHabitTitle,
            body: h.name,
            at: _nextAt(localNow, minute, weekday: wd),
            repeat: NotificationRepeat.weekly,
            payload: Routes.habit(h.id),
          ),
        );
      }
    }

    // Flashcards: one reminder at the review minute on the first day on
    // which cards are actually due by then. Skipped inside quiet hours.
    final due = inputs.earliestReviewDue;
    if (due != null) {
      final minute = settings.reviewReminderMinute.clamp(0, 24 * 60 - 1);
      var at = _nextAt(localNow, minute);
      while (!at.isAfter(horizonEnd) && at.isBefore(due.toLocal())) {
        at = _atMinute(DateTime(at.year, at.month, at.day + 1), minute);
      }
      if (!at.isAfter(horizonEnd) && !settings.inQuietHours(at)) {
        once.add(
          PlannedNotification(
            id: NotificationIds.review,
            channel: NotificationChannelKind.reminders,
            title: l10n.notifReviewTitle,
            body: l10n.notifReviewBody,
            at: at,
            payload: Routes.flashcards,
          ),
        );
      }
    }

    once.sort((a, b) => a.at.compareTo(b.at));
    final out = [...repeating, ...once];
    // Ids are unique by construction except for accidental hash collisions;
    // keep the earliest entry for any repeated id.
    final seen = <int>{};
    out.retainWhere((n) => seen.add(n.id));
    return out.length > maxScheduled ? out.sublist(0, maxScheduled) : out;
  }

  static DateTime _atMinute(DateTime day, int minute) =>
      DateTime(day.year, day.month, day.day, minute ~/ 60, minute % 60);

  /// Next local moment at [minute] (strictly after [now]), optionally on a
  /// specific [weekday]. Built from calendar fields, so DST-safe.
  static DateTime _nextAt(DateTime now, int minute, {int? weekday}) {
    for (var i = 0; i <= 7; i++) {
      final c = _atMinute(DateTime(now.year, now.month, now.day + i), minute);
      if (!c.isAfter(now)) continue;
      if (weekday != null && c.weekday != weekday) continue;
      return c;
    }
    return _atMinute(DateTime(now.year, now.month, now.day + 1), minute);
  }
}

/// What the app remembers about a notification it handed to the OS.
class ScheduledRecord {
  const ScheduledRecord(this.signature, {this.fireAtUtcMs});

  factory ScheduledRecord.of(PlannedNotification n) => ScheduledRecord(
    n.signature,
    fireAtUtcMs: n.repeat == NotificationRepeat.none ? n.at.toUtc().millisecondsSinceEpoch : null,
  );

  final String signature;

  /// Delivery moment of a one-shot notification; null when repeating.
  final int? fireAtUtcMs;
}

/// Difference between what is scheduled and what is wanted.
class NotificationDiff {
  const NotificationDiff({required this.cancel, required this.schedule, required this.forget});
  final List<int> cancel;
  final List<PlannedNotification> schedule;

  /// One-shot notifications that were already delivered. They are only
  /// dropped from the record; cancelling would remove them from the tray.
  final List<int> forget;
  bool get isEmpty => cancel.isEmpty && schedule.isEmpty && forget.isEmpty;
}

/// [scheduled] maps the ids this app previously scheduled to their
/// records. Unchanged notifications are left untouched.
NotificationDiff diffNotifications(
  Map<int, ScheduledRecord> scheduled,
  List<PlannedNotification> desired,
  DateTime now,
) {
  final wanted = {for (final n in desired) n.id: n};
  final nowMs = now.toUtc().millisecondsSinceEpoch;
  final cancel = <int>[];
  final forget = <int>[];
  for (final e in scheduled.entries) {
    if (wanted.containsKey(e.key)) continue;
    final fire = e.value.fireAtUtcMs;
    (fire != null && fire <= nowMs ? forget : cancel).add(e.key);
  }
  return NotificationDiff(
    cancel: cancel,
    forget: forget,
    schedule: [
      for (final n in desired)
        if (scheduled[n.id]?.signature != n.signature) n,
    ],
  );
}
