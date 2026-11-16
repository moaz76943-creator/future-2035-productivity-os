import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers/core_providers.dart';
import '../data/flashcards_repository.dart';

final flashcardsRepositoryProvider = Provider<FlashcardsRepository>(
    (ref) => FlashcardsRepository(ref.watch(databaseProvider), ref.watch(clockProvider)));
