part of '../focus_controller.dart';

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
