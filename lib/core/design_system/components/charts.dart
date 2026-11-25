import 'dart:math' as math;
import 'dart:ui' as ui;

import 'package:material_ui/material_ui.dart';

import '../app_theme.dart';
import '../tokens.dart';
import 'surfaces.dart';

/// One data point for charts. [label] is an already-localized axis label.
class ChartPoint {
  const ChartPoint(this.label, this.value, {this.highlight = false});
  final String label;
  final double value;
  final bool highlight;
}

/// Vertical bar chart with luminous gradient bars.
///
/// Time flows in reading direction: in RTL the first point is on the right.
/// A single semantic summary is provided by the caller via [semanticsLabel]
/// since individual bars are not meaningful to screen readers.
class GlowBarChart extends StatelessWidget {
  const GlowBarChart({
    super.key,
    required this.points,
    required this.hue,
    required this.semanticsLabel,
    this.height = 160,
    this.showLabels = true,
    this.labelEvery = 1,
  });
  final List<ChartPoint> points;
  final ModuleHue hue;
  final String semanticsLabel;
  final double height;
  final bool showLabels;
  final int labelEvery;

  @override
  Widget build(BuildContext context) {
    final rtl = Directionality.of(context) == TextDirection.rtl;
    final lux = context.lux;
    final style = context.text.labelSmall!;
    return Semantics(
      label: semanticsLabel,
      image: true,
      child: ExcludeSemantics(
        child: TweenAnimationBuilder<double>(
          tween: Tween(begin: 0, end: 1),
          duration: context.motion(Motion.slow),
          curve: Motion.decelerate,
          builder: (context, t, _) => CustomPaint(
            size: Size(double.infinity, height),
            painter: _BarPainter(
              points: points,
              hue: hue,
              t: t,
              rtl: rtl,
              grid: lux.hairline,
              labelStyle: style,
              showLabels: showLabels,
              labelEvery: labelEvery,
              textDirection: Directionality.of(context),
              muted: lux.recessed,
            ),
          ),
        ),
      ),
    );
  }
}

class _BarPainter extends CustomPainter {
  _BarPainter({
    required this.points,
    required this.hue,
    required this.t,
    required this.rtl,
    required this.grid,
    required this.labelStyle,
    required this.showLabels,
    required this.labelEvery,
    required this.textDirection,
    required this.muted,
  });
  final List<ChartPoint> points;
  final ModuleHue hue;
  final double t;
  final bool rtl;
  final Color grid;
  final TextStyle labelStyle;
  final bool showLabels;
  final int labelEvery;
  final TextDirection textDirection;
  final Color muted;

  @override
  void paint(Canvas canvas, Size size) {
    if (points.isEmpty) return;
    final labelH = showLabels ? 20.0 : 0.0;
    final chartH = size.height - labelH;
    final maxV = points.map((p) => p.value).fold<double>(0, math.max);
    final n = points.length;
    final slot = size.width / n;
    final barW = math.min(slot * 0.56, 22.0);

    final gridPaint = Paint()
      ..color = grid
      ..strokeWidth = 1;
    for (var i = 1; i <= 3; i++) {
      final y = chartH * i / 4;
      canvas.drawLine(Offset(0, y), Offset(size.width, y), gridPaint);
    }

    for (var i = 0; i < n; i++) {
      final p = points[i];
      final idx = rtl ? n - 1 - i : i;
      final cx = slot * idx + slot / 2;
      final h = maxV <= 0 ? 0.0 : (p.value / maxV) * (chartH - 8) * t;
      final rect = RRect.fromRectAndRadius(
        Rect.fromLTWH(cx - barW / 2, chartH - math.max(h, 3), barW, math.max(h, 3)),
        Radius.circular(barW / 2),
      );
      if (p.value <= 0) {
        canvas.drawRRect(rect, Paint()..color = muted);
      } else {
        final shader = ui.Gradient.linear(rect.outerRect.bottomCenter, rect.outerRect.topCenter, [
          hue.b,
          hue.a,
        ]);
        if (p.highlight) {
          canvas.drawRRect(
            rect.inflate(2),
            Paint()
              ..color = hue.a.withValues(alpha: 0.35)
              ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 8),
          );
        }
        canvas.drawRRect(rect, Paint()..shader = shader);
      }
      if (showLabels && (i % labelEvery == 0 || i == n - 1)) {
        final tp = TextPainter(
          text: TextSpan(text: p.label, style: labelStyle),
          textDirection: textDirection,
          maxLines: 1,
          ellipsis: '…',
        )..layout(maxWidth: math.max(slot * labelEvery, 24));
        tp.paint(canvas, Offset(cx - tp.width / 2, chartH + 5));
      }
    }
  }

  @override
  bool shouldRepaint(_BarPainter old) =>
      old.t != t || old.points != points || old.rtl != rtl || old.hue != hue;
}

