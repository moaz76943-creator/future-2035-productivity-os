import 'dart:math' as math;

import 'package:material_ui/material_ui.dart';

/// A calm painted landscape (sky, sun, layered hills, a lake and pines), drawn
/// in code so it works offline, scales to any size and costs no asset.
///
/// [LandscapeMood.day] is light, for headers with dark text on top;
/// [LandscapeMood.deep] is dark teal, for white text (the focus timer).
enum LandscapeMood { day, deep }

class LandscapePainter extends CustomPainter {
  const LandscapePainter({this.mood = LandscapeMood.day, this.dark = false});

  final LandscapeMood mood;

  /// Night version of [LandscapeMood.day] for the dark theme.
  final bool dark;

  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width;
    final h = size.height;
    final rect = Offset.zero & size;
    final deep = mood == LandscapeMood.deep;
    final night = dark && !deep;

    final sky = deep
        ? const [Color(0xFF0B5257), Color(0xFF167C7E), Color(0xFF6FB9B2)]
        : night
        ? const [Color(0xFF07131F), Color(0xFF0E2A36), Color(0xFF1B4A52)]
        : const [Color(0xFFE9F1FA), Color(0xFFF3F1EA), Color(0xFFFBE9D2)];
    canvas.drawRect(
      rect,
      Paint()
        ..shader = LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: sky,
        ).createShader(rect),
    );

    // Sun (or moon) with a soft glow just above the far hills.
    final sun = Offset(w * 0.5, h * (deep ? 0.74 : 0.58));
    final glow = (deep ? 0.16 : 0.3) * math.min(w, h);
    canvas.drawCircle(
      sun,
      glow,
      Paint()
        ..shader = RadialGradient(
          colors: [
            (night ? const Color(0xFFBFD8E6) : const Color(0xFFFFE7B8)).withValues(alpha: 0.85),
            const Color(0x00FFE7B8),
          ],
        ).createShader(Rect.fromCircle(center: sun, radius: glow)),
    );
    canvas.drawCircle(
      sun,
      glow * 0.22,
      Paint()..color = night ? const Color(0xFFE3EEF5) : const Color(0xFFFFF4DC),
    );

    final hills = deep
        ? const [Color(0xFF4E9A9A), Color(0xFF2B7A7C), Color(0xFF125A5E), Color(0xFF0A3F44)]
        : night
        ? const [Color(0xFF214652), Color(0xFF173844), Color(0xFF102B35), Color(0xFF0A1F28)]
        : const [Color(0xFFB9CFE0), Color(0xFF8FB3C9), Color(0xFF5E8FA6), Color(0xFF2F6B6E)];
    _hill(canvas, size, base: 0.66, amp: 0.10, waves: 1.6, phase: 0.3, color: hills[0]);
    _hill(canvas, size, base: 0.72, amp: 0.09, waves: 2.2, phase: 1.4, color: hills[1]);

    // A still lake reflecting the sky between the hills.
    final lake = Rect.fromLTWH(0, h * 0.78, w, h * 0.22);
    canvas.drawRect(
      lake,
      Paint()
        ..shader = LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [sky.last.withValues(alpha: 0.9), sky[1].withValues(alpha: 0.9)],
        ).createShader(lake),
    );
    _hill(canvas, size, base: 0.84, amp: 0.05, waves: 1.2, phase: 2.1, color: hills[2]);
    _pines(canvas, size, color: hills[3]);
  }

  void _hill(
    Canvas canvas,
    Size size, {
    required double base,
    required double amp,
    required double waves,
    required double phase,
    required Color color,
  }) {
    final path = Path()..moveTo(0, size.height);
    const steps = 48;
    for (var i = 0; i <= steps; i++) {
      final x = size.width * i / steps;
      final t = i / steps * math.pi * 2 * waves + phase;
      final y = size.height * (base - amp * (0.6 * math.sin(t) + 0.4 * math.sin(t * 2.3 + 1)));
      path.lineTo(x, y);
    }
    path
      ..lineTo(size.width, size.height)
      ..close();
    canvas.drawPath(path, Paint()..color = color);
  }

  void _pines(Canvas canvas, Size size, {required Color color}) {
    final paint = Paint()..color = color;
    final unit = size.height * 0.16;
    // Two small groves at the sides keep the centre open for text.
    const spots = [0.02, 0.07, 0.12, 0.17, 0.83, 0.88, 0.93, 0.98];
    for (var i = 0; i < spots.length; i++) {
      final x = size.width * spots[i];
      final hgt = unit * (0.75 + 0.35 * ((i * 37) % 5) / 4);
      final bottom = size.height * 0.98;
      final path = Path()
        ..moveTo(x, bottom - hgt)
        ..lineTo(x - hgt * 0.28, bottom)
        ..lineTo(x + hgt * 0.28, bottom)
        ..close();
      canvas.drawPath(path, paint);
    }
  }

  @override
  bool shouldRepaint(LandscapePainter old) => old.mood != mood || old.dark != dark;
}
