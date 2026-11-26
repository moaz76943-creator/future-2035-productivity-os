part of '../dashboard_screen.dart';

class _QuickActions extends ConsumerWidget {
  const _QuickActions();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    Widget action(
      IconData icon,
      String label,
      ModuleHue hue,
      Object target, [
      String? asset,
    ]) => Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3),
        child: Semantics(
        button: true,
        label: label,
        excludeSemantics: true,
        child: DeepFocusGlassCard(
          padding: const EdgeInsets.symmetric(vertical: Space.xs, horizontal: 2),
          radius: Radii.lg,
          onTap: () async {
            if (target is String) {
              context.push(target);
            } else {
              await (target as Future<void> Function())();
            }
          },
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                asset == null
                    ? IconOrb(icon: icon, hue: hue, size: 48)
                    : DeepFocusAssetIcon(assetPath: asset, size: 48, fallbackIcon: icon),
                const SizedBox(height: Space.xxs),
                Text(
                  label,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: context.text.labelSmall?.copyWith(height: 1.15),
                ),
              ],
          ),
        ),
        ),
      ),
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Space.sm),
      child: IntrinsicHeight(
        child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          action(Icons.add_task_rounded, l10n.quickAddTask, ModuleHue.tasks, Routes.taskNew, DeepFocusAssets.quickTask),
          action(Icons.edit_note_rounded, l10n.quickAddNote, ModuleHue.notes, () async {
            final id = await ref.read(notesRepositoryProvider).create();
            if (context.mounted) context.push(Routes.note(id));
          }),
          action(Icons.event_rounded, l10n.quickAddEvent, ModuleHue.calendar, Routes.eventNew, DeepFocusAssets.quickEvent),
          action(Icons.timer_outlined, l10n.quickStartFocus, ModuleHue.focus, Routes.focus, DeepFocusAssets.quickFocus),
        ],
      ),
      ),
    );
  }
}

