import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../app/localization/app_format.dart';
import '../../../../core/design_system/app_theme.dart';
import '../../../../core/design_system/components/surfaces.dart';
import '../../../../core/design_system/tokens.dart';
import '../../../../core/providers/core_providers.dart';
import '../../../settings/application/settings_providers.dart';
import '../../application/flashcards_providers.dart';
import '../../data/flashcards_repository.dart';

const _hue = ModuleHue.flashcards;

/// Today's study: time, cards answered against the daily goal, the streak.
/// Opens the week's summary.
class TodayStudyCard extends ConsumerWidget {
  const TodayStudyCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final fmt = context.fmt;
    final a = ref.watch(todayActivityProvider).value;
    final goal = ref.watch(settingsProvider.select((s) => s.dailyCardGoal));
    // Nothing studied yet today: show nothing rather than a discouraging zero.
    if (a == null || (a.reviews == 0 && a.time == Duration.zero)) return const SizedBox.shrink();
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
        key: const Key('todayStudy'),
        elevated: false,
        onTap: () => showStudyWeek(context),
        padding: const EdgeInsets.symmetric(horizontal: Space.md, vertical: Space.sm),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    l10n.flashToday,
                    style: context.text.labelLarge?.copyWith(color: context.lux.ink2),
                  ),
                ),
                if (a.streak > 0) ...[
                  Icon(Icons.local_fire_department_rounded, size: 18, color: _hue.a),
                  const SizedBox(width: 2),
                  Text(
                    l10n.studyStreakDays(a.streak),
                    key: const Key('todayStreak'),
                    style: context.text.labelLarge,
                  ),
                ],
              ],
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
            if (goal > 0) ...[
              const SizedBox(height: Space.xs),
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: LinearProgressIndicator(
                  key: const Key('todayGoal'),
                  value: (a.reviews / goal).clamp(0.0, 1.0),
                  minHeight: 6,
                  color: _hue.a,
                  backgroundColor: _hue.a.withValues(alpha: 0.15),
                  semanticsLabel: l10n.studyGoalProgress(a.reviews, goal),
                ),
              ),
              const SizedBox(height: 2),
              Text(
                a.reviews >= goal ? l10n.studyGoalReached : l10n.studyGoalProgress(a.reviews, goal),
                style: context.text.labelSmall?.copyWith(color: context.lux.ink2),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

Future<void> showStudyWeek(BuildContext context) => showModalBottomSheet<void>(
  useRootNavigator: true,
  context: context,
  showDragHandle: true,
  useSafeArea: true,
  isScrollControlled: true,
  builder: (_) => const _WeekSheet(),
);

/// The last 7 days: cards per day, focus time, streaks, and the daily goal.
class _WeekSheet extends ConsumerWidget {
  const _WeekSheet();

  static const goals = [0, 10, 20, 50, 100];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final fmt = context.fmt;
    final a =
        ref.watch(todayActivityProvider).value ??
        const TodayActivity(reviews: 0, time: Duration.zero);
    final goal = ref.watch(settingsProvider.select((s) => s.dailyCardGoal));
    final now = ref.watch(clockProvider).now().toLocal();
    final top = a.week.fold(1, (m, v) => v > m ? v : m);
    return Padding(
      padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.lg),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(l10n.studyWeekTitle, style: context.text.titleLarge),
          const SizedBox(height: Space.md),
          SizedBox(
            height: 132,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                for (var i = 0; i < 7; i++)
                  Expanded(
                    child: Semantics(
                      label:
                          '${fmt.weekdayShort(DateTime(now.year, now.month, now.day - 6 + i))}: '
                          '${l10n.flashTodayAnswered(a.week[i])}',
                      excludeSemantics: true,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('${a.week[i]}', style: context.text.labelSmall),
                          const SizedBox(height: 2),
                          Container(
                            height: 4 + 84 * a.week[i] / top,
                            margin: const EdgeInsets.symmetric(horizontal: 6),
                            decoration: BoxDecoration(
                              color: i == 6 ? _hue.a : _hue.a.withValues(alpha: 0.45),
                              borderRadius: BorderRadius.circular(Radii.sm),
                            ),
                          ),
                          const SizedBox(height: Space.xxs),
                          Text(
                            fmt.weekdayShort(DateTime(now.year, now.month, now.day - 6 + i)),
                            style: context.text.labelSmall?.copyWith(color: context.lux.ink2),
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: Space.md),
          _Line(Icons.style_outlined, l10n.studyWeekCards(a.weekReviews)),
          _Line(
            Icons.timer_outlined,
            l10n.studyWeekFocus(fmt.duration(Duration(minutes: a.weekFocusMinutes))),
          ),
          _Line(Icons.local_fire_department_rounded, l10n.studyStreakLine(a.streak, a.bestStreak)),
          const SizedBox(height: Space.md),
          Text(l10n.studyGoalTitle, style: context.text.titleSmall),
          const SizedBox(height: Space.xs),
          Wrap(
            spacing: Space.xs,
            children: [
              for (final g in goals)
                ChoiceChip(
                  key: Key('goal_$g'),
                  label: Text(g == 0 ? l10n.studyGoalOff : '$g'),
                  selected: goal == g,
                  onSelected: (_) => ref
                      .read(settingsProvider.notifier)
                      .update((s) => s.copyWith(dailyCardGoal: g)),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

class _Line extends StatelessWidget {
  const _Line(this.icon, this.text);
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(vertical: Space.xxs),
    child: Row(
      children: [
        Icon(icon, size: 20, color: _hue.a),
        const SizedBox(width: Space.sm),
        Expanded(child: Text(text, style: context.text.bodyMedium)),
      ],
    ),
  );
}
