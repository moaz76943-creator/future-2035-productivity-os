part of '../deck_screen.dart';

extension _DeckActions on _DeckScreenState {
  Future<void> _editDeck(DeckRow deck) async {
    final r = await showDeckForm(context, initial: deck);
    if (r == null || !mounted) return;
    try {
      await _repo.updateDeck(
        deck.id,
        name: r.name,
        description: r.description,
        category: r.category,
        color: r.color,
        dailyNewLimit: r.dailyNewLimit,
        dailyReviewTarget: r.dailyReviewTarget,
      );
    } catch (_) {
      if (mounted) showMessage(context, context.l10n.errorSaveFailed);
    }
  }

  Future<void> _deleteDeck(DeckRow deck) async {
    final l10n = context.l10n;
    final messenger = ScaffoldMessenger.maybeOf(context);
    final repo = _repo;
    await Navigator.of(context).maybePop();
    await repo.deleteDeck(deck.id);
    messenger
      ?..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(l10n.deletedItem),
          behavior: SnackBarBehavior.floating,
          action: SnackBarAction(
            label: l10n.actionUndo,
            onPressed: () => repo.restoreDeck(deck.id),
          ),
        ),
      );
  }

  Future<void> _import() async {
    final l10n = context.l10n;
    final choice = await showDialog<Object>(
      context: context,
      builder: (ctx) => const _ImportDialog(),
    );
    if (choice == null || !mounted) return;
    try {
      final r = switch (choice) {
        // Mapped CSV/TSV rows from the preview step.
        final ParsedImport p => await _repo.importParsed(
          widget.deckId,
          p.cards,
          invalid: p.invalid,
        ),
        final String source when source.trim().isNotEmpty => await _repo.importCards(
          widget.deckId,
          source,
        ),
        _ => null,
      };
      if (r == null || !mounted) return;
      if (!mounted) return;
      showMessage(
        context,
        r.duplicates == 0 && r.invalid == 0
            ? l10n.importCardsResult(r.added)
            : l10n.importCardsResultDetail(r.added, r.duplicates, r.invalid),
      );
    } catch (_) {
      if (mounted) showMessage(context, l10n.importFailed);
    }
  }

  Future<void> _export(DeckRow deck) async {
    final l10n = context.l10n;
    final String json;
    try {
      json = await _repo.exportDeck(deck.id);
    } catch (_) {
      if (mounted) showMessage(context, l10n.errorGenericMessage);
      return;
    }
    if (!mounted) return;
    final action = await showModalBottomSheet<String>(
      context: context,
      showDragHandle: true,
      useSafeArea: true,
      builder: (ctx) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Space.page),
              child: Semantics(
                header: true,
                child: Text(l10n.flashcardsExportTitle, style: ctx.text.titleLarge),
              ),
            ),
            const SizedBox(height: Space.xs),
            ListTile(
              leading: const Icon(Icons.share_rounded),
              title: Text(l10n.actionShare),
              onTap: () => Navigator.pop(ctx, 'share'),
            ),
            ListTile(
              key: const Key('exportCopyTile'),
              leading: const Icon(Icons.copy_rounded),
              title: Text(l10n.flashcardsCopyToClipboard),
              onTap: () => Navigator.pop(ctx, 'copy'),
            ),
            const SizedBox(height: Space.md),
          ],
        ),
      ),
    );
    if (!mounted) return;
    if (action == 'copy') {
      await Clipboard.setData(ClipboardData(text: json));
      if (mounted) showMessage(context, l10n.exportCopied);
    } else if (action == 'share') {
      try {
        await SharePlus.instance.share(
          ShareParams(text: json, subject: deck.name, title: deck.name),
        );
      } on Object {
        // No share target / plugin failure: never lose the export. Copy it instead.
        await Clipboard.setData(ClipboardData(text: json));
        if (mounted) showMessage(context, l10n.exportCopied);
      }
    }
  }

  Future<void> _exportCsv(DeckRow deck) async {
    final l10n = context.l10n;
    try {
      final csv = await _repo.exportCsv(deck.id);
      // UTF-8 with BOM so spreadsheet apps read Arabic and accents correctly.
      final bytes = Uint8List.fromList([0xEF, 0xBB, 0xBF, ...utf8.encode(csv)]);
      final safe = deck.name.replaceAll(RegExp(r'[^\p{L}\p{N}_-]+', unicode: true), '_');
      final result = await ref
          .read(backupFilesProvider)
          .save('$safe.csv', bytes, subject: deck.name);
      if (mounted && result != BackupSaveResult.cancelled) showMessage(context, l10n.exportDone);
    } catch (_) {
      if (mounted) showMessage(context, l10n.errorGenericMessage);
    }
  }

  Future<void> _toggleSuspend(CardRow card) async {
    final l10n = context.l10n;
    final repo = _repo;
    await repo.setSuspended(card.id, !card.suspended);
    if (!mounted) return;
    showUndoSnack(
      context,
      card.suspended ? l10n.flashcardsResumed : l10n.flashcardsSuspended,
      onUndo: () => repo.setSuspended(card.id, card.suspended),
    );
  }

  Future<String?> _pickDeck(String exceptId) async {
    final l10n = context.l10n;
    final decks = (await _repo.watchDecks().first).where((d) => d.id != exceptId).toList();
    if (!mounted) return null;
    if (decks.isEmpty) {
      showMessage(context, l10n.flashcardsNoOtherDeck);
      return null;
    }
    return showModalBottomSheet<String>(
      context: context,
      showDragHandle: true,
      useSafeArea: true,
      builder: (ctx) => SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Space.page),
              child: Text(l10n.flashcardsMoveTo, style: ctx.text.titleLarge),
            ),
            for (final d in decks)
              ListTile(
                leading: Icon(Icons.style_rounded, color: Color(d.color)),
                title: Text(d.name),
                onTap: () => Navigator.pop(ctx, d.id),
              ),
          ],
        ),
      ),
    );
  }

  Future<void> _cardAction(CardRow card, _CardAction a) async {
    final l10n = context.l10n;
    switch (a) {
      case _CardAction.favorite:
        await _repo.setFavorite([card.id], !card.favorite);
      case _CardAction.duplicate:
        final id = await _repo.duplicateCard(card.id);
        final copy = await _repo.getCard(id);
        if (mounted && copy != null) {
          await showCardForm(context, deckId: card.deckId, initial: copy);
        }
      case _CardAction.move:
        final to = await _pickDeck(card.deckId);
        if (to == null) return;
        await _repo.moveCards([card.id], to);
        if (mounted) {
          showUndoSnack(
            context,
            l10n.flashcardsMoved(1),
            onUndo: () => _repo.moveCards([card.id], card.deckId),
          );
        }
      case _CardAction.suspend:
        await _toggleSuspend(card);
    }
  }

  Future<void> _bulk(String action, List<CardRow> all) async {
    final l10n = context.l10n;
    final ids = _selected.toList();
    final repo = _repo;
    switch (action) {
      case 'favorite':
        final allFav = all.where((c) => _selected.contains(c.id)).every((c) => c.favorite);
        await repo.setFavorite(ids, !allFav);
      case 'suspend':
        final allSusp = all.where((c) => _selected.contains(c.id)).every((c) => c.suspended);
        await repo.setSuspendedMany(ids, !allSusp);
      case 'tag':
        final tag = await promptText(
          context,
          title: l10n.flashcardsAddTag,
          hint: l10n.flashcardsTagHint,
        );
        if (tag == null || tag.trim().isEmpty) return;
        await repo.addTag(ids, tag);
      case 'move':
        final to = await _pickDeck(widget.deckId);
        if (to == null) return;
        await repo.moveCards(ids, to);
        if (mounted) {
          showUndoSnack(
            context,
            l10n.flashcardsMoved(ids.length),
            onUndo: () => repo.moveCards(ids, widget.deckId),
          );
        }
      case 'delete':
        await repo.deleteCards(ids);
        if (mounted) {
          showUndoSnack(context, l10n.deletedItem, onUndo: () => repo.restoreCards(ids));
        }
    }
    if (mounted) _update(_selected.clear);
  }

  Future<void> _deleteCard(CardRow card) async {
    final repo = _repo;
    await repo.deleteCard(card.id);
    if (!mounted) return;
    showUndoSnack(context, context.l10n.deletedItem, onUndo: () => repo.restoreCard(card.id));
  }
}
