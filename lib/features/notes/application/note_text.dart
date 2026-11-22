import 'package:flutter/services.dart';

/// Pure text helpers for notes: markdown toolbar transforms, word counting,
/// plain-text previews and content-based text direction. No Flutter widgets,
/// so everything here is unit-testable.
/// Line formats the toolbar can show as active.
enum NoteLineKind { heading, bullet, checklist }

abstract final class NoteText {
  static final _cjk = RegExp(
    r'[\p{Script=Han}\p{Script=Hiragana}\p{Script=Katakana}]',
    unicode: true,
  );

  /// One CJK ideograph/kana per match, or a run of letters/digits/marks
  /// (excluding CJK) optionally joined by apostrophes or hyphens.
  static final _word = RegExp(
    r"[\p{Script=Han}\p{Script=Hiragana}\p{Script=Katakana}]"
    r"|(?:(?![\p{Script=Han}\p{Script=Hiragana}\p{Script=Katakana}])[\p{L}\p{N}\p{M}])+"
    r"(?:['’\-](?:(?![\p{Script=Han}\p{Script=Hiragana}\p{Script=Katakana}])[\p{L}\p{N}\p{M}])+)*",
    unicode: true,
  );

  /// Counts words in [text] after removing markdown syntax. Chinese and
  /// Japanese characters count individually; other scripts count runs of
  /// letters separated by spaces or punctuation.
  static int wordCount(String text) => _word.allMatches(stripMarkdown(text)).length;

  static bool containsCjk(String text) => _cjk.hasMatch(text);

  static final _heading = RegExp(r'^\s{0,3}#{1,6}\s+');
  static final _checkbox = RegExp(r'^(\s*)[-*+]\s+\[( |x|X)\]\s?');
  static final _bullet = RegExp(r'^(\s*)[-*+]\s+');
  static final _ordered = RegExp(r'^(\s*)\d{1,9}[.)]\s+');
  static final _quote = RegExp(r'^\s{0,3}>\s?');
  static final _headingIndent = RegExp(r'^(\s{0,3})#{1,6}\s+');

  /// Removes markdown syntax, keeping readable text. Line breaks are kept.
  static String stripMarkdown(String text) {
    final lines = text.split('\n').map((l) {
      var s = l;
      s = s.replaceFirst(_heading, '');
      s = s.replaceFirst(_checkbox, '');
      s = s.replaceFirst(_bullet, '');
      s = s.replaceFirst(_ordered, '');
      s = s.replaceFirst(_quote, '');
      return s;
    });
    return lines
        .join('\n')
        .replaceAll(RegExp(r'!\[[^\]]*\]\(img:[A-Za-z0-9_-]{1,64}\)'), '')
        .replaceAllMapped(RegExp(r'\[\[([^\[\]]{1,200})\]\]'), (m) => m.group(1)!)
        .replaceAllMapped(RegExp(r'\[([^\]]*)\]\([^)]*\)'), (m) => m.group(1)!)
        .replaceAll(RegExp(r'\*\*|__|`'), '')
        .replaceAllMapped(
          RegExp(r'(^|[^\p{L}\p{N}])[*_]([^*_\n]+)[*_](?=$|[^\p{L}\p{N}])', unicode: true),
          (m) => '${m.group(1)}${m.group(2)}',
        );
  }

  /// First non-empty lines of [body] as plain text, joined by newlines.
  static String preview(String body, {int maxLines = 6, int maxChars = 400}) {
    final lines = stripMarkdown(body)
        .split('\n')
        .map((l) => l.trim())
        .where((l) => l.isNotEmpty)
        .take(maxLines)
        .join('\n');
    if (lines.length <= maxChars) return lines;
    return '${lines.substring(0, maxChars).trimRight()}…';
  }

  /// Checklist progress `(done, total)` for `- [ ]` / `- [x]` lines.
  static (int, int) checklistProgress(String body) {
    var done = 0;
    var total = 0;
    for (final l in body.split('\n')) {
      final m = _checkbox.firstMatch(l);
      if (m == null) continue;
      total++;
      if (m.group(2) != ' ') done++;
    }
    return (done, total);
  }

  /// Toggles the checkbox on line [lineIndex] (0-based). Returns [body]
  /// unchanged when that line is not a checklist item.
  static String toggleCheckbox(String body, int lineIndex) {
    final lines = body.split('\n');
    if (lineIndex < 0 || lineIndex >= lines.length) return body;
    final line = lines[lineIndex];
    final m = _checkbox.firstMatch(line);
    if (m == null) return body;
    final open = line.indexOf('[', m.group(1)!.length);
    final checked = m.group(2) != ' ';
    lines[lineIndex] = line.replaceRange(open + 1, open + 2, checked ? ' ' : 'x');
    return lines.join('\n');
  }

  // ---------------------------------------------------------------- direction

