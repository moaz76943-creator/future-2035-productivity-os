import 'dart:async';

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
import '../../../shared/widgets/async_value_view.dart';
import '../../../shared/widgets/dialogs.dart';
import '../../../shared/widgets/module_scaffold.dart';
import '../../../shared/widgets/task_picker.dart';
import '../../notifications/application/notification_providers.dart';
import '../../notifications/data/notification_service.dart';
import '../../settings/application/settings_providers.dart';
import '../../tasks/application/tasks_providers.dart';
import '../application/focus_controller.dart';
import '../application/focus_providers.dart';
import '../domain/focus_engine.dart';
import '../domain/focus_timer_state.dart';

/// Lengths offered for the plain timer mode, in minutes.
const focusCountdownChoices = [5, 10, 15, 25, 45, 60, 90];

String focusModeLabel(AppLocalizations l10n, FocusMode m) => switch (m) {
  FocusMode.pomodoro => l10n.focusModePomodoro,
  FocusMode.countdown => l10n.focusModeCountdown,
  FocusMode.countUp => l10n.focusModeCountUp,
  FocusMode.open => l10n.focusModeOpen,
};

String focusPhaseLabel(AppLocalizations l10n, FocusPhase p) => switch (p) {
  FocusPhase.work => l10n.focusPhaseWork,
  FocusPhase.shortBreak => l10n.focusPhaseShortBreak,
  FocusPhase.longBreak => l10n.focusPhaseLongBreak,
};

/// 1-based position within the pomodoro cycle shown as "Cycle x of n".
int focusCyclePosition(FocusPhase phase, int completedCycles, int every) {
  final r = completedCycles % every;
  if (phase == FocusPhase.work) return r + 1;
  return r == 0 ? every : r;
}

enum _StopChoice { save, discard }

class FocusScreen extends ConsumerStatefulWidget {
  const FocusScreen({super.key, this.initialTaskId});

  /// Preselects this task as the linked task when no session is running.
  final String? initialTaskId;

  @override
  ConsumerState<FocusScreen> createState() => _FocusScreenState();
}

class _FocusScreenState extends ConsumerState<FocusScreen> with WidgetsBindingObserver {
  Timer? _ticker;
  FocusMode _mode = FocusMode.pomodoro;
  int _countdownMinutes = 25;
  bool _showBatteryHint = false;
  bool _batteryChecked = false;

