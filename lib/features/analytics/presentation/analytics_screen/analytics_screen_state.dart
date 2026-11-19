part of '../analytics_screen.dart';

class _AnalyticsScreenState extends ConsumerState<AnalyticsScreen> {
  AnalyticsRange _range = AnalyticsRange.week;

  Future<void> _refresh() => ref.refresh(analyticsSnapshotProvider(_range).future);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final snap = ref.watch(analyticsSnapshotProvider(_range));
    return RefreshIndicator(
      onRefresh: _refresh,
      child: ModuleScaffold(
        title: l10n.analyticsTitle,
        hue: ModuleHue.analytics,
        actions: [
          IconButton(
            tooltip: l10n.analyticsRefresh,
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () => ref.invalidate(analyticsSnapshotProvider(_range)),
          ),
        ],
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(Space.page, 0, Space.page, Space.sm),
              child: Semantics(
                label: l10n.analyticsRangeLabel,
                container: true,
                child: SegmentedButton<AnalyticsRange>(
                  showSelectedIcon: false,
                  segments: [
                    ButtonSegment(value: AnalyticsRange.week, label: Text(l10n.rangeWeek)),
                    ButtonSegment(value: AnalyticsRange.month, label: Text(l10n.rangeMonth)),
                    ButtonSegment(value: AnalyticsRange.quarter, label: Text(l10n.rangeQuarter)),
                  ],
                  selected: {_range},
                  onSelectionChanged: (s) => setState(() => _range = s.first),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: AsyncValueView<AnalyticsSnapshot>(
              value: snap,
              onRetry: () => ref.invalidate(analyticsSnapshotProvider(_range)),
              data: (s) => _Body(snapshot: s, range: _range),
            ),
          ),
        ],
      ),
    );
  }
}

class _Body extends ConsumerWidget {
  const _Body({required this.snapshot, required this.range});
  final AnalyticsSnapshot snapshot;
  final AnalyticsRange range;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s = snapshot;
    final l10n = context.l10n;
    final fmt = context.fmt;
    final now = ref.watch(clockProvider).now();
    final rate = s.completionRate;
    final tiles = <Widget>[
      StatTile(
        icon: Icons.bolt_rounded,
        hue: ModuleHue.focus,
        value: fmt.duration(Duration(seconds: s.measuredFocusSeconds)),
        label: l10n.statFocusTime,
        caption: l10n.statMeasuredNote,
      ),
      StatTile(
        icon: Icons.timer_rounded,
        hue: ModuleHue.focus,
        value: fmt.number(s.completedSessions + s.interruptedSessions),
        label: l10n.statSessions,
        caption: l10n.statSessionsDetail(s.completedSessions, s.interruptedSessions),
      ),
      StatTile(
        icon: Icons.task_alt_rounded,
        hue: ModuleHue.tasks,
        value: fmt.number(s.tasksCompleted),
        label: l10n.statTasksDone,
      ),
      StatTile(
        icon: Icons.schedule_rounded,
        hue: ModuleHue.tasks,
        value: rate == null ? l10n.analyticsNoData : fmt.percent(rate),
        label: l10n.statCompletionRate,
        caption: rate == null ? null : l10n.analyticsOnTimeDetail(s.tasksDueCompleted, s.tasksDue),
      ),
      StatTile(
        icon: Icons.autorenew_rounded,
        hue: ModuleHue.habits,
        value: s.habitConsistency == null ? l10n.analyticsNoData : fmt.percent(s.habitConsistency!),
        label: l10n.statHabitConsistency,
        caption: s.habitConsistency == null ? l10n.analyticsHabitsNone : null,
      ),
      StatTile(
        icon: Icons.psychology_rounded,
        hue: ModuleHue.flashcards,
        value: s.retention == null ? l10n.analyticsNoData : fmt.percent(s.retention!),
        label: l10n.statRetention,
        caption: s.retention == null ? null : l10n.analyticsRetentionNote,
      ),
      StatTile(
        icon: Icons.style_rounded,
        hue: ModuleHue.flashcards,
        value: fmt.number(s.reviewCount),
        label: l10n.statReviews,
      ),
      StatTile(
        icon: Icons.flag_rounded,
        hue: ModuleHue.goals,
        value: fmt.number(s.activeGoals),
        label: l10n.statActiveGoals,
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Space.page),
          child: _TwoColumn(children: tiles),
        ),
        const SizedBox(height: Space.sm),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Space.page),
          child: _EstimatedCard(minutes: s.estimatedMinutesCompleted),
        ),
        _DayChartCard(
          title: l10n.chartFocusByDay,
          days: s.focusByDay,
          hue: ModuleHue.focus,
          range: range,
          now: now,
          formatValue: (v) => fmt.minutes(v.round()),
          emptyMessage: l10n.analyticsNoFocus,
        ),
        _DayChartCard(
          title: l10n.chartTasksByDay,
          days: s.tasksCompletedByDay,
          hue: ModuleHue.tasks,
          range: range,
          now: now,
          formatValue: fmt.number,
          emptyMessage: l10n.analyticsNoData,
        ),
        SectionHeader(title: l10n.chartTimeByProject),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Space.page),
          child: _ProjectTimeCard(slices: s.focusByProject),
        ),
        SectionHeader(title: l10n.chartProjectProgress),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Space.page),
          child: _ProjectProgressCard(projects: s.projects),
        ),
      ],
    );
  }
}

