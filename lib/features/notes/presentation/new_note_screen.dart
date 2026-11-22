import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/routing/routes.dart';
import '../application/notes_providers.dart';

/// Opened by the quick-add widget: makes an empty note and swaps itself for
/// its editor, so "back" returns to where the user came from.
class NewNoteScreen extends ConsumerStatefulWidget {
  const NewNoteScreen({super.key});

  @override
  ConsumerState<NewNoteScreen> createState() => _NewNoteScreenState();
}

class _NewNoteScreenState extends ConsumerState<NewNoteScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final id = await ref.read(notesRepositoryProvider).create();
      if (mounted) context.pushReplacement(Routes.note(id));
    });
  }

  @override
  Widget build(BuildContext context) =>
      const Scaffold(body: Center(child: CircularProgressIndicator()));
}
