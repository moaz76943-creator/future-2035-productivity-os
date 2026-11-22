import 'dart:math' as math;

import 'package:material_ui/material_ui.dart';

import '../../domain/nature_sound.dart';

part 'sound_art_scenes.dart';

/// A small painted scene for each sound (drawn in code: original artwork,
/// no image files, crisp at any size).
class SoundArt extends StatelessWidget {
  const SoundArt({super.key, required this.sound});
  final NatureSound sound;

  @override
  Widget build(BuildContext context) => RepaintBoundary(
    child: CustomPaint(painter: _ScenePainter(sound), size: Size.infinite),
  );
}

class _ScenePainter extends CustomPainter {
  _ScenePainter(this.sound);
  final NatureSound sound;

  @override
  void paint(Canvas canvas, Size size) {
    final r = Offset.zero & size;
    canvas.clipRect(r);
    switch (sound) {
      case NatureSound.rain:
        _rain(canvas, size, storm: false);
      case NatureSound.storm:
        _rain(canvas, size, storm: true);
      case NatureSound.river:
        _river(canvas, size);
      case NatureSound.ocean:
        _ocean(canvas, size);
      case NatureSound.fire:
        _fire(canvas, size);
      case NatureSound.forest:
        _forest(canvas, size);
      case NatureSound.night:
        _night(canvas, size);
      case NatureSound.forestrain:
        _forest(canvas, size, raining: true);
      case NatureSound.white:
        _noise(canvas, size, const Color(0xFFEFF1F8), const Color(0xFFC9D0E6), 0.9);
      case NatureSound.pink:
        _noise(canvas, size, const Color(0xFFFBE3EE), const Color(0xFFE8A6C6), 0.6);
      case NatureSound.brown:
        _noise(canvas, size, const Color(0xFFE7CDB3), const Color(0xFF8E6A4C), 0.35);
    }
  }

  @override
  bool shouldRepaint(_ScenePainter old) => old.sound != sound;
}

// ---- shared helpers -------------------------------------------------------

void _sky(Canvas c, Size s, Color top, Color bottom) {
  c.drawRect(
    Offset.zero & s,
    Paint()
      ..shader = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [top, bottom],
      ).createShader(Offset.zero & s),
  );
}

void _cloud(Canvas c, Offset center, double w, Color color) {
  final p = Paint()..color = color;
  final h = w * 0.32;
  c.drawRRect(
    RRect.fromRectAndRadius(
      Rect.fromCenter(center: center.translate(0, h * 0.35), width: w, height: h),
      Radius.circular(h / 2),
    ),
    p,
  );
  c.drawCircle(center.translate(-w * 0.18, 0), w * 0.2, p);
  c.drawCircle(center.translate(w * 0.1, -h * 0.25), w * 0.26, p);
}

void _drops(
  Canvas c,
  Size s, {
  required int count,
  required double top,
  required Color color,
  int seed = 3,
}) {
  final rnd = math.Random(seed);
  final p = Paint()
    ..color = color
    ..strokeWidth = math.max(1.2, s.width * 0.008)
    ..strokeCap = StrokeCap.round;
  for (var i = 0; i < count; i++) {
    final x = rnd.nextDouble() * s.width * 1.1;
    final y = top + rnd.nextDouble() * (s.height - top);
    final len = s.height * (0.05 + rnd.nextDouble() * 0.05);
    c.drawLine(Offset(x, y), Offset(x - len * 0.35, y + len), p);
  }
}

Path _hill(Size s, double baseY, double amp, double phase) {
  final p = Path()..moveTo(0, s.height);
  for (var i = 0; i <= 24; i++) {
    final x = s.width * i / 24;
    p.lineTo(x, baseY + math.sin(i / 24 * math.pi * 1.6 + phase) * amp);
  }
  return p
    ..lineTo(s.width, s.height)
    ..close();
}
