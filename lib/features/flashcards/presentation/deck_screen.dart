import 'dart:async';
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';
import 'package:share_plus/share_plus.dart';

import '../../../app/localization/app_format.dart';
import '../../../app/routing/routes.dart';
import '../../../core/database/app_database.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/components/indicators.dart';
import '../../../core/design_system/components/states.dart';
import '../../../core/design_system/components/surfaces.dart';
import '../../../core/design_system/tokens.dart';
import '../../../core/providers/core_providers.dart';
import '../../../shared/widgets/async_value_view.dart';
import '../../../shared/widgets/dialogs.dart';
import '../../../shared/widgets/module_scaffold.dart';
import '../../backup/application/backup_ui.dart';
import '../application/flashcards_providers.dart';
import '../domain/card_import.dart';
import '../domain/study.dart';
import 'study_sheets.dart';
import '../data/flashcards_repository.dart';
import 'widgets/card_form_sheet.dart';
import 'widgets/deck_form_sheet.dart';

const _hue = ModuleHue.flashcards;

enum _DeckMenu { edit, stats, speech, exportCsv, delete }

/// Card list filters.
enum _CardFilter { all, newCards, due, hard, favorites, suspended }

enum _CardAction { favorite, duplicate, move, suspend }

class DeckScreen extends ConsumerStatefulWidget {
  const DeckScreen({super.key, required this.deckId});
  final String deckId;

  @override
  ConsumerState<DeckScreen> createState() => _DeckScreenState();
}

class _DeckScreenState extends ConsumerState<DeckScreen> {
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

