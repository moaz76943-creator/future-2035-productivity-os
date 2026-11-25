part of '../dashboard_screen.dart';

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
                Text(switch (ref.watch(settingsProvider).showHijri(context.language.tag)
                    ? HijriDay.of(now)
                    : null) {
                  final h? => '${context.fmt.dayLong(now)} · ${h.long(l10n)}',
                  null => context.fmt.dayLong(now),
                }, style: context.text.labelLarge?.copyWith(color: context.lux.ink3)),
                const SizedBox(height: Space.xxs),
                Semantics(header: true, child: Text(greeting, style: context.text.headlineMedium)),
                const NextPrayerChip(),
              ],
            ),
          ),
          IconButton(
            tooltip: l10n.moduleSearch,
            icon: const Icon(Icons.search_rounded),
            onPressed: () => context.push(Routes.search),
          ),
          // One menu to every part of the app, so nothing needs a hunt through screens.
          PopupMenuButton<String>(
            key: const Key('dashApps'),
            tooltip: l10n.actionMore,
            icon: const Icon(Icons.apps_rounded),
            onSelected: (r) => openRoute(context, r),
            itemBuilder: (_) => [
              for (final (icon, label, route) in [
                (Icons.style_outlined, l10n.moduleFlashcards, Routes.flashcards),
                (Icons.sticky_note_2_outlined, l10n.moduleNotes, Routes.notes),
                (Icons.event_repeat_rounded, l10n.moduleHabits, Routes.habits),
                (Icons.flag_outlined, l10n.moduleGoals, Routes.goals),
                (Icons.graphic_eq_rounded, l10n.soundsTitle, Routes.sounds),
                (Icons.insights_rounded, l10n.moduleAnalytics, Routes.insights),
                (Icons.settings_outlined, l10n.moduleSettings, Routes.settings),
              ])
                PopupMenuItem(
                  value: route,
                  child: Row(
                    children: [
                      Icon(icon, size: 20),
                      const SizedBox(width: Space.sm),
                      Text(label),
                    ],
                  ),
                ),
            ],
          ),
          IconButton(
            tooltip: l10n.actionCustomize,
            icon: const Icon(Icons.tune_rounded),
            onPressed: () => showModalBottomSheet<void>(
              useRootNavigator: true,
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
    if (tasks == null) return const SizedBox.shrink();
    // Nothing for today: the section simply stays away.
    if (tasks.isEmpty) return const SizedBox.shrink();
    return _Section(
      title: l10n.dashTodayTasks,
      onSeeAll: () => context.go(Routes.tasks),
      child: Column(
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
    if (items == null || items.isEmpty) return const SizedBox.shrink();
    return _Section(
      title: l10n.dashAgenda,
      onSeeAll: () => context.go(Routes.calendar),
      child: Column(
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
    if (habits == null || habits.isEmpty) return const SizedBox.shrink();
    return _Section(
      title: l10n.dashHabits,
      onSeeAll: () => context.push(Routes.habits),
      child: Wrap(
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
    if (goals == null || goals.isEmpty) return const SizedBox.shrink();
    return _Section(
      title: l10n.dashGoals,
      onSeeAll: () => context.push(Routes.goals),
      child: Column(children: [for (final g in goals.take(3)) _GoalLine(goal: g)]),
    );
  }
}
