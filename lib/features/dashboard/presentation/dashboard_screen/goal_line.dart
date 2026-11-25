part of '../dashboard_screen.dart';

class _GoalLine extends ConsumerWidget {
  const _GoalLine({required this.goal});
  final GoalRow goal;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final p = ref.watch(goalProgressProvider(goal)).value;
    final ratio = p?.ratio ?? 0;
    return InkWell(
      onTap: () => context.push(Routes.goal(goal.id)),
      borderRadius: BorderRadius.circular(Radii.md),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: Space.xs),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    goal.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.text.titleSmall,
                  ),
                ),
                Text(
                  context.fmt.percent(ratio),
                  style: context.text.labelMedium?.copyWith(color: context.lux.ink2),
                ),
              ],
            ),
            const SizedBox(height: Space.xxs),
            GlowBar(value: ratio, hue: ModuleHue.goals, semanticsLabel: goal.title),
          ],
        ),
      ),
    );
  }
}

class _ReviewSection extends ConsumerWidget {
  const _ReviewSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final due = ref.watch(totalDueProvider).value;
    if (due == null) return const SizedBox.shrink();
    return _Section(
      title: l10n.dashReview,
      child: LuxCard(
        onTap: () => context.go(Routes.flashcards),
        child: Row(
          children: [
            const IconOrb(icon: Icons.style_outlined, hue: ModuleHue.flashcards, size: 44),
            const SizedBox(width: Space.md),
            // Never a discouraging "nothing due": invite to open the cards instead.
            Expanded(
              child: Text(
                due > 0 ? l10n.dashCardsDue(due) : l10n.dashOpenDecks,
                style: context.text.titleSmall,
              ),
            ),
            if (due > 0)
              FilledButton.tonal(
                onPressed: () => context.go(Routes.flashcards),
                child: Text(l10n.dashReviewNow),
              ),
          ],
        ),
      ),
    );
  }
}

class _NotesSection extends ConsumerWidget {
  const _NotesSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final notes = ref.watch(recentNotesProvider).value;
    if (notes == null || notes.isEmpty) return const SizedBox.shrink();
    return _Section(
      title: l10n.dashRecentNotes,
      onSeeAll: () => context.push(Routes.notes),
      child: SizedBox(
        height: 120,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: notes.length,
          separatorBuilder: (_, _) => const SizedBox(width: Space.sm),
          itemBuilder: (_, i) => _NoteChip(note: notes[i]),
        ),
      ),
    );
  }
}

class _NoteChip extends StatelessWidget {
  const _NoteChip({required this.note});
  final NoteRow note;

  @override
  Widget build(BuildContext context) {
    final body = note.body.replaceAll(RegExp(r'[#*_>`\[\]]'), '').trim();
    return SizedBox(
      width: 200,
      child: LuxCard(
        accent: ModuleHue.notes.a,
        onTap: () => context.push(Routes.note(note.id)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              note.title.isEmpty ? context.l10n.untitled : note.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: context.text.titleSmall,
            ),
            const SizedBox(height: Space.xxs),
            Expanded(
              child: Text(
                body,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: context.text.bodySmall?.copyWith(color: context.lux.ink2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _InsightSection extends ConsumerWidget {
  const _InsightSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final overdue = ref.watch(tasksProvider(const TaskFilter(view: TaskView.overdue))).value;
    final habits = ref.watch(todayHabitsProvider).value;
    final cards = ref.watch(totalDueProvider).value;
    final focus = ref.watch(todayFocusSecondsProvider).value;
    final target = ref.watch(settingsProvider.select((s) => s.dailyFocusTargetMinutes));
    if (overdue == null || habits == null || cards == null || focus == null) {
      return const SizedBox.shrink();
    }
    final insight = pickInsight(
      overdue: overdue.length,
      habits: habits,
      cardsDue: cards,
      focusSeconds: focus,
      focusTargetMinutes: target,
      now: ref.watch(clockProvider).now(),
    );
    final (text, icon, route) = switch (insight) {
      InsightOverdue(:final count) => (
        l10n.insightOverdue(count),
        Icons.priority_high_rounded,
        Routes.tasks,
      ),
      InsightHabit(:final habitName) => (
        l10n.insightHabitStreak(habitName),
        Icons.local_fire_department_outlined,
        Routes.habits,
      ),
      InsightCardsDue() => (l10n.insightCardsDue, Icons.style_outlined, Routes.flashcards),
      InsightFocusGap(:final minutes) => (
        l10n.insightFocusGap(minutes),
        Icons.timer_outlined,
        Routes.focus,
      ),
      InsightAllClear() => (l10n.insightAllClear, Icons.spa_outlined, Routes.calendar),
    };
    return _Section(
      title: l10n.dashInsight,
      child: LuxCard(
        accent: Palette.champagne,
        // Shell branches are switched with go(); other screens are pushed.
        onTap: () => openRoute(context, route),
        child: Row(
          children: [
            Icon(icon, color: Palette.champagne),
            const SizedBox(width: Space.md),
            Expanded(child: Text(text, style: context.text.bodyMedium)),
          ],
        ),
      ),
    );
  }
}

class _Section extends StatelessWidget {
  const _Section({required this.title, required this.child, this.onSeeAll});
  final String title;
  final Widget child;
  final VoidCallback? onSeeAll;

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      // Long-press a section title to rearrange the home page by dragging.
      GestureDetector(
        onLongPress: () => showModalBottomSheet<void>(
          useRootNavigator: true,
          context: context,
          showDragHandle: true,
          isScrollControlled: true,
          builder: (_) => const DashboardCustomizeSheet(),
        ),
        child: SectionHeader(
          title: title,
          action: onSeeAll == null ? null : context.l10n.dashSeeAll,
          onAction: onSeeAll,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: Space.page),
        child: child,
      ),
    ],
  );
}

/// Toggle and reorder dashboard sections. Persists immediately.
class DashboardCustomizeSheet extends ConsumerWidget {
  const DashboardCustomizeSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final enabled = ref.watch(settingsProvider.select((s) => s.dashboardSections));
    final all = [
      ...enabled,
      for (final id in AppSettings.defaultDashboardSections)
        if (!enabled.contains(id)) id,
    ];
    void save(List<String> next) =>
        ref.read(settingsProvider.notifier).update((c) => c.copyWith(dashboardSections: next));
    return SafeArea(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: MediaQuery.sizeOf(context).height * 0.8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Space.page),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(l10n.dashCustomizeTitle, style: context.text.titleLarge),
                  const SizedBox(height: Space.xxs),
                  Text(
                    l10n.dashCustomizeHint,
                    style: context.text.bodyMedium?.copyWith(color: context.lux.ink2),
                  ),
                ],
              ),
            ),
            Flexible(
              child: ReorderableListView(
                shrinkWrap: true,
                buildDefaultDragHandles: false,
                onReorderItem: (from, to) {
                  final list = [...all];
                  list.insert(to, list.removeAt(from));
                  save([
                    for (final id in list)
                      if (enabled.contains(id)) id,
                  ]);
                },
                children: [
                  for (var i = 0; i < all.length; i++)
                    SwitchListTile(
                      key: ValueKey(all[i]),
                      value: enabled.contains(all[i]),
                      title: Text(dashSectionName(l10n, all[i])),
                      secondary: ReorderableDragStartListener(
                        index: i,
                        child: const Icon(Icons.drag_indicator_rounded),
                      ),
                      onChanged: (on) => save(
                        on
                            ? [...enabled, all[i]]
                            : [
                                for (final id in enabled)
                                  if (id != all[i]) id,
                              ],
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
