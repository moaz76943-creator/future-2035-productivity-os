import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/database/app_database.dart';
import '../../../core/providers/core_providers.dart';
import '../data/tasks_repository.dart';

final tasksRepositoryProvider = Provider<TasksRepository>(
    (ref) => TasksRepository(ref.watch(databaseProvider), ref.watch(clockProvider)));

final tasksProvider = StreamProvider.autoDispose.family<List<TaskRow>, TaskFilter>(
    (ref, filter) => ref.watch(tasksRepositoryProvider).watch(filter));

final taskByIdProvider = StreamProvider.autoDispose.family<TaskRow?, String>(
    (ref, id) => ref.watch(tasksRepositoryProvider).watchById(id));
