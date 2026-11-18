import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/database/app_database.dart';
import '../../../core/providers/core_providers.dart';
import '../../projects/application/projects_providers.dart';
import '../../tasks/application/tasks_providers.dart';
import '../data/events_repository.dart';
import 'calendar_layout.dart';

final eventsRepositoryProvider = Provider<EventsRepository>(
  (ref) => EventsRepository(ref.watch(databaseProvider), ref.watch(clockProvider)),
);

/// Expanded event occurrences overlapping a [DateRange] (local time).
final occurrencesProvider = StreamProvider.autoDispose.family<List<EventOccurrence>, DateRange>(
  (ref, r) => ref.watch(eventsRepositoryProvider).watchOccurrences(r.from, r.to),
);

/// Tasks whose due date falls inside a [DateRange].
final tasksDueProvider = StreamProvider.autoDispose.family<List<TaskRow>, DateRange>(
  (ref, r) => ref.watch(tasksRepositoryProvider).watchDueBetween(r.from, r.to),
);

/// Project milestones due inside a [DateRange], with their project.
final milestonesDueProvider =
    StreamProvider.autoDispose.family<List<(MilestoneRow, ProjectRow)>, DateRange>(
      (ref, r) => ref.watch(milestonesRepositoryProvider).watchDueBetween(r.from, r.to),
    );

/// A single stored event (null when missing or deleted).
final eventByIdProvider = FutureProvider.autoDispose.family<EventRow?, String>(
  (ref, id) => ref.watch(eventsRepositoryProvider).byId(id),
);

/// Ids of occurrences that overlap another timed occurrence on the same day.
Set<EventOccurrence> conflictingOccurrences(List<EventOccurrence> occ) {
  final out = <EventOccurrence>{};
  for (final (a, b) in EventsRepository.conflicts(occ)) {
    out
      ..add(a)
      ..add(b);
  }
  return out;
}

/// Number of timed occurrences in [occ] (excluding [excludeId]) that overlap
/// the draft interval [start, end).
int draftConflictCount(
  List<EventOccurrence> occ,
  DateTime start,
  DateTime end, {
  String? excludeId,
}) {
  var n = 0;
  for (final o in occ) {
    if (o.event.allDay || o.event.id == excludeId) continue;
    if (o.start.isBefore(end) && start.isBefore(o.end)) n++;
  }
  return n;
}
