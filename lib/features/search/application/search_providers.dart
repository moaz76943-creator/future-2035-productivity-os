import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers/core_providers.dart';
import '../data/search_service.dart';

final searchServiceProvider = Provider<SearchService>(
    (ref) => SearchService(ref.watch(databaseProvider), ref.watch(clockProvider)));
