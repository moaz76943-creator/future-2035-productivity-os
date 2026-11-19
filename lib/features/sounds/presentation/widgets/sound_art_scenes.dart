part of 'sound_art.dart';

void _rain(Canvas c, Size s, {required bool storm}) {
  _sky(
    c,
    s,
    storm ? const Color(0xFF3B4266) : const Color(0xFF7D9CCB),
    storm ? const Color(0xFF181B30) : const Color(0xFF34497A),
  );
  _cloud(
    c,
    Offset(s.width * 0.42, s.height * 0.22),
    s.width * 0.62,
    storm ? const Color(0xFF545B80) : const Color(0xFFE6EEFA),
  );
  _cloud(
    c,
    Offset(s.width * 0.8, s.height * 0.14),
    s.width * 0.4,
    storm ? const Color(0xFF474D70) : const Color(0xFFCAD8EF),
  );
  if (storm) {
    final bolt = Path()
      ..moveTo(s.width * 0.5, s.height * 0.34)
      ..lineTo(s.width * 0.41, s.height * 0.56)
      ..lineTo(s.width * 0.5, s.height * 0.55)
      ..lineTo(s.width * 0.43, s.height * 0.78)
      ..lineTo(s.width * 0.6, s.height * 0.5)
      ..lineTo(s.width * 0.51, s.height * 0.51)
      ..lineTo(s.width * 0.58, s.height * 0.34)
      ..close();
    c.drawPath(bolt, Paint()..color = const Color(0xFFFFD36E));
  }
  _drops(c, s, count: storm ? 46 : 34, top: s.height * 0.36, color: const Color(0x99FFFFFF));
  final puddle = Paint()..color = const Color(0x33FFFFFF);
  c.drawOval(
    Rect.fromCenter(
      center: Offset(s.width * 0.3, s.height * 0.93),
      width: s.width * 0.34,
      height: s.height * 0.05,
    ),
    puddle,
  );
  c.drawOval(
    Rect.fromCenter(
      center: Offset(s.width * 0.75, s.height * 0.9),
      width: s.width * 0.22,
      height: s.height * 0.035,
    ),
    puddle,
  );
}

void _river(Canvas c, Size s) {
  _sky(c, s, const Color(0xFFD8F0F6), const Color(0xFFB9E2D0));
  c.drawPath(
    _hill(s, s.height * 0.42, s.height * 0.06, 0.4),
    Paint()..color = const Color(0xFF8CC9A0),
  );
  c.drawPath(
    _hill(s, s.height * 0.55, s.height * 0.05, 2.1),
    Paint()..color = const Color(0xFF5FAE7E),
  );
  final river = Path()
    ..moveTo(s.width * 0.47, s.height * 0.5)
    ..cubicTo(
      s.width * 0.62,
      s.height * 0.62,
      s.width * 0.2,
      s.height * 0.74,
      s.width * 0.3,
      s.height,
    )
    ..lineTo(s.width * 0.85, s.height)
    ..cubicTo(
      s.width * 0.6,
      s.height * 0.78,
      s.width * 0.82,
      s.height * 0.62,
      s.width * 0.53,
      s.height * 0.5,
    )
    ..close();
  c.drawPath(
    river,
    Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Color(0xFF8FD3F0), Color(0xFF3C8FD0)],
      ).createShader(Offset(0, s.height * 0.5) & Size(s.width, s.height * 0.5)),
  );
  final ripple = Paint()
    ..color = const Color(0xAAFFFFFF)
    ..style = PaintingStyle.stroke
    ..strokeWidth = math.max(1.2, s.width * 0.01)
    ..strokeCap = StrokeCap.round;
  for (final (x, y, w) in [(0.45, 0.72, 0.1), (0.55, 0.84, 0.14), (0.4, 0.93, 0.12)]) {
    c.drawLine(Offset(s.width * x, s.height * y), Offset(s.width * (x + w), s.height * y), ripple);
  }
}

