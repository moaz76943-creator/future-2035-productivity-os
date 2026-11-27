part of '../focus_screen.dart';

class _Controls extends StatelessWidget {
  const _Controls({
    required this.state,
    required this.mode,
    required this.onStart,
    required this.onPause,
    required this.onResume,
    required this.onStop,
    required this.onSkipBreak,
  });
  final FocusControllerState state;
  final FocusMode mode;
  final VoidCallback onStart;
  final VoidCallback onPause;
  final VoidCallback onResume;
  final VoidCallback onStop;
  final VoidCallback onSkipBreak;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final a = state.active;
    final buttons = <Widget>[];
    if (!state.ready) {
      buttons.add(
        FilledButton.icon(
          style: focusTealButton,
          onPressed: null,
          icon: const Icon(Icons.play_arrow_rounded),
          label: Text(l10n.actionStart),
        ),
      );
    } else if (a == null) {
      final pending = mode == FocusMode.pomodoro ? state.pending : null;
      final breakNext = pending != null && pending.phase != FocusPhase.work;
      buttons.add(
        FilledButton.icon(
          style: focusTealButton,
          key: const ValueKey('focus-start'),
          onPressed: onStart,
          icon: const Icon(Icons.play_arrow_rounded),
          label: Text(
            breakNext
                ? l10n.focusStartBreak
                : (pending != null ? l10n.focusStartNext : l10n.actionStart),
          ),
        ),
      );
      if (breakNext) {
        buttons.add(
          OutlinedButton.icon(
            onPressed: onSkipBreak,
            icon: const Icon(Icons.skip_next_rounded),
            label: Text(l10n.focusSkipBreak),
          ),
        );
      }
    } else {
      buttons.add(
        a.isRunning
            ? FilledButton.icon(
          style: focusTealButton,
                key: const ValueKey('focus-pause'),
                onPressed: onPause,
                icon: const Icon(Icons.pause_rounded),
                label: Text(l10n.actionPause),
              )
            : FilledButton.icon(
          style: focusTealButton,
                key: const ValueKey('focus-resume'),
                onPressed: onResume,
                icon: const Icon(Icons.play_arrow_rounded),
                label: Text(l10n.actionResume),
              ),
      );
      buttons.add(
        OutlinedButton.icon(
          key: const ValueKey('focus-stop'),
          onPressed: onStop,
          icon: const Icon(Icons.stop_rounded),
          label: Text(l10n.actionStop),
        ),
      );
      if (a.mode == FocusMode.pomodoro && a.phase != FocusPhase.work) {
        buttons.add(
          TextButton.icon(
            onPressed: onSkipBreak,
            icon: const Icon(Icons.skip_next_rounded),
            label: Text(l10n.focusSkipBreak),
          ),
        );
      }
    }
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: Space.sm,
      runSpacing: Space.sm,
      children: [
        for (final b in buttons)
          ConstrainedBox(
            constraints: const BoxConstraints(minHeight: kMinTouchTarget, minWidth: 120),
            child: b,
          ),
      ],
    );
  }
}