/// Two equal columns whose rows grow with their content (no fixed
/// heights, so long translations and large fonts wrap safely).
class _TwoColumn extends StatelessWidget {
  const _TwoColumn({required this.children});
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final rows = <Widget>[];
    for (var i = 0; i < children.length; i += 2) {
      rows.add(
        IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(child: children[i]),
              const SizedBox(width: Space.sm),
              Expanded(child: i + 1 < children.length ? children[i + 1] : const SizedBox()),
            ],
          ),
        ),
      );
      if (i + 2 < children.length) rows.add(const SizedBox(height: Space.sm));
    }
    return Column(children: rows);
  }
}

class _EstimatedCard extends StatelessWidget {
  const _EstimatedCard({required this.minutes});
  final int minutes;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final value = context.fmt.minutes(minutes);
    return LuxCard(
      accent: ModuleHue.goals.b,
      semanticLabel: '${l10n.statEstimated}: $value, ${l10n.statEstimatedNote}',
      child: ExcludeSemantics(
        child: Row(
          children: [
            const IconOrb(icon: Icons.hourglass_bottom_rounded, hue: ModuleHue.goals, size: 40),
            const SizedBox(width: Space.md),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(l10n.statEstimated, style: context.text.labelMedium),
                  const SizedBox(height: 2),
                  Text(value, style: context.text.headlineSmall),
                  const SizedBox(height: 2),
                  Text(l10n.statEstimatedNote, style: context.text.bodySmall),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DayChartCard extends StatelessWidget {
  const _DayChartCard({
    required this.title,
    required this.days,
    required this.hue,
    required this.range,
    required this.now,
    required this.formatValue,
    required this.emptyMessage,
  });
  final String title;
  final List<DayValue> days;
  final ModuleHue hue;
  final AnalyticsRange range;
  final DateTime now;
  final String Function(double) formatValue;
  final String emptyMessage;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final fmt = context.fmt;
    final total = days.fold<double>(0, (a, d) => a + d.value);
    final best = days.isEmpty ? null : days.reduce((a, b) => b.value > a.value ? b : a);
    final semantics = l10n.chartSemanticsTotal(
      title,
      formatValue(total),
      best == null || best.value <= 0
          ? l10n.analyticsNoData
          : '${fmt.dayShort(best.day)} (${formatValue(best.value)})',
    );
    final labelEvery = switch (range) {
      AnalyticsRange.week => 1,
      AnalyticsRange.month => 5,
      AnalyticsRange.quarter => 15,
    };
    final points = [
      for (final d in days)
        ChartPoint(
          range == AnalyticsRange.week ? fmt.weekdayShort(d.day) : fmt.dayOfMonth(d.day),
          d.value,
          highlight: Days.sameDay(d.day, now),
        ),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SectionHeader(title: title),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Space.page),
          child: LuxCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(formatValue(total), style: context.text.titleLarge),
                const SizedBox(height: Space.sm),
                GlowBarChart(
                  points: points,
                  hue: hue,
                  semanticsLabel: semantics,
                  labelEvery: labelEvery,
                ),
                if (total <= 0) ...[
                  const SizedBox(height: Space.xs),
                  Text(emptyMessage, style: context.text.bodySmall),
                ],
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _ProjectTimeCard extends StatelessWidget {
  const _ProjectTimeCard({required this.slices});
  final List<ProjectSlice> slices;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final fmt = context.fmt;
    if (slices.isEmpty) {
      return LuxCard(child: Text(l10n.analyticsNoFocus, style: context.text.bodyMedium));
    }
    final maxS = slices.map((s) => s.seconds).fold<int>(0, math.max);
    final total = slices.fold<int>(0, (a, s) => a + s.seconds);
    String name(ProjectSlice s) =>
        s.projectId == null || s.name.trim().isEmpty ? l10n.analyticsUnassigned : s.name;
    return LuxCard(
      semanticLabel: l10n.chartSemanticsTotal(
        l10n.chartTimeByProject,
        fmt.duration(Duration(seconds: total)),
        name(slices.first),
      ),
      child: Column(
        children: [
          for (final s in slices)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: Space.xs),
              child: Semantics(
                label: l10n.analyticsBarValue(name(s), fmt.duration(Duration(seconds: s.seconds))),
                child: ExcludeSemantics(
                  child: _HorizontalBar(
                    label: name(s),
                    value: fmt.duration(Duration(seconds: s.seconds)),
                    ratio: maxS == 0 ? 0 : s.seconds / maxS,
                    color: s.color == null ? context.lux.ink3 : Color(s.color!),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
