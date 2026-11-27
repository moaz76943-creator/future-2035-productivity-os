import 'package:material_ui/material_ui.dart';

import '../../../../core/design_system/app_theme.dart';
import '../../../../core/design_system/tokens.dart';
import '../../../../core/theme/deep_focus_visuals.dart';

/// A tappable card with a clear icon and a light tint of [color]: used for
/// "learn languages" and "ready-made decks" so both are seen at once.
class DeckShortcutCard extends StatelessWidget {
  const DeckShortcutCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final radius = BorderRadius.circular(DeepFocusVisuals.cardRadius);
    return Semantics(
      button: true,
      label: '$title. $subtitle',
      excludeSemantics: true,
      child: Material(
        color: Colors.transparent,
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: radius,
            gradient: LinearGradient(
              begin: AlignmentDirectional.centerStart,
              end: AlignmentDirectional.centerEnd,
              colors: [color.withValues(alpha: 0.18), Colors.white.withValues(alpha: 0.78)],
            ),
            border: Border.all(color: color.withValues(alpha: 0.35), width: 1.2),
            boxShadow: [
              BoxShadow(
                color: color.withValues(alpha: 0.12),
                blurRadius: 18,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: InkWell(
            borderRadius: radius,
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.all(Space.md),
              child: Row(
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: color,
                      boxShadow: [BoxShadow(color: color.withValues(alpha: 0.35), blurRadius: 12)],
                    ),
                    child: Icon(icon, color: Colors.white, size: 26),
                  ),
                  const SizedBox(width: Space.md),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title, style: context.text.titleMedium),
                        const SizedBox(height: 2),
                        Text(
                          subtitle,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: context.text.bodySmall?.copyWith(color: context.lux.ink2),
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.chevron_right_rounded, color: color),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
