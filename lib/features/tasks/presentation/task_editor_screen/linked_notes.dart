part of '../task_editor_screen.dart';

class _LinkedNotes extends ConsumerWidget {
  const _LinkedNotes({required this.taskId});
  final String taskId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notes = ref.watch(_notesForTaskProvider(taskId)).value ?? const <NoteRow>[];
    if (notes.isEmpty) return const SizedBox.shrink();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _SubHeader(title: context.l10n.taskLinkedNotes),
        for (final n in notes)
          LuxCard(
            padding: const EdgeInsets.all(Space.sm),
            onTap: () => context.push(Routes.note(n.id)),
            child: Row(
              children: [
                Icon(Icons.sticky_note_2_outlined, color: ModuleHue.notes.a),
                const SizedBox(width: Space.sm),
                Expanded(
                  child: Text(
                    n.title.isEmpty ? context.l10n.untitled : n.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}

class _SubHeader extends StatelessWidget {
  const _SubHeader({required this.title, this.trailing});
  final String title;
  final String? trailing;
  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(top: Space.md, bottom: Space.xxs),
    child: Row(
      children: [
        Expanded(child: Text(title, style: context.text.labelLarge)),
        if (trailing != null)
          Text(trailing!, style: context.text.labelMedium?.copyWith(color: context.lux.ink3)),
      ],
    ),
  );
}

class _InlineAdd extends StatefulWidget {
  const _InlineAdd({required this.hint, required this.onAdd});
  final String hint;
  final Future<void> Function(String) onAdd;
  @override
  State<_InlineAdd> createState() => _InlineAddState();
}

class _InlineAddState extends State<_InlineAdd> {
  final _c = TextEditingController();
  @override
  void dispose() {
    _c.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final t = _c.text.trim();
    if (t.isEmpty) return;
    await widget.onAdd(t);
    _c.clear();
  }

  @override
  Widget build(BuildContext context) => TextField(
    controller: _c,
    decoration: InputDecoration(
      isDense: true,
      hintText: widget.hint,
      prefixIcon: const Icon(Icons.add_rounded),
    ),
    onSubmitted: (_) => _submit(),
  );
}
