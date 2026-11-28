part of '../dashboard_screen.dart';

/// Home banner "quick focus session": plant photo, Pomodoro 25 min (the whole banner is the tap target).
class _QuickFocusBanner extends StatelessWidget {
  const _QuickFocusBanner();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final subtitle = '${l10n.focusModePomodoro} · ${l10n.focusMinutesLabel(25)}';
    return Padding(
      padding: const EdgeInsets.fromLTRB(Space.sm, Space.xs, Space.sm, 0),
      child: Semantics(
        button: true,
        label: '${l10n.quickStartFocus}, $subtitle',
        excludeSemantics: true,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(DeepFocusVisuals.cardRadius),
          child: Material(
            color: DeepFocusVisuals.tealPrimary,
            child: InkWell(
              onTap: () => context.push(Routes.focus),
              child: SizedBox(
                height: 96,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      DeepFocusAssets.quickFocusPlant,
                      fit: BoxFit.cover,
                      excludeFromSemantics: true,
                      errorBuilder: (_, _, _) => const SizedBox.shrink(),
                    ),
                    // Scrim: darker on the text side, fading out toward the scene.
                    const DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: AlignmentDirectional.centerStart,
                          end: AlignmentDirectional.centerEnd,
                          colors: [Color(0xCC062E30), Color(0x66062E30), Color(0x00062E30)],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.symmetric(horizontal: Space.md),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  l10n.quickStartFocus,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: context.text.titleLarge?.copyWith(color: Colors.white),
                                ),
                                Text(
                                  subtitle,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: context.text.labelLarge?.copyWith(
                                    color: Colors.white.withValues(alpha: 0.92),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
