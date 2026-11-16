import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/database/app_database.dart';
import '../../../core/providers/core_providers.dart';
import '../data/tasks_repository.dart';

final tasksRepositoryProvider = Provider<TasksRepository>(
  (ref) => TasksRepository(ref.watch(databaseProvider), ref.watch(clockProvider)),
);

final tasksProvider = StreamProvider.autoDispose.family<List<TaskRow>, TaskFilter>(
  (ref, filter) => ref.watch(tasksRepositoryProvider).watch(filter),
);

final taskByIdProvider = StreamProvider.autoDispose.family<TaskRow?, String>(
  (ref, id) => ref.watch(tasksRepositoryProvider).watchById(id),
);

final subtasksProvider = StreamProvider.autoDispose.family<List<TaskRow>, String>(
  (ref, id) => ref.watch(tasksRepositoryProvider).watchSubtasks(id),
);

final checklistProvider = StreamProvider.autoDispose.family<List<ChecklistItemRow>, String>(
  (ref, id) => ref.watch(tasksRepositoryProvider).watchChecklist(id),
);

final labelsProvider = StreamProvider.autoDispose<List<LabelRow>>(
  (ref) => ref.watch(tasksRepositoryProvider).watchLabels(),
);

final taskLabelsProvider = StreamProvider.autoDispose.family<List<LabelRow>, String>(
  (ref, id) => ref.watch(tasksRepositoryProvider).watchLabelsFor(id),
);

final blockersProvider = StreamProvider.autoDispose.family<List<TaskRow>, String>(
  (ref, id) => ref.watch(tasksRepositoryProvider).watchBlockers(id),
);

final trackedSecondsProvider = StreamProvider.autoDispose.family<int, String>(
  (ref, id) => ref.watch(tasksRepositoryProvider).watchTrackedSeconds(id),
);

final categoriesProvider = StreamProvider.autoDispose<List<String>>(
  (ref) => ref.watch(tasksRepositoryProvider).watchCategories(),
);

/// Open (not done) top-level tasks, used by pickers in other modules.
final openTasksProvider = StreamProvider.autoDispose<List<TaskRow>>(
  (ref) => ref.watch(tasksRepositoryProvider).watch(const TaskFilter()),
);

/// Tasks shown on the Tasks screen.
final taskFilterProvider = NotifierProvider<TaskFilterController, TaskFilter>(
  TaskFilterController.new,
);

class TaskFilterController extends Notifier<TaskFilter> {
  @override
  TaskFilter build() => const TaskFilter(view: TaskView.today);
  void set(TaskFilter f) => state = f;
}
