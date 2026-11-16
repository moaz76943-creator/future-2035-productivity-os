import 'dart:math' as math;
import 'dart:ui' as ui;

import 'package:material_ui/material_ui.dart';

import '../app_theme.dart';
import '../tokens.dart';

/// Provides the effective reduced-motion preference (user setting OR the
/// platform "remove animations" accessibility flag).
class MotionScope extends InheritedWidget {
  const MotionScope({super.key, required this.reduceMotion, required super.child});
  final bool reduceMotion;

  static bool of(BuildContext context) {
    final scope = context.dependOnInheritedWidgetOfExactType<MotionScope>();
    final platform = MediaQuery.maybeDisableAnimationsOf(context) ?? false;
    return (scope?.reduceMotion ?? false) || platform;
  }

  @override
  bool updateShouldNotify(MotionScope old) => old.reduceMotion != reduceMotion;
}

extension MotionX on BuildContext {
  bool get reduceMotion => MotionScope.of(this);
  Duration motion(Duration d) => reduceMotion ? Duration.zero : d;
}

/// Soft luminous background: a white field with two slowly drifting aurora
/// glows. Rendered with a single CustomPainter; the animation stops when
/// reduced motion is on and runs at a very low frequency otherwise.
class AuroraBackground extends StatefulWidget {
  const AuroraBackground({
    super.key,
    required this.child,
    this.hue = ModuleHue.focus,
    this.intensity = 1,
  });
  final Widget child;
  final ModuleHue hue;
  final double intensity;

  @override
  State<AuroraBackground> createState() => _AuroraBackgroundState();
}

class _AuroraBackgroundState extends State<AuroraBackground>
    with SingleTickerProviderStateMixin {
  late final AnimationController _c =
      AnimationController(vsync: this, duration: const Duration(seconds: 24));

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (context.reduceMotion) {
      _c.stop();
    } else if (!_c.isAnimating) {
      _c.repeat();
    }
  }

  @override
  void dispose() {
    _c.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final lux = context.lux;
    return CustomPaint(
      painter: _AuroraPainter(
        animation: _c,
        a: widget.hue.a,
        b: widget.hue.b,
        base: lux.background,
        strength: (lux.isDark ? 0.28 : 0.16) * widget.intensity,
      ),
      child: widget.child,
    );
  }
}

class _AuroraPainter extends CustomPainter {
  _AuroraPainter({
    required this.animation,
    required this.a,
    required this.b,
    required this.base,
    required this.strength,
  }) : super(repaint: animation);
  final Animation<double> animation;
  final Color a, b, base;
  final double strength;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRect(Offset.zero & size, Paint()..color = base);
    final t = animation.value * 2 * math.pi;
    void glow(Color c, Offset center, double radius) {
      final shader = ui.Gradient.radial(center, radius, [
        c.withValues(alpha: strength),
        c.withValues(alpha: 0),
      ]);
      canvas.drawCircle(center, radius, Paint()..shader = shader);
    }

    final w = size.width, h = size.height;
    glow(a, Offset(w * (0.15 + 0.08 * math.sin(t)), h * (0.06 + 0.03 * math.cos(t))),
        w * 0.85);
    glow(b, Offset(w * (0.95 - 0.08 * math.cos(t)), h * (0.22 + 0.04 * math.sin(t))),
        w * 0.75);
  }

  @override
  bool shouldRepaint(_AuroraPainter old) =>
      old.a != a || old.b != b || old.base != base || old.strength != strength;
}

/// Liquid-glass panel. Used sparingly (navigation bar, hero overlays).
class GlassPanel extends StatelessWidget {
  const GlassPanel({
    super.key,
    required this.child,
    this.radius = Radii.xl,
    this.padding = EdgeInsets.zero,
    this.blur = 22,
  });
  final Widget child;
  final double radius;
  final EdgeInsetsGeometry padding;
  final double blur;

  @override
  Widget build(BuildContext context) {
    final lux = context.lux;
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: BackdropFilter(
        filter: ui.ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: lux.glass,
            borderRadius: BorderRadius.circular(radius),
            border: Border.all(color: lux.glassBorder),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white.withValues(alpha: lux.isDark ? 0.06 : 0.55),
                Colors.white.withValues(alpha: lux.isDark ? 0.02 : 0.15),
              ],
            ),
          ),
          child: Padding(padding: padding, child: child),
        ),
      ),
    );
  }
}

