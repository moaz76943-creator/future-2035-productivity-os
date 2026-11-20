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
          const SizedBox(height: Space.md),
          // One clear main action first; everything else is grouped and folded below it.
          FilledButton.icon(
            key: const Key('studyDueButton'),
            style: FilledButton.styleFrom(minimumSize: const Size.fromHeight(56)),
            onPressed: queue > 0 ? () => go(StudyScope.scheduled) : null,
            icon: const Icon(Icons.school_rounded),
            label: Text(queue > 0 ? l10n.studyDueCount(queue) : l10n.deckNothingDue),
          ),
          const SizedBox(height: Space.lg),
          Text(l10n.studyAnswerWay, style: context.text.labelLarge),
          const SizedBox(height: Space.xs),
          Wrap(
            spacing: Space.xs,
            runSpacing: Space.xs,
            children: [
              for (final m in StudyMode.values)
                ChoiceChip(
                  key: Key('studyMode_${m.name}'),
                  avatar: Icon(studyModeIcon(m), size: 18),
                  label: Text(studyModeLabel(l10n, m)),
                  showCheckmark: false,
                  selected: m == mode,
                  onSelected: (_) => unawaited(
                    ref
                        .read(settingsProvider.notifier)
                        .update((s) => s.copyWith(flashStudyMode: m.name)),
                  ),
                ),
            ],
          ),
          const SizedBox(height: Space.sm),
          ExpansionTile(
            key: const Key('studyPracticeGroup'),
            tilePadding: EdgeInsets.zero,
            shape: const Border(),
            collapsedShape: const Border(),
            leading: const Icon(Icons.fitness_center_rounded),
            title: Text(l10n.studyMorePractice, style: context.text.titleSmall),
            subtitle: Text(
              l10n.studyPracticeHint,
              style: context.text.bodySmall?.copyWith(color: context.lux.ink2),
            ),
            children: [
              for (final (key, icon, label, scope) in [
                (
                  'practiceAllButton',
                  Icons.shuffle_rounded,
                  l10n.studyPracticeAll,
                  StudyScope.practiceAll,
                ),
                (
                  'practiceMistakesButton',
                  Icons.replay_rounded,
                  l10n.studyPracticeMistakes,
                  StudyScope.practiceMistakes,
                ),
                (
                  'practiceNewButton',
                  Icons.fiber_new_rounded,
                  l10n.studyPracticeNew,
                  StudyScope.practiceNew,
                ),
                (
                  'practiceHardButton',
                  Icons.local_fire_department_outlined,
                  l10n.studyPracticeHard,
                  StudyScope.practiceHard,
                ),
                (
                  'practiceFavoritesButton',
                  Icons.star_outline_rounded,
                  l10n.studyPracticeFavorites,
                  StudyScope.practiceFavorites,
                ),
              ])
                ListTile(
                  key: Key(key),
                  contentPadding: const EdgeInsetsDirectional.only(start: Space.sm),
                  leading: Icon(icon, size: 20),
                  title: Text(label),
                  trailing: const Icon(Icons.chevron_right_rounded),
                  onTap: () => go(scope),
                ),
            ],
          ),
          ExpansionTile(
            key: const Key('studySettingsGroup'),
            tilePadding: EdgeInsets.zero,
            shape: const Border(),
            collapsedShape: const Border(),
            leading: const Icon(Icons.tune_rounded),
            title: Text(l10n.studySessionSettings, style: context.text.titleSmall),
            children: [
              PlanStepper(
                key: const Key('studySessionSize'),
                label: l10n.studySessionSize,
                value: settings.flashSessionSize,
                min: 0,
                max: 500,
                display: (v) => v == 0 ? l10n.studySessionAll : context.fmt.number(v),
                onChanged: (v) => unawaited(
                  ref
                      .read(settingsProvider.notifier)
                      .update((s) => s.copyWith(flashSessionSize: v)),
                ),
              ),
              const SizedBox(height: Space.xs),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(l10n.studyOrder, style: context.text.labelLarge),
              ),
              const SizedBox(height: Space.xs),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Wrap(
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
                        showCheckmark: false,
                        selected: studyOrderFromName(settings.flashOrder) == o,
                        onSelected: (_) => unawaited(
                          ref
                              .read(settingsProvider.notifier)
                              .update((s) => s.copyWith(flashOrder: o.name)),
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(height: Space.sm),
            ],
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
