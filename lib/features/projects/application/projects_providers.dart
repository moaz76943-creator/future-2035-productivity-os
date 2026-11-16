import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/database/app_database.dart';
import '../../../core/providers/core_providers.dart';
import '../data/projects_repository.dart';

final projectsRepositoryProvider = Provider<ProjectsRepository>(
    (ref) => ProjectsRepository(ref.watch(databaseProvider), ref.watch(clockProvider)));

final projectsProvider = StreamProvider.autoDispose.family<List<ProjectRow>, bool>(
    (ref, archived) => ref.watch(projectsRepositoryProvider).watchAll(archived: archived));

final projectByIdProvider = StreamProvider.autoDispose.family<ProjectRow?, String>(
    (ref, id) => ref.watch(projectsRepositoryProvider).watchById(id));

final projectProgressProvider = StreamProvider.autoDispose.family<ProjectProgress, String>(
    (ref, id) => ref.watch(projectsRepositoryProvider).watchProgress(id));
