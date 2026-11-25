import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../app/routing/routes.dart';
import '../../../core/ids.dart';
import '../../../core/providers/core_providers.dart';
import '../../notifications/application/notification_providers.dart';
import '../../notifications/data/notification_service.dart';
import '../../notifications/domain/notification_ids.dart';
import '../../notifications/domain/notification_plan.dart';
import '../../settings/application/settings_providers.dart';
import '../../settings/data/settings_repository.dart';
import '../data/focus_repository.dart';
import '../domain/focus_engine.dart';
import '../domain/focus_timer_state.dart';
import '../domain/end_tone.dart';
import 'focus_providers.dart';

part 'focus_controller/focus_controller_state.dart';
part 'focus_controller/chain.dart';

/// One-time message about what happened while the app was closed.
/// [seriesComplete]: the planned number of focus sessions is done.
enum FocusNotice { recovered, completedWhileAway, seriesComplete }

final focusControllerProvider = NotifierProvider<FocusController, FocusControllerState>(
  FocusController.new,
);

/// Owns the running focus session.
///
/// Elapsed time always comes from wall-clock timestamps in
/// [FocusTimerState]; nothing here counts ticks. Every transition is
/// persisted, finished sessions are recorded through the idempotent
/// [FocusRepository.recordFinished], and all operations are serialized so
/// that a UI tick, an app resume and restore can never record twice.
class FocusController extends Notifier<FocusControllerState> {
  Future<void> _queue = Future.value();
  Timer? _completionTimer;
  Timer? _notificationRetryTimer;
  bool _askedPermission = false;
  late Future<void> restored;

  FocusRepository get _repo => ref.read(focusRepositoryProvider);
  NotificationService get _notifications => ref.read(notificationServiceProvider);
  AppSettings get _settings => ref.read(settingsProvider);
  DateTime get _nowUtc => ref.read(clockProvider).nowUtc();

  PomodoroConfig get _config {
    final s = _settings;
    return PomodoroConfig(
      workMinutes: s.workMinutes,
      shortBreakMinutes: s.shortBreakMinutes,
      longBreakMinutes: s.longBreakMinutes,
      longBreakEvery: s.longBreakEvery,
      rounds: s.sessionRounds,
      skipLastBreak: s.skipLastBreak,
    );
  }

  @override
  FocusControllerState build() {
    ref.onDispose(() {
      _completionTimer?.cancel();
      _notificationRetryTimer?.cancel();
    });
    ref.listen<AppSettings>(settingsProvider, (prev, next) {
      if (prev?.notificationsEnabled != next.notificationsEnabled ||
          prev?.focusSound != next.focusSound ||
          prev?.focusEndTone != next.focusEndTone ||
          prev?.localeTag != next.localeTag) {
        unawaited(_serial(_afterChange));
      }
    });
    restored = _serial(_restore);
    return const FocusControllerState();
  }

  Future<T> _serial<T>(Future<T> Function() op) {
    final c = Completer<T>();
    _queue = _queue.then((_) async {
      try {
        c.complete(await op());
      } on Object catch (e, st) {
        c.completeError(e, st);
      }
    });
    return c.future;
  }

  void _set(FocusControllerState s) {
    if (ref.mounted) state = s;
  }

  /// Read access for the extension parts (state and ref stay protected).
  FocusControllerState get _current => state;
  void _invalidateAccess() {
    if (ref.mounted) ref.invalidate(notificationAccessProvider);
  }

  // ---------------------------------------------------------------------------
  // Restore

  Future<void> _restore() async {
    await Future<void>.value();
    final saved = await _repo.loadActive();
    final pending = await _repo.loadPending();
    if (saved == null) {
      _set(FocusControllerState(ready: true, pending: pending));
      return;
    }
    if (saved.isRunning && saved.isComplete(_nowUtc)) {
      _set(FocusControllerState(ready: true, active: saved, linkedTaskId: saved.taskId));
      await _completeChain(saved);
      final done = state.notice == FocusNotice.seriesComplete;
      _set(
        state.copyWith(
          notice: done ? FocusNotice.seriesComplete : FocusNotice.completedWhileAway,
          clearFinished: true,
        ),
      );
      return;
    }
    _set(
      FocusControllerState(
        ready: true,
        active: saved,
        linkedTaskId: saved.taskId,
        notice: FocusNotice.recovered,
      ),
    );
    await _afterChange();
  }

