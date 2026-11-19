part of '../deck_screen.dart';

extension _DeckCards on _DeckScreenState {
  List<Widget> _cardSlivers(DeckRow deck) {
    final l10n = context.l10n;
    final cards = ref.watch(deckCardsProvider(deck.id));
    return [
      SliverAsyncValueView<List<CardRow>>(
        value: cards,
        data: (all) {
          if (all.isEmpty) {
            return SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: Space.page),
                child: EmptyState(
                  icon: Icons.note_add_rounded,
                  hue: _hue,
                  compact: true,
                  title: l10n.deckCards(0),
                  message: l10n.deckEmptyCards,
                  actionLabel: l10n.cardNew,
                  onAction: () => showCardForm(context, deckId: deck.id),
                ),
              ),
            );
          }
          // Case-, accent- and Arabic-diacritic-insensitive search.
          final q = StudyRules.searchKey(_query);
          final now = ref.read(clockProvider).nowUtc();
          final tags = <String>{
            for (final c in all) ...c.tags.split(RegExp(r'[,\s]+')).where((t) => t.isNotEmpty),
          }.toList()..sort();
          final prefs = ref.watch(deckViewPrefsProvider);
          final listenId = ref.watch(listenControllerProvider.select((s) => s.cardId));
          final filtered = all.where((c) {
            final ok = switch (_filter) {
              _CardFilter.all => true,
              _CardFilter.newCards => c.state == 'new' && !c.suspended,
              _CardFilter.due =>
                c.state != 'new' && !c.suspended && c.dueAt != null && !c.dueAt!.isAfter(now),
              _CardFilter.hard => !c.suspended && FlashcardsRepository.isHard(c),
              _CardFilter.favorites => c.favorite,
              _CardFilter.suspended => c.suspended,
            };
            if (!ok) return false;
            if (_tag != null && !c.tags.split(RegExp(r'[,\s]+')).contains(_tag)) return false;
            if (q.isEmpty) return true;
            return StudyRules.searchKey('${c.front} ${c.back} ${c.tags}').contains(q);
          }).toList();
          final shown = prefs.apply(filtered, now);
          _shown = shown;
          return SliverMainAxisGroup(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(Space.page, Space.lg, Space.page, 0),
                  child: TextField(
                    key: const Key('cardSearchField'),
                    controller: _search,
                    onChanged: (v) => _update(() => _query = v),
                    decoration: InputDecoration(
                      hintText: l10n.flashcardsSearchCards,
                      prefixIcon: const Icon(Icons.search_rounded),
                      suffixIcon: _query.isEmpty
                          ? null
                          : IconButton(
                              tooltip: l10n.actionClear,
                              icon: const Icon(Icons.close_rounded),
                              onPressed: () => _update(() {
                                _search.clear();
                                _query = '';
                              }),
                            ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(child: _viewControls(prefs)),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 56,
                  child: ListView(
                    key: const Key('cardFilters'),
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.fromLTRB(Space.page, Space.xs, Space.page, 0),
                    children: [
                      for (final f in _CardFilter.values)
                        Padding(
                          padding: const EdgeInsetsDirectional.only(end: Space.xs),
                          child: ChoiceChip(
                            key: Key('cardFilter_${f.name}'),
                            label: Text(switch (f) {
                              _CardFilter.all => l10n.filterAll,
                              _CardFilter.newCards => l10n.deckNewCards,
                              _CardFilter.due => l10n.deckDue,
                              _CardFilter.hard => l10n.flashcardsHard,
                              _CardFilter.favorites => l10n.flashcardsFavorites,
                              _CardFilter.suspended => l10n.flashcardsSuspendedFilter,
                            }),
                            selected: _filter == f,
                            onSelected: (_) => _update(() => _filter = f),
                          ),
                        ),
                      for (final t in tags)
                        Padding(
                          padding: const EdgeInsetsDirectional.only(end: Space.xs),
                          child: FilterChip(
                            label: Text('#$t'),
                            selected: _tag == t,
                            onSelected: (on) => _update(() => _tag = on ? t : null),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              if (_selected.isNotEmpty)
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(Space.page, Space.sm, Space.page, 0),
                    child: LuxCard(
                      key: const Key('bulkBar'),
                      elevated: false,
                      padding: const EdgeInsets.symmetric(horizontal: Space.xs, vertical: 2),
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          IconButton(
                            tooltip: l10n.actionClose,
                            onPressed: () => _update(_selected.clear),
                            icon: const Icon(Icons.close_rounded),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(end: Space.xs),
                            child: Text(
                              l10n.flashcardsSelected(_selected.length),
                              style: context.text.titleSmall,
                            ),
                          ),
                          IconButton(
                            tooltip: l10n.flashcardsSelectAll,
                            onPressed: () =>
                                _update(() => _selected.addAll(shown.map((c) => c.id))),
                            icon: const Icon(Icons.select_all_rounded),
                          ),
                          IconButton(
                            key: const Key('bulkFavorite'),
                            tooltip: l10n.flashcardsFavorite,
                            onPressed: () => _bulk('favorite', all),
                            icon: const Icon(Icons.star_outline_rounded),
                          ),
                          IconButton(
                            key: const Key('bulkSuspend'),
                            tooltip: l10n.flashcardsSuspend,
                            onPressed: () => _bulk('suspend', all),
                            icon: const Icon(Icons.pause_circle_outline_rounded),
                          ),
                          IconButton(
                            key: const Key('bulkTag'),
                            tooltip: l10n.flashcardsAddTag,
                            onPressed: () => _bulk('tag', all),
                            icon: const Icon(Icons.sell_outlined),
                          ),
                          IconButton(
                            key: const Key('bulkMove'),
                            tooltip: l10n.flashcardsMoveTo,
                            onPressed: () => _bulk('move', all),
                            icon: const Icon(Icons.drive_file_move_outline),
                          ),
                          IconButton(
                            key: const Key('bulkDelete'),
                            tooltip: l10n.actionDelete,
                            onPressed: () => _bulk('delete', all),
                            icon: const Icon(Icons.delete_outline_rounded),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              if (prefs.sort == DeckSort.manual && shown.length != all.length)
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(Space.page, Space.sm, Space.page, 0),
                    child: Text(l10n.flashReorderNeedsAll, style: context.text.bodySmall),
                  ),
                ),
              SliverToBoxAdapter(
                child: SectionHeader(
                  title: shown.length == all.length
                      ? l10n.deckCards(all.length)
                      : l10n.flashcardsShownOf(shown.length, all.length),
                ),
              ),
              if (shown.isEmpty)
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: Space.page),
                    child: Text(
                      l10n.flashcardsSearchEmpty,
                      style: context.text.bodyMedium?.copyWith(color: context.lux.ink2),
                    ),
                  ),
                )
              else if (prefs.sort == DeckSort.manual && shown.length == all.length)
                ..._reorderSlivers(deck, shown, prefs)
              else if (prefs.table) ...[
                SliverToBoxAdapter(
                  child: CardTableHeader(
                    first: _columnName(deck, front: !prefs.swapped),
                    second: _columnName(deck, front: prefs.swapped),
                    onSwap: () => ref
                        .read(deckViewPrefsProvider.notifier)
                        .set(prefs.copyWith(swapped: !prefs.swapped)),
                  ),
                ),
                SliverList.builder(
                  key: const Key('cardTable'),
                  itemCount: shown.length,
                  itemBuilder: (_, i) {
                    final c = shown[i];
                    void toggle() => _update(
                      () => _selected.contains(c.id) ? _selected.remove(c.id) : _selected.add(c.id),
                    );
                    return CardTableRow(
                      key: Key('row_${c.id}'),
                      card: c,
                      swapped: prefs.swapped,
                      selected: _selected.contains(c.id),
                      current: listenId == c.id,
                      dimmed: c.suspended,
                      onTap: _selected.isNotEmpty
                          ? toggle
                          : () => showCardForm(context, deckId: deck.id, initial: c),
                      onLongPress: toggle,
                      onSpeak: () => _speakRow(deck, c),
                    );
                  },
                ),
              ] else
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: Space.page),
                  sliver: SliverList.separated(
                    itemCount: shown.length,
                    separatorBuilder: (_, _) => const SizedBox(height: Space.xs),
                    itemBuilder: (_, i) {
                      final c = shown[i];
                      void toggle() => _update(
                        () =>
                            _selected.contains(c.id) ? _selected.remove(c.id) : _selected.add(c.id),
                      );
                      return _CardTile(
                        card: c,
                        selecting: _selected.isNotEmpty,
                        selected: _selected.contains(c.id),
                        onTap: _selected.isNotEmpty
                            ? toggle
                            : () => showCardForm(context, deckId: deck.id, initial: c),
                        onLongPress: toggle,
                        onDelete: () => _deleteCard(c),
                        onAction: (a) => _cardAction(c, a),
                      );
                    },
                  ),
                ),
            ],
          );
        },
      ),
    ];
  }

  /// Column title: the side's language, or "Front"/"Back" when none is set.
  String _columnName(DeckRow deck, {required bool front}) {
    final l10n = context.l10n;
    final tag = front ? deck.frontLang : deck.backLang;
    if (tag.isEmpty) return front ? l10n.cardFront : l10n.cardBack;
    return languageLabelOf(tag, '');
  }

  /// Table or tiles, and the order of the list.
  Widget _viewControls(DeckViewPrefs prefs) {
    final l10n = context.l10n;
    final ctrl = ref.read(deckViewPrefsProvider.notifier);
    return Padding(
      padding: const EdgeInsets.fromLTRB(Space.page, Space.sm, Space.page, 0),
      child: Row(
        children: [
          Expanded(
            child: SegmentedButton<bool>(
              showSelectedIcon: false,
              segments: [
                ButtonSegment(
                  value: true,
                  icon: const Icon(Icons.table_rows_outlined, key: Key('viewTable')),
                  label: Text(l10n.flashViewTable, overflow: TextOverflow.ellipsis),
                ),
                ButtonSegment(
                  value: false,
                  icon: const Icon(Icons.view_agenda_outlined, key: Key('viewCards')),
                  label: Text(l10n.flashViewCards, overflow: TextOverflow.ellipsis),
                ),
              ],
              selected: {prefs.table},
              onSelectionChanged: (v) => ctrl.set(prefs.copyWith(table: v.first)),
            ),
          ),
          PopupMenuButton<DeckSort>(
            key: const Key('sortMenu'),
            tooltip: l10n.flashSort,
            icon: const Icon(Icons.sort_rounded),
            initialValue: prefs.sort,
            onSelected: (v) => ctrl.set(prefs.copyWith(sort: v)),
            itemBuilder: (_) => [
              for (final s in DeckSort.values)
                PopupMenuItem(
                  key: Key('sort_${s.name}'),
                  value: s,
                  child: Text(switch (s) {
                    DeckSort.newest => l10n.flashSortNewest,
                    DeckSort.alpha => l10n.flashSortAlpha,
                    DeckSort.due => l10n.flashSortDue,
                    DeckSort.hard => l10n.flashSortHard,
                    DeckSort.manual => l10n.flashSortManual,
                  }),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
