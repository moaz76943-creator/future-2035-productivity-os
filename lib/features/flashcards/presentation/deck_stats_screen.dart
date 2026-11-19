import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/components/charts.dart';
import '../../../core/design_system/components/indicators.dart';
import '../../../core/design_system/components/states.dart';
import '../../../core/design_system/components/surfaces.dart';
import '../../../core/design_system/tokens.dart';
import '../../../core/time/clock.dart';
import '../../../shared/widgets/async_value_view.dart';
import '../../../shared/widgets/module_scaffold.dart';
import '../../../l10n/gen/app_localizations.dart';
import '../application/flashcards_providers.dart';
import '../data/flashcards_repository.dart';

const _hue = ModuleHue.flashcards;

final deckInsightsProvider = FutureProvider.autoDispose.family<DeckInsights, String>((
  ref,
  id,
) async {
  // Recompute whenever the deck's cards change.
  await ref.watch(deckStatsProvider(id).future);
  return ref.read(flashcardsRepositoryProvider).deckInsights(id);
});

String _rating(AppLocalizations l10n, int r) => switch (r) {
  1 => l10n.reviewAgain,
  2 => l10n.reviewHard,
  3 => l10n.reviewGood,
  _ => l10n.reviewEasy,
};

/// Progress of one deck: card states, review activity, accuracy, lapses,
/// the model's recall estimate and the latest answers.
class DeckStatsScreen extends ConsumerWidget {
  const DeckStatsScreen({super.key, required this.deckId});
  final String deckId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final deck = ref.watch(deckProvider(deckId)).value;
    final insights = ref.watch(deckInsightsProvider(deckId));
    return ModuleScaffold(
      title: deck == null ? l10n.flashcardsStats : '${l10n.flashcardsStats} · ${deck.name}',
      hue: _hue,
      slivers: [
        SliverToBoxAdapter(
          child: AsyncValueView<DeckInsights>(
            value: insights,
            onRetry: () => ref.invalidate(deckInsightsProvider(deckId)),
            data: (d) => _Body(d: d),
          ),
        ),
      ],
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({required this.d});
  final DeckInsights d;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final fmt = context.fmt;
    String pct(double? v) => v == null ? '—' : fmt.percent(v);
    Widget tile(String value, String label, IconData icon, {String? caption, Key? key}) =>
        StatTile(key: key, value: value, label: label, caption: caption, icon: icon, hue: _hue);
    final tiles = [
      tile(fmt.number(d.total), l10n.flashcardsStatTotal, Icons.style_rounded),
      tile(fmt.number(d.dueNow), l10n.deckDue, Icons.schedule_rounded),
      tile(fmt.number(d.newCards), l10n.deckNewCards, Icons.fiber_new_rounded),
      tile(fmt.number(d.learning), l10n.flashcardsStatLearning, Icons.school_outlined),
      tile(
        fmt.number(d.mature),
        l10n.deckMature,
        Icons.verified_rounded,
        caption: l10n.flashcardsStatMatureCaption,
      ),
      tile(fmt.number(d.hard), l10n.flashcardsHard, Icons.local_fire_department_outlined),
      tile(fmt.number(d.favorites), l10n.flashcardsFavorites, Icons.star_rounded),
      tile(fmt.number(d.suspended), l10n.flashcardsSuspendedFilter, Icons.pause_circle_outline),
      tile(
        fmt.number(d.reviewsToday),
        l10n.flashcardsStatReviewsToday,
        Icons.today_rounded,
        key: const Key('statReviewsToday'),
      ),
      tile(
        pct(d.correctRate),
        l10n.flashcardsStatCorrect,
        Icons.check_circle_outline_rounded,
        caption: l10n.flashcardsStatLastDays(d.perDay.length),
        key: const Key('statCorrect'),
      ),
      tile(
        pct(d.forgetRate),
        l10n.flashcardsStatForget,
        Icons.trending_down_rounded,
        caption: l10n.flashcardsStatForgetCaption,
      ),
      tile(
        pct(d.averageRecall),
        l10n.flashcardsStatRecall,
        Icons.psychology_alt_outlined,
        caption: l10n.flashcardsStatRecallCaption,
        key: const Key('statRecall'),
      ),
    ];
    final points = [
      for (final (i, n) in d.perDay.indexed)
        ChartPoint(
          fmt.weekdayShort(Days.addDays(d.firstDay, i)),
          n.toDouble(),
          highlight: i == d.perDay.length - 1,
        ),
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Space.page),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          LayoutBuilder(
            builder: (context, c) {
              final cols = c.maxWidth >= 600 ? 4 : 2;
              const gap = Space.sm;
              final w = (c.maxWidth - gap * (cols - 1)) / cols;
              return Wrap(
                spacing: gap,
                runSpacing: gap,
                children: [for (final t in tiles) SizedBox(width: w, child: t)],
              );
            },
          ),
          SectionHeader(
            title: l10n.flashcardsStatActivity(d.reviewsInRange),
            padding: const EdgeInsets.fromLTRB(0, Space.xl, 0, Space.sm),
          ),
          LuxCard(
            child: GlowBarChart(
              points: points,
              hue: _hue,
              semanticsLabel: l10n.flashcardsStatActivity(d.reviewsInRange),
              labelEvery: 2,
            ),
          ),
          SectionHeader(
            title: l10n.flashcardsStatHistory,
            padding: const EdgeInsets.fromLTRB(0, Space.xl, 0, Space.sm),
          ),
          if (d.recent.isEmpty)
            Text(
              l10n.flashcardsStatNoHistory,
              style: context.text.bodyMedium?.copyWith(color: context.lux.ink2),
            )
          else
            for (final r in d.recent)
              Padding(
                padding: const EdgeInsets.only(bottom: Space.xs),
                child: LuxCard(
                  elevated: false,
                  padding: const EdgeInsets.symmetric(horizontal: Space.md, vertical: Space.sm),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              d.fronts[r.cardId] ?? '',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: context.text.titleSmall,
                            ),
                            Text(
                              fmt.dateTime(r.reviewedAt),
                              style: context.text.labelSmall?.copyWith(color: context.lux.ink2),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: Space.sm),
                      LuxPill(
                        label: _rating(l10n, r.rating),
                        color: r.rating == 1 ? context.lux.danger : context.lux.success,
                      ),
                    ],
                  ),
                ),
              ),
        ],
      ),
    );
  }
}
