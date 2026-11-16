import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

import '../../../core/database/app_database.dart';
import '../../../core/providers/core_providers.dart';
import '../../../core/security/secret_store.dart';
import '../../../core/time/clock.dart';
import '../../calendar/application/calendar_providers.dart';
import '../../calendar/data/events_repository.dart';
import '../../settings/application/settings_providers.dart';
import '../../tasks/application/tasks_providers.dart';
import '../data/remote_assistant.dart';
import '../domain/day_planner.dart';
import '../domain/workload.dart';

/// HTTP client used only for the optional, user-configured AI provider.
/// Tests override it with `MockClient`.
final assistantHttpClientProvider = Provider<http.Client>((ref) {
  final c = http.Client();
  ref.onDispose(c.close);
  return c;
});

final remoteAssistantProvider = Provider<RemoteAssistant>(
  (ref) => RemoteAssistant(
    client: ref.watch(assistantHttpClientProvider),
    secrets: ref.watch(secretStoreProvider),
  ),
);

/// Whether an API key is stored. Invalidate after saving or removing it.
final assistantHasKeyProvider = FutureProvider.autoDispose<bool>(
  (ref) => ref.watch(remoteAssistantProvider).hasKey(),
);

/// True when an HTTPS endpoint and an API key are configured.
final assistantConfiguredProvider = Provider.autoDispose<AsyncValue<bool>>((ref) {
  final endpoint = ref.watch(settingsProvider.select((s) => s.assistantEndpoint));
  return ref
      .watch(assistantHasKeyProvider)
      .whenData((k) => k && AssistantEndpoint.isValid(endpoint));
});

PlanTask planTaskFromRow(TaskRow t) => PlanTask(
  id: t.id,
  title: t.title,
  priority: t.priority,
  dueAt: t.dueAt?.toLocal(),
  dueHasTime: t.dueHasTime,
  estimateMinutes: t.estimateMinutes,
);

/// Timed (non all-day) event spans; all-day events do not block time.
List<TimeSpan> busySpans(Iterable<EventOccurrence> occ) => [
  for (final o in occ)
    if (!o.event.allDay) TimeSpan(o.start, o.end),
];

final _todayOccurrencesProvider = StreamProvider.autoDispose<List<EventOccurrence>>((ref) {
  final today = Days.startOfDay(ref.watch(clockProvider).now());
  return ref.watch(eventsRepositoryProvider).watchOccurrences(today, Days.addDays(today, 1));
});

final _weekOccurrencesProvider = StreamProvider.autoDispose<List<EventOccurrence>>((ref) {
  final (from, to) = WorkloadCalculator.range(ref.watch(clockProvider).now());
  return ref.watch(eventsRepositoryProvider).watchOccurrences(from, to);
});

class TodayPlan {
  const TodayPlan(this.plan, this.alreadyBlocked);
  final DayPlan plan;

  /// Time blocks already on today's calendar that are linked to a task.
  final List<EventOccurrence> alreadyBlocked;
}

/// Live plan for today. Tasks that already have a time block today are
/// shown as blocked and not planned again.
final todayPlanProvider = Provider.autoDispose<AsyncValue<TodayPlan>>((ref) {
  final tasks = ref.watch(openTasksProvider);
  final occ = ref.watch(_todayOccurrencesProvider);
  if (tasks.hasError) return AsyncError(tasks.error!, tasks.stackTrace!);
  if (occ.hasError) return AsyncError(occ.error!, occ.stackTrace!);
  final t = tasks.value, o = occ.value;
  if (t == null || o == null) return const AsyncLoading();
  final now = ref.watch(clockProvider).now();
  final blocked = [
    for (final e in o)
      if (e.kind == EventKind.timeBlock && e.event.taskId != null) e,
  ];
  final blockedIds = {for (final b in blocked) b.event.taskId!};
  final plan = DayPlanner.plan(
    tasks: t.where((x) => !blockedIds.contains(x.id)).map(planTaskFromRow),
    busy: busySpans(o),
    now: now,
  );
  return AsyncData(TodayPlan(plan, blocked));
});

/// Workdays used by the workload rule. Arabic uses Sunday–Thursday,
/// all other languages Monday–Friday.
final workloadProvider = Provider.autoDispose.family<AsyncValue<WorkloadOverview>, bool>((
  ref,
  sundayWeek,
) {
  final tasks = ref.watch(openTasksProvider);
  final occ = ref.watch(_weekOccurrencesProvider);
  if (tasks.hasError) return AsyncError(tasks.error!, tasks.stackTrace!);
  if (occ.hasError) return AsyncError(occ.error!, occ.stackTrace!);
  final t = tasks.value, o = occ.value;
  if (t == null || o == null) return const AsyncLoading();
  return AsyncData(
    WorkloadCalculator.compute(
      openTasks: t.map(planTaskFromRow),
      busy: busySpans(o),
      now: ref.watch(clockProvider).now(),
      workdays: sundayWeek
          ? WorkloadCalculator.sundayToThursday
          : WorkloadCalculator.mondayToFriday,
    ),
  );
});
