import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers/core_providers.dart';
import '../data/focus_repository.dart';

final focusRepositoryProvider =
    Provider<FocusRepository>((ref) => FocusRepository(ref.watch(databaseProvider)));
