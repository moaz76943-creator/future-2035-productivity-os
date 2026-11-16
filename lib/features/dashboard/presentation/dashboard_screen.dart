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
import '../../../core/time/clock.dart';
import '../../../l10n/gen/app_localizations.dart';
import '../../flashcards/application/flashcards_providers.dart';
import '../../focus/application/focus_controller.dart';
import '../../goals/application/goals_providers.dart';
import '../../notes/application/notes_providers.dart';
import '../../goals/data/goals_repository.dart';
import '../../habits/application/habits_providers.dart';
import '../../settings/application/settings_providers.dart';
import '../../settings/data/settings_repository.dart';
import '../../tasks/application/tasks_providers.dart';
import '../../tasks/data/tasks_repository.dart';
import '../../tasks/presentation/widgets/task_tile.dart';
import '../application/dashboard_providers.dart';

/// Section ids persisted in settings.dashboardSections (order = display order).
String dashSectionName(AppLocalizations l10n, String id) => switch (id) {
  'focus' => l10n.dashSectionFocus,
  'today' => l10n.dashSectionToday,
  'agenda' => l10n.dashSectionAgenda,
  'habits' => l10n.dashSectionHabits,
  'goals' => l10n.dashSectionGoals,
  'review' => l10n.dashSectionReview,
  'notes' => l10n.dashSectionNotes,
  'insight' => l10n.dashSectionInsight,
  _ => id,
};

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sections = ref.watch(settingsProvider.select((s) => s.dashboardSections));
    return Scaffold(
      body: AuroraBackground(
        child: SafeArea(
          bottom: false,
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(child: _Header()),
              const SliverToBoxAdapter(child: _QuickActions()),
              for (final id in sections)
                SliverToBoxAdapter(
                  child: switch (id) {
                    'focus' => const _FocusSection(),
                    'today' => const _TodaySection(),
                    'agenda' => const _AgendaSection(),
                    'habits' => const _HabitsSection(),
                    'goals' => const _GoalsSection(),
                    'review' => const _ReviewSection(),
                    'notes' => const _NotesSection(),
                    'insight' => const _InsightSection(),
                    _ => const SizedBox.shrink(),
                  },
                ),
              const SliverToBoxAdapter(child: SizedBox(height: 120)),
            ],
          ),
        ),
      ),
    );
  }
}

class _Header extends ConsumerWidget {
  const _Header();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final now = ref.watch(clockProvider).now();
    final greeting = now.hour < 12
        ? l10n.greetingMorning
        : now.hour < 18
        ? l10n.greetingAfternoon
        : l10n.greetingEvening;
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(Space.page, Space.lg, Space.xs, Space.sm),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.fmt.dayLong(now),
                  style: context.text.labelLarge?.copyWith(color: context.lux.ink3),
                ),
                const SizedBox(height: Space.xxs),
                Semantics(header: true, child: Text(greeting, style: context.text.headlineMedium)),
              ],
            ),
          ),
          IconButton(
            tooltip: l10n.moduleSearch,
            icon: const Icon(Icons.search_rounded),
            onPressed: () => context.push(Routes.search),
          ),
          IconButton(
            tooltip: l10n.actionCustomize,
            icon: const Icon(Icons.tune_rounded),
            onPressed: () => showModalBottomSheet<void>(
              context: context,
              showDragHandle: true,
              isScrollControlled: true,
              builder: (_) => const DashboardCustomizeSheet(),
            ),
          ),
        ],
      ),
    );
  }
}

