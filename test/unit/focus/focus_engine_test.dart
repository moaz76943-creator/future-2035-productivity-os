import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/focus/domain/focus_engine.dart';
import 'package:future_os/features/focus/domain/focus_timer_state.dart';

void main() {
  final t0 = DateTime.utc(2026, 11, 16, 10);

  FocusTimerState countdown(int seconds) => FocusEngine.start(
    sessionId: 's1',
    mode: FocusMode.countdown,
    nowUtc: t0,
    plannedSeconds: seconds,
  );

  test('elapsed derives from timestamps, not ticks', () {
    final s = countdown(1500);
    expect(s.elapsed(t0.add(const Duration(minutes: 10))).inMinutes, 10);
    expect(s.remaining(t0.add(const Duration(minutes: 10)))!.inMinutes, 15);
  });

  test('pause freezes elapsed and resume continues', () {
    var s = countdown(1500);
    s = FocusEngine.pause(s, t0.add(const Duration(minutes: 5)));
    expect(s.elapsed(t0.add(const Duration(hours: 3))).inMinutes, 5);
    s = FocusEngine.resume(s, t0.add(const Duration(hours: 3)));
    expect(s.elapsed(t0.add(const Duration(hours: 3, minutes: 2))).inMinutes, 7);
  });

  test('pause and resume are idempotent', () {
    var s = countdown(60);
    final p1 = FocusEngine.pause(s, t0.add(const Duration(seconds: 10)));
    final p2 = FocusEngine.pause(p1, t0.add(const Duration(seconds: 50)));
    expect(p2.accumulatedMs, p1.accumulatedMs);
    s = FocusEngine.resume(p2, t0.add(const Duration(seconds: 60)));
    expect(FocusEngine.resume(s, t0.add(const Duration(seconds: 90))), same(s));
  });

  test('elapsed is capped at planned and clock rollback is clamped', () {
    final s = countdown(60);
    expect(s.elapsed(t0.add(const Duration(hours: 1))).inSeconds, 60);
    expect(s.elapsed(t0.subtract(const Duration(hours: 1))).inSeconds, 0);
  });

  test('completing while app was killed records the exact end moment', () {
    var s = countdown(1500);
    s = FocusEngine.pause(s, t0.add(const Duration(minutes: 5)));
    final resumedAt = t0.add(const Duration(minutes: 20));
    s = FocusEngine.resume(s, resumedAt);
    // Restored from persistence two hours later.
    final restored = FocusTimerState.tryDecode(s.encode())!;
    final f = FocusEngine.finish(restored, t0.add(const Duration(hours: 2)));
    expect(f.outcome, SessionOutcome.completed);
    expect(f.activeSeconds, 1500);
    expect(f.endedAtUtc, resumedAt.add(const Duration(minutes: 20)));
  });

  test('stopping early is interrupted with measured active time', () {
    final s = countdown(1500);
    final f = FocusEngine.finish(s, t0.add(const Duration(minutes: 7)));
    expect(f.outcome, SessionOutcome.interrupted);
    expect(f.activeSeconds, 420);
  });

  test('count-up has no target and completes on stop', () {
    final s = FocusEngine.start(sessionId: 'c', mode: FocusMode.countUp, nowUtc: t0);
    expect(s.remaining(t0), isNull);
    expect(s.isComplete(t0.add(const Duration(days: 1))), isFalse);
    final f = FocusEngine.finish(s, t0.add(const Duration(minutes: 42)));
    expect(f.outcome, SessionOutcome.completed);
    expect(f.activeSeconds, 42 * 60);
  });

  test('countdown requires a positive target', () {
    expect(
      () => FocusEngine.start(sessionId: 'x', mode: FocusMode.countdown, nowUtc: t0),
      throwsArgumentError,
    );
  });

  test('pomodoro cycle: long break after every 4th work phase', () {
    const cfg = PomodoroConfig();
    var cycles = 0;
    final phases = <FocusPhase>[];
    var phase = FocusPhase.work;
    for (var i = 0; i < 8; i++) {
      final s = FocusEngine.start(
        sessionId: '$i',
        mode: FocusMode.pomodoro,
        nowUtc: t0,
        phase: phase,
        plannedSeconds: cfg.secondsFor(phase),
        completedWorkCycles: cycles,
      );
      final n = FocusEngine.nextPomodoroPhase(s, cfg);
      phases.add(n.phase);
      phase = n.phase;
      cycles = n.cycles;
    }
    expect(phases, [
      FocusPhase.shortBreak,
      FocusPhase.work,
      FocusPhase.shortBreak,
      FocusPhase.work,
      FocusPhase.shortBreak,
      FocusPhase.work,
      FocusPhase.longBreak,
      FocusPhase.work,
    ]);
    expect(cycles, 0);
  });

  test('state JSON round-trips and rejects garbage', () {
    final s = countdown(300);
    final d = FocusTimerState.tryDecode(s.encode())!;
    expect(d.encode(), s.encode());
    expect(FocusTimerState.tryDecode('{"v":99}'), isNull);
    expect(FocusTimerState.tryDecode('not json'), isNull);
  });
}
