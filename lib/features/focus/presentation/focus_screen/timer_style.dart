part of '../focus_screen.dart';

/// One calm teal for Start / Pause / Resume (#0D7A7E).
final focusTealButton = FilledButton.styleFrom(
  backgroundColor: DeepFocusVisuals.tealPrimary,
  foregroundColor: Colors.white,
  disabledBackgroundColor: DeepFocusVisuals.tealPrimary.withValues(alpha: 0.35),
  disabledForegroundColor: Colors.white70,
);

/// Soft shadow that keeps white timer text readable on any backdrop.
const _timerTextShadow = [Shadow(color: Color(0x99000000), blurRadius: 8)];

/// Timer circle: the Deep Focus backdrop under a soft dark scrim, so the white
/// clock stays crisp and the picture reads as calm depth, not clutter.
class _TimerFace extends StatelessWidget {
  const _TimerFace({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          DeepFocusAssets.timerCircleBg,
          fit: BoxFit.cover,
          errorBuilder: (_, _, _) =>
              const CustomPaint(painter: LandscapePainter(mood: LandscapeMood.deep)),
        ),
        // Darkest in the middle, where the text sits; lighter towards the rim.
        const DecoratedBox(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: [Color(0xB3071F26), Color(0x80071F26), Color(0x330D7A7E)],
              stops: [0, 0.65, 1],
            ),
          ),
        ),
        child,
      ],
    );
  }
}

/// The four timer modes in one elegant line (RTL/LTR safe).
class _ModeSelector extends StatelessWidget {
  const _ModeSelector({required this.value, required this.enabled, required this.onChanged});
  final FocusMode value;
  final bool enabled;
  final ValueChanged<FocusMode> onChanged;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Semantics(
      label: l10n.focusModeLabel,
      container: true,
      child: DeepFocusGlassCard(
        padding: EdgeInsets.zero,
        radius: DeepFocusVisuals.pillRadius,
        child: Row(
          children: [
            for (final m in FocusMode.values)
              Expanded(
                child: Semantics(
                  button: true,
                  selected: m == value,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(DeepFocusVisuals.pillRadius),
                    onTap: enabled ? () => onChanged(m) : null,
                    child: Container(
                      constraints: const BoxConstraints(minHeight: kMinTouchTarget),
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: m == value ? DeepFocusVisuals.activePill() : null,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          focusModeLabel(l10n, m),
                          maxLines: 1,
                          style: context.text.labelLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: !enabled
                                ? DeepFocusVisuals.textMuted.withValues(alpha: 0.6)
                                : m == value
                                ? Colors.white
                                : DeepFocusVisuals.textDark,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
