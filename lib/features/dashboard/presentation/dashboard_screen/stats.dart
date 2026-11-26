part of '../dashboard_screen.dart';

/// The painted landscape behind the greeting (light by day, night in dark mode).
class _HeroBackdrop extends StatelessWidget {
  const _HeroBackdrop({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(Space.sm, Space.xs, Space.sm, 0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(Radii.xl),
        child: Stack(
          children: [
            Positioned.fill(
              child: ExcludeSemantics(
                child: Image.asset(
                  DeepFocusAssets.homeHeaderBg,
                  fit: BoxFit.cover,
                  errorBuilder: (_, _, _) =>
                      CustomPaint(painter: LandscapePainter(dark: context.lux.isDark)),
                ),
              ),
            ),
            Padding(padding: const EdgeInsets.only(bottom: 64), child: child),
          ],
        ),
      ),
    );
  }
}

/// Four glass tiles with today at a glance; each opens its area.
class _StatTiles extends ConsumerWidget {
  const _StatTiles();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final fmt = context.fmt;
    final seconds = ref.watch(todayFocusSecondsProvider).value ?? 0;
    final target = ref.watch(settingsProvider.select((s) => s.dailyFocusTargetMinutes));
    final ratio = target <= 0 ? 0.0 : (seconds / (target * 60)).clamp(0.0, 1.0);
    final tasks = ref.watch(tasksProvider(const TaskFilter(view: TaskView.today))).value?.length;
    final events = ref.watch(todayAgendaProvider).value?.length;
    final goals = ref.watch(goalsListProvider(GoalStatus.active)).value?.length;
    Widget tile(String key, IconData icon, Color color, String value, String label, String route) =>
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Space.xxs),
            child: LuxCard(
              key: Key('dashStat-$key'),
              onTap: () => context.go(route),
              semanticLabel: '$label: $value',
              padding: const EdgeInsets.symmetric(vertical: Space.sm, horizontal: Space.xxs),
              child: Column(
                children: [
                  Icon(icon, color: color, size: 24),
                  const SizedBox(height: Space.xxs),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(value, style: context.text.titleMedium, maxLines: 1),
                  ),
                  Text(
                    label,
                    style: context.text.labelSmall,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        );
    String n(int? v) => v == null ? '–' : fmt.number(v);
    return Padding(
      padding: const EdgeInsets.fromLTRB(Space.md, Space.sm, Space.md, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          tile(
            'focus',
            Icons.bar_chart_rounded,
            ModuleHue.focus.a,
            fmt.percent(ratio),
            l10n.navFocus,
            Routes.focus,
          ),
          tile(
            'tasks',
            Icons.check_circle_outline_rounded,
            ModuleHue.tasks.a,
            n(tasks),
            l10n.navTasks,
            Routes.tasks,
          ),
          tile(
            'events',
            Icons.event_available_rounded,
            ModuleHue.calendar.a,
            n(events),
            l10n.dashAgenda,
            Routes.calendar,
          ),
          tile(
            'goals',
            Icons.track_changes_rounded,
            ModuleHue.goals.a,
            n(goals),
            l10n.moduleGoals,
            Routes.goals,
          ),
        ],
      ),
    );
  }
}
