part of '../deck_screen.dart';

class _DeckScreenState extends ConsumerState<DeckScreen> {
  /// setState for the extension parts (keeps setState protected).
  void _update(VoidCallback fn) => setState(fn);

  final _search = TextEditingController();
  String _query = '';
  _CardFilter _filter = _CardFilter.all;
  String? _tag;

  /// Multi-select (long-press a card). Empty = normal mode.
  final Set<String> _selected = {};

  FlashcardsRepository get _repo => ref.read(flashcardsRepositoryProvider);

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final deckValue = ref.watch(deckProvider(widget.deckId));
    return AsyncValueView<DeckRow?>(
      value: deckValue,
      loading: const Scaffold(body: SizedBox.shrink()),
      data: (deck) {
        if (deck == null || deck.deletedAt != null) {
          return ModuleScaffold(
            title: l10n.flashTitle,
            hue: _hue,
            slivers: [
              SliverToBoxAdapter(
                child: ErrorState(
                  title: l10n.errorGenericTitle,
                  message: l10n.flashcardsDeckNotFound,
                ),
              ),
            ],
          );
        }
        return ModuleScaffold(
          title: deck.name,
          subtitle: deck.description.isEmpty ? null : deck.description,
          hue: _hue,
          actions: [
            IconButton(
              key: const Key('importButton'),
              tooltip: l10n.actionImport,
              onPressed: _import,
              icon: const Icon(Icons.download_rounded),
            ),
            IconButton(
              key: const Key('exportButton'),
              tooltip: l10n.actionExport,
              onPressed: () => _export(deck),
              icon: const Icon(Icons.upload_rounded),
            ),
            PopupMenuButton<_DeckMenu>(
              tooltip: l10n.actionMore,
              onSelected: (m) => switch (m) {
                _DeckMenu.edit => _editDeck(deck),
                _DeckMenu.stats => context.push(Routes.deckStats(deck.id)),
                _DeckMenu.layout => showLayoutSheet(context, deck),
                _DeckMenu.speech => showSpeechSheet(context, deck),
                _DeckMenu.exportCsv => _exportCsv(deck),
                _DeckMenu.delete => _deleteDeck(deck),
              },
              itemBuilder: (_) => [
                PopupMenuItem(value: _DeckMenu.edit, child: Text(l10n.deckEdit)),
                PopupMenuItem(value: _DeckMenu.stats, child: Text(l10n.flashcardsStats)),
                PopupMenuItem(value: _DeckMenu.layout, child: Text(l10n.flashcardsLayoutTitle)),
                PopupMenuItem(value: _DeckMenu.speech, child: Text(l10n.speechTitle)),
                PopupMenuItem(value: _DeckMenu.exportCsv, child: Text(l10n.flashcardsExportCsv)),
                PopupMenuItem(value: _DeckMenu.delete, child: Text(l10n.flashcardsDeleteDeck)),
              ],
            ),
          ],
          floatingActionButton: FloatingActionButton.extended(
            heroTag: 'deck-card-fab',
            key: const Key('addCardFab'),
            onPressed: () => showCardForm(context, deckId: deck.id),
            icon: const Icon(Icons.add_rounded),
            label: Text(l10n.cardNew),
          ),
          slivers: [
            SliverToBoxAdapter(child: _DeckHeader(deck: deck)),
            ..._cardSlivers(deck),
          ],
        );
      },
    );
  }
}