  static bool _isRtl(int c) =>
      (c >= 0x0590 && c <= 0x08FF) ||
      (c >= 0xFB1D && c <= 0xFDFF) ||
      (c >= 0xFE70 && c <= 0xFEFF) ||
      (c >= 0x10800 && c <= 0x10FFF) ||
      (c >= 0x1E800 && c <= 0x1EFFF);

  static final _letter = RegExp(r'\p{L}', unicode: true);

  /// Direction of the first strong (letter) character, or null when the
  /// text has none (empty, digits, punctuation only).
  static TextDirection? firstStrongDirection(String text) {
    for (final rune in text.runes) {
      if (_isRtl(rune)) {
        final ch = String.fromCharCode(rune);
        if (_letter.hasMatch(ch)) return TextDirection.rtl;
        continue;
      }
      if (rune < 0x41) continue;
      if (_letter.hasMatch(String.fromCharCode(rune))) return TextDirection.ltr;
    }
    return null;
  }

  static final _emptyPairs = RegExp(r'(\*\*|__)(\*\*|__|_)?\1');

  /// Removes formatting pairs with nothing inside (`****`, `**__**`, `____`),
  /// left by pressing toolbar buttons without typing. Text is never touched.
  static String removeEmptyMarkers(String body) {
    var s = body;
    for (var i = 0; i < 3; i++) {
      final next = s.replaceAll(_emptyPairs, '');
      if (next == s) break;
      s = next;
    }
    return s;
  }

  // ---------------------------------------------------------- toolbar edits

  /// The kind of the line under the cursor (for highlighting its button).
  static NoteLineKind? lineKindAt(TextEditingValue v) {
    final text = v.text;
    final at = v.selection.isValid ? v.selection.start.clamp(0, text.length) : text.length;
    final start = at == 0 ? 0 : text.lastIndexOf('\n', at - 1) + 1;
    var end = text.indexOf('\n', at);
    if (end < 0) end = text.length;
    final line = text.substring(start, end);
    if (_checkbox.hasMatch(line)) return NoteLineKind.checklist;
    if (_heading.hasMatch(line)) return NoteLineKind.heading;
    if (_bullet.hasMatch(line)) return NoteLineKind.bullet;
    return null;
  }

  /// Wraps the selection with [open]/[close], or removes them when the
  /// selection is already wrapped. A collapsed cursor inserts the pair and
  /// places the cursor between them.
  static TextEditingValue wrap(TextEditingValue v, String open, [String? close]) {
    final c = close ?? open;
    final text = v.text;
    final sel = _validSelection(v);
    final start = sel.start;
    final end = sel.end;
    final selected = text.substring(start, end);

    // A cursor between an empty pair (the button pressed twice): remove it.
    if (start == end &&
        start >= open.length &&
        end + c.length <= text.length &&
        text.substring(start - open.length, start) == open &&
        text.substring(end, end + c.length) == c) {
      return TextEditingValue(
        text: text.replaceRange(start - open.length, end + c.length, ''),
        selection: TextSelection.collapsed(offset: start - open.length),
      );
    }
    // Markers directly around a non-empty selection: unwrap.
    final before = start >= open.length ? text.substring(start - open.length, start) : '';
    final after = end + c.length <= text.length ? text.substring(end, end + c.length) : '';
    if (selected.isNotEmpty && before == open && after == c) {
      final t = text
          .replaceRange(end, end + c.length, '')
          .replaceRange(start - open.length, start, '');
      return TextEditingValue(
        text: t,
        selection: TextSelection(baseOffset: start - open.length, extentOffset: end - open.length),
      );
    }
    // Selection itself includes the markers: unwrap inside.
    if (selected.length >= open.length + c.length &&
        selected.startsWith(open) &&
        selected.endsWith(c)) {
      final inner = selected.substring(open.length, selected.length - c.length);
      return TextEditingValue(
        text: text.replaceRange(start, end, inner),
        selection: TextSelection(baseOffset: start, extentOffset: start + inner.length),
      );
    }
    final t = text.replaceRange(start, end, '$open$selected$c');
    return TextEditingValue(
      text: t,
      selection: selected.isEmpty
          ? TextSelection.collapsed(offset: start + open.length)
          : TextSelection(baseOffset: start + open.length, extentOffset: end + open.length),
    );
  }

  static TextEditingValue bold(TextEditingValue v) => wrap(v, '**');
  static TextEditingValue italic(TextEditingValue v) => wrap(v, '_');
  static TextEditingValue wikiLink(TextEditingValue v) => wrap(v, '[[', ']]');

  /// A heading replaces a list marker on the line (and the other way round),
  /// so markers never pile up.
  static TextEditingValue heading(TextEditingValue v) => _linePrefix(
    v,
    '# ',
    (l) => _heading.firstMatch(l)?.group(0),
    replace: (l) => _checkbox.firstMatch(l) ?? _bullet.firstMatch(l) ?? _ordered.firstMatch(l),
  );

