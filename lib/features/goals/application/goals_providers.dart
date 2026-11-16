import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/database/app_database.dart';
import '../../../core/providers/core_providers.dart';
import '../data/goals_repository.dart';

final goalsRepositoryProvider = Provider<GoalsRepository>(
  (ref) => GoalsRepository(ref.watch(databaseProvider), ref.watch(clockProvider)),
);

/// Goals filtered by status (null = all), excluding deleted ones.
final goalsListProvider = StreamProvider.autoDispose.family<List<GoalRow>, GoalStatus?>(
  (ref, status) => ref.watch(goalsRepositoryProvider).watchGoals(status: status),
);

final goalByIdProvider = StreamProvider.autoDispose.family<GoalRow?, String>(
  (ref, id) => ref.watch(goalsRepositoryProvider).watchGoal(id),
);

/// Progress inside the goal's current period window, including completed
/// linked tasks. Keyed by the row so edits (period, target) recompute.
final goalProgressProvider = StreamProvider.autoDispose.family<GoalProgress, GoalRow>(
  (ref, goal) => ref.watch(goalsRepositoryProvider).watchProgress(goal),
);

final goalEntriesProvider = StreamProvider.autoDispose.family<List<GoalEntryRow>, String>(
  (ref, id) => ref.watch(goalsRepositoryProvider).watchEntries(id),
);

final goalLinkedTasksProvider = StreamProvider.autoDispose.family<List<TaskRow>, String>(
  (ref, id) => ref.watch(goalsRepositoryProvider).watchLinkedTasks(id),
);

/// Parses a user-typed amount, accepting Arabic-Indic/Devanagari digits and
/// a comma decimal separator. Returns null when not a finite number.
double? parseGoalAmount(String input) {
  final buf = StringBuffer();
  for (final r in input.trim().runes) {
    if (r >= 0x0660 && r <= 0x0669) {
      buf.writeCharCode(0x30 + r - 0x0660);
    } else if (r >= 0x06F0 && r <= 0x06F9) {
      buf.writeCharCode(0x30 + r - 0x06F0);
    } else if (r >= 0x0966 && r <= 0x096F) {
      buf.writeCharCode(0x30 + r - 0x0966);
    } else if (r == 0x066B || r == 0x2C) {
      buf.write('.'); // Arabic decimal separator or comma
    } else if (r == 0x066C || r == 0x20 || r == 0xA0) {
      // thousands separators / spaces: ignore
    } else {
      buf.writeCharCode(r);
    }
  }
  final v = double.tryParse(buf.toString());
  return v == null || !v.isFinite ? null : v;
}

/// Decimal places worth showing for [v] (0, 1 or 2).
int goalAmountDecimals(double v) {
  if ((v - v.roundToDouble()).abs() < 1e-9) return 0;
  if ((v * 10 - (v * 10).roundToDouble()).abs() < 1e-9) return 1;
  return 2;
}