  // ---------------------------------------------------------------------------
  // Commands

  Future<void> start({required FocusMode mode, int? countdownMinutes}) => _serial(() async {
    if (state.active != null) return;
    final pending = mode == FocusMode.pomodoro ? state.pending : null;
    final phase = pending?.phase ?? FocusPhase.work;
    final planned = switch (mode) {
      FocusMode.pomodoro => _config.secondsFor(phase),
      FocusMode.countdown => (countdownMinutes ?? _settings.workMinutes).clamp(1, 600) * 60,
      FocusMode.countUp || FocusMode.open => null,
    };
    final s = FocusEngine.start(
      sessionId: newId(),
      mode: mode,
      nowUtc: _nowUtc,
      phase: phase,
      plannedSeconds: planned,
      taskId: phase == FocusPhase.work ? state.linkedTaskId : null,
      completedWorkCycles: pending?.cycles ?? 0,
    );
    await _repo.saveActive(s);
    await _repo.clearPending();
    _set(state.copyWith(active: s, clearPending: true, clearNotice: true, clearFinished: true));
    await _afterChange();
    unawaited(_maybeAskPermission());
  });

  Future<void> pause() => _serial(() async {
    final s = state.active;
    if (s == null || !s.isRunning) return;
    if (s.isComplete(_nowUtc)) return _completeChain(s);
    final next = FocusEngine.pause(s, _nowUtc);
    await _repo.saveActive(next);
    _set(state.copyWith(active: next));
    await _afterChange();
  });

  Future<void> resume() => _serial(() async {
    final s = state.active;
    if (s == null || s.isRunning) return;
    final next = FocusEngine.resume(s, _nowUtc);
    await _repo.saveActive(next);
    _set(state.copyWith(active: next, clearNotice: true));
    await _afterChange();
  });

  /// Ends the session early. With [save] the measured time is recorded
  /// (as interrupted when a target was not reached); otherwise discarded.
  Future<FinishedSession?> stop({required bool save}) => _serial(() async {
    final s = state.active;
    if (s == null) return null;
    final now = _nowUtc;
    if (s.isRunning && s.isComplete(now)) {
      await _completeChain(s);
      return state.justFinished;
    }
    FinishedSession? f;
    if (save) {
      f = FocusEngine.finish(s, now);
      await _repo.recordFinished(f);
    } else {
      await _repo.clearActive();
    }
    // After a stopped break the next phase is focus, keeping the cycle.
    PendingPhase? pending;
    if (s.mode == FocusMode.pomodoro && s.phase != FocusPhase.work) {
      final rounds = _config.rounds;
      if (rounds > 0 && s.completedWorkCycles >= rounds) {
        await _repo.clearPending();
      } else {
        pending = PendingPhase(FocusPhase.work, s.completedWorkCycles);
        await _repo.savePending(pending);
      }
    } else {
      await _repo.clearPending();
    }
    _set(
      FocusControllerState(
        ready: true,
        pending: pending,
        linkedTaskId: state.linkedTaskId,
        justFinished: f != null && f.phase == FocusPhase.work ? f : null,
      ),
    );
    await _afterChange();
    return f;
  });

  /// Flow mode: after an open-ended session, a break in proportion to it
  /// ([minutes], usually a fifth of the focus time) counted down as a break.
  Future<void> startFlowBreak(int minutes) => _serial(() async {
    if (state.active != null) return;
    final s = FocusEngine.start(
      sessionId: newId(),
      mode: FocusMode.countdown,
      nowUtc: _nowUtc,
      phase: FocusPhase.shortBreak,
      plannedSeconds: minutes.clamp(1, 60) * 60,
    );
    await _repo.saveActive(s);
    _set(state.copyWith(active: s, clearPending: true, clearNotice: true, clearFinished: true));
    await _afterChange();
  });