  FocusController get _ctrl => ref.read(focusControllerProvider.notifier);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    final ctrl = _ctrl;
    unawaited(
      ctrl.restored.then((_) {
        if (!mounted) return;
        final s = ref.read(focusControllerProvider);
        if (s.active case final a?) setState(() => _mode = a.mode);
        final initial = widget.initialTaskId;
        if (initial != null && s.active == null) unawaited(ctrl.linkTask(initial));
      }),
    );
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _ticker?.cancel();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      unawaited(_ctrl.onAppResumed());
      setState(() {});
    }
  }

  /// The ticker only repaints; time always comes from the clock.
  void _syncTicker(FocusTimerState? active) {
    final shouldRun = active != null && active.isRunning;
    if (shouldRun && _ticker == null) {
      _ticker = Timer.periodic(const Duration(seconds: 1), (_) {
        if (!mounted) return;
        setState(() {});
        unawaited(_ctrl.checkCompletion());
      });
    } else if (!shouldRun && _ticker != null) {
      _ticker!.cancel();
      _ticker = null;
    }
  }

  Future<void> _checkBatteryHint() async {
    if (_batteryChecked) return;
    _batteryChecked = true;
    final repo = ref.read(focusRepositoryProvider);
    if (await repo.batteryHintSeen()) return;
    await repo.markBatteryHintSeen();
    if (mounted) setState(() => _showBatteryHint = true);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final fs = ref.watch(focusControllerProvider);
    _syncTicker(fs.active);
    ref.listen<FocusControllerState>(focusControllerProvider, (prev, next) {
      final f = next.justFinished;
      if (f != null && prev?.justFinished?.id != f.id) {
        _ctrl.consumeFinished();
        unawaited(_askNote(f));
      }
      if (next.active case final a? when prev?.active == null) {
        setState(() => _mode = a.mode);
      }
    });

    final access = ref.watch(notificationAccessProvider).value;
    final enabled = ref.watch(settingsProvider.select((s) => s.notificationsEnabled));
    if (enabled && access == NotificationAccess.granted) unawaited(_checkBatteryHint());

    return ModuleScaffold(
      title: l10n.focusTitle,
      hue: ModuleHue.focus,
      slivers: [
        SliverPadding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: Space.page),
          sliver: SliverList.list(
            children: [
              if (fs.notice case final n?) _NoticeCard(notice: n, onClose: _ctrl.clearNotice),
              if (!enabled)
                _InfoBanner(
                  icon: Icons.notifications_off_rounded,
                  message: l10n.focusNotificationsDisabledInApp,
                  actionLabel: l10n.focusOpenSettings,
                  onAction: () => context.push(Routes.settings),
                )
              else if (access == NotificationAccess.denied)
                _InfoBanner(
                  icon: Icons.notifications_off_rounded,
                  message: l10n.focusNotificationsOff,
                  actionLabel: l10n.focusOpenSettings,
                  onAction: () => ref.read(notificationServiceProvider).openSystemSettings(),
                )
              else if (_showBatteryHint)
                _InfoBanner(
                  icon: Icons.battery_saver_rounded,
                  message: l10n.focusBatteryHint,
                  actionLabel: l10n.actionClose,
                  onAction: () => setState(() => _showBatteryHint = false),
                ),
              _ModeSelector(
                value: fs.active?.mode ?? _mode,
                enabled: fs.ready && fs.active == null,
                onChanged: (m) => setState(() => _mode = m),
              ),
              if (fs.active == null && _mode == FocusMode.countdown)
                _CountdownChoices(
                  value: _countdownMinutes,
                  onChanged: (m) => setState(() => _countdownMinutes = m),
                ),
              const SizedBox(height: Space.md),
              _TimerHero(
                state: fs,
                mode: fs.active?.mode ?? _mode,
                countdownMinutes: _countdownMinutes,
              ),
              const SizedBox(height: Space.md),
              _Controls(
                state: fs,
                onStart: () => _ctrl.start(mode: _mode, countdownMinutes: _countdownMinutes),
                onPause: _ctrl.pause,
                onResume: _ctrl.resume,
                onStop: _confirmStop,
                onSkipBreak: _ctrl.skipBreak,
                mode: _mode,
              ),
              const SizedBox(height: Space.md),
              _LinkedTask(
                taskId: fs.active != null && fs.active!.phase != FocusPhase.work
                    ? null
                    : (fs.active?.taskId ?? fs.linkedTaskId),
                enabled: fs.ready && (fs.active == null || fs.active!.phase == FocusPhase.work),
                onPick: () async {
                  final t = await pickTask(context);
                  if (t != null) await _ctrl.linkTask(t.id);
                },
                onUnlink: () => _ctrl.linkTask(null),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(child: SectionHeader(title: l10n.focusTargets)),
        const SliverToBoxAdapter(child: _TargetRings()),
        SliverToBoxAdapter(child: SectionHeader(title: l10n.focusHistory)),
        _HistorySliver(onDelete: _deleteSession),
      ],
    );
  }

  Future<void> _confirmStop() async {
    final l10n = context.l10n;
    final choice = await showDialog<_StopChoice>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.focusStopConfirmTitle),
        content: Text(l10n.focusStopConfirmMessage),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx), child: Text(l10n.actionCancel)),
          TextButton(
            onPressed: () => Navigator.pop(ctx, _StopChoice.discard),
            child: Text(l10n.focusDiscard),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(ctx, _StopChoice.save),
            child: Text(l10n.actionSave),
          ),
        ],
      ),
    );
    if (choice == null) return;
    await _ctrl.stop(save: choice == _StopChoice.save);
  }

  Future<void> _askNote(FinishedSession f) async {
    if (!mounted) return;
    final l10n = context.l10n;
    final controller = TextEditingController();
    final completed = f.outcome == SessionOutcome.completed;
    final note = await showDialog<String>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(completed ? l10n.focusSessionComplete : l10n.focusSessionStopped),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(l10n.focusSessionSummary(ctx.fmt.duration(Duration(seconds: f.activeSeconds)))),
            const SizedBox(height: Space.md),
            TextField(
              controller: controller,
              maxLines: 3,
              minLines: 1,
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                labelText: l10n.focusAddNote,
                hintText: l10n.focusNoteHint,
              ),
            ),
          ],
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx), child: Text(l10n.actionSkip)),
          FilledButton(
            onPressed: () => Navigator.pop(ctx, controller.text.trim()),
            child: Text(l10n.actionSave),
          ),
        ],
      ),
    );
    controller.dispose();
    if (note != null && note.isNotEmpty) await _ctrl.saveNote(f.id, note);
  }

  Future<void> _deleteSession(FocusSessionRow row) async {
    final l10n = context.l10n;
    final ok = await confirmAction(
      context,
      title: l10n.focusDeleteSession,
      message: l10n.focusDeleteConfirm,
      confirmLabel: l10n.actionDelete,
      destructive: true,
    );
    if (!ok) return;
    await _ctrl.deleteSession(row.id);
    if (mounted) showMessage(context, l10n.focusSessionDeleted);
  }
}

