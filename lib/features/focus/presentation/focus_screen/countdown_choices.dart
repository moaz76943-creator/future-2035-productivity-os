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
              child: DecoratedBox(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: a == null ? null : DeepFocusVisuals.edgeGlow(strength: 1.3),
                ),
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
                                style: context.text.titleMedium?.copyWith(
                                  color: Colors.white,
                                  shadows: _timerTextShadow,
                                ),
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
                                      shadows: _timerTextShadow,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: Space.xxs),
                              Text(
                                status,
                                style: context.text.bodyMedium?.copyWith(
                                  color: Colors.white,
                                  shadows: _timerTextShadow,
                                ),
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
