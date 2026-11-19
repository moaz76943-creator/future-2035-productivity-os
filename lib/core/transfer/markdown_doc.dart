import 'transfer_model.dart';

/// Note markdown ↔ document blocks. Blocks keep inline formatting (`**bold**`,
/// `_italic_`): Word turns it into real formatting, PDF and text drop the
/// markers ([plainInline]).
abstract final class MarkdownDoc {
  static final _heading = RegExp(r'^\s{0,3}(#{1,6})\s+(.*)$');
  static final _check = RegExp(r'^\s*[-*+]\s+\[( |x|X)\]\s?(.*)$');
  static final _bullet = RegExp(r'^\s*(?:[-*+]|\d{1,9}[.)])\s+(.*)$');
  static final _quote = RegExp(r'^\s{0,3}>\s?(.*)$');
  static final _picture = RegExp(r'^!\[[^\]]*\]\(img:[A-Za-z0-9_-]{1,64}\)\s*$');

  static String plainInline(String s) => s
      .replaceAllMapped(RegExp(r'\[\[([^\[\]]{1,200})\]\]'), (m) => m.group(1)!)
      .replaceAllMapped(RegExp(r'\[([^\]]*)\]\([^)]*\)'), (m) => m.group(1)!)
      .replaceAll(RegExp(r'\*\*|__|`'), '')
      .replaceAllMapped(
        RegExp(r'(^|[^\p{L}\p{N}])[*_]([^*_\n]+)[*_](?=$|[^\p{L}\p{N}])', unicode: true),
        (m) => '${m.group(1)}${m.group(2)}',
      );

  static List<DocBlock> toBlocks(String markdown) {
    final out = <DocBlock>[];
    final para = <String>[];
    void flush() {
      if (para.isEmpty) return;
      out.add(DocBlock(DocBlockKind.paragraph, (para.join('\n'))));
      para.clear();
    }

    for (final line in markdown.split('\n')) {
      if (_picture.hasMatch(line)) continue; // pictures stay in the app
      if (line.trim().isEmpty) {
        flush();
        continue;
      }
      if (_check.firstMatch(line) case final m?) {
        flush();
        out.add(DocBlock(DocBlockKind.check, m.group(2)!, checked: m.group(1) != ' '));
      } else if (_heading.firstMatch(line) case final m?) {
        flush();
        out.add(DocBlock(DocBlockKind.heading, m.group(2)!, level: m.group(1)!.length.clamp(1, 3)));
      } else if (_bullet.firstMatch(line) case final m?) {
        flush();
        out.add(DocBlock(DocBlockKind.bullet, m.group(1)!));
      } else if (_quote.firstMatch(line) case final m?) {
        flush();
        out.add(DocBlock(DocBlockKind.quote, m.group(1)!));
      } else {
        para.add(line);
      }
    }
    flush();
    return out;
  }

  /// Blocks (from Word or text) back to note markdown.
  static String fromBlocks(List<DocBlock> blocks) {
    final lines = <String>[];
    for (final b in blocks) {
      switch (b.kind) {
        case DocBlockKind.title:
        case DocBlockKind.heading:
          lines.add('${'#' * b.level.clamp(1, 3)} ${b.text}');
        case DocBlockKind.bullet:
          lines.add('- ${b.text}');
        case DocBlockKind.check:
          lines.add('- [${b.checked ? 'x' : ' '}] ${b.text}');
        case DocBlockKind.quote:
          lines.add('> ${b.text}');
        case DocBlockKind.table:
          for (final r in b.rows) {
            lines.add(r.join(' | '));
          }
        case DocBlockKind.paragraph:
          lines
            ..add(b.text)
            ..add('');
      }
    }
    return lines.join('\n').replaceAll(RegExp(r'\n{3,}'), '\n\n').trim();
  }

  /// Plain text of blocks (for .txt).
  static String plainText(TransferDoc doc) {
    final lines = <String>[];
    for (final b in doc.blocks) {
      switch (b.kind) {
        case DocBlockKind.bullet:
          lines.add('• ${plainInline(b.text)}');
        case DocBlockKind.check:
          lines.add('${b.checked ? '☑' : '☐'} ${plainInline(b.text)}');
        case DocBlockKind.table:
          for (final r in b.rows) {
            lines.add(r.join('\t'));
          }
        default:
          lines.add(plainInline(b.text));
      }
      if (b.kind == DocBlockKind.title ||
          b.kind == DocBlockKind.heading ||
          b.kind == DocBlockKind.paragraph) {
        lines.add('');
      }
    }
    return lines.join('\n').trim();
  }
}

/// The same document without inline markers (for PDF pages).
extension PlainDoc on TransferDoc {
  TransferDoc get plain => TransferDoc(
    rtl: rtl,
    blocks: [
      for (final b in blocks)
        DocBlock(
          b.kind,
          MarkdownDoc.plainInline(b.text),
          level: b.level,
          checked: b.checked,
          rows: b.rows,
        ),
    ],
  );
}