/// The primary content surface: white, hairline border, soft layered shadow.
/// Optionally carries a thin luminous accent edge on the leading side.
class LuxCard extends StatelessWidget {
  const LuxCard({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(Space.md),
    this.onTap,
    this.onLongPress,
    this.accent,
    this.radius = Radii.lg,
    this.elevated = true,
    this.semanticLabel,
    this.color,
  });
  final Widget child;
  final EdgeInsetsGeometry padding;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final Color? accent;
  final double radius;
  final bool elevated;
  final String? semanticLabel;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final lux = context.lux;
    final br = BorderRadius.circular(radius);
    Widget content = Padding(padding: padding, child: child);
    if (accent != null) {
      content = Stack(children: [
        content,
        PositionedDirectional(
          start: 0,
          top: 14,
          bottom: 14,
          child: Container(
            width: 3,
            decoration: BoxDecoration(
              borderRadius: const BorderRadiusDirectional.horizontal(
                      end: Radius.circular(3))
                  .resolve(Directionality.of(context)),
              color: accent,
              boxShadow: [
                BoxShadow(color: accent!.withValues(alpha: 0.5), blurRadius: 8),
              ],
            ),
          ),
        ),
      ]);
    }
    final decorated = DecoratedBox(
      decoration: BoxDecoration(
        color: color ?? lux.surface,
        borderRadius: br,
        border: Border.all(color: lux.hairline),
        boxShadow: elevated
            ? [
                BoxShadow(
                    color: lux.shadow, blurRadius: 24, offset: const Offset(0, 10),
                    spreadRadius: -12),
                BoxShadow(
                    color: lux.shadow.withValues(alpha: 0.05),
                    blurRadius: 2,
                    offset: const Offset(0, 1)),
              ]
            : null,
      ),
      child: Material(
        type: MaterialType.transparency,
        borderRadius: br,
        clipBehavior: Clip.antiAlias,
        child: onTap == null && onLongPress == null
            ? content
            : InkWell(onTap: onTap, onLongPress: onLongPress, child: content),
      ),
    );
    if (semanticLabel == null) return decorated;
    return Semantics(
        label: semanticLabel, button: onTap != null, container: true, child: decorated);
  }
}

/// Hero card with a luminous gradient fill (used once per screen at most).
class AuroraCard extends StatelessWidget {
  const AuroraCard({
    super.key,
    required this.hue,
    required this.child,
    this.padding = const EdgeInsets.all(Space.lg),
    this.onTap,
  });
  final ModuleHue hue;
  final Widget child;
  final EdgeInsetsGeometry padding;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final br = BorderRadius.circular(Radii.xl);
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: br,
        gradient: hue.gradient,
        boxShadow: [
          BoxShadow(
              color: hue.a.withValues(alpha: 0.35),
              blurRadius: 32,
              offset: const Offset(0, 16),
              spreadRadius: -12),
        ],
      ),
      child: Material(
        type: MaterialType.transparency,
        borderRadius: br,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          child: CustomPaint(
            painter: _SheenPainter(),
            child: Padding(padding: padding, child: child),
          ),
        ),
      ),
    );
  }
}

class _SheenPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final p = Paint()
      ..shader = ui.Gradient.radial(
        Offset(size.width * 0.85, -size.height * 0.2),
        size.width * 0.9,
        [Colors.white.withValues(alpha: 0.35), Colors.white.withValues(alpha: 0)],
      );
    canvas.drawRect(Offset.zero & size, p);
    final ring = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1
      ..color = Colors.white.withValues(alpha: 0.12);
    for (var i = 1; i <= 3; i++) {
      canvas.drawCircle(
          Offset(size.width * 1.02, size.height * 1.1), size.height * 0.45 * i, ring);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

/// Small glowing gradient orb holding an icon — the module "sigil".
class IconOrb extends StatelessWidget {
  const IconOrb({
    super.key,
    required this.icon,
    required this.hue,
    this.size = 44,
    this.glow = true,
  });
  final IconData icon;
  final ModuleHue hue;
  final double size;
  final bool glow;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        gradient: hue.gradient,
        borderRadius: BorderRadius.circular(size * 0.34),
        boxShadow: glow
            ? [
                BoxShadow(
                    color: hue.a.withValues(alpha: 0.35),
                    blurRadius: 14,
                    offset: const Offset(0, 6),
                    spreadRadius: -4),
              ]
            : null,
      ),
      child: Icon(icon, color: Colors.white, size: size * 0.5),
    );
  }
}
