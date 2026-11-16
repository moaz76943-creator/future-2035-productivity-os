import 'dart:convert';

enum FocusMode { pomodoro, countdown, countUp, open }

enum FocusPhase { work, shortBreak, longBreak }

enum FocusStatus { running, paused }

/// Immutable snapshot of an active focus session.
///
/// Elapsed time is derived from wall-clock timestamps, never from a
/// decremented counter, so the value is correct after the app is
/// backgrounded, killed and restored. The state is persisted as JSON on
/// every transition.
class FocusTimerState {
  const FocusTimerState({
    required this.sessionId,
    required this.mode,
    required this.phase,
    required this.status,
    required this.startedAtUtc,
    required this.accumulatedMs,
    this.segmentStartedAtUtc,
    this.plannedSeconds,
    this.taskId,
    this.projectId,
    this.completedWorkCycles = 0,
  });

  final String sessionId;
  final FocusMode mode;
  final FocusPhase phase;
  final FocusStatus status;
  final DateTime startedAtUtc;

  /// Active milliseconds accumulated before the current running segment.
  final int accumulatedMs;

  /// When the current running segment began; null while paused.
  final DateTime? segmentStartedAtUtc;

  /// Planned length; null for count-up and open-ended sessions.
  final int? plannedSeconds;
  final String? taskId;
  final String? projectId;

  /// Work phases completed in the current pomodoro cycle.
  final int completedWorkCycles;

  bool get isRunning => status == FocusStatus.running;
  bool get hasTarget => plannedSeconds != null;

  /// Elapsed active time. If the wall clock moved backwards, the current
  /// segment contributes zero rather than a negative value.
  Duration elapsed(DateTime nowUtc) {
    var ms = accumulatedMs;
    final seg = segmentStartedAtUtc;
    if (status == FocusStatus.running && seg != null) {
      final delta = nowUtc.difference(seg).inMilliseconds;
      if (delta > 0) ms += delta;
    }
    final planned = plannedSeconds;
    if (planned != null && ms > planned * 1000) ms = planned * 1000;
    return Duration(milliseconds: ms);
  }

  Duration? remaining(DateTime nowUtc) {
    final planned = plannedSeconds;
    if (planned == null) return null;
    final left = Duration(seconds: planned) - elapsed(nowUtc);
    return left.isNegative ? Duration.zero : left;
  }

  /// Progress 0..1 for targeted sessions, null otherwise.
  double? progress(DateTime nowUtc) {
    final planned = plannedSeconds;
    if (planned == null || planned == 0) return null;
    return (elapsed(nowUtc).inMilliseconds / (planned * 1000)).clamp(0.0, 1.0);
  }

  bool isComplete(DateTime nowUtc) {
    final planned = plannedSeconds;
    return planned != null &&
        elapsed(nowUtc).inMilliseconds >= planned * 1000;
  }

  /// The wall-clock moment the target will be reached if left running.
  DateTime? expectedEndUtc(DateTime nowUtc) {
    if (!isRunning) return null;
    final r = remaining(nowUtc);
    return r == null ? null : nowUtc.add(r);
  }

  /// The exact moment the target was reached (for sessions completed while
  /// the app was not running).
  DateTime? completionMomentUtc() {
    final planned = plannedSeconds;
    final seg = segmentStartedAtUtc;
    if (planned == null || seg == null || !isRunning) return null;
    final leftMs = planned * 1000 - accumulatedMs;
    return seg.add(Duration(milliseconds: leftMs < 0 ? 0 : leftMs));
  }

  FocusTimerState copyWith({
    FocusStatus? status,
    int? accumulatedMs,
    DateTime? segmentStartedAtUtc,
    bool clearSegment = false,
    String? taskId,
    bool clearTask = false,
  }) {
    return FocusTimerState(
      sessionId: sessionId,
      mode: mode,
      phase: phase,
      status: status ?? this.status,
      startedAtUtc: startedAtUtc,
      accumulatedMs: accumulatedMs ?? this.accumulatedMs,
      segmentStartedAtUtc: clearSegment
          ? null
          : (segmentStartedAtUtc ?? this.segmentStartedAtUtc),
      plannedSeconds: plannedSeconds,
      taskId: clearTask ? null : (taskId ?? this.taskId),
      projectId: projectId,
      completedWorkCycles: completedWorkCycles,
    );
  }

  Map<String, Object?> toJson() => {
        'v': 1,
        'sessionId': sessionId,
        'mode': mode.name,
        'phase': phase.name,
        'status': status.name,
        'startedAtUtc': startedAtUtc.toIso8601String(),
        'accumulatedMs': accumulatedMs,
        'segmentStartedAtUtc': segmentStartedAtUtc?.toIso8601String(),
        'plannedSeconds': plannedSeconds,
        'taskId': taskId,
        'projectId': projectId,
        'completedWorkCycles': completedWorkCycles,
      };

  String encode() => jsonEncode(toJson());

  static FocusTimerState? tryDecode(String? source) {
    if (source == null || source.isEmpty) return null;
    try {
      final j = jsonDecode(source) as Map<String, Object?>;
      if (j['v'] != 1) return null;
      return FocusTimerState(
        sessionId: j['sessionId']! as String,
        mode: FocusMode.values.byName(j['mode']! as String),
        phase: FocusPhase.values.byName(j['phase']! as String),
        status: FocusStatus.values.byName(j['status']! as String),
        startedAtUtc: DateTime.parse(j['startedAtUtc']! as String).toUtc(),
        accumulatedMs: j['accumulatedMs']! as int,
        segmentStartedAtUtc: switch (j['segmentStartedAtUtc']) {
          final String s => DateTime.parse(s).toUtc(),
          _ => null,
        },
        plannedSeconds: j['plannedSeconds'] as int?,
        taskId: j['taskId'] as String?,
        projectId: j['projectId'] as String?,
        completedWorkCycles: (j['completedWorkCycles'] as int?) ?? 0,
      );
    } on Object {
      return null;
    }
  }
}
