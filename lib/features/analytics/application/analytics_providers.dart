import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers/core_providers.dart';
import '../data/analytics_service.dart';

final analyticsServiceProvider = Provider<AnalyticsService>(
    (ref) => AnalyticsService(ref.watch(databaseProvider), ref.watch(clockProvider)));
