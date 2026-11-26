part of '../focus_screen.dart';

class _CountdownChoices extends StatelessWidget {
  const _CountdownChoices({required this.value, required this.onChanged});
  final int value;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return LuxCard(
      padding: const EdgeInsets.fromLTRB(Space.md, Space.xs, Space.md, Space.md),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PlanStepper(
            key: const Key('countdownStepper'),
            label: l10n.focusDuration,
            value: value,
            min: 1,
            max: 600,
            display: (v) => context.fmt.minutes(v),
            onChanged: onChanged,
          ),
          const SizedBox(height: Space.xs),
          Wrap(
            spacing: Space.xs,
            runSpacing: Space.xs,
            children: [
              for (final m in focusCountdownChoices)
                ChoiceChip(
                  label: Text(context.fmt.minutes(m)),
                  tooltip: l10n.focusMinutesLabel(m),
                  selected: m == value,
                  onSelected: (_) => onChanged(m),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

class _TimerHero extends ConsumerWidget {
  const _TimerHero({
    super.key,
    required this.state,
    required this.mode,
    required this.countdownMinutes,
    this.onAdjust,
  });

  /// Tapping the idle timer opens the length, kind and end-sound sheet.
  final VoidCallback? onAdjust;
  final FocusControllerState state;
  final FocusMode mode;
  final int countdownMinutes;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final settings = ref.watch(settingsProvider);
    final now = ref.read(clockProvider).nowUtc();
    final a = state.active;

    final phase =
        a?.phase ?? (mode == FocusMode.pomodoro ? state.pending?.phase : null) ?? FocusPhase.work;
    final cycles = a?.completedWorkCycles ?? state.pending?.cycles ?? 0;
    final config = PomodoroConfig(
      workMinutes: settings.workMinutes,
      shortBreakMinutes: settings.shortBreakMinutes,
      longBreakMinutes: settings.longBreakMinutes,
      longBreakEvery: settings.longBreakEvery,
      rounds: settings.sessionRounds,
    );

    final Duration shown;
    final bool countsDown;
    double progress;
    if (a != null) {
      countsDown = a.hasTarget;
      final elapsed = a.elapsed(now);
      shown = a.remaining(now) ?? elapsed;
      progress = a.progress(now) ?? (elapsed.inSeconds % 3600) / 3600;
    } else {
      countsDown = mode == FocusMode.pomodoro || mode == FocusMode.countdown;
      shown = switch (mode) {
        FocusMode.pomodoro => Duration(seconds: config.secondsFor(phase)),
        FocusMode.countdown => Duration(minutes: countdownMinutes),
        _ => Duration.zero,
      };
      progress = 0;
    }

    final status = a == null
        ? (state.pending != null && mode == FocusMode.pomodoro
              ? l10n.focusUpNext(focusPhaseLabel(l10n, phase))
              : (onAdjust != null ? l10n.focusTapToAdjust : l10n.focusReady))
        : (a.isRunning ? l10n.focusRunning : l10n.focusPaused);
    final clock = AppFormat.clock(shown);
    // Calm pacing: whole minutes only, no ticking seconds (the ring shows the flow).
    final calm = ref.watch(focusPrefsProvider).value?.calmPacing ?? false;
    final minutes = countsDown ? (shown.inSeconds / 60).ceil() : shown.inMinutes;
    final shownText = calm ? l10n.focusMinutesShort(context.fmt.number(minutes)) : clock;
    final phaseLabel = focusPhaseLabel(l10n, phase);
    final semantics = countsDown
        ? l10n.focusTimerSemantics(phaseLabel, clock)
        : l10n.focusTimerSemanticsElapsed(phaseLabel, clock);
    // Sized by width and height so Start stays above the fold on short phones.
    final screen = MediaQuery.sizeOf(context);
    final floor = math.min(300.0, MediaQuery.textScalerOf(context).scale(160));
    final double size = math
        .min(screen.width - Space.page * 2 - Space.xl * 2, screen.height * 0.3)
        .clamp(floor, 300.0);

    // A soft tint of the Focus colour makes the timer the calm centre of the screen.
    final tint = Color.alphaBlend(ModuleHue.focus.a.withValues(alpha: 0.08), context.lux.surface);
    return LuxCard(
      onTap: a == null ? onAdjust : null,
      semanticLabel: a == null && onAdjust != null ? l10n.focusTapToAdjust : null,
      color: tint,
      radius: Radii.xl,
      padding: const EdgeInsets.all(Space.xl),
      child: Column(
        children: [
          Semantics(
            liveRegion: false,
            label: semantics,
            child: ExcludeSemantics(
              child: GlowRing(
                value: progress,
                hue: ModuleHue.focus,
                size: size,
                stroke: 14,
                // A calm lake landscape inside the ring; white text sits on its deep sky.
                child: Container(
                  width: size - 44,
                  height: size - 44,
                  decoration: const ShapeDecoration(shape: CircleBorder()),
                  clipBehavior: Clip.antiAlias,
                  child: _TimerFace(
                    // Scales down instead of overflowing on short screens and large text.
                    child: Center(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: SizedBox(
                          width: size - 44 - Space.lg * 2,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                phaseLabel,
                                style: context.text.titleMedium?.copyWith(color: Colors.white),
                                textAlign: TextAlign.center,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: Space.xxs),
                              FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Directionality(
                                  textDirection: TextDirection.ltr,
                                  child: Text(
                                    shownText,
                                    key: const ValueKey('focus-clock'),
                                    style: context.text.displayMedium?.copyWith(
                                      fontFeatures: const [FontFeature.tabularFigures()],
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: Space.xxs),
                              Text(
                                status,
                                style: context.text.bodyMedium?.copyWith(color: Colors.white),
                                textAlign: TextAlign.center,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: Space.md),
          if (mode == FocusMode.pomodoro)
            LuxPill(
              key: const Key('focusCyclePill'),
              label: config.rounds > 0
                  ? l10n.focusRoundOf(
                      (phase == FocusPhase.work ? cycles + 1 : cycles).clamp(1, config.rounds),
                      config.rounds,
                    )
                  : l10n.focusCycle(
                      focusCyclePosition(phase, cycles, config.longBreakEvery),
                      config.longBreakEvery,
                    ),
              color: ModuleHue.focus.a,
            )
          else if (mode == FocusMode.countUp)
            Text(
              l10n.focusStopwatchHint,
              style: context.text.bodySmall,
              textAlign: TextAlign.center,
            )
          else if (mode == FocusMode.open)
            Text(l10n.focusOpenHint, style: context.text.bodySmall, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}

class _Controls extends StatelessWidget {
  const _Controls({
    required this.state,
    required this.mode,
    required this.onStart,
    required this.onPause,
    required this.onResume,
    required this.onStop,
    required this.onSkipBreak,
  });
  final FocusControllerState state;
  final FocusMode mode;
  final VoidCallback onStart;
  final VoidCallback onPause;
  final VoidCallback onResume;
  final VoidCallback onStop;
  final VoidCallback onSkipBreak;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final a = state.active;
    final buttons = <Widget>[];
    if (!state.ready) {
      buttons.add(
        FilledButton.icon(
          style: focusTealButton,
          onPressed: null,
          icon: const Icon(Icons.play_arrow_rounded),
          label: Text(l10n.actionStart),
        ),
      );
    } else if (a == null) {
      final pending = mode == FocusMode.pomodoro ? state.pending : null;
      final breakNext = pending != null && pending.phase != FocusPhase.work;
      buttons.add(
        FilledButton.icon(
          style: focusTealButton,
          key: const ValueKey('focus-start'),
          onPressed: onStart,
          icon: const Icon(Icons.play_arrow_rounded),
          label: Text(
            breakNext
                ? l10n.focusStartBreak
                : (pending != null ? l10n.focusStartNext : l10n.actionStart),
          ),
        ),
      );
      if (breakNext) {
        buttons.add(
          OutlinedButton.icon(
            onPressed: onSkipBreak,
            icon: const Icon(Icons.skip_next_rounded),
            label: Text(l10n.focusSkipBreak),
          ),
        );
      }
    } else {
      buttons.add(
        a.isRunning
            ? FilledButton.icon(
          style: focusTealButton,
                key: const ValueKey('focus-pause'),
                onPressed: onPause,
                icon: const Icon(Icons.pause_rounded),
                label: Text(l10n.actionPause),
              )
            : FilledButton.icon(
          style: focusTealButton,
                key: const ValueKey('focus-resume'),
                onPressed: onResume,
                icon: const Icon(Icons.play_arrow_rounded),
                label: Text(l10n.actionResume),
              ),
      );
      buttons.add(
        OutlinedButton.icon(
          key: const ValueKey('focus-stop'),
          onPressed: onStop,
          icon: const Icon(Icons.stop_rounded),
          label: Text(l10n.actionStop),
        ),
      );
      if (a.mode == FocusMode.pomodoro && a.phase != FocusPhase.work) {
        buttons.add(
          TextButton.icon(
            onPressed: onSkipBreak,
            icon: const Icon(Icons.skip_next_rounded),
            label: Text(l10n.focusSkipBreak),
          ),
        );
      }
    }
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: Space.sm,
      runSpacing: Space.sm,
      children: [
        for (final b in buttons)
          ConstrainedBox(
            constraints: const BoxConstraints(minHeight: kMinTouchTarget, minWidth: 120),
            child: b,
          ),
      ],
    );
  }
}

class _LinkedTask extends ConsumerWidget {
  const _LinkedTask({
    required this.taskId,
    required this.enabled,
    required this.onPick,
    required this.onUnlink,
  });
  final String? taskId;
  final bool enabled;
  final VoidCallback onPick;
  final VoidCallback onUnlink;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final id = taskId;
    final task = id == null ? null : ref.watch(taskByIdProvider(id)).value;
    final title = task?.title;
    return LuxCard(
      onTap: enabled ? onPick : null,
      semanticLabel: title == null ? l10n.focusLinkTask : '${l10n.focusLinkedTask}: $title',
      child: Row(
        children: [
          const IconOrb(icon: Icons.task_alt_rounded, hue: ModuleHue.tasks, size: 40),
          const SizedBox(width: Space.sm),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(l10n.focusLinkedTask, style: context.text.labelMedium),
                Text(
                  title ?? l10n.focusNoTask,
                  style: context.text.titleSmall,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          if (title != null && enabled)
            IconButton(
              tooltip: l10n.focusUnlinkTask,
              onPressed: onUnlink,
              icon: const Icon(Icons.link_off_rounded),
            )
          else if (enabled)
            // Flexible: at large text sizes the label wraps instead of overflowing.
            Flexible(
              child: TextButton(
                onPressed: onPick,
                child: Text(l10n.focusLinkTask, maxLines: 2, textAlign: TextAlign.center),
              ),
            ),
        ],
      ),
    );
  }
}
