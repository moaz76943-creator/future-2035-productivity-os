part of '../deck_screen.dart';

/// "My order": the cards in a list that can be dragged by a handle. Only with
/// the whole deck showing, so a position always means a place in the deck.
extension _DeckReorder on _DeckScreenState {
  List<Widget> _reorderSlivers(DeckRow deck, List<CardRow> shown, DeckViewPrefs prefs) {
    final l10n = context.l10n;
    return [
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.xs),
          child: Text(
            l10n.flashReorderHint,
            style: context.text.bodySmall?.copyWith(color: context.lux.ink2),
          ),
        ),
      ),
      SliverReorderableList(
        key: const Key('cardReorderList'),
        itemCount: shown.length,
        onReorderItem: (from, to) => _moveCard(shown, from, to),
        itemBuilder: (_, i) {
          final c = shown[i];
          return Row(
            key: ValueKey('reorder_${c.id}'),
            children: [
              Expanded(
                child: CardTableRow(
                  card: c,
                  swapped: prefs.swapped,
                  dimmed: c.suspended,
                  onTap: () => showCardForm(context, deckId: deck.id, initial: c),
                  onLongPress: () {},
                  onSpeak: () => _speakRow(deck, c),
                ),
              ),
              ReorderableDragStartListener(
                index: i,
                child: Padding(
                  padding: const EdgeInsets.all(Space.sm),
                  child: Icon(
                    Icons.drag_indicator_rounded,
                    key: Key('dragHandle_${c.id}'),
                    semanticLabel: l10n.flashDragHandle,
                    color: context.lux.ink2,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    ];
  }

  Future<void> _moveCard(List<CardRow> shown, int from, int to) {
    final list = [...shown];
    final keys = [for (final c in shown) manualKey(c)]..sort();
    // Cards imported together share a creation time: keys must still differ.
    for (var i = 1; i < keys.length; i++) {
      if (keys[i] <= keys[i - 1]) keys[i] = keys[i - 1] + 1;
    }
    final moved = list.removeAt(from);
    list.insert(to, moved);
    return ref.read(flashcardsRepositoryProvider).setCardOrder(list, keys);
  }
}
