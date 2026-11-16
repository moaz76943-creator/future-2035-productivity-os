import 'dart:math' as math;

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../core/database/app_database.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/components/charts.dart';
import '../../../core/design_system/components/indicators.dart';
import '../../../core/design_system/components/states.dart';
import '../../../core/design_system/components/surfaces.dart';
import '../../../core/design_system/tokens.dart';
import '../../../core/providers/core_providers.dart';
import '../../../core/time/clock.dart';
import '../../../shared/widgets/async_value_view.dart';
import '../../../shared/widgets/module_scaffold.dart';
import '../application/habit_stats.dart';
import '../application/habits_providers.dart';
import '../data/habits_repository.dart';
import 'widgets/habit_actions.dart';
import 'widgets/habit_editor_sheet.dart';
import 'widgets/habit_visuals.dart';

enum _HabitAction { edit, pause, resume, archive }

class HabitDetailScreen extends ConsumerWidget {
  const HabitDetailScreen({super.key, required this.habitId});
  final String habitId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final habit = ref.watch(habitByIdProvider(habitId));
    final counts = ref.watch(habitCountsProvider(habitId));
    final pauses = ref.watch(habitPausesProvider(habitId));
    final h = habit.value;
    final combined = switch ((habit, counts, pauses)) {
      (AsyncData(value: final a), AsyncData(value: final c), AsyncData(value: final p)) =>
        AsyncData<_Data>((a, c, p)),
      (AsyncError(:final error, :final stackTrace), _, _) ||
      (_, AsyncError(:final error, :final stackTrace), _) ||
      (_, _, AsyncError(:final error, :final stackTrace)) => AsyncError<_Data>(error, stackTrace),
      _ => const AsyncLoading<_Data>(),
    };
    final available = h != null && !h.archived;
    return ModuleScaffold(
      title: available ? h.name : l10n.habitsTitle,
      hue: ModuleHue.habits,
      actions: [if (available) _menu(context, ref, h)],
      slivers: [
        SliverAsyncValueView<_Data>(
          value: combined,
          data: (d) {
            final (row, c, p) = d;
            if (row == null || row.archived) {
              return SliverToBoxAdapter(
                child: EmptyState(
                  icon: Icons.spa_rounded,
                  hue: ModuleHue.habits,
                  title: l10n.habitsNotFound,
                  message: l10n.habitsEmptyMessage,
                ),
              );
            }
            return SliverList.list(
              children: [_HabitBody(habit: row, counts: c, pauses: p)],
            );
          },
        ),
      ],
    );
  }

  Widget _menu(BuildContext context, WidgetRef ref, HabitRow h) {
    final l10n = context.l10n;
    PopupMenuItem<_HabitAction> item(_HabitAction a, IconData icon, String label) => PopupMenuItem(
      value: a,
      child: ListTile(contentPadding: EdgeInsets.zero, leading: Icon(icon), title: Text(label)),
    );
    return PopupMenuButton<_HabitAction>(
      key: const ValueKey('habit-menu'),
      tooltip: l10n.actionMore,
      icon: const Icon(Icons.more_vert_rounded),
      onSelected: (a) => _onAction(context, ref, h, a),
      itemBuilder: (_) => [
        item(_HabitAction.edit, Icons.edit_rounded, l10n.actionEdit),
        if (h.paused)
          item(_HabitAction.resume, Icons.play_arrow_rounded, l10n.habitResume)
        else
          item(_HabitAction.pause, Icons.pause_rounded, l10n.habitPause),
        item(_HabitAction.archive, Icons.archive_outlined, l10n.habitsArchive),
      ],
    );
  }

  Future<void> _onAction(BuildContext context, WidgetRef ref, HabitRow h, _HabitAction a) async {
    final repo = ref.read(habitsRepositoryProvider);
    switch (a) {
      case _HabitAction.edit:
        await showHabitEditor(context, habit: h);
      case _HabitAction.pause:
        await repo.setPaused(h.id, true);
      case _HabitAction.resume:
        await repo.setPaused(h.id, false);
      case _HabitAction.archive:
        final messenger = ScaffoldMessenger.maybeOf(context);
        final l10n = context.l10n;
        await repo.archive(h.id);
        messenger
          ?..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(
              behavior: SnackBarBehavior.floating,
              content: Text(l10n.habitsArchived),
              action: SnackBarAction(label: l10n.actionUndo, onPressed: () => repo.unarchive(h.id)),
            ),
          );
        if (context.mounted) await Navigator.of(context).maybePop();
    }
  }
}

typedef _Data = (HabitRow?, Map<int, int>, List<PauseSpan>);

