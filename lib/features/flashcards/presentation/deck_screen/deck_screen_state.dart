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

  /// The cards as currently listed (filters, search, order), for listen mode.
  List<CardRow> _shown = const [];

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
    final listening = ref.watch(listenControllerProvider.select((s) => s.active));
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
              key: const Key('listenButton'),
              tooltip: l10n.flashListen,
              isSelected: listening,
              icon: const Icon(Icons.headphones_outlined),
              selectedIcon: const Icon(Icons.headphones_rounded),
              onPressed: () => _toggleListen(deck),
            ),
            // Speed, repeats and the voice for each language: one tap away, not buried in the menu.
            IconButton(
              key: const Key('deckSpeech'),
              tooltip: l10n.speechTitle,
              icon: const Icon(Icons.record_voice_over_outlined),
              onPressed: () => showSpeechSheet(context, deck),
            ),
            IconButton(
              key: const Key('deckMenu'),
              tooltip: l10n.actionMore,
              icon: const Icon(Icons.more_vert_rounded),
              onPressed: () => _openMenu(deck),
            ),
          ],
          floatingActionButtonLocation: listening ? FloatingActionButtonLocation.centerFloat : null,
          floatingActionButton: listening
              ? const ListenBar()
              : FloatingActionButton.extended(
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