  Future<void> _editDeck(DeckRow deck) async {
    final r = await showDeckForm(context, initial: deck);
    if (r == null || !mounted) return;
    try {
      await _repo.updateDeck(
        deck.id,
        name: r.name,
        description: r.description,
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
    if (mounted) setState(_selected.clear);
  }

  Future<void> _deleteCard(CardRow card) async {
    final repo = _repo;
    await repo.deleteCard(card.id);
    if (!mounted) return;
    showUndoSnack(context, context.l10n.deletedItem, onUndo: () => repo.restoreCard(card.id));
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
                _DeckMenu.speech => showSpeechSheet(context, deck),
                _DeckMenu.exportCsv => _exportCsv(deck),
                _DeckMenu.delete => _deleteDeck(deck),
              },
              itemBuilder: (_) => [
                PopupMenuItem(value: _DeckMenu.edit, child: Text(l10n.deckEdit)),
                PopupMenuItem(value: _DeckMenu.stats, child: Text(l10n.flashcardsStats)),
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
          final shown = all.where((c) {
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
          return SliverMainAxisGroup(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(Space.page, Space.lg, Space.page, 0),
                  child: TextField(
                    key: const Key('cardSearchField'),
                    controller: _search,
                    onChanged: (v) => setState(() => _query = v),
                    decoration: InputDecoration(
                      hintText: l10n.flashcardsSearchCards,
                      prefixIcon: const Icon(Icons.search_rounded),
                      suffixIcon: _query.isEmpty
                          ? null
                          : IconButton(
                              tooltip: l10n.actionClear,
                              icon: const Icon(Icons.close_rounded),
                              onPressed: () => setState(() {
                                _search.clear();
                                _query = '';
                              }),
                            ),
                    ),
                  ),
                ),
              ),
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
                            onSelected: (_) => setState(() => _filter = f),
                          ),
                        ),
                      for (final t in tags)
                        Padding(
                          padding: const EdgeInsetsDirectional.only(end: Space.xs),
                          child: FilterChip(
                            label: Text('#$t'),
                            selected: _tag == t,
                            onSelected: (on) => setState(() => _tag = on ? t : null),
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
                            onPressed: () => setState(_selected.clear),
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
                                setState(() => _selected.addAll(shown.map((c) => c.id))),
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
              else
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: Space.page),
                  sliver: SliverList.separated(
                    itemCount: shown.length,
                    separatorBuilder: (_, _) => const SizedBox(height: Space.xs),
                    itemBuilder: (_, i) {
                      final c = shown[i];
                      void toggle() => setState(
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
}

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

class _ImportDialogState extends ConsumerState<_ImportDialog> {
  /// Shown inside the dialog: a snackbar would sit under the dialog barrier.
  String? _error;

  Future<void> _pickFile() async {
    final l10n = context.l10n;
    setState(() => _error = null);
    try {
      final bytes = await ref.read(backupFilesProvider).pick();
      if (bytes == null || !mounted) return;
      if (bytes.length > 8 * 1024 * 1024) {
        setState(() => _error = l10n.importFailed);
        return;
      }
      setState(() => _controller.text = utf8.decode(bytes, allowMalformed: true));
    } catch (_) {
      if (mounted) setState(() => _error = l10n.flashcardsImportFileFailed);
    }
  }

  final _controller = TextEditingController();

  /// Second step for CSV/TSV text: rows plus the column → field mapping.
  ImportPreview? _preview;
  List<String> _columns = const [];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _next() {
    final text = _controller.text;
    if (text.trim().isEmpty) return;
    // The app's own JSON deck format needs no mapping.
    if (text.trimLeft().startsWith('{')) {
      Navigator.pop(context, text);
      return;
    }
    final p = CardImportParser.preview(text);
    if (p.body.isEmpty) {
      setState(() => _error = context.l10n.importFailed);
      return;
    }
    setState(() {
      _preview = p;
      _columns = [...p.columns];
    });
  }

  String _fieldLabel(String f) {
    final l10n = context.l10n;
    return switch (f) {
      'front' => l10n.cardFront,
      'back' => l10n.cardBack,
      'tags' => l10n.cardTags,
      'example' => l10n.cardFieldExample,
      'explanation' => l10n.cardFieldExplanation,
      'pronunciation' => l10n.cardFieldPronunciation,
      'notes' => l10n.cardFieldNotes,
      _ => l10n.importIgnoreColumn,
    };
  }

  Widget _mapping(BuildContext context, ImportPreview p) {
    final l10n = context.l10n;
    final built = CardImportParser.build(p.body, _columns);
    final valid = _columns.contains('front') && _columns.contains('back');
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            valid
                ? l10n.importPreviewSummary(built.cards.length, built.invalid)
                : l10n.importNeedFrontBack,
            key: const Key('importSummary'),
            style: context.text.bodyMedium?.copyWith(
              color: valid ? context.lux.ink2 : context.lux.danger,
            ),
          ),
          const SizedBox(height: Space.sm),
          for (var i = 0; i < _columns.length; i++)
            Padding(
              padding: const EdgeInsets.only(bottom: Space.sm),
              child: DropdownButtonFormField<String>(
                key: Key('importColumn_$i'),
                initialValue: _columns[i],
                isExpanded: true,
                decoration: InputDecoration(
                  labelText: p.hasHeader
                      ? '${l10n.importColumn(i + 1)} · ${p.rows.first.elementAtOrNull(i) ?? ''}'
                      : l10n.importColumn(i + 1),
                  helperText: [for (final r in p.body.take(3)) r.elementAtOrNull(i)?.trim() ?? '']
                      .where((v) => v.isNotEmpty)
                      .join(' · '),
                  helperMaxLines: 2,
                ),
                items: [
                  for (final f in CardImportParser.fields)
                    DropdownMenuItem(value: f, child: Text(_fieldLabel(f))),
                ],
                onChanged: (v) => setState(() {
                  // A field can be used by one column only.
                  final f = v ?? '';
                  if (f.isNotEmpty) {
                    for (var k = 0; k < _columns.length; k++) {
                      if (_columns[k] == f) _columns[k] = '';
                    }
                  }
                  _columns[i] = f;
                }),
              ),
            ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final p = _preview;
    if (p != null) {
      final ok = _columns.contains('front') && _columns.contains('back');
      return AlertDialog(
        title: Text(l10n.importPreviewTitle),
        content: _mapping(context, p),
        actions: [
          TextButton(
            onPressed: () => setState(() => _preview = null),
            child: Text(l10n.actionBack),
          ),
          FilledButton(
            key: const Key('importConfirmButton'),
            onPressed: ok
                ? () => Navigator.pop(context, CardImportParser.build(p.body, _columns))
                : null,
            child: Text(l10n.actionImport),
          ),
        ],
      );
    }
    return AlertDialog(
      title: Text(l10n.importCardsTitle),
      content: SingleChildScrollView(
        child: TextField(
          key: const Key('importField'),
          controller: _controller,
          autofocus: true,
          minLines: 4,
          maxLines: 10,
          keyboardType: TextInputType.multiline,
          decoration: InputDecoration(
            labelText: l10n.flashcardsImportField,
            helperText: l10n.importCardsHint,
            errorText: _error,
            errorMaxLines: 3,
            helperMaxLines: 5,
            alignLabelWithHint: true,
          ),
        ),
      ),
      actions: [
        TextButton.icon(
          key: const Key('importFileButton'),
          onPressed: _pickFile,
          icon: const Icon(Icons.attach_file_rounded),
          label: Text(l10n.flashcardsImportFile),
        ),
        TextButton(onPressed: () => Navigator.pop(context), child: Text(l10n.actionCancel)),
        FilledButton(
          key: const Key('importNextButton'),
          onPressed: _next,
          child: Text(l10n.importNext),
        ),
      ],
    );
  }
}
