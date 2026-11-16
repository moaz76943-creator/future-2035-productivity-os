import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers/core_providers.dart';
import '../data/habits_repository.dart';

final habitsRepositoryProvider = Provider<HabitsRepository>(
    (ref) => HabitsRepository(ref.watch(databaseProvider), ref.watch(clockProvider)));
