import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers/core_providers.dart';
import '../data/events_repository.dart';

final eventsRepositoryProvider = Provider<EventsRepository>(
    (ref) => EventsRepository(ref.watch(databaseProvider), ref.watch(clockProvider)));