class _QuickActions extends ConsumerWidget {
  const _QuickActions();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    Widget action(IconData icon, String label, ModuleHue hue, Object target) => Expanded(
      child: Semantics(
        button: true,
        label: label,
        excludeSemantics: true,
        child: InkWell(
          borderRadius: BorderRadius.circular(Radii.lg),
          onTap: () async {
            if (target is String) {
              context.push(target);
            } else {
              await (target as Future<void> Function())();
            }
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: Space.xs),
            child: Column(
              children: [
                IconOrb(icon: icon, hue: hue, size: 48),
                const SizedBox(height: Space.xxs),
                Text(
                  label,
                  style: context.text.labelMedium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Space.sm),
      child: Row(
        children: [
          action(Icons.add_task_rounded, l10n.quickAddTask, ModuleHue.tasks, Routes.taskNew),
          action(Icons.edit_note_rounded, l10n.quickAddNote, ModuleHue.notes, () async {
            final id = await ref.read(notesRepositoryProvider).create();
            if (context.mounted) context.push(Routes.note(id));
          }),
          action(Icons.event_rounded, l10n.quickAddEvent, ModuleHue.calendar, Routes.eventNew),
          action(Icons.timer_outlined, l10n.quickStartFocus, ModuleHue.focus, Routes.focus),
        ],
      ),
    );
  }
}

class _FocusSection extends ConsumerWidget {
  const _FocusSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final seconds = ref.watch(todayFocusSecondsProvider).value ?? 0;
    final target = ref.watch(settingsProvider.select((s) => s.dailyFocusTargetMinutes));
    final running = ref.watch(focusControllerProvider.select((s) => s.active != null));
    final ratio = target <= 0 ? 0.0 : (seconds / (target * 60)).clamp(0.0, 1.0);
    final fmt = context.fmt;
    return Padding(
      padding: const EdgeInsets.fromLTRB(Space.page, Space.lg, Space.page, 0),
      child: AuroraCard(
        hue: ModuleHue.focus,
        onTap: () => context.go(Routes.focus),
        child: Row(
          children: [
            GlowRing(
              value: ratio,
              hue: ModuleHue.focus,
              size: 84,
              trackColor: Colors.white.withValues(alpha: 0.25),
              semanticsLabel: l10n.dashFocusToday,
              semanticsValue: fmt.percent(ratio),
              child: Text(
                fmt.percent(ratio),
                style: context.text.titleSmall?.copyWith(color: Colors.white),
              ),
            ),
            const SizedBox(width: Space.md),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.dashFocusToday,
                    style: context.text.titleMedium?.copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: Space.xxs),
                  Text(
                    l10n.dashFocusOfTarget(
                      fmt.duration(Duration(seconds: seconds)),
                      fmt.duration(Duration(minutes: target)),
                    ),
                    style: context.text.bodyMedium?.copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: Space.sm),
                  if (running)
                    LuxPill(
                      label: l10n.dashFocusRunning,
                      icon: Icons.play_arrow_rounded,
                      color: Colors.white,
                    )
                  else
                    Text(
                      l10n.dashStartFocus,
                      style: context.text.labelLarge?.copyWith(color: Colors.white),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TodaySection extends ConsumerWidget {
  const _TodaySection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final tasks = ref.watch(tasksProvider(const TaskFilter(view: TaskView.today))).value;
    return _Section(
      title: l10n.dashTodayTasks,
      onSeeAll: () => context.go(Routes.tasks),
      child: tasks == null
          ? const SizedBox(height: 48)
          : tasks.isEmpty
          ? _EmptyLine(l10n.dashNoTasksToday, Icons.wb_sunny_outlined)
          : Column(
              children: [
                for (final t in tasks.take(5))
                  Padding(
                    padding: const EdgeInsets.only(bottom: Space.xxs),
                    child: TaskTile(task: t),
                  ),
              ],
            ),
    );
  }
}

class _AgendaSection extends ConsumerWidget {
  const _AgendaSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final items = ref.watch(todayAgendaProvider).value;
    return _Section(
      title: l10n.dashAgenda,
      onSeeAll: () => context.go(Routes.calendar),
      child: items == null
          ? const SizedBox(height: 48)
          : items.isEmpty
          ? _EmptyLine(l10n.dashNoEvents, Icons.event_available_outlined)
          : Column(
              children: [
                for (final o in items.take(4))
                  Padding(
                    padding: const EdgeInsets.only(bottom: Space.xs),
                    child: LuxCard(
                      padding: const EdgeInsets.all(Space.sm),
                      accent: o.event.color == null ? null : Color(o.event.color!),
                      onTap: () => context.push(Routes.event(o.event.id)),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 64,
                            child: Text(
                              o.event.allDay ? l10n.calendarAllDay : context.fmt.time(o.start),
                              style: context.text.labelLarge?.copyWith(color: ModuleHue.calendar.a),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              o.event.title.isEmpty ? l10n.untitled : o.event.title,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
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

class _HabitsSection extends ConsumerWidget {
  const _HabitsSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final habits = ref.watch(todayHabitsProvider).value;
    final today = Days.startOfDay(ref.watch(clockProvider).now());
    return _Section(
      title: l10n.dashHabits,
      onSeeAll: () => context.push(Routes.habits),
      child: habits == null
          ? const SizedBox(height: 48)
          : habits.isEmpty
          ? _EmptyLine(l10n.dashNoHabits, Icons.self_improvement_rounded)
          : Wrap(
              spacing: Space.sm,
              runSpacing: Space.sm,
              children: [
                for (final h in habits)
                  Semantics(
                    button: true,
                    label: l10n.habitToggleSemantics(h.habit.name),
                    value: l10n.habitCountToday(h.stats.todayCount, h.stats.target),
                    excludeSemantics: true,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(Radii.pill),
                      onTap: h.stats.doneToday
                          ? null
                          : () => ref.read(habitsRepositoryProvider).increment(h.habit.id, today),
                      child: Container(
                        constraints: const BoxConstraints(minHeight: kMinTouchTarget),
                        padding: const EdgeInsets.symmetric(horizontal: Space.md),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Radii.pill),
                          color: h.stats.doneToday
                              ? Color(h.habit.color).withValues(alpha: 0.16)
                              : context.lux.surface,
                          border: Border.all(color: Color(h.habit.color).withValues(alpha: 0.4)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              h.stats.doneToday
                                  ? Icons.check_circle_rounded
                                  : Icons.radio_button_unchecked_rounded,
                              size: 20,
                              color: Color(h.habit.color),
                            ),
                            const SizedBox(width: Space.xs),
                            Text(h.habit.name),
                            if (h.stats.target > 1) ...[
                              const SizedBox(width: Space.xs),
                              Text(
                                '${context.fmt.number(h.stats.todayCount)}/${context.fmt.number(h.stats.target)}',
                                style: context.text.labelSmall?.copyWith(color: context.lux.ink3),
                              ),
                            ],
                          ],
                        ),
                      ),
                    ),
                  ),
              ],
            ),
    );
  }
}

class _GoalsSection extends ConsumerWidget {
  const _GoalsSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final goals = ref.watch(goalsListProvider(GoalStatus.active)).value;
    return _Section(
      title: l10n.dashGoals,
      onSeeAll: () => context.push(Routes.goals),
      child: goals == null
          ? const SizedBox(height: 48)
          : goals.isEmpty
          ? _EmptyLine(l10n.dashNoGoals, Icons.flag_outlined)
          : Column(children: [for (final g in goals.take(3)) _GoalLine(goal: g)]),
    );
  }
}

class _GoalLine extends ConsumerWidget {
  const _GoalLine({required this.goal});
  final GoalRow goal;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final p = ref.watch(goalProgressProvider(goal)).value;
    final ratio = p?.ratio ?? 0;
    return InkWell(
      onTap: () => context.push(Routes.goal(goal.id)),
      borderRadius: BorderRadius.circular(Radii.md),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: Space.xs),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    goal.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.text.titleSmall,
                  ),
                ),
                Text(
                  context.fmt.percent(ratio),
                  style: context.text.labelMedium?.copyWith(color: context.lux.ink2),
                ),
              ],
            ),
            const SizedBox(height: Space.xxs),
            GlowBar(value: ratio, hue: ModuleHue.goals, semanticsLabel: goal.title),
          ],
        ),
      ),
    );
  }
}

