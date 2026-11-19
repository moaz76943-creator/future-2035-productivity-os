part of '../focus_screen.dart';

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

    final soundsOn = ref.watch(soundsControllerProvider.select((m) => m.playing));
    return ModuleScaffold(
      title: l10n.focusTitle,
      hue: ModuleHue.focus,
      actions: [
        IconButton(
          key: const Key('focusSounds'),
          tooltip: l10n.soundsTitle,
          isSelected: soundsOn,
          icon: const Icon(Icons.water_drop_outlined),
          selectedIcon: const Icon(Icons.graphic_eq_rounded),
          onPressed: () => context.push(Routes.sounds),
        ),
      ],
      slivers: [
        SliverPadding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: Space.page),
          sliver: SliverList.list(
            children: [
              if (fs.notice case final n?) _NoticeCard(notice: n, onClose: _ctrl.clearNotice),
              _ModeSelector(
                value: fs.active?.mode ?? _mode,
                enabled: fs.ready && fs.active == null,
                onChanged: (m) => setState(() => _mode = m),
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
              // Permission and battery hints sit below the controls: placed above the timer they pushed
              // Start below the fold on a 412x915 phone.
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
              const SizedBox(height: Space.md),
              // The plan sits under Start: the timer and its button stay above the fold.
              if ((fs.active?.mode ?? _mode) == FocusMode.pomodoro)
                Padding(
                  padding: const EdgeInsets.only(bottom: Space.md),
                  child: SessionPlanCard(locked: !fs.ready),
                )
              else if (fs.active == null && _mode == FocusMode.countdown)
                Padding(
                  padding: const EdgeInsets.only(bottom: Space.md),
                  child: _CountdownChoices(
                    value: _countdownMinutes,
                    onChanged: (m) => setState(() => _countdownMinutes = m),
                  ),
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
    // The dialog owns its controller: disposing it here, as soon as showDialog
    // returns, crashed the still-animating exit transition.
    final note = await showDialog<String>(
      context: context,
      builder: (ctx) => _SessionNoteDialog(session: f),
    );
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
      icon: switch (notice) {
        FocusNotice.recovered => Icons.history_rounded,
        FocusNotice.completedWhileAway => Icons.check_circle_rounded,
        FocusNotice.seriesComplete => Icons.emoji_events_rounded,
      },
      message: switch (notice) {
        FocusNotice.recovered => l10n.focusRecovered,
        FocusNotice.completedWhileAway => l10n.focusCompletedWhileAway,
        FocusNotice.seriesComplete => l10n.focusSeriesComplete,
      },
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
