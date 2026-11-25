import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/tokens.dart';
import '../../../core/platform/focus_tools.dart';
import '../../../core/providers/core_providers.dart';
import '../../settings/application/settings_providers.dart';
import '../../sounds/domain/nature_sound.dart';
import '../../sounds/presentation/widgets/sound_art.dart';
import '../application/focus_controller.dart';
import '../application/focus_prefs.dart';
import '../domain/focus_timer_state.dart';
import 'focus_screen.dart' show focusPhaseLabel;

/// Full-screen focus: a dim nature photo (or pure black for AMOLED), one big
/// clock, nothing else. Tap to show the controls. With "flip to focus", putting
/// the phone face down starts or resumes the timer and lifting it pauses.
class ImmersiveFocusScreen extends ConsumerStatefulWidget {
  const ImmersiveFocusScreen({super.key});

  @override
  ConsumerState<ImmersiveFocusScreen> createState() => _ImmersiveFocusScreenState();
}

class _ImmersiveFocusScreenState extends ConsumerState<ImmersiveFocusScreen> {
  Timer? _tick;
  Timer? _hide;
  StreamSubscription<bool>? _flip;
  bool _controls = true;
  late final FocusTools _tools = ref.read(focusToolsProvider);

  @override
  void initState() {
    super.initState();
    unawaited(SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky));
    unawaited(_tools.keepAwake(true));
    _tick = Timer.periodic(const Duration(seconds: 1), (_) {
      if (mounted) setState(() {});
    });
    _flip = _tools.faceDown.listen(_onFlip);
    _scheduleHide();
  }

  @override
  void dispose() {
    _tick?.cancel();
    _hide?.cancel();
    unawaited(_flip?.cancel());
    unawaited(_tools.keepAwake(false));
    unawaited(SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge));
    super.dispose();
  }

  Future<void> _onFlip(bool down) async {
    final prefs = ref.read(focusPrefsProvider).value ?? const FocusPrefs();
    if (!prefs.flipToFocus) return;
    final ctrl = ref.read(focusControllerProvider.notifier);
    final a = ref.read(focusControllerProvider).active;
    if (down) {
      if (a == null) {
        await ctrl.start(mode: FocusMode.pomodoro);
      } else if (!a.isRunning) {
        await ctrl.resume();
      }
    } else if (a != null && a.isRunning) {
      await ctrl.pause();
    }
  }

  void _scheduleHide() {
    _hide?.cancel();
    _hide = Timer(const Duration(seconds: 4), () {
      final running = ref.read(focusControllerProvider).active?.isRunning ?? false;
      if (mounted && running) setState(() => _controls = false);
    });
  }

  void _showControls() {
    setState(() => _controls = true);
    _scheduleHide();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final fs = ref.watch(focusControllerProvider);
    final prefs = ref.watch(focusPrefsProvider).value ?? const FocusPrefs();
    final settings = ref.watch(settingsProvider);
    final now = ref.read(clockProvider).nowUtc();
    final a = fs.active;
    final ctrl = ref.read(focusControllerProvider.notifier);

    final shown = a == null
        ? Duration(minutes: settings.workMinutes)
        : (a.remaining(now) ?? a.elapsed(now));
    final countsDown = a == null || a.hasTarget;
    final minutes = countsDown ? (shown.inSeconds / 60).ceil() : shown.inMinutes;
    final clock = prefs.calmPacing
        ? l10n.focusMinutesShort(context.fmt.number(minutes))
        : AppFormat.clock(shown);
    final phase = focusPhaseLabel(l10n, a?.phase ?? FocusPhase.work);
    final scene = NatureSound.values.asNameMap()[prefs.immersiveScene] ?? NatureSound.night;
    const white = Colors.white;

    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        key: const Key('immersiveSurface'),
        behavior: HitTestBehavior.opaque,
        onTap: _showControls,
        child: Stack(
          fit: StackFit.expand,
          children: [
            if (!prefs.immersiveBlack) ...[
              SoundArt(sound: scene),
              // Dim enough to rest the eyes and keep the clock readable.
              const ColoredBox(color: Color(0xB3000000)),
            ],
            SafeArea(
              child: Column(
                children: [
                  const Spacer(flex: 3),
                  Text(
                    phase,
                    style: context.text.titleMedium?.copyWith(color: white.withValues(alpha: 0.7)),
                  ),
                  const SizedBox(height: Space.sm),
                  FittedBox(
                    child: Directionality(
                      textDirection: TextDirection.ltr,
                      child: Text(
                        clock,
                        key: const Key('immersiveClock'),
                        style: context.text.displayLarge?.copyWith(
                          color: white,
                          fontSize: 96,
                          fontWeight: FontWeight.w300,
                          fontFeatures: const [FontFeature.tabularFigures()],
                        ),
                      ),
                    ),
                  ),
                  if (prefs.flipToFocus && (a == null || !a.isRunning)) ...[
                    const SizedBox(height: Space.md),
                    Text(
                      l10n.focusFlipHint,
                      style: context.text.bodyMedium?.copyWith(color: white.withValues(alpha: 0.7)),
                      textAlign: TextAlign.center,
                    ),
                  ],
                  const Spacer(flex: 4),
                  AnimatedOpacity(
                    opacity: _controls ? 1 : 0,
                    duration: const Duration(milliseconds: 300),
                    child: IgnorePointer(
                      ignoring: !_controls,
                      child: _Controls(
                        running: a?.isRunning ?? false,
                        hasSession: a != null,
                        onPlay: () {
                          _scheduleHide();
                          if (a == null) {
                            unawaited(ctrl.start(mode: FocusMode.pomodoro));
                          } else if (a.isRunning) {
                            unawaited(ctrl.pause());
                          } else {
                            unawaited(ctrl.resume());
                          }
                        },
                        onClose: () => Navigator.of(context).maybePop(),
                      ),
                    ),
                  ),
                  const SizedBox(height: Space.lg),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Controls extends StatelessWidget {
  const _Controls({
    required this.running,
    required this.hasSession,
    required this.onPlay,
    required this.onClose,
  });
  final bool running, hasSession;
  final VoidCallback onPlay, onClose;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    const white = Colors.white;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          key: const Key('immersiveClose'),
          tooltip: l10n.actionClose,
          iconSize: 28,
          color: white.withValues(alpha: 0.8),
          icon: const Icon(Icons.close_fullscreen_rounded),
          onPressed: onClose,
        ),
        const SizedBox(width: Space.xl),
        IconButton.filled(
          key: const Key('immersivePlay'),
          tooltip: running ? l10n.actionPause : (hasSession ? l10n.actionResume : l10n.actionStart),
          iconSize: 40,
          style: IconButton.styleFrom(
            backgroundColor: white.withValues(alpha: 0.16),
            foregroundColor: white,
            padding: const EdgeInsets.all(Space.lg),
          ),
          icon: Icon(running ? Icons.pause_rounded : Icons.play_arrow_rounded),
          onPressed: onPlay,
        ),
        const SizedBox(width: Space.xl + 48),
      ],
    );
  }
}
