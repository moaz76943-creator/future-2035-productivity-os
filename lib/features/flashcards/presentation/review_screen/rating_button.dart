part of '../review_screen.dart';

class _RatingButton extends StatelessWidget {
  const _RatingButton({
    super.key,
    required this.label,
    required this.interval,
    required this.color,
    required this.onPressed,
    this.highlighted = false,
  });
  final String label;
  final String interval;
  final Color color;
  final VoidCallback? onPressed;
  final bool highlighted;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      enabled: onPressed != null,
      selected: highlighted,
      label: context.l10n.flashcardsRatingA11y(label, interval),
      excludeSemantics: true,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          foregroundColor: color,
          side: BorderSide(
            color: color.withValues(alpha: highlighted ? 1 : 0.5),
            width: highlighted ? 2 : 1,
          ),
          backgroundColor: color.withValues(alpha: highlighted ? 0.16 : 0.06),
          minimumSize: const Size(0, 64),
          padding: const EdgeInsets.symmetric(horizontal: Space.xxs, vertical: Space.xs),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Radii.md)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              label,
              textAlign: TextAlign.center,
              style: context.text.labelLarge?.copyWith(color: color),
            ),
            const SizedBox(height: 2),
            Text(
              interval,
              textAlign: TextAlign.center,
              style: context.text.labelSmall?.copyWith(color: context.lux.ink2),
            ),
          ],
        ),
      ),
    );
  }
}

/// One optional field shown on a card face.
class FieldItem {
  const FieldItem({required this.key, required this.label, required this.value, this.speak});
  final String key;
  final String label;
  final String value;
  final VoidCallback? speak;
}
