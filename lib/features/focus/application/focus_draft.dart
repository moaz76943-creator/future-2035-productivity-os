import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/platform/focus_tools.dart';
import '../domain/focus_timer_state.dart';
import 'focus_controller.dart';
import 'focus_prefs.dart';

/// The session the user has set up but not started yet: kind and timer length.
/// Shared by the Focus screen, the immersive screen and flip to focus, so every
/// way of starting uses the same choice.
class FocusDraft {
  const FocusDraft({this.mode = FocusMode.pomodoro, this.countdownMinutes = 25});
  final FocusMode mode;
  final int countdownMinutes;
}

class FocusDraftNotifier extends Notifier<FocusDraft> {
  @override
  FocusDraft build() => const FocusDraft();

  void setMode(FocusMode m) =>
      state = FocusDraft(mode: m, countdownMinutes: state.countdownMinutes);

  void setMinutes(int m) => state = FocusDraft(mode: state.mode, countdownMinutes: m);
}

final focusDraftProvider = NotifierProvider<FocusDraftNotifier, FocusDraft>(FocusDraftNotifier.new);

/// Starts a session from the current draft (no-op while one is active).
Future<void> startFocusFromDraft(WidgetRef ref) {
  final d = ref.read(focusDraftProvider);
  return ref
      .read(focusControllerProvider.notifier)
      .start(mode: d.mode, countdownMinutes: d.countdownMinutes);
}

/// Turns face-down events into start / resume / pause. Only real changes count:
/// the first reading after listening ("face up") never pauses a running session.
class FlipToFocus {
  FlipToFocus(this.ref);
  final WidgetRef ref;
  StreamSubscription<bool>? _sub;
  bool? _last;

  bool get listening => _sub != null;

  void listen() {
    if (_sub != null) return;
    _last = null;
    _sub = ref.read(focusToolsProvider).faceDown.listen((down) => unawaited(_on(down)));
  }

  Future<void> cancel() async {
    final s = _sub;
    _sub = null;
    await s?.cancel();
  }

  Future<void> _on(bool down) async {
    final was = _last;
    _last = down;
    final prefs = ref.read(focusPrefsProvider).value ?? const FocusPrefs();
    if (!prefs.flipToFocus) return;
    final ctrl = ref.read(focusControllerProvider.notifier);
    final a = ref.read(focusControllerProvider).active;
    if (down) {
      if (a == null) {
        await startFocusFromDraft(ref);
      } else if (!a.isRunning) {
        await ctrl.resume();
      }
    } else if (was == true && a != null && a.isRunning) {
      await ctrl.pause();
    }
  }
}
