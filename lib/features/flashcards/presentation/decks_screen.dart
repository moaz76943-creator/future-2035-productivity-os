import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../app/routing/routes.dart';
import '../../../core/database/app_database.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/components/indicators.dart';
import '../../../core/design_system/components/states.dart';
import '../../../core/design_system/components/surfaces.dart';
import '../../../core/design_system/tokens.dart';
import '../../../core/theme/deep_focus_visuals.dart';
import '../../../shared/widgets/async_value_view.dart';
import '../../../shared/widgets/dialogs.dart';
import '../../../shared/widgets/module_scaffold.dart';
import '../application/deck_order.dart';
import '../application/flashcards_providers.dart';
import '../domain/world_languages.dart';
import 'deck_tile_actions.dart';
import 'widgets/deck_shortcut_card.dart';
import 'widgets/starter_sheet.dart';
import 'widgets/word_packs_sheet.dart';
import 'widgets/study_summary.dart';
import 'widgets/deck_form_sheet.dart';
import '../data/flashcards_repository.dart';

const _hue = ModuleHue.flashcards;

class DecksScreen extends ConsumerWidget {
  const DecksScreen({super.key});

  Future<void> _createDeck(BuildContext context, WidgetRef ref) async {
    final result = await showDeckForm(context);
    if (result == null || !context.mounted) return;
    try {
      await ref
          .read(flashcardsRepositoryProvider)
          .createDeck(
            result.name,
            description: result.description,
            category: result.category,
            color: result.color,
            dailyNewLimit: result.dailyNewLimit,
            dailyReviewTarget: result.dailyReviewTarget,
          );
    } catch (_) {
      if (context.mounted) showMessage(context, context.l10n.errorSaveFailed);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final decks = ref.watch(decksProvider);
    return ModuleScaffold(
      title: l10n.flashTitle,
      hue: _hue,
      actions: [
        IconButton(
          key: const Key('cardSearchButton'),
          tooltip: l10n.flashcardsSearchAll,
          onPressed: () => context.push(Routes.cardSearch),
          icon: const Icon(Icons.manage_search_rounded),
        ),
        // Less frequent actions live in one menu, not as extra icons.
        PopupMenuButton<String>(
          key: const Key('decksMenu'),
          tooltip: l10n.actionMore,
          onSelected: (v) {
            if (v == 'starter') showStarterDecks(context);
            if (v == 'settings') context.push(Routes.settings);
            if (v == 'arrange') {
              showArrangeDecks(context, ref, ref.read(decksProvider).value ?? const []);
            }
          },
          itemBuilder: (_) => [
            PopupMenuItem(
              key: const Key('starterDecksButton'),
              value: 'starter',
              child: Row(
                children: [
                  const Icon(Icons.library_add_outlined, size: 20),
                  const SizedBox(width: Space.sm),
                  Text(l10n.starterTitle),
                ],
              ),
            ),
            PopupMenuItem(
              key: const Key('arrangeDecksItem'),
              value: 'arrange',
              child: Row(
                children: [
                  const Icon(Icons.swap_vert_rounded, size: 20),
                  const SizedBox(width: Space.sm),
                  Text(l10n.flashArrangeDecks),
                ],
              ),
            ),
            PopupMenuItem(
              value: 'settings',
              child: Row(
                children: [
                  const Icon(Icons.settings_outlined, size: 20),
                  const SizedBox(width: Space.sm),
                  Text(l10n.settingsTitle),
                ],
              ),
            ),
          ],
        ),
      ],
      floatingActionButton: FloatingActionButton.extended(
        heroTag: null,
        key: const Key('newDeckFab'),
        onPressed: () => _createDeck(context, ref),
        icon: const Icon(Icons.add_rounded),
        label: Text(l10n.deckNew),
      ),
      slivers: [
        SliverAsyncValueView<List<DeckRow>>(
          value: decks,
          data: (list) {
            if (list.isEmpty) {
              return SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: Space.page),
                  child: Column(
                    children: [
                      EmptyState(
                        icon: Icons.style_rounded,
                        hue: _hue,
                        assetPath: DeepFocusAssets.emptyFlashcards,
                        title: l10n.flashEmptyTitle,
                        message: l10n.flashEmptyMessage,
                      ),
                      DeckShortcutCard(
                        key: const Key('wordPacksEmpty'),
                        icon: Icons.translate_rounded,
                        title: l10n.wordPacksTitle,
                        subtitle: l10n.wordPacksHint,
                        color: _hue.a,
                        onTap: () => showWordPacks(context),
                      ),
                      const SizedBox(height: Space.sm),
                      DeckShortcutCard(
                        key: const Key('starterDecksEmpty'),
                        icon: Icons.library_add_rounded,
                        title: l10n.starterBrowse,
                        subtitle: l10n.starterBrowseHint,
                        color: DeepFocusVisuals.tealPrimary,
                        onTap: () => showStarterDecks(context),
                      ),
                    ],
                  ),
                ),
              );
            }
            final groups = <String, List<DeckRow>>{};
            final order = ref.watch(deckOrderProvider).value ?? const <String>[];
            for (final d in orderDecks(list, order)) {
              groups.putIfAbsent(languageCode(d.frontLang), () => []).add(d);
            }
            final grouped = groups.length > 1;
            return SliverMainAxisGroup(
              slivers: [
                const SliverToBoxAdapter(child: TodayStudyCard()),
                const SliverToBoxAdapter(child: _DueBanner()),
                for (final e in groups.entries) ...[
                  if (grouped)
                    SliverToBoxAdapter(
                      child: SectionHeader(
                        title: e.key.isEmpty
                            ? l10n.flashcardsLangUnset
                            : languageDisplayName(e.key),
                      ),
                    ),
                  SliverPadding(
                    padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.sm),
                    sliver: SliverList.separated(
                      itemCount: e.value.length,
                      separatorBuilder: (_, _) => const SizedBox(height: Space.sm),
                      itemBuilder: (_, i) => _DeckTile(deck: e.value[i]),
                    ),
                  ),
                ],
                // Learning languages and ready-made decks stay in sight.
                SliverPadding(
                  padding: const EdgeInsets.fromLTRB(Space.page, Space.xs, Space.page, 0),
                  sliver: SliverToBoxAdapter(
                    child: DeckShortcutCard(
                      key: const Key('wordPacksCard'),
                      icon: Icons.translate_rounded,
                      title: l10n.wordPacksTitle,
                      subtitle: l10n.wordPacksHint,
                      color: _hue.a,
                      onTap: () => showWordPacks(context),
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.fromLTRB(Space.page, Space.sm, Space.page, 96),
                  sliver: SliverToBoxAdapter(
                    child: DeckShortcutCard(
                      key: const Key('starterDecksCard'),
                      icon: Icons.library_add_rounded,
                      title: l10n.starterBrowse,
                      subtitle: l10n.starterBrowseHint,
                      color: DeepFocusVisuals.tealPrimary,
                      onTap: () => showStarterDecks(context),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}

/// Hero banner with the number of due cards across all decks.
class _DueBanner extends ConsumerWidget {
  const _DueBanner();

  Future<void> _reviewNow(BuildContext context, WidgetRef ref) async {
    final id = await ref.read(flashcardsRepositoryProvider).deckWithMostDue();
    if (id == null || !context.mounted) return;
    await context.push(Routes.review(id));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final total = ref.watch(totalDueProvider).value;
    // Nothing due: no banner at all (the decks below say what there is).
    if (total == null || total == 0) return const SizedBox.shrink();
    return Padding(
      padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.lg),
      child: total == 0
          ? const SizedBox.shrink()
          : AuroraCard(
              hue: _hue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.flashcardsDueBanner(total),
                    style: context.text.titleMedium?.copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: Space.sm),
                  FilledButton.icon(
                    key: const Key('reviewNowButton'),
                    style: FilledButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Palette.navy,
                    ),
                    onPressed: () => _reviewNow(context, ref),
                    icon: const Icon(Icons.play_arrow_rounded),
                    label: Text(l10n.dashReviewNow),
                  ),
                ],
              ),
            ),
    );
  }
}

class _DeckTile extends ConsumerWidget {
  const _DeckTile({required this.deck});
  final DeckRow deck;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final fmt = context.fmt;
    final stats = ref.watch(deckStatsProvider(deck.id)).value;
    final color = Color(deck.color);
    final mature = stats == null || stats.total == 0 ? 0.0 : stats.mature / stats.total;
    return LuxCard(
      accent: color,
      onTap: () => context.push(Routes.deck(deck.id)),
      onLongPress: () => showDeckActions(context, ref, deck),
      padding: const EdgeInsetsDirectional.fromSTEB(Space.lg, Space.md, Space.xs, Space.md),
      child: Row(
        children: [
          GlowRing(
            value: mature,
            hue: _hue,
            size: 52,
            stroke: 5,
            semanticsLabel: l10n.flashcardsMatureRing(fmt.percent(mature)),
            child: ExcludeSemantics(
              child: Text(fmt.number(stats?.total ?? 0), style: context.text.labelLarge),
            ),
          ),
          const SizedBox(width: Space.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  deck.name,
                  style: context.text.titleMedium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                if (deck.frontLang.isNotEmpty || deck.backLang.isNotEmpty) ...[
                  const SizedBox(height: 2),
                  Row(
                    key: Key('deckLangs_${deck.id}'),
                    children: [
                      for (final (i, tag) in [deck.frontLang, deck.backLang].indexed) ...[
                        if (i == 1)
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: Space.xxs),
                            child: Icon(Icons.sync_alt_rounded, size: 14, color: context.lux.ink3),
                          ),
                        Flexible(
                          child: Text(
                            tag.isEmpty ? l10n.flashcardsLangUnset : languageDisplayName(tag),
                            style: context.text.labelMedium?.copyWith(color: context.lux.ink2),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ],
                  ),
                ],
                if (deck.description.isNotEmpty) ...[
                  const SizedBox(height: 2),
                  Text(
                    deck.description,
                    style: context.text.bodySmall?.copyWith(color: context.lux.ink2),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
                if (stats != null) ...[
                  const SizedBox(height: Space.xs),
                  Wrap(
                    spacing: Space.xs,
                    runSpacing: Space.xxs,
                    children: [
                      LuxPill(label: l10n.deckCards(stats.total)),
                      if (stats.due > 0)
                        LuxPill(
                          label: l10n.flashcardsDueCount(stats.due),
                          color: _hue.a,
                        ),
                      if (stats.newCount > 0)
                        LuxPill(label: l10n.flashcardsNewCount(stats.newCount), color: _hue.b),
                    ],
                  ),
                ],
              ],
            ),
          ),
          if (stats != null && stats.due + stats.newCount > 0)
            IconButton.filledTonal(
              key: Key('studyDeck_${deck.id}'),
              tooltip: l10n.flashStudyNow,
              icon: const Icon(Icons.play_arrow_rounded),
              onPressed: () => context.push(Routes.review(deck.id)),
            )
          else
            const SizedBox.shrink(),
          IconButton(
            key: Key('deckMore_${deck.id}'),
            tooltip: l10n.flashDeckActions,
            icon: const Icon(Icons.more_vert_rounded),
            onPressed: () => showDeckActions(context, ref, deck),
          ),
        ],
      ),
    );
  }
}
