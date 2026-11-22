import 'package:material_ui/material_ui.dart';

import '../data/note_images.dart';
import 'note_image_view.dart';

/// The note text field shows formatting, not symbols: `**bold**` is bold,
/// `# Heading` is a heading, `- [ ]` is a check box, `- ` a bullet, `[[link]]`
/// a link. The markdown stays in the text (so notes remain plain text that
/// exports, searches and syncs well) but the markers are drawn invisible.
/// Every character keeps its place, so typing and the cursor behave normally.
class NoteEditingController extends TextEditingController {
  NoteEditingController({super.text});

  /// Accent for check boxes, bullets and links.
  Color accent = const Color(0xFF6C4CFF);

  /// Tapping a check box: called with its line (0-based).
  ValueChanged<int>? onToggleCheckbox;

  static final _heading = RegExp(r'^(\s{0,3})(#{1,6})(\s+)');
  static final _checkbox = RegExp(r'^(\s*)([-*+])(\s+)\[( |x|X)\](\s?)');
  static final _bullet = RegExp(r'^(\s*)([-*+])(\s+)');
  static final _quote = RegExp(r'^(\s{0,3})(>)(\s?)');
  static final _inline = RegExp(
    r'(\*\*)(.+?)(\*\*)'
    r'|(__)(.+?)(__)'
    r'|(?<![\p{L}\p{N}_*])([_*])(?![\s_*])(.+?)(?<!\s)([_*])(?![\p{L}\p{N}_*])'
    r'|(\[\[)([^\[\]]{1,200})(\]\])'
    r'|(`)([^`\n]+)(`)',
    unicode: true,
  );

  static const _hidden = TextStyle(fontSize: 0.01, color: Color(0x00000000), letterSpacing: 0);

  @override
  TextSpan buildTextSpan({
    required BuildContext context,
    TextStyle? style,
    required bool withComposing,
  }) {
    final base = style ?? const TextStyle();
    final lines = text.split('\n');
    final out = <InlineSpan>[];
    for (var i = 0; i < lines.length; i++) {
      if (i > 0) out.add(const TextSpan(text: '\n'));
      _line(out, lines[i], i, base);
    }
    return TextSpan(style: base, children: out);
  }

  void _line(List<InlineSpan> out, String line, int index, TextStyle base) {
    // A picture line: the first character carries the picture, the rest of
    // the reference is invisible.
    if (NoteImageRefs.line.firstMatch(line) case final m?) {
      out
        ..add(
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: LayoutBuilder(
              builder: (_, c) => SizedBox(
                width: c.maxWidth.isFinite ? c.maxWidth - 8 : 280,
                child: NoteImageView(id: m.group(1)!),
              ),
            ),
          ),
        )
        ..add(TextSpan(text: line.substring(1), style: _hidden));
      return;
    }
    if (_checkbox.firstMatch(line) case final m?) {
      final checked = m.group(4) != ' ';
      out
        ..add(TextSpan(text: '${m.group(1)}${m.group(2)}${m.group(3)}', style: _hidden))
        ..add(
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: GestureDetector(
              onTap: () => onToggleCheckbox?.call(index),
              child: Padding(
                padding: const EdgeInsetsDirectional.only(end: 6),
                child: Icon(
                  checked ? Icons.check_box_rounded : Icons.check_box_outline_blank_rounded,
                  size: (base.fontSize ?? 16) * 1.3,
                  color: accent,
                ),
              ),
            ),
          ),
        )
        ..add(TextSpan(text: '${m.group(4)}]${m.group(5)}', style: _hidden));
      final rest = line.substring(m.end);
      _inlineSpans(
        out,
        rest,
        checked
            ? base.copyWith(
                color: base.color?.withValues(alpha: 0.5),
                decoration: TextDecoration.lineThrough,
              )
            : base,
      );
      return;
    }
    if (_heading.firstMatch(line) case final m?) {
      final level = m.group(2)!.length;
      out.add(TextSpan(text: m.group(0), style: _hidden));
      final size =
          (base.fontSize ?? 16) *
          (level == 1
              ? 1.45
              : level == 2
              ? 1.25
              : 1.1);
      _inlineSpans(
        out,
        line.substring(m.end),
        base.copyWith(fontSize: size, fontWeight: FontWeight.w700, height: 1.35),
      );
      return;
    }
    if (_bullet.firstMatch(line) case final m?) {
      out
        ..add(TextSpan(text: m.group(1)))
        ..add(
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: Padding(
              padding: const EdgeInsetsDirectional.only(start: 4, end: 2),
              child: Icon(Icons.circle, size: (base.fontSize ?? 16) * 0.45, color: accent),
            ),
          ),
        )
        ..add(TextSpan(text: m.group(3)));
      _inlineSpans(out, line.substring(m.end), base);
      return;
    }
    if (_quote.firstMatch(line) case final m?) {
      out
        ..add(TextSpan(text: m.group(1)))
        ..add(
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: Container(
              width: 3,
              height: (base.fontSize ?? 16) * 1.4,
              margin: const EdgeInsetsDirectional.only(end: 8),
              color: accent.withValues(alpha: 0.6),
            ),
          ),
        )
        ..add(TextSpan(text: m.group(3), style: _hidden));
      _inlineSpans(out, line.substring(m.end), base.copyWith(fontStyle: FontStyle.italic));
      return;
    }
    _inlineSpans(out, line, base);
  }

  void _inlineSpans(List<InlineSpan> out, String text, TextStyle style) {
    var i = 0;
    for (final m in _inline.allMatches(text)) {
      if (m.start > i) out.add(TextSpan(text: text.substring(i, m.start), style: style));
      i = m.end;
      final (open, inner, close, s) = switch (m) {
        _ when m.group(1) != null => (
          m.group(1)!,
          m.group(2)!,
          m.group(3)!,
          style.copyWith(fontWeight: FontWeight.w700),
        ),
        _ when m.group(4) != null => (
          m.group(4)!,
          m.group(5)!,
          m.group(6)!,
          style.copyWith(fontWeight: FontWeight.w700),
        ),
        _ when m.group(7) != null => (
          m.group(7)!,
          m.group(8)!,
          m.group(9)!,
          style.copyWith(fontStyle: FontStyle.italic),
        ),
        _ when m.group(10) != null => (
          m.group(10)!,
          m.group(11)!,
          m.group(12)!,
          style.copyWith(
            color: accent,
            decoration: TextDecoration.underline,
            decorationColor: accent,
          ),
        ),
        _ => (
          m.group(13)!,
          m.group(14)!,
          m.group(15)!,
          style.copyWith(fontFamily: 'monospace', backgroundColor: accent.withValues(alpha: 0.10)),
        ),
      };
      out
        ..add(TextSpan(text: open, style: _hidden))
        ..add(TextSpan(text: inner, style: s))
        ..add(TextSpan(text: close, style: _hidden));
    }
    if (i < text.length) out.add(TextSpan(text: text.substring(i), style: style));
  }
}
