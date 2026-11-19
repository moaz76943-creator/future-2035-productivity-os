import 'package:flutter/gestures.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/tokens.dart';
import '../application/note_text.dart';
import '../data/note_images.dart';
import 'note_image_view.dart';

/// Safe renderer for the note markdown subset: headings, bold, italic,
/// bullet/numbered lists, checklists, quotes, `[[wiki links]]` and `#tags`.
/// Never renders HTML or loads images; `[text](url)` shows only its text.
/// Each line picks its own text direction from its first strong character,
/// so mixed Arabic/Latin notes read correctly.
class MarkdownPreview extends StatefulWidget {
  const MarkdownPreview({
    super.key,
    required this.body,
    required this.onToggleCheckbox,
    required this.onOpenLink,
    this.accent = Palette.champagne,
  });

  final String body;

  /// Called with the 0-based source line index of the tapped checkbox.
  final ValueChanged<int> onToggleCheckbox;
  final ValueChanged<String> onOpenLink;
  final Color accent;

  @override
  State<MarkdownPreview> createState() => _MarkdownPreviewState();
}

class _MarkdownPreviewState extends State<MarkdownPreview> {
  final _recognizers = <TapGestureRecognizer>[];

  static final _heading = RegExp(r'^\s{0,3}(#{1,6})\s+(.*)$');
  static final _checkbox = RegExp(r'^(\s*)[-*+]\s+\[( |x|X)\]\s?(.*)$');
  static final _bullet = RegExp(r'^(\s*)[-*+]\s+(.*)$');
  static final _ordered = RegExp(r'^(\s*)(\d{1,9})[.)]\s+(.*)$');
  static final _quote = RegExp(r'^\s{0,3}>\s?(.*)$');

  static final _inline = RegExp(
    r'\*\*(.+?)\*\*'
    r'|__(.+?)__'
    r'|(?<![\p{L}\p{N}])([*_])(?![\s*_])(.+?)(?<!\s)\3(?![\p{L}\p{N}])'
    r'|\[\[([^\[\]]{1,200})\]\]'
    r'|\[([^\]]+)\]\([^)]*\)'
    r'|(?<=^|\s)#([\p{L}\p{N}_-]{1,50})'
    r'|`([^`]+)`',
    unicode: true,
  );

  void _clearRecognizers() {
    for (final r in _recognizers) {
      r.dispose();
    }
    _recognizers.clear();
  }

  @override
  void dispose() {
    _clearRecognizers();
    super.dispose();
  }

  List<InlineSpan> _spans(String text, TextStyle base, {int depth = 0}) {
    final lux = context.lux;
    final out = <InlineSpan>[];
    var i = 0;
    for (final m in _inline.allMatches(text)) {
      if (m.start > i) out.add(TextSpan(text: text.substring(i, m.start)));
      i = m.end;
      if (depth > 3) {
        out.add(TextSpan(text: m.group(0)));
        continue;
      }
      if (m.group(1) != null || m.group(2) != null) {
        final s = base.copyWith(fontWeight: FontWeight.w700);
        out.add(
          TextSpan(
            style: s,
            children: _spans(m.group(1) ?? m.group(2)!, s, depth: depth + 1),
          ),
        );
      } else if (m.group(4) != null) {
        final s = base.copyWith(fontStyle: FontStyle.italic);
        out.add(
          TextSpan(
            style: s,
            children: _spans(m.group(4)!, s, depth: depth + 1),
          ),
        );
      } else if (m.group(5) != null) {
        final title = m.group(5)!.trim();
        final r = TapGestureRecognizer()..onTap = () => widget.onOpenLink(title);
        _recognizers.add(r);
        out.add(
          TextSpan(
            text: title,
            recognizer: r,
            semanticsLabel: context.l10n.notesOpenLinkedNote(title),
            style: base.copyWith(
              color: widget.accent,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.underline,
              decorationColor: widget.accent.withValues(alpha: 0.5),
            ),
          ),
        );
      } else if (m.group(6) != null) {
        out.add(
          TextSpan(
            text: m.group(6),
            style: base.copyWith(decoration: TextDecoration.underline),
          ),
        );
      } else if (m.group(7) != null) {
        out.add(
          TextSpan(
            text: '#${m.group(7)}',
            style: base.copyWith(color: Palette.emerald, fontWeight: FontWeight.w600),
          ),
        );
      } else if (m.group(8) != null) {
        out.add(
          TextSpan(
            text: m.group(8),
            style: base.copyWith(fontFamily: 'monospace', backgroundColor: lux.recessed),
          ),
        );
      }
    }
    if (i < text.length) out.add(TextSpan(text: text.substring(i)));
    return out;
  }

