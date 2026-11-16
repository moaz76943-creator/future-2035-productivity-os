import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers/core_providers.dart';
import '../data/analytics_service.dart';

final analyticsServiceProvider = Provider<AnalyticsService>(
  (ref) => AnalyticsService(ref.watch(databaseProvider), ref.watch(clockProvider)),
);

/// Snapshot for one range. Recomputed when the screen is reopened or on
/// pull-to-refresh (`ref.refresh`).
final analyticsSnapshotProvider = FutureProvider.autoDispose
    .family<AnalyticsSnapshot, AnalyticsRange>(
      (ref, range) => ref.watch(analyticsServiceProvider).compute(range),
    );
