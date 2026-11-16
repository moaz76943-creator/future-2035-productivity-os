import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/database/app_database.dart';
import '../../../core/providers/core_providers.dart';
import '../../../core/time/clock.dart';
import '../../calendar/application/calendar_providers.dart';
import '../../calendar/data/events_repository.dart';
import '../../focus/application/focus_providers.dart';
import '../../habits/application/habit_stats.dart';
import '../../habits/application/habits_providers.dart';
import '../../notes/application/notes_providers.dart';
import '../../notes/data/notes_repository.dart';

/// Local calendar day the dashboard describes. Derived from the injected
/// clock so tests are deterministic.
DateTime _today(Ref ref) => Days.startOfDay(ref.watch(clockProvider).now());

/// Measured focus work seconds for today (completed sessions only).
final todayFocusSecondsProvider = StreamProvider.autoDispose<int>((ref) {
  final from = _today(ref);
  return ref.watch(focusRepositoryProvider).watchWorkSeconds(from, Days.addDays(from, 1));
});

/// Remaining event occurrences today (ending after now), sorted by start.
final todayAgendaProvider = StreamProvider.autoDispose<List<EventOccurrence>>((ref) {
  final now = ref.watch(clockProvider).now();
  final from = Days.startOfDay(now);
  return ref
      .watch(eventsRepositoryProvider)
      .watchOccurrences(from, Days.addDays(from, 1))
      .map(
        (list) => [
          for (final o in list)
            if (o.end.isAfter(now)) o,
        ]..sort((a, b) => a.start.compareTo(b.start)),
      );
});

typedef HabitToday = ({HabitRow habit, HabitStats stats});

/// Habits scheduled today (not paused), with stats derived from stored logs.
final todayHabitsProvider = Provider.autoDispose<AsyncValue<List<HabitToday>>>((ref) {
  final habits = ref.watch(habitsListProvider);
  final counts = ref.watch(habitAllCountsProvider);
  final pauses = ref.watch(habitAllPausesProvider);
  final now = ref.watch(clockProvider).now();
  if (habits.hasError) return AsyncValue.error(habits.error!, habits.stackTrace!);
  if (!habits.hasValue || !counts.hasValue || !pauses.hasValue) return const AsyncValue.loading();
  final out = <HabitToday>[];
  for (final h in habits.requireValue) {
    if (h.archived || h.paused) continue;
    final stats = HabitStats.compute(
      habit: h,
      counts: counts.requireValue[h.id] ?? const {},
      pauses: pauses.requireValue[h.id] ?? const [],
      now: now,
    );
    if (stats.scheduledToday) out.add((habit: h, stats: stats));
  }
  return AsyncValue.data(out);
});

final recentNotesProvider = Provider.autoDispose<AsyncValue<List<NoteRow>>>(
  (ref) => ref
      .watch(notesListProvider((view: NotesView.all, notebookId: null, tag: null)))
      .whenData((l) => l.take(3).toList()),
);

/// Rule-based suggestion. Pure function so it is unit-testable; inputs are
/// all measured values read from the database.
sealed class DashboardInsight {
  const DashboardInsight();
}

class InsightOverdue extends DashboardInsight {
  const InsightOverdue(this.count);
  final int count;
}

class InsightHabit extends DashboardInsight {
  const InsightHabit(this.habitName);
  final String habitName;
}

class InsightCardsDue extends DashboardInsight {
  const InsightCardsDue();
}

class InsightFocusGap extends DashboardInsight {
  const InsightFocusGap(this.minutes);
  final int minutes;
}

class InsightAllClear extends DashboardInsight {
  const InsightAllClear();
}

DashboardInsight pickInsight({
  required int overdue,
  required List<HabitToday> habits,
  required int cardsDue,
  required int focusSeconds,
  required int focusTargetMinutes,
  required DateTime now,
}) {
  if (overdue > 0) return InsightOverdue(overdue);
  // Only nudge a habit that has a streak worth keeping, in the evening.
  final atRisk = habits.where((h) => !h.stats.doneToday && h.stats.currentStreak >= 2);
  if (now.hour >= 17 && atRisk.isNotEmpty) return InsightHabit(atRisk.first.habit.name);
  if (cardsDue > 0) return const InsightCardsDue();
  final gap = focusTargetMinutes - focusSeconds ~/ 60;
  if (focusTargetMinutes > 0 && gap > 0 && now.hour >= 9 && now.hour < 21) {
    return InsightFocusGap(gap);
  }
  return const InsightAllClear();
}