class _NoticeCard extends StatelessWidget {
  const _NoticeCard({required this.notice, required this.onClose});
  final FocusNotice notice;
  final VoidCallback onClose;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return _InfoBanner(
      icon: notice == FocusNotice.completedWhileAway
          ? Icons.check_circle_rounded
          : Icons.history_rounded,
      message: notice == FocusNotice.completedWhileAway
          ? l10n.focusCompletedWhileAway
          : l10n.focusRecovered,
      actionLabel: l10n.actionClose,
      onAction: onClose,
    );
  }
}

class _InfoBanner extends StatelessWidget {
  const _InfoBanner({
    required this.icon,
    required this.message,
    required this.actionLabel,
    required this.onAction,
  });
  final IconData icon;
  final String message;
  final String actionLabel;
  final VoidCallback onAction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(bottom: Space.sm),
      child: LuxCard(
        elevated: false,
        accent: ModuleHue.focus.a,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(icon, color: ModuleHue.focus.a, size: 22),
                const SizedBox(width: Space.sm),
                Expanded(child: Text(message, style: context.text.bodyMedium)),
              ],
            ),
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: TextButton(onPressed: onAction, child: Text(actionLabel)),
            ),
          ],
        ),
      ),
    );
  }
}

class _ModeSelector extends StatelessWidget {
  const _ModeSelector({required this.value, required this.enabled, required this.onChanged});
  final FocusMode value;
  final bool enabled;
  final ValueChanged<FocusMode> onChanged;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Semantics(
      label: l10n.focusModeLabel,
      container: true,
      child: Wrap(
        spacing: Space.xs,
        runSpacing: Space.xs,
        children: [
          for (final m in FocusMode.values)
            ChoiceChip(
              label: Text(focusModeLabel(l10n, m)),
              selected: m == value,
              onSelected: enabled ? (_) => onChanged(m) : null,
            ),
        ],
      ),
    );
  }
}

class _CountdownChoices extends StatelessWidget {
  const _CountdownChoices({required this.value, required this.onChanged});
  final int value;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Padding(
      padding: const EdgeInsetsDirectional.only(top: Space.sm),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(l10n.focusDuration, style: context.text.labelLarge),
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
  const _TimerHero({required this.state, required this.mode, required this.countdownMinutes});
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
              : l10n.focusReady)
        : (a.isRunning ? l10n.focusRunning : l10n.focusPaused);
    final clock = AppFormat.clock(shown);
    final phaseLabel = focusPhaseLabel(l10n, phase);
    final semantics = countsDown
        ? l10n.focusTimerSemantics(phaseLabel, clock)
        : l10n.focusTimerSemanticsElapsed(phaseLabel, clock);
    final width = MediaQuery.sizeOf(context).width;
    final size = (width - Space.page * 2 - Space.xl * 2).clamp(200.0, 300.0);

