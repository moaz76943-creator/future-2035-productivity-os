part of '../deck_screen.dart';

class _DeckHeader extends ConsumerWidget {
  const _DeckHeader({required this.deck});
  final DeckRow deck;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final fmt = context.fmt;
    final stats = ref.watch(deckStatsProvider(deck.id)).value;
    final queue = ref.watch(studyQueueSizeProvider(deck.id)).value;
    final mature = stats == null || stats.total == 0 ? 0.0 : stats.mature / stats.total;
    final canStudy = (queue ?? 0) > 0;
    final hasCards = (stats?.total ?? 0) > 0;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Space.page),
      child: LuxCard(
        accent: Color(deck.color),
        padding: const EdgeInsetsDirectional.fromSTEB(Space.lg, Space.lg, Space.lg, Space.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                GlowRing(
                  value: mature,
                  hue: _hue,
                  size: 76,
                  stroke: 7,
                  semanticsLabel: l10n.flashcardsMatureRing(fmt.percent(mature)),
                  child: ExcludeSemantics(
                    child: Text(fmt.percent(mature), style: context.text.titleSmall),
                  ),
                ),
                const SizedBox(width: Space.lg),
                Expanded(
                  child: Wrap(
                    spacing: Space.lg,
                    runSpacing: Space.sm,
                    children: [
                      _Metric(value: fmt.number(stats?.due ?? 0), label: l10n.deckDue),
                      _Metric(value: fmt.number(stats?.newCount ?? 0), label: l10n.deckNewCards),
                      _Metric(value: fmt.number(stats?.mature ?? 0), label: l10n.deckMature),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: Space.md),
            if (queue != null)
              Text(
                canStudy ? l10n.flashcardsReadyCount(queue) : l10n.deckNothingDue,
                style: context.text.bodyMedium?.copyWith(color: context.lux.ink2),
              ),
            const SizedBox(height: Space.sm),
            FilledButton.icon(
              key: const Key('studyButton'),
              // Opens mode + scope choice; practice works even when nothing is due.
              onPressed: hasCards ? () => showStudySheet(context, deck) : null,
              icon: const Icon(Icons.school_rounded),
              label: Text(l10n.deckStudy),
            ),
          ],
        ),
      ),
    );
  }
}

class _Metric extends StatelessWidget {
  const _Metric({required this.value, required this.label});
  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      container: true,
      label: '$label: $value',
      child: ExcludeSemantics(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(value, style: context.text.headlineSmall),
            Text(label, style: context.text.labelMedium?.copyWith(color: context.lux.ink2)),
          ],
        ),
      ),
    );
  }
}

class _CardTile extends ConsumerWidget {
  const _CardTile({
    required this.card,
    required this.onTap,
    required this.onLongPress,
    required this.onDelete,
    required this.onAction,
    this.selecting = false,
    this.selected = false,
  });
  final CardRow card;
  final VoidCallback onTap;
  final VoidCallback onLongPress;
  final VoidCallback onDelete;
  final ValueChanged<_CardAction> onAction;
  final bool selecting;
  final bool selected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final now = ref.read(clockProvider).now();
    final tags = card.tags
        .split(RegExp(r'[,\s]+'))
        .where((t) => t.isNotEmpty)
        .toList(growable: false);
    final status = card.suspended
        ? l10n.flashcardsSuspendedFilter
        : card.state == 'new' || card.dueAt == null
        ? l10n.deckNewCards
        : l10n.flashcardsCardDueOn(context.fmt.relativeDay(card.dueAt!, now));
    final recall = FlashcardsRepository.srsOf(card).retrievability(now.toUtc());
    return GestureDetector(
      onLongPress: onLongPress,
      child: LuxCard(
        onTap: onTap,
        elevated: false,
        accent: selected ? _hue.a : null,
        padding: const EdgeInsetsDirectional.fromSTEB(Space.md, Space.sm, Space.xxs, Space.sm),
        child: Row(
          children: [
            if (selecting)
              Checkbox(
                value: selected,
                onChanged: (_) => onTap(),
                semanticLabel: l10n.flashcardsSelectCard(card.front),
              ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    card.front,
                    style: context.text.titleSmall,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 2),
                  Text(
                    card.back,
                    style: context.text.bodySmall?.copyWith(color: context.lux.ink2),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: Space.xxs),
                  Wrap(
                    spacing: Space.xxs,
                    runSpacing: Space.xxs,
                    children: [
                      LuxPill(label: status, color: _hue.a),
                      if (recall != null && !card.suspended)
                        LuxPill(label: l10n.flashcardsRecall(context.fmt.percent(recall))),
                      if (FlashcardsRepository.isHard(card)) LuxPill(label: l10n.flashcardsHard),
                      for (final t in tags) LuxPill(label: t),
                    ],
                  ),
                ],
              ),
            ),
            if (!selecting) ...[
              IconButton(
                tooltip: card.favorite ? l10n.flashcardsUnfavorite : l10n.flashcardsFavorite,
                isSelected: card.favorite,
                onPressed: () => onAction(_CardAction.favorite),
                icon: const Icon(Icons.star_outline_rounded),
                selectedIcon: Icon(Icons.star_rounded, color: Palette.aurora),
              ),
              PopupMenuButton<_CardAction>(
                tooltip: l10n.actionMore,
                onSelected: onAction,
                itemBuilder: (_) => [
                  PopupMenuItem(
                    value: _CardAction.suspend,
                    child: Text(card.suspended ? l10n.flashcardsResume : l10n.flashcardsSuspend),
                  ),
                  PopupMenuItem(
                    value: _CardAction.duplicate,
                    child: Text(l10n.flashcardsDuplicate),
                  ),
                  PopupMenuItem(value: _CardAction.move, child: Text(l10n.flashcardsMoveTo)),
                ],
              ),
              IconButton(
                tooltip: l10n.actionDelete,
                onPressed: onDelete,
                icon: const Icon(Icons.delete_outline_rounded),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

/// Paste box for importing cards. Owns its controller so it outlives the
/// dialog's closing animation.
class _ImportDialog extends ConsumerStatefulWidget {
  const _ImportDialog();

  @override
  ConsumerState<_ImportDialog> createState() => _ImportDialogState();
}
