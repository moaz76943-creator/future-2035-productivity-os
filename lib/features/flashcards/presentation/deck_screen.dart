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
import '../application/flashcards_providers.dart';
import '../data/flashcards_repository.dart';
import 'widgets/card_form_sheet.dart';
import 'widgets/deck_form_sheet.dart';

const _hue = ModuleHue.flashcards;

enum _DeckMenu { edit, delete }

class DeckScreen extends ConsumerStatefulWidget {
  const DeckScreen({super.key, required this.deckId});
  final String deckId;

  @override
  ConsumerState<DeckScreen> createState() => _DeckScreenState();
}

class _DeckScreenState extends ConsumerState<DeckScreen> {
  final _search = TextEditingController();
  String _query = '';

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
    final source = await showDialog<String>(
      context: context,
      builder: (ctx) => const _ImportDialog(),
    );
    if (source == null || source.trim().isEmpty || !mounted) return;
    try {
      final n = await _repo.importInto(widget.deckId, source);
      if (mounted) showMessage(context, l10n.importCardsResult(n));
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
      await SharePlus.instance.share(ShareParams(text: json, subject: deck.name, title: deck.name));
    }
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
                _DeckMenu.delete => _deleteDeck(deck),
              },
              itemBuilder: (_) => [
                PopupMenuItem(value: _DeckMenu.edit, child: Text(l10n.deckEdit)),
                PopupMenuItem(value: _DeckMenu.delete, child: Text(l10n.flashcardsDeleteDeck)),
              ],
            ),
          ],
          floatingActionButton: FloatingActionButton.extended(
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
          final q = _query.trim().toLowerCase();
          final shown = q.isEmpty
              ? all
              : all
                    .where(
                      (c) =>
                          c.front.toLowerCase().contains(q) ||
                          c.back.toLowerCase().contains(q) ||
                          c.tags.toLowerCase().contains(q),
                    )
                    .toList();
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
              SliverToBoxAdapter(child: SectionHeader(title: l10n.deckCards(all.length))),
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
                    itemBuilder: (_, i) => _CardTile(
                      card: shown[i],
                      onTap: () => showCardForm(context, deckId: deck.id, initial: shown[i]),
                      onDelete: () => _deleteCard(shown[i]),
                    ),
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
              onPressed: canStudy ? () => context.push(Routes.review(deck.id)) : null,
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
  const _CardTile({required this.card, required this.onTap, required this.onDelete});
  final CardRow card;
  final VoidCallback onTap;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final now = ref.read(clockProvider).now();
    final tags = card.tags
        .split(RegExp(r'[,\s]+'))
        .where((t) => t.isNotEmpty)
        .toList(growable: false);
    final status = card.state == 'new' || card.dueAt == null
        ? l10n.deckNewCards
        : l10n.flashcardsCardDueOn(context.fmt.relativeDay(card.dueAt!, now));
    return LuxCard(
      onTap: onTap,
      elevated: false,
      padding: const EdgeInsetsDirectional.fromSTEB(Space.md, Space.sm, Space.xxs, Space.sm),
      child: Row(
        children: [
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
                    for (final t in tags) LuxPill(label: t),
                  ],
                ),
              ],
            ),
          ),
          IconButton(
            tooltip: l10n.actionDelete,
            onPressed: onDelete,
            icon: const Icon(Icons.delete_outline_rounded),
          ),
        ],
      ),
    );
  }
}

/// Paste box for importing cards. Owns its controller so it outlives the
/// dialog's closing animation.
class _ImportDialog extends StatefulWidget {
  const _ImportDialog();

  @override
  State<_ImportDialog> createState() => _ImportDialogState();
}

class _ImportDialogState extends State<_ImportDialog> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
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
            helperMaxLines: 5,
            alignLabelWithHint: true,
          ),
        ),
      ),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context), child: Text(l10n.actionCancel)),
        FilledButton(
          key: const Key('importConfirmButton'),
          onPressed: () => Navigator.pop(context, _controller.text),
          child: Text(l10n.actionImport),
        ),
      ],
    );
  }
}