  Widget _rich(String text, TextStyle style, TextDirection dir) => Text.rich(
    TextSpan(style: style, children: _spans(text, style)),
    textDirection: dir,
  );

  @override
  Widget build(BuildContext context) {
    _clearRecognizers();
    final l10n = context.l10n;
    final lux = context.lux;
    final t = context.text;
    final ambient = Directionality.of(context);
    if (widget.body.trim().isEmpty) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: Space.md),
        child: Text(l10n.notesPreviewEmpty, style: t.bodyMedium?.copyWith(color: lux.ink3)),
      );
    }
    final body = t.bodyLarge!.copyWith(color: lux.ink, height: 1.5);
    final lines = widget.body.split('\n');
    final children = <Widget>[];
    for (var i = 0; i < lines.length; i++) {
      final line = lines[i];
      final dir = NoteText.firstStrongDirection(line) ?? ambient;
      Widget block;
      if (line.trim().isEmpty) {
        block = const SizedBox(height: Space.xs);
      } else if (NoteImageRefs.line.firstMatch(line) case final m?) {
        block = NoteImageView(id: m.group(1)!, maxHeight: 360);
      } else if (_heading.firstMatch(line) case final m?) {
        final level = m.group(1)!.length;
        final style =
            (level == 1
                    ? t.headlineSmall
                    : level == 2
                    ? t.titleLarge
                    : t.titleMedium)!
                .copyWith(color: lux.ink, fontWeight: FontWeight.w700);
        block = Padding(
          padding: EdgeInsets.only(top: level == 1 ? Space.sm : Space.xs, bottom: Space.xxs),
          child: Semantics(header: true, child: _rich(m.group(2)!, style, dir)),
        );
      } else if (_checkbox.firstMatch(line) case final m?) {
        final checked = m.group(2) != ' ';
        final label = m.group(3)!;
        final index = i;
        final style = checked
            ? body.copyWith(color: lux.ink3, decoration: TextDecoration.lineThrough)
            : body;
        block = Padding(
          padding: EdgeInsetsDirectional.only(start: _indent(m.group(1)!)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Semantics(
                label: l10n.notesCheckboxSemantics(NoteText.stripMarkdown(label)),
                child: Checkbox(
                  value: checked,
                  activeColor: widget.accent,
                  onChanged: (_) => widget.onToggleCheckbox(index),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: _rich(label, style, dir),
                ),
              ),
            ],
          ),
        );
      } else if (_bullet.firstMatch(line) case final m?) {
        block = _listRow(
          indent: m.group(1)!,
          marker: Padding(
            padding: const EdgeInsetsDirectional.only(top: 10, end: Space.sm, start: Space.xs),
            child: Container(
              width: 6,
              height: 6,
              decoration: BoxDecoration(color: widget.accent, shape: BoxShape.circle),
            ),
          ),
          child: _rich(m.group(2)!, body, dir),
        );
      } else if (_ordered.firstMatch(line) case final m?) {
        block = _listRow(
          indent: m.group(1)!,
          marker: Padding(
            padding: const EdgeInsetsDirectional.only(end: Space.xs, start: Space.xxs),
            child: Text(
              '${m.group(2)}.',
              style: body.copyWith(color: widget.accent, fontWeight: FontWeight.w700),
            ),
          ),
          child: _rich(m.group(3)!, body, dir),
        );
      } else if (_quote.firstMatch(line) case final m?) {
        block = Container(
          margin: const EdgeInsets.symmetric(vertical: Space.xxs),
          padding: const EdgeInsetsDirectional.only(start: Space.sm),
          decoration: BoxDecoration(
            border: BorderDirectional(
              start: BorderSide(color: widget.accent.withValues(alpha: 0.6), width: 3),
            ),
          ),
          child: _rich(m.group(1)!, body.copyWith(color: lux.ink2), dir),
        );
      } else {
        block = _rich(line, body, dir);
      }
      children.add(
        Directionality(
          textDirection: dir,
          child: Align(alignment: AlignmentDirectional.centerStart, child: block),
        ),
      );
    }
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: children);
  }

  double _indent(String ws) => (ws.replaceAll('\t', '  ').length ~/ 2) * 16.0;

  Widget _listRow({required String indent, required Widget marker, required Widget child}) =>
      Padding(
        padding: EdgeInsetsDirectional.only(start: _indent(indent), top: 2, bottom: 2),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            marker,
            Expanded(child: child),
          ],
        ),
      );
}
