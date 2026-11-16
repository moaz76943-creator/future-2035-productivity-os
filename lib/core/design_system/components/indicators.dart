import 'dart:math' as math;
import 'dart:ui' as ui;

import 'package:material_ui/material_ui.dart';

import '../app_theme.dart';
import '../tokens.dart';
import 'surfaces.dart';

/// Luminous gradient progress ring. Animates value changes unless reduced
/// motion is on. Exposes its value to screen readers.
class GlowRing extends StatelessWidget {
  const GlowRing({
    super.key,
    required this.value,
    required this.hue,
    this.size = 120,
    this.stroke = 10,
    this.child,
    this.semanticsLabel,
    this.semanticsValue,
    this.trackColor,
  });

  final double value;
  final ModuleHue hue;
  final double size;
  final double stroke;
  final Widget? child;
  final String? semanticsLabel;
  final String? semanticsValue;
  final Color? trackColor;

  @override
  Widget build(BuildContext context) {
    final track = trackColor ?? context.lux.recessed;
    return Semantics(
      label: semanticsLabel,
      value: semanticsValue,
      child: TweenAnimationBuilder<double>(
        tween: Tween(end: value.clamp(0.0, 1.0)),
        duration: context.motion(Motion.slow),
        curve: Motion.emphasized,
        builder: (context, v, child) => CustomPaint(
          size: Size.square(size),
          painter: _RingPainter(v, hue, stroke, track),
          child: SizedBox.square(dimension: size, child: Center(child: child)),
        ),
        child: child,
      ),
    );
  }
}

class _RingPainter extends CustomPainter {
  _RingPainter(this.v, this.hue, this.stroke, this.track);
  final double v;
  final ModuleHue hue;
  final double stroke;
  final Color track;

  @override
  void paint(Canvas canvas, Size size) {
    final c = size.center(Offset.zero);
    final r = (size.shortestSide - stroke) / 2;
    final rect = Rect.fromCircle(center: c, radius: r);
    canvas.drawCircle(
        c,
        r,
        Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = stroke
          ..color = track);
    if (v <= 0) return;
    final sweep = 2 * math.pi * v;
    final shader = ui.Gradient.sweep(
      c,
      [hue.a, hue.b, hue.a],
      const [0, 0.5, 1],
      TileMode.clamp,
      -math.pi / 2,
      3 * math.pi / 2,
    );
    final glow = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = stroke
      ..strokeCap = StrokeCap.round
      ..shader = shader
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, stroke * 0.8);
    canvas.drawArc(rect, -math.pi / 2, sweep, false,
        glow..color = hue.a.withValues(alpha: 0.5));
    canvas.drawArc(
        rect,
        -math.pi / 2,
        sweep,
        false,
        Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = stroke
          ..strokeCap = StrokeCap.round
          ..shader = shader);
    // Bright tip.
    final tip = Offset(c.dx + r * math.cos(-math.pi / 2 + sweep),
        c.dy + r * math.sin(-math.pi / 2 + sweep));
    canvas.drawCircle(tip, stroke * 0.32, Paint()..color = Colors.white);
  }

  @override
  bool shouldRepaint(_RingPainter old) =>
      old.v != v || old.hue != hue || old.track != track || old.stroke != stroke;
}

/// Thin gradient progress bar.
class GlowBar extends StatelessWidget {
  const GlowBar({
    super.key,
    required this.value,
    this.hue = ModuleHue.tasks,
    this.height = 6,
    this.semanticsLabel,
  });
  final double value;
  final ModuleHue hue;
  final double height;
  final String? semanticsLabel;

  @override
  Widget build(BuildContext context) {
    final v = value.clamp(0.0, 1.0);
    return Semantics(
      label: semanticsLabel,
      value: '${(v * 100).round()}%',
      child: Container(
        height: height,
        decoration: BoxDecoration(
          color: context.lux.recessed,
          borderRadius: BorderRadius.circular(height),
        ),
        child: TweenAnimationBuilder<double>(
          tween: Tween(end: v),
          duration: context.motion(Motion.slow),
          curve: Motion.emphasized,
          builder: (context, value, _) => FractionallySizedBox(
            alignment: AlignmentDirectional.centerStart,
            widthFactor: value,
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: hue.gradient,
                borderRadius: BorderRadius.circular(height),
                boxShadow: [
                  BoxShadow(color: hue.a.withValues(alpha: 0.4), blurRadius: 6),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Small rounded tag.
class LuxPill extends StatelessWidget {
  const LuxPill({
    super.key,
    required this.label,
    this.color,
    this.icon,
    this.filled = false,
  });
  final String label;
  final Color? color;
  final IconData? icon;
  final bool filled;

  @override
  Widget build(BuildContext context) {
    final c = color ?? context.lux.ink2;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 4),
      decoration: BoxDecoration(
        color: filled ? c : c.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(Radii.pill),
      ),
      child: Row(mainAxisSize: MainAxisSize.min, children: [
        if (icon != null) ...[
          Icon(icon, size: 13, color: filled ? Colors.white : c),
          const SizedBox(width: 4),
        ],
        Flexible(
          child: Text(
            label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: context.text.labelSmall!.copyWith(
                color: filled ? Colors.white : c, letterSpacing: 0.2),
          ),
        ),
      ]),
    );
  }
}

/// Luminous dot for priority or category colour.
class GlowDot extends StatelessWidget {
  const GlowDot({super.key, required this.color, this.size = 8});
  final Color color;
  final double size;
  @override
  Widget build(BuildContext context) => Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          boxShadow: [BoxShadow(color: color.withValues(alpha: 0.6), blurRadius: size)],
        ),
      );
}

/// Compact metric: value over label, with optional icon orb.
class StatTile extends StatelessWidget {
  const StatTile({
    super.key,
    required this.value,
    required this.label,
    this.hue = ModuleHue.analytics,
    this.icon,
    this.caption,
    this.onTap,
  });
  final String value;
  final String label;
  final ModuleHue hue;
  final IconData? icon;
  final String? caption;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return LuxCard(
      onTap: onTap,
      semanticLabel: '$label: $value${caption == null ? '' : ', $caption'}',
      child: ExcludeSemantics(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          if (icon != null) ...[
            IconOrb(icon: icon!, hue: hue, size: 34),
            const SizedBox(height: Space.sm),
          ],
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
            child: Text(value, style: context.text.headlineMedium),
          ),
          const SizedBox(height: 2),
          Text(label,
              style: context.text.labelMedium, maxLines: 2, overflow: TextOverflow.ellipsis),
          if (caption != null)
            Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Text(caption!,
                  style: context.text.bodySmall,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis),
            ),
        ]),
      ),
    );
  }
}