    return LuxCard(
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
                child: Padding(
                  padding: const EdgeInsets.all(Space.xl),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        phaseLabel,
                        style: context.text.titleMedium?.copyWith(color: ModuleHue.focus.a),
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
                            clock,
                            key: const ValueKey('focus-clock'),
                            style: context.text.displayMedium?.copyWith(
                              fontFeatures: const [FontFeature.tabularFigures()],
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: Space.xxs),
                      Text(
                        status,
                        style: context.text.bodyMedium?.copyWith(color: context.lux.ink2),
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
          const SizedBox(height: Space.md),
          if (mode == FocusMode.pomodoro)
            LuxPill(
              label: l10n.focusCycle(
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
                key: const ValueKey('focus-pause'),
                onPressed: onPause,
                icon: const Icon(Icons.pause_rounded),
                label: Text(l10n.actionPause),
              )
            : FilledButton.icon(
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
            TextButton(onPressed: onPick, child: Text(l10n.focusLinkTask)),
        ],
      ),
    );
  }
}

class _TargetRings extends ConsumerWidget {
  const _TargetRings();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final settings = ref.watch(settingsProvider);
    final now = ref.read(clockProvider).now();
    final day = Days.startOfDay(now);
    final week = Days.startOfWeek(now);
    final daily = ref.watch(focusWorkSecondsProvider((day, Days.addDays(day, 1))));
    final weekly = ref.watch(focusWorkSecondsProvider((week, Days.addDays(week, 7))));
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: Space.page),
      child: LuxCard(
        child: Column(
          children: [
            Wrap(
              alignment: WrapAlignment.spaceEvenly,
              spacing: Space.lg,
              runSpacing: Space.lg,
              children: [
                _TargetRing(
                  label: l10n.focusDailyTarget,
                  seconds: daily,
                  targetMinutes: settings.dailyFocusTargetMinutes,
                  ringKey: const ValueKey('focus-daily-ring'),
                ),
                _TargetRing(
                  label: l10n.focusWeeklyTarget,
                  seconds: weekly,
                  targetMinutes: settings.weeklyFocusTargetMinutes,
                  ringKey: const ValueKey('focus-weekly-ring'),
                ),
              ],
            ),
            const SizedBox(height: Space.sm),
            Text(
              l10n.focusTargetCaption,
              style: context.text.bodySmall?.copyWith(color: context.lux.ink3),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class _TargetRing extends StatelessWidget {
  const _TargetRing({
    required this.label,
    required this.seconds,
    required this.targetMinutes,
    required this.ringKey,
  });
  final String label;
  final AsyncValue<int> seconds;
  final int targetMinutes;
  final Key ringKey;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final fmt = context.fmt;
    return SizedBox(
      width: 140,
      child: AsyncValueView<int>(
        value: seconds,
        loadingRows: 1,
        data: (s) {
          final target = targetMinutes <= 0 ? 0 : targetMinutes * 60;
          final ratio = target == 0 ? 0.0 : (s / target).clamp(0.0, 1.0);
          final ofTarget = l10n.dashFocusOfTarget(
            fmt.duration(Duration(seconds: s)),
            fmt.minutes(targetMinutes),
          );
          return Column(
            children: [
              GlowRing(
                key: ringKey,
                value: ratio,
                hue: ModuleHue.focus,
                size: 112,
                stroke: 10,
                semanticsLabel: label,
                semanticsValue: ofTarget,
                child: ExcludeSemantics(
                  child: Text(fmt.percent(ratio), style: context.text.titleMedium),
                ),
              ),
              const SizedBox(height: Space.xs),
              ExcludeSemantics(
                child: Column(
                  children: [
                    Text(label, style: context.text.labelLarge, textAlign: TextAlign.center),
                    Text(
                      ofTarget,
                      style: context.text.bodySmall?.copyWith(color: context.lux.ink2),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _HistorySliver extends ConsumerWidget {
  const _HistorySliver({required this.onDelete});
  final ValueChanged<FocusSessionRow> onDelete;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return SliverAsyncValueView<List<FocusSessionRow>>(
      value: ref.watch(focusHistoryProvider),
      data: (rows) {
        if (rows.isEmpty) {
          return SliverToBoxAdapter(
            child: EmptyState(
              icon: Icons.timer_outlined,
              title: l10n.focusHistory,
              message: l10n.focusNoHistory,
              compact: true,
            ),
          );
        }
        return SliverPadding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: Space.page),
          sliver: SliverList.separated(
            itemCount: rows.length,
            separatorBuilder: (_, _) => const SizedBox(height: Space.xs),
            itemBuilder: (context, i) => _HistoryRow(row: rows[i], onDelete: onDelete),
          ),
        );
      },
    );
  }
}

class _HistoryRow extends StatelessWidget {
  const _HistoryRow({required this.row, required this.onDelete});
  final FocusSessionRow row;
  final ValueChanged<FocusSessionRow> onDelete;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final fmt = context.fmt;
    final mode = FocusMode.values.asNameMap()[row.mode] ?? FocusMode.open;
    final phase = FocusPhase.values.asNameMap()[row.phase] ?? FocusPhase.work;
    final title = phase == FocusPhase.work
        ? focusModeLabel(l10n, mode)
        : focusPhaseLabel(l10n, phase);
    final duration = fmt.duration(Duration(seconds: row.activeSeconds));
    final when = fmt.dateTime(row.startedAt);
    final completed = row.outcome == SessionOutcome.completed.name;
    return LuxCard(
      elevated: false,
      padding: const EdgeInsetsDirectional.fromSTEB(Space.md, Space.sm, Space.xs, Space.sm),
      child: Row(
        children: [
          GlowDot(color: phase == FocusPhase.work ? ModuleHue.focus.a : ModuleHue.habits.a),
          const SizedBox(width: Space.sm),
          Expanded(
            child: Semantics(
              label: l10n.focusHistoryItem(title, duration, when),
              child: ExcludeSemantics(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(
                      spacing: Space.xs,
                      runSpacing: Space.xxs,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Text(title, style: context.text.titleSmall),
                        LuxPill(
                          label: completed
                              ? l10n.focusOutcomeCompleted
                              : l10n.focusOutcomeInterrupted,
                          color: completed ? context.lux.success : context.lux.ink3,
                        ),
                      ],
                    ),
                    const SizedBox(height: 2),
                    Text(
                      '$duration · $when',
                      style: context.text.bodySmall?.copyWith(color: context.lux.ink2),
                    ),
                    if (row.note.isNotEmpty)
                      Padding(
                        padding: const EdgeInsetsDirectional.only(top: Space.xxs),
                        child: Text(
                          row.note,
                          style: context.text.bodyMedium,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
          IconButton(
            tooltip: l10n.focusDeleteSession,
            onPressed: () => onDelete(row),
            icon: const Icon(Icons.delete_outline_rounded),
          ),
        ],
      ),
    );
  }
}
