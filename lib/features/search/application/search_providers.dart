import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers/core_providers.dart';
import '../data/search_service.dart';

final searchServiceProvider = Provider<SearchService>(
  (ref) => SearchService(ref.watch(databaseProvider), ref.watch(clockProvider)),
);

/// A search request: the raw query and an optional single category filter.
typedef SearchRequest = ({String query, SearchCategory? category});

/// Runs a local search. Never touches the network.
final searchResultsProvider = FutureProvider.autoDispose.family<List<SearchResult>, SearchRequest>(
  (ref, req) => ref
      .watch(searchServiceProvider)
      .search(req.query, categories: req.category == null ? null : {req.category!}),
);

final recentSearchesProvider = StreamProvider.autoDispose<List<String>>(
  (ref) => ref.watch(searchServiceProvider).watchRecent(),
);
