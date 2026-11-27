part of '../dashboard_screen.dart';

/// Four big glass cards: new task, new note, agenda (add event) and new goal.
class _QuickActions extends ConsumerWidget {
  const _QuickActions();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final wide = MediaQuery.sizeOf(context).width >= 600;
    final icon = wide ? 64.0 : 80.0;
    Widget action(
      String key,
      IconData fallback,
      String label,
      String asset,
      Future<void> Function() onTap,
    ) => Expanded(
      child: Semantics(
        button: true,
        label: label,
        excludeSemantics: true,
        child: DeepFocusGlassCard(
          key: Key(key),
          padding: const EdgeInsets.symmetric(vertical: Space.md, horizontal: Space.xs),
          onTap: onTap,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DeepFocusAssetIcon(assetPath: asset, size: icon, fallbackIcon: fallback),
              const SizedBox(height: Space.xs),
              Text(
                label,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: context.text.titleSmall?.copyWith(height: 1.2),
              ),
            ],
          ),
        ),
      ),
    );
    Future<void> go(String route) async {
      await context.push<void>(route);
    }

    Widget row(List<Widget> cards) => IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [cards[0], const SizedBox(width: Space.sm), cards[1]],
      ),
    );
    return Padding(
      padding: const EdgeInsets.fromLTRB(Space.md, Space.sm, Space.md, 0),
      child: Column(
        children: [
          row([
            action(
              'dashActionTask',
              Icons.add_task_rounded,
              l10n.quickAddTask,
              DeepFocusAssets.quickTask,
              () => go(Routes.taskNew),
            ),
            action('dashActionNote', Icons.edit_note_rounded, l10n.quickAddNote, DeepFocusAssets.quickNote,
                () async {
              final id = await ref.read(notesRepositoryProvider).create();
              if (context.mounted) await context.push<void>(Routes.note(id));
            }),
          ]),
          const SizedBox(height: Space.sm),
          row([
            action(
              'dashActionAgenda',
              Icons.event_rounded,
              l10n.dashAgenda,
              DeepFocusAssets.quickEvent,
              () => go(Routes.eventNew),
            ),
            action(
              'dashActionGoal',
              Icons.track_changes_rounded,
              l10n.goalNew,
              DeepFocusAssets.spaceGoals,
              () async {
                await showGoalEditor(context);
              },
            ),
          ]),
        ],
      ),
    );
  }
}
