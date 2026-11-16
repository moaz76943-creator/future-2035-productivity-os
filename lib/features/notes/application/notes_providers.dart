import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers/core_providers.dart';
import '../data/notes_repository.dart';

final notesRepositoryProvider = Provider<NotesRepository>(
    (ref) => NotesRepository(ref.watch(databaseProvider), ref.watch(clockProvider)));
