part of '../focus_screen.dart';

/// One calm teal for Start / Pause / Resume (#0D7A7E).
final focusTealButton = FilledButton.styleFrom(
  backgroundColor: DeepFocusVisuals.tealPrimary,
  foregroundColor: Colors.white,
  disabledBackgroundColor: DeepFocusVisuals.tealPrimary.withValues(alpha: 0.35),
  disabledForegroundColor: Colors.white70,
);

/// Timer circle: the Deep Focus backdrop with the leaf mark above the clock.
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
        const Positioned(
          top: 10,
          left: 0,
          right: 0,
          child: ExcludeSemantics(
            child: Center(
              child: DeepFocusAssetIcon(
                assetPath: DeepFocusAssets.appLeafMark,
                size: 26,
                fallbackIcon: Icons.eco_rounded,
              ),
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
        padding: const EdgeInsets.all(4),
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
                      constraints: const BoxConstraints(minHeight: kMinTouchTarget - 8),
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
