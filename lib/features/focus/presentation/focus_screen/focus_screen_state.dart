part of '../focus_screen.dart';

class _FocusScreenState extends ConsumerState<FocusScreen> with WidgetsBindingObserver {
  Timer? _ticker;
  late final FlipToFocus _flip = FlipToFocus(ref);

  // The set-up session lives in a provider so flip and immersive start the same one.
  FocusMode get _mode => ref.read(focusDraftProvider).mode;
  int get _countdownMinutes => ref.read(focusDraftProvider).countdownMinutes;
  FocusDraftNotifier get _draft => ref.read(focusDraftProvider.notifier);
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
        if (s.active case final a?) _draft.setMode(a.mode);
        final initial = widget.initialTaskId;
        if (initial != null && s.active == null) unawaited(ctrl.linkTask(initial));
      }),
    );
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _ticker?.cancel();
    unawaited(_flip.cancel());
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

  /// Flip to focus while this tab is the visible screen (not under another page).
  void _syncFlip(bool on) {
    final visible =
        TickerMode.valuesOf(context).enabled && (ModalRoute.of(context)?.isCurrent ?? true);
    if (on && visible) {
      _flip.listen();
    } else if (_flip.listening) {
      unawaited(_flip.cancel());
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
    ref.watch(focusDraftProvider);
    _syncFlip(ref.watch(focusPrefsProvider).value?.flipToFocus ?? false);
    ref.listen<FocusControllerState>(focusControllerProvider, (prev, next) {
      final f = next.justFinished;
      if (f != null && prev?.justFinished?.id != f.id) {
        _ctrl.consumeFinished();
        unawaited(_askNote(f));
      }
      if (next.active case final a? when prev?.active == null) {
        _draft.setMode(a.mode);
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
          key: const Key('focusImmersiveButton'),
          tooltip: l10n.focusImmersive,
          icon: const Icon(Icons.fullscreen_rounded),
          onPressed: () => context.push(Routes.focusImmersive),
        ),
        // A word instead of a bare icon: the label is the app's own translation of "Sounds".
        Padding(
          padding: const EdgeInsetsDirectional.only(end: Space.sm),
          child: TextButton.icon(
            key: const Key('focusSounds'),
            icon: Icon(soundsOn ? Icons.graphic_eq_rounded : Icons.water_drop_outlined, size: 20),
            label: Text(l10n.soundsTitle),
            onPressed: () => context.push(Routes.sounds),
          ),
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
                onChanged: (m) => _draft.setMode(m),
              ),
              const SizedBox(height: Space.md),
              _TimerHero(
                key: const Key('focusTimerHero'),
                state: fs,
                mode: fs.active?.mode ?? _mode,
                countdownMinutes: _countdownMinutes,
                onAdjust: fs.ready && fs.active == null
                    ? () => showFocusTimeSheet(
                        context,
                        mode: _mode,
                        countdownMinutes: _countdownMinutes,
                        onMode: (m) => _draft.setMode(m),
                        onCountdown: (m) => _draft.setMinutes(m),
                      )
                    : null,
              ),
              const SizedBox(height: Space.md),
              _Controls(
                state: fs,
                onStart: () => startFocusFromDraft(ref),
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
                    onChanged: (m) => _draft.setMinutes(m),
                  ),
                ),
            ],
          ),
        ),
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
    _offerFlowBreak(f);
  }

  /// Flow timer: no bell cut the session short, so the break follows the
  /// focus that was done: a fifth of it (25 min of flow → 5 min of rest).
  void _offerFlowBreak(FinishedSession f) {
    if (!mounted || (f.mode != FocusMode.countUp && f.mode != FocusMode.open)) return;
    if (f.activeSeconds < 5 * 60) return;
    final minutes = flowBreakMinutes(f.activeSeconds);
    final messenger = ScaffoldMessenger.of(context);
    messenger.showSnackBar(
      SnackBar(
        key: const Key('flowBreakOffer'),
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 12),
        content: Text(context.l10n.focusFlowBreakOffer(context.fmt.number(minutes))),
        action: SnackBarAction(
          label: context.l10n.focusFlowBreakStart,
          onPressed: () => unawaited(_ctrl.startFlowBreak(minutes)),
        ),
      ),
    );
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
