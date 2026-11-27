import 'package:material_ui/material_ui.dart';

/// The six bottom-navigation glyphs, drawn as vector strokes of one weight
/// (2px) with round caps so they read as one family. Direction-neutral.
enum NavGlyphKind { home, tasks, cards, focus, calendar, spaces }

class NavGlyph extends StatelessWidget {
  const NavGlyph(this.kind, {super.key, required this.color, this.size = 24, this.selected = false});
  final NavGlyphKind kind;
  final Color color;
  final double size;
  final bool selected;

  @override
  Widget build(BuildContext context) => ExcludeSemantics(
    child: CustomPaint(
      size: Size.square(size),
      painter: _NavGlyphPainter(kind, color, selected),
    ),
  );
}

class _NavGlyphPainter extends CustomPainter {
  _NavGlyphPainter(this.kind, this.color, this.selected);
  final NavGlyphKind kind;
  final Color color;
  final bool selected;

  @override
  void paint(Canvas canvas, Size size) {
    final u = size.width / 24; // design grid is 24 x 24
    canvas.scale(u);
    final stroke = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;
    final tint = Paint()..color = color.withValues(alpha: selected ? 0.16 : 0);
    void both(Path p) {
      canvas.drawPath(p, tint);
      canvas.drawPath(p, stroke);
    }

    switch (kind) {
      case NavGlyphKind.home:
        both(Path()
          ..moveTo(3.5, 11)
          ..lineTo(12, 3.8)
          ..lineTo(20.5, 11)
          ..lineTo(20.5, 19)
          ..quadraticBezierTo(20.5, 20.5, 19, 20.5)
          ..lineTo(5, 20.5)
          ..quadraticBezierTo(3.5, 20.5, 3.5, 19)
          ..close());
        canvas.drawPath(Path()..moveTo(9.5, 20.5)..lineTo(9.5, 14.5)..lineTo(14.5, 14.5)..lineTo(14.5, 20.5), stroke);
      case NavGlyphKind.tasks:
        both(Path()..addOval(Rect.fromCircle(center: const Offset(12, 12), radius: 9)));
        canvas.drawPath(Path()..moveTo(7.8, 12.3)..lineTo(10.8, 15.2)..lineTo(16.4, 9.2), stroke);
      case NavGlyphKind.cards:
        both(Path()..addRRect(RRect.fromRectAndRadius(const Rect.fromLTWH(3.5, 8, 14, 11.5), const Radius.circular(2.5))));
        canvas.drawPath(Path()..moveTo(7, 4.5)..lineTo(18.5, 4.5)..quadraticBezierTo(20.5, 4.5, 20.5, 6.5)..lineTo(20.5, 14.5), stroke);
      case NavGlyphKind.focus:
        both(Path()..addOval(Rect.fromCircle(center: const Offset(12, 13.5), radius: 7.5)));
        canvas.drawPath(Path()..moveTo(12, 13.5)..lineTo(12, 9.5), stroke);
        canvas.drawPath(Path()..moveTo(9.5, 3)..lineTo(14.5, 3), stroke);
        canvas.drawPath(Path()..moveTo(18, 6.5)..lineTo(19.5, 5), stroke);
      case NavGlyphKind.calendar:
        both(Path()..addRRect(RRect.fromRectAndRadius(const Rect.fromLTWH(3.5, 5, 17, 15.5), const Radius.circular(3))));
        canvas.drawPath(Path()..moveTo(3.5, 10)..lineTo(20.5, 10), stroke);
        canvas.drawPath(Path()..moveTo(8, 2.8)..lineTo(8, 6.5), stroke);
        canvas.drawPath(Path()..moveTo(16, 2.8)..lineTo(16, 6.5), stroke);
      case NavGlyphKind.spaces:
        for (final o in const [Offset(4, 4), Offset(13.5, 4), Offset(4, 13.5), Offset(13.5, 13.5)]) {
          both(Path()..addRRect(RRect.fromRectAndRadius(Rect.fromLTWH(o.dx, o.dy, 6.5, 6.5), const Radius.circular(2))));
        }
    }
  }

  @override
  bool shouldRepaint(_NavGlyphPainter old) =>
      old.kind != kind || old.color != color || old.selected != selected;
}
