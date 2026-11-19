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
import '../../../core/providers/core_providers.dart';
import '../../../shared/widgets/async_value_view.dart';
import '../../../shared/widgets/module_scaffold.dart';
import '../application/habit_stats.dart';
import '../application/habits_providers.dart';
import '../data/habits_repository.dart';
import 'widgets/habit_actions.dart';
import 'widgets/habit_editor_sheet.dart';
import 'widgets/habit_visuals.dart';

class HabitsScreen extends ConsumerWidget {
  const HabitsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final habits = ref.watch(habitsListProvider);
    final counts = ref.watch(habitAllCountsProvider);
    final pauses = ref.watch(habitAllPausesProvider);
    final now = ref.watch(clockProvider).now();

    Future<void> create() async {
      await showHabitEditor(context);
    }

    // Wait for all three streams so streaks never flash a wrong value.
    final combined = switch ((habits, counts, pauses)) {
      (AsyncData(value: final h), AsyncData(value: final c), AsyncData(value: final p)) =>
        AsyncData((h, c, p)),
      (AsyncError(:final error, :final stackTrace), _, _) ||
      (_, AsyncError(:final error, :final stackTrace), _) ||
      (_, _, AsyncError(:final error, :final stackTrace)) => AsyncError<_Data>(error, stackTrace),
      _ => const AsyncLoading<_Data>(),
    };

    return ModuleScaffold(
      title: l10n.habitsTitle,
      hue: ModuleHue.habits,
      floatingActionButton: FloatingActionButton.extended(
        heroTag: 'habits-fab',
        onPressed: create,
        icon: const Icon(Icons.add_rounded),
        label: Text(l10n.habitNew),
      ),
      slivers: [
        SliverAsyncValueView<_Data>(
          value: combined,
          data: (d) {
            final (list, allCounts, allPauses) = d;
            if (list.isEmpty) {
              return SliverToBoxAdapter(
                child: EmptyState(
                  icon: Icons.event_repeat_rounded,
                  hue: ModuleHue.habits,
                  title: l10n.habitsEmptyTitle,
                  message: l10n.habitsEmptyMessage,
                  actionLabel: l10n.habitNew,
                  onAction: create,
                ),
              );
            }
            final items = [
              for (final h in list)
                (
                  habit: h,
                  stats: HabitStats.compute(
                    habit: h,
                    counts: allCounts[h.id] ?? const {},
                    pauses: allPauses[h.id] ?? const [],
                    now: now,
                  ),
                ),
            ];
            final today = items.where((i) => !i.habit.paused && i.stats.scheduledToday).toList();
            final other = items.where((i) => !i.habit.paused && !i.stats.scheduledToday).toList();
            final paused = items.where((i) => i.habit.paused).toList();
            return SliverList.list(
              children: [
                _TodayHeader(
                  now: now,
                  done: today.where((i) => i.stats.doneToday).length,
                  total: today.length,
                ),
                SectionHeader(title: l10n.dateToday),
                if (today.isEmpty)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: Space.page),
                    child: Text(
                      l10n.habitsNothingToday,
                      style: context.text.bodyMedium?.copyWith(color: context.lux.ink3),
                    ),
                  ),
                for (final i in today) _HabitRowTile(habit: i.habit, stats: i.stats),
                if (other.isNotEmpty) ...[
                  SectionHeader(title: l10n.habitNotScheduledToday),
                  for (final i in other) _HabitRowTile(habit: i.habit, stats: i.stats, muted: true),
                ],
                if (paused.isNotEmpty) ...[
                  SectionHeader(title: l10n.habitPaused),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.sm),
                    child: Text(l10n.habitsPausedNote, style: context.text.bodySmall),
                  ),
                  for (final i in paused)
                    _HabitRowTile(habit: i.habit, stats: i.stats, muted: true),
                ],
              ],
            );
          },
        ),
      ],
    );
  }
}

typedef _Data = (List<HabitRow>, Map<String, Map<int, int>>, Map<String, List<PauseSpan>>);

class _TodayHeader extends StatelessWidget {
  const _TodayHeader({required this.now, required this.done, required this.total});
  final DateTime now;
  final int done;
  final int total;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final ratio = total == 0 ? 0.0 : done / total;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Space.page),
      child: AuroraCard(
        hue: ModuleHue.habits,
        child: Row(
          children: [
            GlowRing(
              value: ratio,
              hue: ModuleHue.habits,
              size: 64,
              stroke: 7,
              trackColor: Colors.white.withValues(alpha: 0.3),
              semanticsLabel: l10n.habitsTodaySummary(done, total),
              child: ExcludeSemantics(
                child: Text(
                  context.fmt.percent(ratio),
                  style: context.text.labelMedium?.copyWith(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(width: Space.md),
            Expanded(
              child: ExcludeSemantics(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.fmt.dayLong(now),
                      style: context.text.labelMedium?.copyWith(color: Colors.white70),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      total == 0 ? l10n.habitsNothingToday : l10n.habitsTodaySummary(done, total),
                      key: const ValueKey('habits-summary'),
                      style: context.text.titleMedium?.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _HabitRowTile extends ConsumerWidget {
  const _HabitRowTile({required this.habit, required this.stats, this.muted = false});
  final HabitRow habit;
  final HabitStats stats;
  final bool muted;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final color = Color(habit.color);
    final interactive = !habit.paused && stats.scheduledToday;
    return Padding(
      padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.sm),
      child: LuxCard(
        key: ValueKey('habit-${habit.id}'),
        padding: const EdgeInsetsDirectional.fromSTEB(Space.md, Space.sm, Space.sm, Space.sm),
        color: muted ? context.lux.recessed : null,
        elevated: !muted,
        onTap: () => context.push(Routes.habit(habit.id)),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    habit.name,
                    style: context.text.titleMedium?.copyWith(
                      color: muted ? context.lux.ink2 : null,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: Space.xxs),
                  if (interactive && habit.targetPerDay > 1)
                    Text(
                      l10n.habitCountToday(stats.todayCount, habit.targetPerDay),
                      style: context.text.bodySmall,
                    ),
                  if (!interactive)
                    Text(
                      scheduleLabel(context, habit.weekdays),
                      style: context.text.bodySmall,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  const SizedBox(height: Space.xxs),
                  StreakLabel(streak: stats.currentStreak, color: color),
                ],
              ),
            ),
            const SizedBox(width: Space.sm),
            if (interactive)
              HabitCheckInButton(
                key: ValueKey('checkin-${habit.id}'),
                habit: habit,
                count: stats.todayCount,
                onTap: () => checkInHabit(context, ref, habit, stats.todayCount),
                onLongPress: () =>
                    showCheckInAdjustSheet(context, ref, habit, stats.today, stats.todayCount),
              )
            else
              Icon(
                habit.paused ? Icons.pause_circle_outline_rounded : Icons.event_busy_rounded,
                color: context.lux.ink3,
              ),
          ],
        ),
      ),
    );
  }
}