void _ocean(Canvas c, Size s) {
  _sky(c, s, const Color(0xFFFFE2B8), const Color(0xFFA9D8EC));
  c.drawCircle(
    Offset(s.width * 0.7, s.height * 0.4),
    s.width * 0.12,
    Paint()..color = const Color(0xFFFFF4DC),
  );
  final sea = Rect.fromLTWH(0, s.height * 0.48, s.width, s.height * 0.52);
  c.drawRect(
    sea,
    Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Color(0xFF4A9AD0), Color(0xFF1F4E8A)],
      ).createShader(sea),
  );
  final crest = Paint()
    ..color = const Color(0xE6FFFFFF)
    ..style = PaintingStyle.stroke
    ..strokeWidth = math.max(1.5, s.width * 0.014)
    ..strokeCap = StrokeCap.round;
  for (var row = 0; row < 3; row++) {
    final y = s.height * (0.6 + row * 0.13);
    final path = Path()..moveTo(-s.width * 0.05, y);
    for (var i = 0; i < 4; i++) {
      final x0 = -s.width * 0.05 + i * s.width * 0.3 + row * s.width * 0.08;
      path.quadraticBezierTo(x0 + s.width * 0.08, y - s.height * 0.05, x0 + s.width * 0.15, y);
      path.quadraticBezierTo(x0 + s.width * 0.22, y + s.height * 0.03, x0 + s.width * 0.3, y);
    }
    c.drawPath(path, crest..color = Color.fromRGBO(255, 255, 255, 0.85 - row * 0.2));
  }
}

void _fire(Canvas c, Size s) {
  _sky(c, s, const Color(0xFF34213F), const Color(0xFF110A18));
  final glow = Offset(s.width * 0.5, s.height * 0.7);
  c.drawCircle(
    glow,
    s.width * 0.55,
    Paint()
      ..shader = const RadialGradient(colors: [Color(0x66FF9A3D), Color(0x00FF9A3D)])
          .createShader(Rect.fromCircle(center: glow, radius: s.width * 0.55)),
  );
  Path flame(double cx, double base, double w, double h) => Path()
    ..moveTo(cx, base - h)
    ..cubicTo(
      cx + w * 0.15,
      base - h * 0.6,
      cx + w * 0.6,
      base - h * 0.45,
      cx + w * 0.5,
      base - h * 0.15,
    )
    ..cubicTo(cx + w * 0.45, base, cx - w * 0.45, base, cx - w * 0.5, base - h * 0.15)
    ..cubicTo(cx - w * 0.6, base - h * 0.45, cx - w * 0.1, base - h * 0.55, cx, base - h)
    ..close();
  final base = s.height * 0.8;
  c.drawPath(
    flame(s.width * 0.5, base, s.width * 0.5, s.height * 0.62),
    Paint()..color = const Color(0xFFFF7A3A),
  );
  c.drawPath(
    flame(s.width * 0.52, base, s.width * 0.34, s.height * 0.44),
    Paint()..color = const Color(0xFFFFB347),
  );
  c.drawPath(
    flame(s.width * 0.5, base, s.width * 0.18, s.height * 0.25),
    Paint()..color = const Color(0xFFFFE7A6),
  );
  final log = Paint()..color = const Color(0xFF6B4430);
  for (final angle in [-0.18, 0.18]) {
    c.save();
    c.translate(s.width * 0.5, s.height * 0.86);
    c.rotate(angle);
    c.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromCenter(center: Offset.zero, width: s.width * 0.62, height: s.height * 0.07),
        Radius.circular(s.height * 0.035),
      ),
      log,
    );
    c.restore();
  }
  final spark = Paint()..color = const Color(0xFFFFD27A);
  for (final (x, y, r) in [
    (0.36, 0.22, 0.012),
    (0.64, 0.16, 0.009),
    (0.58, 0.3, 0.008),
    (0.42, 0.1, 0.007),
  ]) {
    c.drawCircle(Offset(s.width * x, s.height * y), s.width * r, spark);
  }
}

