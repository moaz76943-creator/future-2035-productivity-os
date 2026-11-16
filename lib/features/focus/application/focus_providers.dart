import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/database/app_database.dart';
import '../../../core/providers/core_providers.dart';
import '../data/focus_repository.dart';

final focusRepositoryProvider = Provider<FocusRepository>(
  (ref) => FocusRepository(ref.watch(databaseProvider)),
);

/// Measured work seconds whose session started within [from, to).
final focusWorkSecondsProvider = StreamProvider.autoDispose.family<int, (DateTime, DateTime)>(
  (ref, range) => ref.watch(focusRepositoryProvider).watchWorkSeconds(range.$1, range.$2),
);

final focusHistoryProvider = StreamProvider.autoDispose<List<FocusSessionRow>>(
  (ref) => ref.watch(focusRepositoryProvider).watchHistory(),
);
