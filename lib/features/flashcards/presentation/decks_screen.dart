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
import '../../../shared/widgets/async_value_view.dart';
import '../../../shared/widgets/dialogs.dart';
import '../../../shared/widgets/module_scaffold.dart';
import '../application/flashcards_providers.dart';
import '../domain/world_languages.dart';
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
      ],
      floatingActionButton: FloatingActionButton.extended(
        heroTag: 'decks-fab',
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
                  child: EmptyState(
                    icon: Icons.style_rounded,
                    hue: _hue,
                    title: l10n.flashEmptyTitle,
                    message: l10n.flashEmptyMessage,
                    actionLabel: l10n.deckNew,
                    onAction: () => _createDeck(context, ref),
                  ),
                ),
              );
            }
            // Grouped by the language being learned when there are several.
            final groups = <String, List<DeckRow>>{};
            for (final d in list) {
              groups.putIfAbsent(languageCode(d.frontLang), () => []).add(d);
            }
            final grouped = groups.length > 1;
            return SliverMainAxisGroup(
              slivers: [
                const SliverToBoxAdapter(child: _TodayCard()),
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
    if (total == null) return const SizedBox.shrink();
    return Padding(
      padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.lg),
      child: total == 0
          ? LuxCard(
              elevated: false,
              child: Row(
                children: [
                  const Icon(Icons.check_circle_rounded, color: Palette.emerald),
                  const SizedBox(width: Space.sm),
                  Expanded(child: Text(l10n.deckNothingDue, style: context.text.bodyMedium)),
                ],
              ),
            )
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
      padding: const EdgeInsetsDirectional.fromSTEB(Space.lg, Space.md, Space.md, Space.md),
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
                          filled: true,
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
            const Icon(Icons.chevron_right_rounded),
        ],
      ),
    );
  }
}

/// Today's study: cards answered and time spent in study sessions.
class _TodayCard extends ConsumerWidget {
  const _TodayCard();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final fmt = context.fmt;
    final a = ref.watch(todayActivityProvider).value;
    if (a == null) return const SizedBox.shrink();
    Widget stat(IconData icon, String value, Key key) => Expanded(
      child: Row(
        children: [
          Icon(icon, size: 20, color: _hue.a),
          const SizedBox(width: Space.xs),
          Flexible(
            child: Text(value, key: key, style: context.text.titleSmall, maxLines: 2),
          ),
        ],
      ),
    );
    return Padding(
      padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.sm),
      child: LuxCard(
        elevated: false,
        padding: const EdgeInsets.symmetric(horizontal: Space.md, vertical: Space.sm),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              l10n.flashToday,
              style: context.text.labelLarge?.copyWith(color: context.lux.ink2),
            ),
            const SizedBox(height: Space.xxs),
            Row(
              children: [
                stat(Icons.timer_outlined, fmt.duration(a.time), const Key('todayTime')),
                stat(
                  Icons.style_outlined,
                  l10n.flashTodayAnswered(a.reviews),
                  const Key('todayCards'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
