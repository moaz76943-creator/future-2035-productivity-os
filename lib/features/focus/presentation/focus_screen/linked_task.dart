part of '../focus_screen.dart';

class _LinkedTask extends ConsumerWidget {
  const _LinkedTask({
    required this.taskId,
    required this.enabled,
    required this.onPick,
    required this.onUnlink,
  });
  final String? taskId;
  final bool enabled;
  final VoidCallback onPick;
  final VoidCallback onUnlink;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final id = taskId;
    final task = id == null ? null : ref.watch(taskByIdProvider(id)).value;
    final title = task?.title;
    return LuxCard(
      onTap: enabled ? onPick : null,
      semanticLabel: title == null ? l10n.focusLinkTask : '${l10n.focusLinkedTask}: $title',
      child: Row(
        children: [
          const IconOrb(icon: Icons.task_alt_rounded, hue: ModuleHue.tasks, size: 40),
          const SizedBox(width: Space.sm),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(l10n.focusLinkedTask, style: context.text.labelMedium),
                Text(
                  title ?? l10n.focusNoTask,
                  style: context.text.titleSmall,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          if (title != null && enabled)
            IconButton(
              tooltip: l10n.focusUnlinkTask,
              onPressed: onUnlink,
              icon: const Icon(Icons.link_off_rounded),
            )
          else if (enabled)
            // Flexible: at large text sizes the label wraps instead of overflowing.
            Flexible(
              child: TextButton(
                onPressed: onPick,
                child: Text(l10n.focusLinkTask, maxLines: 2, textAlign: TextAlign.center),
              ),
            ),
        ],
      ),
    );
  }
}
