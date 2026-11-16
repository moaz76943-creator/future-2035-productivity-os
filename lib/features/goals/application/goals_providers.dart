import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers/core_providers.dart';
import '../data/goals_repository.dart';

final goalsRepositoryProvider = Provider<GoalsRepository>(
    (ref) => GoalsRepository(ref.watch(databaseProvider), ref.watch(clockProvider)));