/// Smooth area chart for trends.
class GlowAreaChart extends StatelessWidget {
  const GlowAreaChart({
    super.key,
    required this.values,
    required this.hue,
    required this.semanticsLabel,
    this.height = 120,
  });
  final List<double> values;
  final ModuleHue hue;
  final String semanticsLabel;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: semanticsLabel,
      image: true,
      child: ExcludeSemantics(
        child: TweenAnimationBuilder<double>(
          tween: Tween(begin: 0, end: 1),
          duration: context.motion(Motion.slow),
          curve: Motion.decelerate,
          builder: (context, t, _) => CustomPaint(
            size: Size(double.infinity, height),
            painter: _AreaPainter(
              values,
              hue,
              t,
              Directionality.of(context) == TextDirection.rtl,
              context.lux.hairline,
            ),
          ),
        ),
      ),
    );
  }
}

class _AreaPainter extends CustomPainter {
  _AreaPainter(this.values, this.hue, this.t, this.rtl, this.grid);
  final List<double> values;
  final ModuleHue hue;
  final double t;
  final bool rtl;
  final Color grid;

  @override
  void paint(Canvas canvas, Size size) {
    if (values.length < 2) return;
    final maxV = math.max(values.fold<double>(0, math.max), 1e-9);
    final pts = <Offset>[];
    for (var i = 0; i < values.length; i++) {
      final x = size.width * i / (values.length - 1);
      final y = size.height - (values[i] / maxV) * (size.height - 10) * t - 2;
      pts.add(Offset(rtl ? size.width - x : x, y));
    }
    if (rtl) pts.sort((a, b) => a.dx.compareTo(b.dx));
    final path = Path()..moveTo(pts.first.dx, pts.first.dy);
    for (var i = 0; i < pts.length - 1; i++) {
      final p0 = pts[i], p1 = pts[i + 1];
      final mx = (p0.dx + p1.dx) / 2;
      path.cubicTo(mx, p0.dy, mx, p1.dy, p1.dx, p1.dy);
    }
    final fill = Path.from(path)
      ..lineTo(pts.last.dx, size.height)
      ..lineTo(pts.first.dx, size.height)
      ..close();
    canvas.drawPath(
      fill,
      Paint()
        ..shader = ui.Gradient.linear(Offset.zero, Offset(0, size.height), [
          hue.a.withValues(alpha: 0.28),
          hue.b.withValues(alpha: 0.0),
        ]),
    );
    canvas.drawPath(
      path,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2.5
        ..strokeCap = StrokeCap.round
        ..shader = ui.Gradient.linear(Offset.zero, Offset(size.width, 0), [hue.a, hue.b]),
    );
  }

  @override
  bool shouldRepaint(_AreaPainter old) => old.t != t || old.values != values;
}

/// GitHub-style consistency heatmap (weeks × 7 days).
class ConsistencyHeatmap extends StatelessWidget {
  const ConsistencyHeatmap({
    super.key,
    required this.levels,
    required this.hue,
    required this.semanticsLabel,
    this.cell = 12,
    this.gap = 3,
  });

  /// Column-major: levels[week][weekday] in 0..1, null = not scheduled.
  final List<List<double?>> levels;
  final ModuleHue hue;
  final String semanticsLabel;
  final double cell;
  final double gap;

  @override
  Widget build(BuildContext context) {
    final lux = context.lux;
    return Semantics(
      label: semanticsLabel,
      image: true,
      child: ExcludeSemantics(
        child: Wrap(
          direction: Axis.vertical,
          spacing: gap,
          runSpacing: gap,
          children: [
            for (final week in levels)
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (final v in week)
                    Container(
                      width: cell,
                      height: cell,
                      margin: EdgeInsets.only(bottom: gap),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.5),
                        color: v == null
                            ? Colors.transparent
                            : v <= 0
                            ? lux.recessed
                            : Color.lerp(hue.b.withValues(alpha: 0.35), hue.a, v),
                        border: v == null ? Border.all(color: lux.hairline) : null,
                      ),
                    ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
