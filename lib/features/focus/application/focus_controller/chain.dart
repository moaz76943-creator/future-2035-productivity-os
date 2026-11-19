part of '../focus_controller.dart';

extension FocusChain on FocusController {
  // ---------------------------------------------------------------------------
  // Internals

  /// Records [s] as completed at its completion moment, then follows the
  /// pomodoro cycle. Auto-started breaks begin at the moment the previous
  /// phase ended, so a chain that elapsed while the app was closed is
  /// reconstructed exactly.
  Future<void> _completeChain(FocusTimerState start) async {
    var s = start;
    FinishedSession? lastWork;
    final now = _nowUtc;
    final autoBreaks = _settings.autoStartBreaks;
    final autoFocus = _settings.autoStartFocus;
    for (var guard = 0; guard < 400; guard++) {
      final f = FocusEngine.finish(s, now);
      await _repo.recordFinished(f);
      if (f.phase == FocusPhase.work) lastWork = f;
      if (s.mode != FocusMode.pomodoro) {
        await _repo.clearPending();
        _set(
          FocusControllerState(
            ready: true,
            linkedTaskId: _current.linkedTaskId,
            justFinished: lastWork,
          ),
        );
        await _afterChange();
        return;
      }
      final next = FocusEngine.nextPomodoroPhase(s, _config);
      final nextPhase = next.phase;
      if (nextPhase == null) {
        // Planned series finished.
        await _repo.clearPending();
        _set(
          FocusControllerState(
            ready: true,
            linkedTaskId: _current.linkedTaskId,
            justFinished: lastWork,
            notice: FocusNotice.seriesComplete,
          ),
        );
        await _afterChange();
        return;
      }
      final auto = nextPhase == FocusPhase.work ? autoFocus : autoBreaks;
      if (auto) {
        final brk = FocusEngine.start(
          sessionId: newId(),
          mode: FocusMode.pomodoro,
          nowUtc: f.endedAtUtc,
          phase: nextPhase,
          plannedSeconds: _config.secondsFor(nextPhase),
          taskId: nextPhase == FocusPhase.work ? _current.linkedTaskId : null,
          completedWorkCycles: next.cycles,
        );
        if (brk.isComplete(now)) {
          s = brk;
          continue;
        }
        await _repo.saveActive(brk);
        await _repo.clearPending();
        _set(
          FocusControllerState(
            ready: true,
            active: brk,
            linkedTaskId: _current.linkedTaskId,
            justFinished: lastWork,
          ),
        );
        await _afterChange();
        return;
      }
      final pending = PendingPhase(nextPhase, next.cycles);
      await _repo.savePending(pending);
      _set(
        FocusControllerState(
          ready: true,
          pending: pending,
          linkedTaskId: _current.linkedTaskId,
          justFinished: lastWork,
        ),
      );
      await _afterChange();
      return;
    }
  }

  Future<void> _maybeAskPermission() async {
    if (_askedPermission || !_settings.notificationsEnabled) return;
    _askedPermission = true;
    final svc = _notifications;
    if (await svc.access() == NotificationAccess.denied) {
      await svc.requestPermission();
      _invalidateAccess();
    }
  }
}
