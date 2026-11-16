import 'focus_timer_state.dart';

class PomodoroConfig {
  const PomodoroConfig({
    this.workMinutes = 25,
    this.shortBreakMinutes = 5,
    this.longBreakMinutes = 15,
    this.longBreakEvery = 4,
  });

  final int workMinutes;
  final int shortBreakMinutes;
  final int longBreakMinutes;
  final int longBreakEvery;

  int secondsFor(FocusPhase phase) => switch (phase) {
    FocusPhase.work => workMinutes * 60,
    FocusPhase.shortBreak => shortBreakMinutes * 60,
    FocusPhase.longBreak => longBreakMinutes * 60,
  };
}

enum SessionOutcome { completed, interrupted }

/// What should be persisted when a session ends.
class FinishedSession {
  const FinishedSession({
    required this.id,
    required this.mode,
    required this.phase,
    required this.plannedSeconds,
    required this.activeSeconds,
    required this.startedAtUtc,
    required this.endedAtUtc,
    required this.outcome,
    this.taskId,
    this.projectId,
  });

  final String id;
  final FocusMode mode;
  final FocusPhase phase;
  final int? plannedSeconds;
  final int activeSeconds;
  final DateTime startedAtUtc;
  final DateTime endedAtUtc;
  final SessionOutcome outcome;
  final String? taskId;
  final String? projectId;
}

/// Pure state transitions for the focus timer. No I/O, fully testable.
abstract final class FocusEngine {
  static FocusTimerState start({
    required String sessionId,
    required FocusMode mode,
    required DateTime nowUtc,
    FocusPhase phase = FocusPhase.work,
    int? plannedSeconds,
    String? taskId,
    String? projectId,
    int completedWorkCycles = 0,
  }) {
    final needsTarget =
        mode == FocusMode.pomodoro || mode == FocusMode.countdown;
    if (needsTarget && (plannedSeconds == null || plannedSeconds <= 0)) {
      throw ArgumentError.value(plannedSeconds, 'plannedSeconds');
    }
    return FocusTimerState(
      sessionId: sessionId,
      mode: mode,
      phase: phase,
      status: FocusStatus.running,
      startedAtUtc: nowUtc,
      accumulatedMs: 0,
      segmentStartedAtUtc: nowUtc,
      plannedSeconds: needsTarget ? plannedSeconds : null,
      taskId: taskId,
      projectId: projectId,
      completedWorkCycles: completedWorkCycles,
    );
  }

  static FocusTimerState pause(FocusTimerState s, DateTime nowUtc) {
    if (!s.isRunning) return s;
    return s.copyWith(
      status: FocusStatus.paused,
      accumulatedMs: s.elapsed(nowUtc).inMilliseconds,
      clearSegment: true,
    );
  }

  static FocusTimerState resume(FocusTimerState s, DateTime nowUtc) {
    if (s.isRunning) return s;
    return s.copyWith(status: FocusStatus.running, segmentStartedAtUtc: nowUtc);
  }

  /// Ends the session. A targeted session that reached its target is
  /// `completed`; anything stopped early is `interrupted`. Open-ended and
  /// count-up sessions stopped by the user are `completed`.
  static FinishedSession finish(FocusTimerState s, DateTime nowUtc) {
    final reached = s.isComplete(nowUtc);
    final endedAt = reached ? (s.completionMomentUtc() ?? nowUtc) : nowUtc;
    final outcome = s.hasTarget
        ? (reached ? SessionOutcome.completed : SessionOutcome.interrupted)
        : SessionOutcome.completed;
    return FinishedSession(
      id: s.sessionId,
      mode: s.mode,
      phase: s.phase,
      plannedSeconds: s.plannedSeconds,
      activeSeconds: s.elapsed(nowUtc).inSeconds,
      startedAtUtc: s.startedAtUtc,
      endedAtUtc: endedAt.isBefore(s.startedAtUtc) ? s.startedAtUtc : endedAt,
      outcome: outcome,
      taskId: s.taskId,
      projectId: s.projectId,
    );
  }

  /// Which pomodoro phase follows [s] once it completes.
  static ({FocusPhase phase, int cycles}) nextPomodoroPhase(
    FocusTimerState s,
    PomodoroConfig config,
  ) {
    if (s.phase == FocusPhase.work) {
      final cycles = s.completedWorkCycles + 1;
      final long = cycles % config.longBreakEvery == 0;
      return (
        phase: long ? FocusPhase.longBreak : FocusPhase.shortBreak,
        cycles: cycles,
      );
    }
    final cycles = s.phase == FocusPhase.longBreak ? 0 : s.completedWorkCycles;
    return (phase: FocusPhase.work, cycles: cycles);
  }
}