class _HabitBody extends ConsumerWidget {
  const _HabitBody({required this.habit, required this.counts, required this.pauses});
  final HabitRow habit;
  final Map<int, int> counts;
  final List<PauseSpan> pauses;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final fmt = context.fmt;
    final now = ref.watch(clockProvider).now();
    final stats = HabitStats.compute(habit: habit, counts: counts, pauses: pauses, now: now);
    double? cons(int days) =>
        HabitStats.consistency(habit: habit, counts: counts, pauses: pauses, now: now, days: days);
    final c30 = cons(30);
    final c90 = cons(90);
    String pct(double? v) => v == null ? l10n.habitsConsistencyNone : fmt.percent(v);
    final color = Color(habit.color);
    final interactive = !habit.paused && stats.scheduledToday;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Space.page),
          child: LuxCard(
            accent: color,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        spacing: Space.xs,
                        runSpacing: Space.xxs,
                        children: [
                          if (habit.paused)
                            LuxPill(label: l10n.habitPaused, icon: Icons.pause_rounded),
                          LuxPill(label: scheduleLabel(context, habit.weekdays), color: color),
                          LuxPill(label: l10n.habitsTimesPerDayValue(habit.targetPerDay)),
                          if (habit.reminderMinute != null)
                            LuxPill(
                              label: reminderLabel(context, habit.reminderMinute!),
                              icon: Icons.notifications_none_rounded,
                            ),
                        ],
                      ),
                      const SizedBox(height: Space.sm),
                      Text(
                        habit.paused
                            ? l10n.habitsPausedNote
                            : stats.scheduledToday
                            ? l10n.habitCountToday(stats.todayCount, habit.targetPerDay)
                            : l10n.habitNotScheduledToday,
                        key: const ValueKey('habit-today'),
                        style: context.text.bodyMedium,
                      ),
                    ],
                  ),
                ),
                if (interactive)
                  HabitCheckInButton(
                    key: const ValueKey('detail-checkin'),
                    habit: habit,
                    count: stats.todayCount,
                    size: 64,
                    onTap: () => checkInHabit(context, ref, habit, stats.todayCount),
                    onLongPress: () =>
                        showCheckInAdjustSheet(context, ref, habit, stats.today, stats.todayCount),
                  ),
              ],
            ),
          ),
        ),
        const SizedBox(height: Space.sm),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Space.page),
          child: LayoutBuilder(
            builder: (context, c) {
              final tiles = [
                StatTile(
                  key: const ValueKey('stat-current'),
                  value: l10n.habitsDays(stats.currentStreak),
                  label: l10n.habitCurrentStreak,
                  hue: ModuleHue.habits,
                  icon: Icons.local_fire_department_rounded,
                ),
                StatTile(
                  key: const ValueKey('stat-best'),
                  value: l10n.habitsDays(stats.bestStreak),
                  label: l10n.habitBestStreak,
                  hue: ModuleHue.habits,
                  icon: Icons.workspace_premium_rounded,
                ),
                StatTile(
                  key: const ValueKey('stat-c30'),
                  value: pct(c30),
                  label: l10n.habitConsistency,
                  caption: l10n.habitsLast30,
                  hue: ModuleHue.habits,
                ),
                StatTile(
                  key: const ValueKey('stat-c90'),
                  value: pct(c90),
                  label: l10n.habitConsistency,
                  caption: l10n.habitLast90,
                  hue: ModuleHue.habits,
                ),
              ];
              final w = (c.maxWidth - Space.sm) / 2;
              return Wrap(
                spacing: Space.sm,
                runSpacing: Space.sm,
                children: [for (final t in tiles) SizedBox(width: w, child: t)],
              );
            },
          ),
        ),
        SectionHeader(title: l10n.habitLast90),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Space.page),
          child: LuxCard(
            child: _Heatmap(
              levels: HabitStats.heatmap(habit: habit, counts: counts, pauses: pauses, now: now),
              semanticsLabel: c90 == null
                  ? l10n.habitsHeatmapSemanticsEmpty
                  : l10n.habitsHeatmapSemantics(fmt.percent(c90)),
            ),
          ),
        ),
        SectionHeader(title: l10n.habitsCalendar),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Space.page),
          child: _MonthCalendar(habit: habit, counts: counts, today: stats.today),
        ),
      ],
    );
  }
}

/// Sizes [ConsistencyHeatmap] to the available width. The heatmap's Wrap
/// runs follow the text direction, so time flows in reading direction:
/// oldest week at the start edge (left in LTR, right in RTL).
class _Heatmap extends StatelessWidget {
  const _Heatmap({required this.levels, required this.semanticsLabel});
  final List<List<double?>> levels;
  final String semanticsLabel;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, c) {
        const gap = 3.0;
        final weeks = math.max(levels.length, 1);
        final cell = ((c.maxWidth - gap * (weeks - 1)) / weeks).clamp(6.0, 20.0).floorToDouble();
        return Align(
          alignment: AlignmentDirectional.centerStart,
          child: SizedBox(
            // Exactly one week column per run, so runs lay out horizontally.
            height: 7 * (cell + gap),
            child: ConsistencyHeatmap(
              key: const ValueKey('habit-heatmap'),
              levels: levels,
              hue: ModuleHue.habits,
              semanticsLabel: semanticsLabel,
              cell: cell,
              gap: gap,
            ),
          ),
        );
      },
    );
  }
}

