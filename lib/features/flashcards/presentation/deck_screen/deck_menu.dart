part of '../deck_screen.dart';

/// Everything that is not a main action, grouped: add cards, export, deck.
extension _DeckMenuSheet on _DeckScreenState {
  Future<void> _openMenu(DeckRow deck) async {
    final l10n = context.l10n;
    Widget item(_DeckMenu m, IconData icon, String label, {bool danger = false}) => ListTile(
      key: Key('deckMenu_${m.name}'),
      leading: Icon(icon, color: danger ? context.lux.danger : null),
      title: Text(label, style: danger ? TextStyle(color: context.lux.danger) : null),
      onTap: () => Navigator.of(context).pop(m),
    );
    final choice = await showModalBottomSheet<_DeckMenu>(
      context: context,
      useSafeArea: true,
      isScrollControlled: true,
      showDragHandle: true,
      builder: (ctx) => SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: Space.md),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SectionHeader(title: l10n.flashMenuAdd),
            item(_DeckMenu.paste, Icons.content_paste_rounded, l10n.flashPasteCards),
            item(_DeckMenu.importFile, Icons.download_rounded, l10n.actionImport),
            SectionHeader(title: l10n.actionExport),
            item(_DeckMenu.exportJson, Icons.share_outlined, l10n.flashShareDeck),
            item(_DeckMenu.exportCsv, Icons.table_view_rounded, l10n.transferDeckFormats),
            SectionHeader(title: l10n.flashMenuDeck),
            item(_DeckMenu.edit, Icons.edit_outlined, l10n.deckEdit),
            item(_DeckMenu.stats, Icons.insights_rounded, l10n.flashcardsStats),
            item(_DeckMenu.layout, Icons.view_agenda_outlined, l10n.flashcardsLayoutTitle),
            item(_DeckMenu.speech, Icons.record_voice_over_outlined, l10n.speechTitle),
            item(
              _DeckMenu.delete,
              Icons.delete_outline_rounded,
              l10n.flashcardsDeleteDeck,
              danger: true,
            ),
          ],
        ),
      ),
    );
    if (choice == null || !mounted) return;
    switch (choice) {
      case _DeckMenu.paste:
        await _paste();
      case _DeckMenu.importFile:
        await _import();
      case _DeckMenu.exportJson:
        await _export(deck);
      case _DeckMenu.exportCsv:
        await _exportFormats(deck);
      case _DeckMenu.edit:
        await _editDeck(deck);
      case _DeckMenu.stats:
        await context.push(Routes.deckStats(deck.id));
      case _DeckMenu.layout:
        await showLayoutSheet(context, deck);
      case _DeckMenu.speech:
        await showSpeechSheet(context, deck);
      case _DeckMenu.delete:
        await _deleteDeck(deck);
    }
  }

  /// Reads the list as shown (filters, search and order apply), hands-free.
  void _toggleListen(DeckRow deck) {
    final listen = ref.read(listenControllerProvider.notifier);
    if (ref.read(listenControllerProvider).active) {
      listen.stop();
      return;
    }
    if (_shown.isEmpty) {
      showMessage(context, context.l10n.flashListenEmpty);
      return;
    }
    listen.start(
      _shown,
      frontTag: deck.frontLang,
      backTag: deck.backLang,
      appTag: Localizations.localeOf(context).toLanguageTag(),
      swapped: ref.read(deckViewPrefsProvider).swapped,
    );
  }

  /// Reads one row's first column (the speak button in the table).
  Future<void> _speakRow(DeckRow deck, CardRow card) async {
    final s = ref.read(settingsProvider);
    final swapped = ref.read(deckViewPrefsProvider).swapped;
    final tag = swapped ? deck.backLang : deck.frontLang;
    final eff = resolveSpeechTag(
      swapped ? card.back : card.front,
      tag,
      Localizations.localeOf(context).toLanguageTag(),
    );
    final l10n = context.l10n;
    final r = await ref
        .read(ttsServiceProvider)
        .speak(
          swapped ? card.back : card.front,
          languageTag: eff,
          rate: s.flashSpeechRatePercent / 100,
          repeat: s.flashSpeechRepeat,
          pauseMs: s.flashSpeechPauseTenths * 100,
          voice: s.flashVoices[languageCode(eff)],
        );
    if (!mounted) return;
    final message = switch (r) {
      TtsResult.languageUnavailable => l10n.flashcardsTtsLanguageUnavailable,
      TtsResult.unavailable => l10n.flashcardsTtsUnavailable,
      _ => null,
    };
    if (message != null) showMessage(context, message);
  }
}
