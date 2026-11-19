part of '../habit_detail_screen.dart';

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