class _ReviewSection extends ConsumerWidget {
  const _ReviewSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final due = ref.watch(totalDueProvider).value;
    if (due == null) return const SizedBox.shrink();
    return _Section(
      title: l10n.dashReview,
      child: LuxCard(
        onTap: () => context.push(Routes.flashcards),
        child: Row(
          children: [
            const IconOrb(icon: Icons.style_outlined, hue: ModuleHue.flashcards, size: 44),
            const SizedBox(width: Space.md),
            Expanded(child: Text(l10n.dashCardsDue(due), style: context.text.titleSmall)),
            if (due > 0)
              FilledButton.tonal(
                onPressed: () => context.push(Routes.flashcards),
                child: Text(l10n.dashReviewNow),
              ),
          ],
        ),
      ),
    );
  }
}

class _NotesSection extends ConsumerWidget {
  const _NotesSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final notes = ref.watch(recentNotesProvider).value;
    return _Section(
      title: l10n.dashRecentNotes,
      onSeeAll: () => context.push(Routes.notes),
      child: notes == null
          ? const SizedBox(height: 48)
          : notes.isEmpty
          ? _EmptyLine(l10n.dashNoNotes, Icons.sticky_note_2_outlined)
          : SizedBox(
              height: 120,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: notes.length,
                separatorBuilder: (_, _) => const SizedBox(width: Space.sm),
                itemBuilder: (_, i) => _NoteChip(note: notes[i]),
              ),
            ),
    );
  }
}

class _NoteChip extends StatelessWidget {
  const _NoteChip({required this.note});
  final NoteRow note;

