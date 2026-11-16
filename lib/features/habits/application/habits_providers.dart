import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/database/app_database.dart';
import '../../../core/providers/core_providers.dart';
import '../data/habits_repository.dart';

final habitsRepositoryProvider = Provider<HabitsRepository>(
  (ref) => HabitsRepository(ref.watch(databaseProvider), ref.watch(clockProvider)),
);

/// Look-back used for streak maths; matches [HabitMath.currentStreak]'s cap.
const habitHistoryDays = 3660;

/// Non-archived habits (paused last).
final habitsListProvider = StreamProvider.autoDispose<List<HabitRow>>(
  (ref) => ref.watch(habitsRepositoryProvider).watchHabits(),
);

final habitAllCountsProvider = StreamProvider.autoDispose<Map<String, Map<int, int>>>(
  (ref) => ref.watch(habitsRepositoryProvider).watchAllCounts(days: habitHistoryDays),
);

final habitAllPausesProvider = StreamProvider.autoDispose<Map<String, List<PauseSpan>>>(
  (ref) => ref.watch(habitsRepositoryProvider).watchAllPauses(),
);

final habitByIdProvider = StreamProvider.autoDispose.family<HabitRow?, String>(
  (ref, id) => ref.watch(habitsRepositoryProvider).watchHabit(id),
);

final habitCountsProvider = StreamProvider.autoDispose.family<Map<int, int>, String>(
  (ref, id) => ref.watch(habitsRepositoryProvider).watchCounts(id, days: habitHistoryDays),
);

final habitPausesProvider = StreamProvider.autoDispose.family<List<PauseSpan>, String>(
  (ref, id) => ref.watch(habitsRepositoryProvider).watchPauses(id),
);