  /// Skips the current or upcoming break and starts the next focus phase.
  Future<void> skipBreak() => _serial(() async {
    final s = state.active;
    final cycles = switch ((s, state.pending)) {
      (final a?, _) when a.mode == FocusMode.pomodoro && a.phase != FocusPhase.work =>
        a.completedWorkCycles,
      (null, final p?) when p.phase != FocusPhase.work => p.cycles,
      _ => null,
    };
    if (cycles == null) return;
    if (s != null) await _repo.clearActive();
    // Skipping the final break of a limited series ends the series.
    if (_config.rounds > 0 && cycles >= _config.rounds) {
      await _repo.clearPending();
      _set(
        FocusControllerState(
          ready: true,
          linkedTaskId: state.linkedTaskId,
          notice: FocusNotice.seriesComplete,
        ),
      );
      await _afterChange();
      return;
    }
    final work = FocusEngine.start(
      sessionId: newId(),
      mode: FocusMode.pomodoro,
      nowUtc: _nowUtc,
      plannedSeconds: _config.secondsFor(FocusPhase.work),
      taskId: state.linkedTaskId,
      completedWorkCycles: cycles,
    );
    await _repo.saveActive(work);
    await _repo.clearPending();
    _set(state.copyWith(active: work, clearPending: true, clearFinished: true));
    await _afterChange();
  });

  Future<void> linkTask(String? taskId) => _serial(() async {
    final s = state.active;
    if (s != null && s.phase == FocusPhase.work) {
      final next = taskId == null ? s.copyWith(clearTask: true) : s.copyWith(taskId: taskId);
      await _repo.saveActive(next);
      _set(state.copyWith(active: next));
    }
    _set(taskId == null ? state.copyWith(clearTask: true) : state.copyWith(linkedTaskId: taskId));
  });

  /// Records a completion if the target has been reached. Called by the UI
  /// tick, on app resume and by the internal completion timer.
  Future<void> checkCompletion() => _serial(() async {
    final s = state.active;
    if (s == null || !s.isRunning || !s.isComplete(_nowUtc)) return;
    await _completeChain(s);
  });

  Future<void> onAppResumed() async {
    await checkCompletion();
    ref.invalidate(notificationAccessProvider);
  }

  Future<void> saveNote(String sessionId, String note) => _repo.updateNote(sessionId, note);

  Future<void> deleteSession(String sessionId) => _repo.deleteSession(sessionId);

  void clearNotice() => _set(state.copyWith(clearNotice: true));

  void consumeFinished() => _set(state.copyWith(clearFinished: true));

  /// Keeps the phase-end notification and the in-process completion timer
  /// in step with the current state.
  Future<void> _afterChange() async {
    _completionTimer?.cancel();
    _completionTimer = null;
    _notificationRetryTimer?.cancel();
    _notificationRetryTimer = null;
    final s = state.active;
    final now = _nowUtc;
    final end = s?.expectedEndUtc(now);
    if (s == null || end == null) {
      await _notifications.cancel(NotificationIds.focus);
      return;
    }
    final settings = _settings;
    _completionTimer = Timer(
      end.difference(now) + const Duration(milliseconds: 200),
      () => unawaited(checkCompletion()),
    );
    if (!settings.notificationsEnabled) {
      await _notifications.cancel(NotificationIds.focus);
      return;
    }
    final scheduled = await _notifications.schedule(
      focusEndNotification(s, end, settings),
      silent: !settings.focusSound,
    );
    if (!scheduled && ref.mounted) {
      // If the OS rejects the alert, retry while the same focus phase remains
      // active. The persisted timer state is still authoritative on restart.
      _notificationRetryTimer = Timer(
        const Duration(seconds: 30),
        () => unawaited(_serial(_afterChange)),
      );
    }
  }
}

/// The localized alert for the end of the current phase.
PlannedNotification focusEndNotification(FocusTimerState s, DateTime endUtc, AppSettings settings) {
  final l10n = notificationL10n(settings);
  final (title, body) = switch ((s.mode, s.phase)) {
    (FocusMode.pomodoro, FocusPhase.work) => (l10n.notifFocusDoneTitle, l10n.notifFocusDoneBody),
    (FocusMode.pomodoro, _) => (l10n.notifBreakDoneTitle, l10n.notifBreakDoneBody),
    _ => (l10n.notifFocusDoneTitle, l10n.notifTimerDoneBody),
  };
  return PlannedNotification(
    id: NotificationIds.focus,
    channel: NotificationChannelKind.focus,
    title: title,
    body: body,
    at: endUtc,
    payload: Routes.focus,
    tone: EndTone.byName(settings.focusEndTone).resource,
  );
}
