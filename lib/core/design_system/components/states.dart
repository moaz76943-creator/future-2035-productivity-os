import 'dart:async';

import 'package:material_ui/material_ui.dart';

import '../app_theme.dart';
import '../tokens.dart';
import 'surfaces.dart';

/// Section header with optional trailing action.
class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.title,
    this.action,
    this.onAction,
    this.padding = const EdgeInsets.fromLTRB(Space.page, Space.xl, Space.page, Space.sm),
  });
  final String title;
  final String? action;
  final VoidCallback? onAction;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        children: [
          Expanded(
            child: Semantics(
              header: true,
              child: Text(
                title,
                style: context.text.titleLarge,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          if (action != null) TextButton(onPressed: onAction, child: Text(action!)),
        ],
      ),
    );
  }
}

/// Illustrated empty state with a luminous orbital sigil.
class EmptyState extends StatelessWidget {
  const EmptyState({
    super.key,
    required this.icon,
    required this.title,
    required this.message,
    this.hue = ModuleHue.focus,
    this.actionLabel,
    this.onAction,
    this.compact = false,
  });
  final IconData icon;
  final String title;
  final String message;
  final ModuleHue hue;
  final String? actionLabel;
  final VoidCallback? onAction;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    final size = compact ? 72.0 : 112.0;
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Space.xxl,
          vertical: compact ? Space.lg : Space.xxxl,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox.square(
              dimension: size,
              child: CustomPaint(
                painter: _OrbitPainter(hue, context.lux.hairline),
                child: Center(
                  child: IconOrb(icon: icon, hue: hue, size: size * 0.46),
                ),
              ),
            ),
            SizedBox(height: compact ? Space.sm : Space.lg),
            Text(
              title,
              style: compact ? context.text.titleMedium : context.text.titleLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: Space.xs),
            Text(message, style: context.text.bodyMedium, textAlign: TextAlign.center),
            if (actionLabel != null) ...[
              const SizedBox(height: Space.lg),
              FilledButton.icon(
                onPressed: onAction,
                icon: const Icon(Icons.add_rounded),
                label: Text(actionLabel!),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _OrbitPainter extends CustomPainter {
  _OrbitPainter(this.hue, this.line);
  final ModuleHue hue;
  final Color line;
  @override
  void paint(Canvas canvas, Size size) {
    final c = size.center(Offset.zero);
    final p = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1
      ..color = line;
    canvas.drawCircle(c, size.width * 0.36, p);
    canvas.drawCircle(c, size.width * 0.49, p..color = line.withValues(alpha: 0.6));
    canvas.drawCircle(Offset(c.dx + size.width * 0.36, c.dy - 6), 4, Paint()..color = hue.b);
    canvas.drawCircle(
      Offset(c.dx - size.width * 0.33, c.dy + size.width * 0.35),
      3,
      Paint()..color = hue.a,
    );
  }

  @override
  bool shouldRepaint(_OrbitPainter old) => old.hue != hue || old.line != line;
}

class ErrorState extends StatelessWidget {
  const ErrorState({
    super.key,
    required this.title,
    required this.message,
    this.retryLabel,
    this.onRetry,
  });
  final String title;
  final String message;
  final String? retryLabel;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    final lux = context.lux;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(Space.xxl),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.error_outline_rounded, size: 48, color: lux.danger),
            const SizedBox(height: Space.md),
            Text(title, style: context.text.titleLarge, textAlign: TextAlign.center),
            const SizedBox(height: Space.xs),
            Text(message, style: context.text.bodyMedium, textAlign: TextAlign.center),
            if (onRetry != null && retryLabel != null) ...[
              const SizedBox(height: Space.lg),
              OutlinedButton(onPressed: onRetry, child: Text(retryLabel!)),
            ],
          ],
        ),
      ),
    );
  }
}

/// Calm shimmering placeholder used while data streams load.
class LoadingState extends StatefulWidget {
  const LoadingState({super.key, required this.label, this.rows = 4});
  final String label;
  final int rows;
  @override
  State<LoadingState> createState() => _LoadingStateState();
}

class _LoadingStateState extends State<LoadingState> with SingleTickerProviderStateMixin {
  late final AnimationController _c = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 1400),
  );

  // Local queries usually answer within a frame or two. Showing the shimmer
  // immediately made every screen flash grey placeholders on navigation; it
  // now appears only if loading actually takes a noticeable moment.
  bool _visible = false;
  Timer? _delay;

  @override
  void initState() {
    super.initState();
    _delay = Timer(const Duration(milliseconds: 220), () {
      if (mounted) setState(() => _visible = true);
    });
  }

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
    _delay?.cancel();
    _c.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final lux = context.lux;
    if (!_visible) {
      return Semantics(label: widget.label, liveRegion: true, child: const SizedBox(height: 120));
    }
    return Semantics(
      label: widget.label,
      liveRegion: true,
      child: ExcludeSemantics(
        child: AnimatedBuilder(
          animation: _c,
          builder: (context, _) {
            final o = 0.45 + 0.35 * (1 - (2 * _c.value - 1).abs());
            return Padding(
              padding: const EdgeInsets.all(Space.page),
              child: Column(
                children: [
                  for (var i = 0; i < widget.rows; i++)
                    Container(
                      height: 64,
                      margin: const EdgeInsets.only(bottom: Space.sm),
                      decoration: BoxDecoration(
                        color: lux.recessed.withValues(alpha: o),
                        borderRadius: BorderRadius.circular(Radii.lg),
                      ),
                    ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