  static TextEditingValue bulletList(TextEditingValue v) => _linePrefix(
    v,
    '- ',
    (l) {
      if (_checkbox.hasMatch(l)) return null; // converted below
      final m = _bullet.firstMatch(l);
      return m == null ? null : l.substring(m.group(1)!.length, m.end);
    },
    replace: (l) =>
        _checkbox.firstMatch(l) ?? _ordered.firstMatch(l) ?? _headingIndent.firstMatch(l),
  );

  static TextEditingValue checklist(TextEditingValue v) => _linePrefix(
    v,
    '- [ ] ',
    (l) {
      final m = _checkbox.firstMatch(l);
      return m == null ? null : l.substring(m.group(1)!.length, m.end);
    },
    replace: (l) => _bullet.firstMatch(l) ?? _ordered.firstMatch(l) ?? _headingIndent.firstMatch(l),
  );

  /// Toggles [prefix] on every line touched by the selection. [existing]
  /// returns the prefix text a line already has (to remove when every line
  /// has it). [replace] finds other list markers that are swapped out.
  static TextEditingValue _linePrefix(
    TextEditingValue v,
    String prefix,
    String? Function(String line) existing, {
    RegExpMatch? Function(String line)? replace,
  }) {
    final text = v.text;
    final sel = _validSelection(v);
    final lineStart = text.lastIndexOf('\n', sel.start == 0 ? 0 : sel.start - 1) + 1;
    final adjStart = sel.start == 0 ? 0 : lineStart;
    var lineEnd = text.indexOf('\n', sel.end);
    if (lineEnd < 0) lineEnd = text.length;
    final block = text.substring(adjStart, lineEnd);
    final lines = block.split('\n');
    final allHave = lines.every((l) => existing(l) != null);

    var delta0 = 0; // shift applied to first line (for selection start)
    var total = 0;
    final out = <String>[];
    for (var i = 0; i < lines.length; i++) {
      final l = lines[i];
      String nl;
      if (allHave) {
        final p = existing(l)!;
        final idx = l.indexOf(p);
        nl = l.replaceRange(idx, idx + p.length, '');
      } else if (existing(l) != null) {
        nl = l;
      } else if (replace?.call(l) case final m?) {
        final indent = m.group(1) ?? '';
        nl = '$indent$prefix${l.substring(m.end)}';
      } else {
        final indent = l.length - l.trimLeft().length;
        nl = '${l.substring(0, indent)}$prefix${l.substring(indent)}';
      }
      final d = nl.length - l.length;
      if (i == 0) delta0 = d;
      total += d;
      out.add(nl);
    }
    final newText = text.replaceRange(adjStart, lineEnd, out.join('\n'));
    int clamp(int o) => o.clamp(adjStart, newText.length);
    final collapsed = sel.isCollapsed;
    final newStart = clamp(sel.start + delta0);
    final newEnd = collapsed ? newStart : clamp(sel.end + total);
    return TextEditingValue(
      text: newText,
      selection: TextSelection(baseOffset: newStart, extentOffset: newEnd),
    );
  }

  static TextSelection _validSelection(TextEditingValue v) {
    final s = v.selection;
    if (!s.isValid) return TextSelection.collapsed(offset: v.text.length);
    final a = s.start.clamp(0, v.text.length);
    final b = s.end.clamp(0, v.text.length);
    return TextSelection(baseOffset: a, extentOffset: b);
  }
}

/// Enter in a list continues it (`- [ ] `, `- `, `2. `); Enter on an empty
/// item ends the list, like common note apps.
class NoteListFormatter extends TextInputFormatter {
  const NoteListFormatter();

  static final _item = RegExp(r'^(\s*)(?:([-*+])\s+\[(?: |x|X)\]|([-*+])|(\d{1,9})([.)]))\s+');

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final sel = newValue.selection;
    if (!sel.isCollapsed ||
        newValue.text.length != oldValue.text.length + 1 ||
        sel.start < 1 ||
        newValue.text[sel.start - 1] != '\n') {
      return newValue;
    }
    final text = newValue.text;
    final lineEnd = sel.start - 1;
    final lineStart = text.lastIndexOf('\n', lineEnd - 1) + 1;
    final line = text.substring(lineStart, lineEnd);
    final m = _item.firstMatch(line);
    if (m == null) return newValue;
    if (line.trim().length == m.group(0)!.trim().length) {
      // Empty item: drop the marker and end the list.
      final t = text.replaceRange(lineStart, sel.start, '');
      return TextEditingValue(
        text: t,
        selection: TextSelection.collapsed(offset: lineStart),
      );
    }
    final indent = m.group(1)!;
    final next = m.group(2) != null
        ? '${m.group(2)} [ ] '
        : m.group(3) != null
        ? '${m.group(3)} '
        : '${int.parse(m.group(4)!) + 1}${m.group(5)} ';
    final t = text.replaceRange(sel.start, sel.start, '$indent$next');
    return TextEditingValue(
      text: t,
      selection: TextSelection.collapsed(offset: sel.start + indent.length + next.length),
    );
  }
}