  @override
  Widget build(BuildContext context) {
    final body = note.body.replaceAll(RegExp(r'[#*_>`\[\]]'), '').trim();
    return SizedBox(
      width: 200,
      child: LuxCard(
        padding: const EdgeInsets.all(Space.md),
        accent: ModuleHue.notes.a,
        onTap: () => context.push(Routes.note(note.id)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              note.title.isEmpty ? context.l10n.untitled : note.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: context.text.titleSmall,
            ),
            const SizedBox(height: Space.xxs),
            Expanded(
              child: Text(
                body,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: context.text.bodySmall?.copyWith(color: context.lux.ink2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _InsightSection extends ConsumerWidget {
  const _InsightSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final overdue = ref.watch(tasksProvider(const TaskFilter(view: TaskView.overdue))).value;
    final habits = ref.watch(todayHabitsProvider).value;
    final cards = ref.watch(totalDueProvider).value;
    final focus = ref.watch(todayFocusSecondsProvider).value;
    final target = ref.watch(settingsProvider.select((s) => s.dailyFocusTargetMinutes));
    if (overdue == null || habits == null || cards == null || focus == null) {
      return const SizedBox.shrink();
    }
    final insight = pickInsight(
      overdue: overdue.length,
      habits: habits,
      cardsDue: cards,
      focusSeconds: focus,
      focusTargetMinutes: target,
      now: ref.watch(clockProvider).now(),
    );
    final (text, icon, route) = switch (insight) {
      InsightOverdue(:final count) => (
        l10n.insightOverdue(count),
        Icons.priority_high_rounded,
        Routes.tasks,
      ),
      InsightHabit(:final habitName) => (
        l10n.insightHabitStreak(habitName),
        Icons.local_fire_department_outlined,
        Routes.habits,
      ),
      InsightCardsDue() => (l10n.insightCardsDue, Icons.style_outlined, Routes.flashcards),
      InsightFocusGap(:final minutes) => (
        l10n.insightFocusGap(minutes),
        Icons.timer_outlined,
        Routes.focus,
      ),
      InsightAllClear() => (l10n.insightAllClear, Icons.spa_outlined, Routes.calendar),
    };
    return _Section(
      title: l10n.dashInsight,
      child: LuxCard(
        accent: Palette.champagne,
        // Shell branches are switched with go(); other screens are pushed.
        onTap: () => const {Routes.tasks, Routes.focus, Routes.calendar}.contains(route)
            ? context.go(route)
            : context.push(route),
        child: Row(
          children: [
            Icon(icon, color: Palette.champagne),
            const SizedBox(width: Space.md),
            Expanded(child: Text(text, style: context.text.bodyMedium)),
          ],
        ),
      ),
    );
  }
}

class _Section extends StatelessWidget {
  const _Section({required this.title, required this.child, this.onSeeAll});
  final String title;
  final Widget child;
  final VoidCallback? onSeeAll;

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      SectionHeader(
        title: title,
        action: onSeeAll == null ? null : context.l10n.dashSeeAll,
        onAction: onSeeAll,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: Space.page),
        child: child,
      ),
    ],
  );
}

class _EmptyLine extends StatelessWidget {
  const _EmptyLine(this.text, this.icon);
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(vertical: Space.xs),
    child: Row(
      children: [
        Icon(icon, size: 20, color: context.lux.ink3),
        const SizedBox(width: Space.sm),
        Expanded(
          child: Text(text, style: context.text.bodyMedium?.copyWith(color: context.lux.ink3)),
        ),
      ],
    ),
  );
}

/// Toggle and reorder dashboard sections. Persists immediately.
class DashboardCustomizeSheet extends ConsumerWidget {
  const DashboardCustomizeSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final enabled = ref.watch(settingsProvider.select((s) => s.dashboardSections));
    final all = [
      ...enabled,
      for (final id in AppSettings.defaultDashboardSections)
        if (!enabled.contains(id)) id,
    ];
    void save(List<String> next) =>
        ref.read(settingsProvider.notifier).update((c) => c.copyWith(dashboardSections: next));
    return SafeArea(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: MediaQuery.sizeOf(context).height * 0.8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Space.page),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(l10n.dashCustomizeTitle, style: context.text.titleLarge),
                  const SizedBox(height: Space.xxs),
                  Text(
                    l10n.dashCustomizeHint,
                    style: context.text.bodyMedium?.copyWith(color: context.lux.ink2),
                  ),
                ],
              ),
            ),
            Flexible(
              child: ReorderableListView(
                shrinkWrap: true,
                buildDefaultDragHandles: false,
                onReorderItem: (from, to) {
                  final list = [...all];
                  list.insert(to, list.removeAt(from));
                  save([
                    for (final id in list)
                      if (enabled.contains(id)) id,
                  ]);
                },
                children: [
                  for (var i = 0; i < all.length; i++)
                    SwitchListTile(
                      key: ValueKey(all[i]),
                      value: enabled.contains(all[i]),
                      title: Text(dashSectionName(l10n, all[i])),
                      secondary: ReorderableDragStartListener(
                        index: i,
                        child: const Icon(Icons.drag_indicator_rounded),
                      ),
                      onChanged: (on) => save(
                        on
                            ? [...enabled, all[i]]
                            : [
                                for (final id in enabled)
                                  if (id != all[i]) id,
                              ],
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
