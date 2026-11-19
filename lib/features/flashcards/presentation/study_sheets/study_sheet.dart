part of '../study_sheets.dart';

class _StudySheet extends ConsumerWidget {
  const _StudySheet({required this.deck});
  final DeckRow deck;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final settings = ref.watch(settingsProvider);
    final mode = studyModeFromName(settings.flashStudyMode) ?? StudyMode.classic;
    final queue = ref.watch(studyQueueSizeProvider(deck.id)).value ?? 0;

    void go(StudyScope scope) {
      Navigator.pop(context);
      context.push(Routes.review(deck.id, mode: mode.name, scope: scope.name));
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Semantics(header: true, child: Text(l10n.studyHowTitle, style: context.text.titleLarge)),
          const SizedBox(height: Space.sm),
          Wrap(
            spacing: Space.xs,
            runSpacing: Space.xs,
            children: [
              for (final m in StudyMode.values)
                ChoiceChip(
                  key: Key('studyMode_${m.name}'),
                  avatar: Icon(studyModeIcon(m), size: 18),
                  label: Text(studyModeLabel(l10n, m)),
                  selected: m == mode,
                  onSelected: (_) => unawaited(
                    ref
                        .read(settingsProvider.notifier)
                        .update((s) => s.copyWith(flashStudyMode: m.name)),
                  ),
                ),
            ],
          ),
          const SizedBox(height: Space.lg),
          FilledButton.icon(
            key: const Key('studyDueButton'),
            style: FilledButton.styleFrom(minimumSize: const Size.fromHeight(52)),
            onPressed: queue > 0 ? () => go(StudyScope.scheduled) : null,
            icon: const Icon(Icons.school_rounded),
            label: Text(queue > 0 ? l10n.studyDueCount(queue) : l10n.deckNothingDue),
          ),
          const SizedBox(height: Space.sm),
          OutlinedButton.icon(
            key: const Key('practiceAllButton'),
            style: OutlinedButton.styleFrom(minimumSize: const Size.fromHeight(48)),
            onPressed: () => go(StudyScope.practiceAll),
            icon: const Icon(Icons.shuffle_rounded),
            label: Text(l10n.studyPracticeAll),
          ),
          const SizedBox(height: Space.sm),
          OutlinedButton.icon(
            key: const Key('practiceMistakesButton'),
            style: OutlinedButton.styleFrom(minimumSize: const Size.fromHeight(48)),
            onPressed: () => go(StudyScope.practiceMistakes),
            icon: const Icon(Icons.replay_rounded),
            label: Text(l10n.studyPracticeMistakes),
          ),
          const SizedBox(height: Space.xs),
          Wrap(
            spacing: Space.xs,
            runSpacing: Space.xs,
            children: [
              ActionChip(
                key: const Key('practiceNewButton'),
                avatar: const Icon(Icons.fiber_new_rounded, size: 18),
                label: Text(l10n.studyPracticeNew),
                onPressed: () => go(StudyScope.practiceNew),
              ),
              ActionChip(
                key: const Key('practiceHardButton'),
                avatar: const Icon(Icons.local_fire_department_outlined, size: 18),
                label: Text(l10n.studyPracticeHard),
                onPressed: () => go(StudyScope.practiceHard),
              ),
              ActionChip(
                key: const Key('practiceFavoritesButton'),
                avatar: const Icon(Icons.star_outline_rounded, size: 18),
                label: Text(l10n.studyPracticeFavorites),
                onPressed: () => go(StudyScope.practiceFavorites),
              ),
            ],
          ),
          const Divider(height: Space.xl),
          PlanStepper(
            key: const Key('studySessionSize'),
            label: l10n.studySessionSize,
            value: settings.flashSessionSize,
            min: 0,
            max: 500,
            display: (v) => v == 0 ? l10n.studySessionAll : context.fmt.number(v),
            onChanged: (v) => unawaited(
              ref.read(settingsProvider.notifier).update((s) => s.copyWith(flashSessionSize: v)),
            ),
          ),
          const SizedBox(height: Space.xs),
          Text(l10n.studyOrder, style: context.text.labelLarge),
          const SizedBox(height: Space.xs),
          Wrap(
            spacing: Space.xs,
            children: [
              for (final o in StudyOrder.values)
                ChoiceChip(
                  key: Key('studyOrder_${o.name}'),
                  label: Text(switch (o) {
                    StudyOrder.due => l10n.studyOrderDue,
                    StudyOrder.random => l10n.studyOrderRandom,
                    StudyOrder.hardest => l10n.studyOrderHardest,
                  }),
                  selected: studyOrderFromName(settings.flashOrder) == o,
                  onSelected: (_) => unawaited(
                    ref
                        .read(settingsProvider.notifier)
                        .update((s) => s.copyWith(flashOrder: o.name)),
                  ),
                ),
            ],
          ),
          const SizedBox(height: Space.sm),
          Text(
            l10n.studyPracticeHint,
            style: context.text.bodySmall?.copyWith(color: context.lux.ink2),
          ),
        ],
      ),
    );
  }
}

class _LayoutSheet extends ConsumerStatefulWidget {
  const _LayoutSheet({required this.deck});
  final DeckRow deck;

  @override
  ConsumerState<_LayoutSheet> createState() => _LayoutSheetState();
}
