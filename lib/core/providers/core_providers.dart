import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../database/app_database.dart';
import '../time/clock.dart';

/// Overridden in `bootstrap.dart` with the opened encrypted database and
/// in tests with an in-memory database.
final databaseProvider = Provider<AppDatabase>(
  (ref) => throw UnimplementedError('databaseProvider must be overridden'),
);

final clockProvider = Provider<Clock>((ref) => const SystemClock());
