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
import 'focus_providers.dart';

/// One-time message about what happened while the app was closed.
enum FocusNotice { recovered, completedWhileAway }

class FocusControllerState {
  const FocusControllerState({
    this.ready = false,
    this.active,
    this.pending,
    this.linkedTaskId,
    this.notice,
    this.justFinished,
  });

  /// False until the persisted state has been restored.
  final bool ready;
  final FocusTimerState? active;

  /// Pomodoro phase waiting to start when no timer runs.
  final PendingPhase? pending;

  /// Task chosen for the next (or current) work session.
  final String? linkedTaskId;
  final FocusNotice? notice;

  /// A session that just ended in the foreground; the screen offers a note.
  final FinishedSession? justFinished;

  FocusControllerState copyWith({
    bool? ready,
    FocusTimerState? active,
    bool clearActive = false,
    PendingPhase? pending,
    bool clearPending = false,
    String? linkedTaskId,
    bool clearTask = false,
    FocusNotice? notice,
    bool clearNotice = false,
    FinishedSession? justFinished,
    bool clearFinished = false,
  }) => FocusControllerState(
    ready: ready ?? this.ready,
    active: clearActive ? null : (active ?? this.active),
    pending: clearPending ? null : (pending ?? this.pending),
    linkedTaskId: clearTask ? null : (linkedTaskId ?? this.linkedTaskId),
    notice: clearNotice ? null : (notice ?? this.notice),
    justFinished: clearFinished ? null : (justFinished ?? this.justFinished),
  );
}

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
    );
  }

  @override
  FocusControllerState build() {
    ref.onDispose(() => _completionTimer?.cancel());
    ref.listen<AppSettings>(settingsProvider, (prev, next) {
      if (prev?.notificationsEnabled != next.notificationsEnabled ||
          prev?.focusSound != next.focusSound ||
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
      _set(state.copyWith(notice: FocusNotice.completedWhileAway, clearFinished: true));
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
      pending = PendingPhase(
        FocusPhase.work,
        s.phase == FocusPhase.longBreak ? 0 : s.completedWorkCycles,
      );
      await _repo.savePending(pending);
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

  /// Skips the current or upcoming break and starts the next focus phase.
  Future<void> skipBreak() => _serial(() async {
    final s = state.active;
    final cycles = switch ((s, state.pending)) {
      (final a?, _) when a.mode == FocusMode.pomodoro && a.phase != FocusPhase.work =>
        a.phase == FocusPhase.longBreak ? 0 : a.completedWorkCycles,
      (null, final p?) when p.phase != FocusPhase.work =>
        p.phase == FocusPhase.longBreak ? 0 : p.cycles,
      _ => null,
    };
    if (cycles == null) return;
    if (s != null) await _repo.clearActive();
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
    final auto = _settings.autoStartBreaks;
    for (var guard = 0; guard < 64; guard++) {
      final f = FocusEngine.finish(s, now);
      await _repo.recordFinished(f);
      if (f.phase == FocusPhase.work) lastWork = f;
      if (s.mode != FocusMode.pomodoro) {
        await _repo.clearPending();
        _set(
          FocusControllerState(
            ready: true,
            linkedTaskId: state.linkedTaskId,
            justFinished: lastWork,
          ),
        );
        await _afterChange();
        return;
      }
      final next = FocusEngine.nextPomodoroPhase(s, _config);
      if (next.phase != FocusPhase.work && auto) {
        final brk = FocusEngine.start(
          sessionId: newId(),
          mode: FocusMode.pomodoro,
          nowUtc: f.endedAtUtc,
          phase: next.phase,
          plannedSeconds: _config.secondsFor(next.phase),
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
            linkedTaskId: state.linkedTaskId,
            justFinished: lastWork,
          ),
        );
        await _afterChange();
        return;
      }
      final pending = PendingPhase(next.phase, next.cycles);
      await _repo.savePending(pending);
      _set(
        FocusControllerState(
          ready: true,
          pending: pending,
          linkedTaskId: state.linkedTaskId,
          justFinished: lastWork,
        ),
      );
      await _afterChange();
      return;
    }
  }

  /// Keeps the phase-end notification and the in-process completion timer
  /// in step with the current state.
  Future<void> _afterChange() async {
    _completionTimer?.cancel();
    _completionTimer = null;
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
    await _notifications.schedule(
      focusEndNotification(s, end, settings),
      silent: !settings.focusSound,
    );
  }

  Future<void> _maybeAskPermission() async {
    if (_askedPermission || !_settings.notificationsEnabled) return;
    _askedPermission = true;
    final svc = _notifications;
    if (await svc.access() == NotificationAccess.denied) {
      await svc.requestPermission();
      if (ref.mounted) ref.invalidate(notificationAccessProvider);
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
  );
}