void _forest(Canvas c, Size s, {bool raining = false}) {
  if (raining) {
    _sky(c, s, const Color(0xFF9DB8B0), const Color(0xFF5E8277));
    _cloud(c, Offset(s.width * 0.6, s.height * 0.16), s.width * 0.55, const Color(0xFFDDE7E4));
  } else {
    _sky(c, s, const Color(0xFFE5F4DF), const Color(0xFFB7DDB2));
    c.drawCircle(
      Offset(s.width * 0.78, s.height * 0.2),
      s.width * 0.1,
      Paint()..color = const Color(0xFFFFF1C9),
    );
  }
  void pine(double x, double base, double h, Color color) {
    final w = h * 0.55;
    final paint = Paint()..color = color;
    for (var i = 0; i < 3; i++) {
      final top = base - h + i * h * 0.22;
      final bottom = base - h * 0.42 + i * h * 0.21;
      c.drawPath(
        Path()
          ..moveTo(x, top)
          ..lineTo(x + w * (0.32 + i * 0.1), bottom)
          ..lineTo(x - w * (0.32 + i * 0.1), bottom)
          ..close(),
        paint,
      );
    }
  }

  pine(s.width * 0.2, s.height * 0.95, s.height * 0.62, const Color(0xFF6FA87C));
  pine(s.width * 0.82, s.height * 0.98, s.height * 0.58, const Color(0xFF6FA87C));
  pine(s.width * 0.45, s.height * 1.02, s.height * 0.8, const Color(0xFF3F7D5C));
  pine(s.width * 0.66, s.height * 1.05, s.height * 0.66, const Color(0xFF2F6248));
  if (raining) {
    _drops(c, s, count: 30, top: s.height * 0.3, color: const Color(0x99FFFFFF), seed: 9);
    return;
  }
  final bird = Paint()
    ..color = const Color(0xFF4A5A55)
    ..style = PaintingStyle.stroke
    ..strokeWidth = math.max(1.2, s.width * 0.01)
    ..strokeCap = StrokeCap.round;
  for (final (x, y, w) in [(0.3, 0.2, 0.06), (0.4, 0.13, 0.045)]) {
    final o = Offset(s.width * x, s.height * y);
    final ww = s.width * w;
    c.drawPath(
      Path()
        ..moveTo(o.dx - ww, o.dy)
        ..quadraticBezierTo(o.dx - ww * 0.5, o.dy - ww * 0.6, o.dx, o.dy)
        ..quadraticBezierTo(o.dx + ww * 0.5, o.dy - ww * 0.6, o.dx + ww, o.dy),
      bird,
    );
  }
}

void _night(Canvas c, Size s) {
  _sky(c, s, const Color(0xFF1B2450), const Color(0xFF080C1F));
  final moonCenter = Offset(s.width * 0.7, s.height * 0.28);
  final moon = Path.combine(
    PathOperation.difference,
    Path()..addOval(Rect.fromCircle(center: moonCenter, radius: s.width * 0.13)),
    Path()..addOval(
      Rect.fromCircle(
        center: moonCenter.translate(s.width * 0.06, -s.width * 0.04),
        radius: s.width * 0.12,
      ),
    ),
  );
  c.drawPath(moon, Paint()..color = const Color(0xFFFFF0C2));
  final rnd = math.Random(11);
  final star = Paint()..color = const Color(0xCCFFFFFF);
  for (var i = 0; i < 18; i++) {
    c.drawCircle(
      Offset(rnd.nextDouble() * s.width, rnd.nextDouble() * s.height * 0.6),
      s.width * (0.004 + rnd.nextDouble() * 0.006),
      star,
    );
  }
  final grass = Paint()..color = const Color(0xFF0F1A2E);
  c.drawPath(_hill(s, s.height * 0.82, s.height * 0.03, 1.2), grass);
  final blade = Paint()
    ..color = const Color(0xFF0F1A2E)
    ..strokeWidth = math.max(1.2, s.width * 0.012)
    ..strokeCap = StrokeCap.round;
  for (var i = 0; i < 14; i++) {
    final x = s.width * (i + 0.5) / 14;
    final h = s.height * (0.08 + rnd.nextDouble() * 0.1);
    c.drawLine(
      Offset(x, s.height * 0.84),
      Offset(x + (rnd.nextDouble() - 0.5) * s.width * 0.04, s.height * 0.84 - h),
      blade,
    );
  }
}

void _noise(Canvas c, Size s, Color top, Color bottom, double roughness) {
  _sky(c, s, top, bottom);
  final p = Paint()
    ..style = PaintingStyle.stroke
    ..strokeWidth = math.max(1.2, s.width * 0.011)
    ..strokeCap = StrokeCap.round;
  final rnd = math.Random(5);
  for (var row = 0; row < 4; row++) {
    final y = s.height * (0.28 + row * 0.16);
    final path = Path()..moveTo(s.width * 0.08, y);
    for (var i = 1; i <= 28; i++) {
      final x = s.width * (0.08 + 0.84 * i / 28);
      final jag =
          (rnd.nextDouble() - 0.5) * roughness +
          math.sin(i / 28 * math.pi * 2 + row) * (1 - roughness);
      path.lineTo(x, y + jag * s.height * 0.07);
    }
    c.drawPath(path, p..color = Color.fromRGBO(255, 255, 255, 0.75 - row * 0.12));
  }
}
