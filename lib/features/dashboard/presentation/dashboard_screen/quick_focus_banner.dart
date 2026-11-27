part of '../dashboard_screen.dart';

/// Home banner "quick focus session": plant photo, Pomodoro 25 min, play button.
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
        child: DeepFocusGlassCard(
          padding: EdgeInsets.zero,
          onTap: () => context.push(Routes.focus),
          child: SizedBox(
            height: 80,
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadiusDirectional.horizontal(
                    start: Radius.circular(DeepFocusVisuals.cardRadius),
                  ),
                  child: Image.asset(
                    DeepFocusAssets.quickFocusPlant,
                    width: 104,
                    height: 80,
                    fit: BoxFit.cover,
                    excludeFromSemantics: true,
                    errorBuilder: (_, _, _) => const SizedBox(width: 104),
                  ),
                ),
                const SizedBox(width: Space.md),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        l10n.quickStartFocus,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: context.text.titleMedium,
                      ),
                      Text(
                        subtitle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: context.text.labelMedium?.copyWith(
                          color: DeepFocusVisuals.tealPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 44,
                  height: 44,
                  margin: const EdgeInsetsDirectional.only(end: Space.md),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: DeepFocusVisuals.tealPrimary,
                  ),
                  child: const Icon(Icons.play_arrow_rounded, color: Colors.white, size: 28),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