class _MonthCalendar extends ConsumerStatefulWidget {
  const _MonthCalendar({required this.habit, required this.counts, required this.today});
  final HabitRow habit;
  final Map<int, int> counts;
  final DateTime today;

  @override
  ConsumerState<_MonthCalendar> createState() => _MonthCalendarState();
}

class _MonthCalendarState extends ConsumerState<_MonthCalendar> {
  late DateTime _month = DateTime(widget.today.year, widget.today.month);

  Future<void> _toggle(DateTime day) async {
    final k = Days.key(day);
    final count = widget.counts[k] ?? 0;
    final target = widget.habit.targetPerDay;
    await ref
        .read(habitsRepositoryProvider)
        .setCount(widget.habit.id, day, count >= target ? 0 : target);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final fmt = context.fmt;
    final initials = fmt.weekdayInitials;
    final grid = HabitStats.monthGrid(_month.year, _month.month);
    final color = Color(widget.habit.color);
    final atCurrent = _month.year == widget.today.year && _month.month == widget.today.month;
    final earliest = Days.addDays(widget.today, -(habitHistoryDays - 1));
    final atEarliest = !DateTime(_month.year, _month.month).isAfter(earliest);
    return LuxCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              IconButton(
                key: const ValueKey('cal-prev'),
                tooltip: l10n.calendarPrevious,
                onPressed: atEarliest
                    ? null
                    : () => setState(() => _month = DateTime(_month.year, _month.month - 1)),
                icon: const Icon(Icons.chevron_left_rounded),
              ),
              Expanded(
                child: Text(
                  fmt.monthYear(_month),
                  key: const ValueKey('cal-title'),
                  textAlign: TextAlign.center,
                  style: context.text.titleMedium,
                ),
              ),
              IconButton(
                key: const ValueKey('cal-next'),
                tooltip: l10n.calendarNext,
                onPressed: atCurrent
                    ? null
                    : () => setState(() => _month = DateTime(_month.year, _month.month + 1)),
                icon: const Icon(Icons.chevron_right_rounded),
              ),
            ],
          ),
          const SizedBox(height: Space.xs),
          ExcludeSemantics(
            child: Row(
              children: [
                for (var i = 0; i < 7; i++)
                  Expanded(
                    child: Text(
                      initials.length == 7 ? initials[i] : '',
                      textAlign: TextAlign.center,
                      style: context.text.labelSmall,
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: Space.xxs),
          for (final week in grid)
            Row(
              children: [
                for (final day in week)
                  Expanded(
                    child: day == null
                        ? const SizedBox(height: kMinTouchTarget)
                        : _DayCell(
                            day: day,
                            count: widget.counts[Days.key(day)] ?? 0,
                            target: widget.habit.targetPerDay,
                            scheduled: HabitMath.scheduledOn(widget.habit.weekdays, day),
                            future: day.isAfter(widget.today),
                            isToday: Days.sameDay(day, widget.today),
                            color: color,
                            onTap: () => _toggle(day),
                          ),
                  ),
              ],
            ),
          const SizedBox(height: Space.xs),
          Text(l10n.habitsCalendarHint, style: context.text.bodySmall, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}

class _DayCell extends StatelessWidget {
  const _DayCell({
    required this.day,
    required this.count,
    required this.target,
    required this.scheduled,
    required this.future,
    required this.isToday,
    required this.color,
    required this.onTap,
  });
  final DateTime day;
  final int count;
  final int target;
  final bool scheduled;
  final bool future;
  final bool isToday;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final lux = context.lux;
    final fmt = context.fmt;
    final done = count >= target;
    final partial = count > 0 && !done;
    final fg = done
        ? Colors.white
        : future
        ? lux.ink3.withValues(alpha: 0.5)
        : scheduled
        ? lux.ink
        : lux.ink3;
    return Semantics(
      button: !future,
      enabled: !future,
      checked: done,
      label: context.l10n.habitsDaySemantics(fmt.dayLong(day), count, target),
      excludeSemantics: true,
      child: InkResponse(
        key: ValueKey('day-${Days.key(day)}'),
        onTap: future ? null : onTap,
        radius: 22,
        child: SizedBox(
          height: kMinTouchTarget,
          child: Center(
            child: Container(
              width: 36,
              height: 36,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: done
                    ? color
                    : partial
                    ? color.withValues(alpha: 0.22)
                    : Colors.transparent,
                border: isToday
                    ? Border.all(color: color, width: 2)
                    : scheduled && !future && !done
                    ? Border.all(color: lux.hairline)
                    : null,
              ),
              child: Text(
                fmt.dayOfMonth(day),
                style: context.text.labelMedium?.copyWith(color: fg),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
