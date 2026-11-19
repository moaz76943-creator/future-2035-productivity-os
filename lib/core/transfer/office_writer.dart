import 'dart:typed_data';

import '../files/zip_writer.dart';
import 'transfer_model.dart';

/// Excel (.xlsx) and Word (.docx) files written from scratch (Office Open
/// XML). Excel and Word lay out Arabic themselves; the sheet/paragraphs are
/// marked right-to-left when the content is Arabic.
abstract final class OfficeWriter {
  static final _inline = RegExp(
    r'\*\*(.+?)\*\*|__(.+?)__'
    r'|(?<![\p{L}\p{N}_*])[_*](?![\s_*])(.+?)(?<!\s)[_*](?![\p{L}\p{N}_*])'
    r'|\[\[([^\[\]]{1,200})\]\]|`([^`\n]+)`|\[([^\]]+)\]\([^)]*\)',
    unicode: true,
  );

  static String esc(String s) => s
      .replaceAll(RegExp(r'[\x00-\x08\x0B\x0C\x0E-\x1F]'), '')
      .replaceAll('&', '&amp;')
      .replaceAll('<', '&lt;')
      .replaceAll('>', '&gt;')
      .replaceAll('"', '&quot;');

  static String _col(int i) {
    var n = i + 1;
    var s = '';
    while (n > 0) {
      final r = (n - 1) % 26;
      s = String.fromCharCode(65 + r) + s;
      n = (n - 1) ~/ 26;
    }
    return s;
  }

  // ---------------------------------------------------------------- Excel

  static Uint8List xlsx(TransferTable t) {
    final rows = [
      [for (final c in t.columns) c.label],
      for (final r in t.rows) [for (final c in t.columns) r[c.id] ?? ''],
    ];
    final sheet = StringBuffer(
      '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>'
      '<worksheet xmlns="http://schemas.openxmlformats.org/spreadsheetml/2006/main">'
      '<sheetViews><sheetView workbookViewId="0"${t.rtl ? ' rightToLeft="1"' : ''}>'
      '<pane ySplit="1" topLeftCell="A2" activePane="bottomLeft" state="frozen"/></sheetView></sheetViews>'
      '<cols>${[for (var i = 0; i < t.columns.length; i++) '<col min="${i + 1}" max="${i + 1}" width="${i == 0 ? 32 : 24}" customWidth="1"/>'].join()}</cols>'
      '<sheetData>',
    );
    for (var r = 0; r < rows.length; r++) {
      sheet.write('<row r="${r + 1}">');
      for (var c = 0; c < rows[r].length; c++) {
        final v = rows[r][c];
        if (v.isEmpty) continue;
        sheet.write(
          '<c r="${_col(c)}${r + 1}" t="inlineStr"${r == 0 ? ' s="1"' : ''}>'
          '<is><t xml:space="preserve">${esc(v)}</t></is></c>',
        );
      }
      sheet.write('</row>');
    }
    sheet.write('</sheetData></worksheet>');
    // Excel sheet names: at most 31 characters, without []:*?/\ (cut before escaping).
    final raw = t.title.replaceAll(RegExp(r'[\[\]:*?/\\]'), ' ').trim();
    final name = esc(raw.length > 31 ? raw.substring(0, 31) : raw);
    final z = ZipWriter()
      ..addText(
        '[Content_Types].xml',
        '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>'
            '<Types xmlns="http://schemas.openxmlformats.org/package/2006/content-types">'
            '<Default Extension="rels" ContentType="application/vnd.openxmlformats-package.relationships+xml"/>'
            '<Default Extension="xml" ContentType="application/xml"/>'
            '<Override PartName="/xl/workbook.xml" ContentType="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet.main+xml"/>'
            '<Override PartName="/xl/worksheets/sheet1.xml" ContentType="application/vnd.openxmlformats-officedocument.spreadsheetml.worksheet+xml"/>'
            '<Override PartName="/xl/styles.xml" ContentType="application/vnd.openxmlformats-officedocument.spreadsheetml.styles+xml"/>'
            '</Types>',
      )
      ..addText(
        '_rels/.rels',
        '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>'
            '<Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships">'
            '<Relationship Id="rId1" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument" Target="xl/workbook.xml"/>'
            '</Relationships>',
      )
      ..addText(
        'xl/workbook.xml',
        '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>'
            '<workbook xmlns="http://schemas.openxmlformats.org/spreadsheetml/2006/main" '
            'xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships">'
            '<sheets><sheet name="${name.isEmpty ? 'Sheet1' : name}" sheetId="1" r:id="rId1"/></sheets></workbook>',
      )
      ..addText(
        'xl/_rels/workbook.xml.rels',
        '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>'
            '<Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships">'
            '<Relationship Id="rId1" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/worksheet" Target="worksheets/sheet1.xml"/>'
            '<Relationship Id="rId2" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/styles" Target="styles.xml"/>'
            '</Relationships>',
      )
      ..addText(
        'xl/styles.xml',
        '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>'
            '<styleSheet xmlns="http://schemas.openxmlformats.org/spreadsheetml/2006/main">'
            '<fonts count="2"><font><sz val="11"/><name val="Calibri"/></font><font><b/><sz val="11"/><name val="Calibri"/></font></fonts>'
            '<fills count="2"><fill><patternFill patternType="none"/></fill><fill><patternFill patternType="gray125"/></fill></fills>'
            '<borders count="1"><border/></borders>'
            '<cellStyleXfs count="1"><xf numFmtId="0" fontId="0" fillId="0" borderId="0"/></cellStyleXfs>'
            '<cellXfs count="2"><xf numFmtId="0" fontId="0" fillId="0" borderId="0" xfId="0" applyAlignment="1">'
            '<alignment wrapText="1" vertical="top"/></xf>'
            '<xf numFmtId="0" fontId="1" fillId="0" borderId="0" xfId="0" applyFont="1"/></cellXfs>'
            '<cellStyles count="1"><cellStyle name="Normal" xfId="0" builtinId="0"/></cellStyles>'
            '</styleSheet>',
      )
      ..addText('xl/worksheets/sheet1.xml', sheet.toString());
    return z.finish();
  }

  // ----------------------------------------------------------------- Word

  static Uint8List docx(TransferDoc d) {
    final rtl = d.rtl;
    String plain(
      String text, {
      bool bold = false,
      int? size,
      bool strike = false,
      bool italic = false,
    }) {
      final props = [
        if (bold) '<w:b/><w:bCs/>',
        if (italic) '<w:i/><w:iCs/>',
        if (strike) '<w:strike/>',
        if (size != null) '<w:sz w:val="$size"/><w:szCs w:val="$size"/>',
        if (rtl) '<w:rtl/>',
      ].join();
      final parts = text.split('\n');
      final b = StringBuffer();
      for (var i = 0; i < parts.length; i++) {
        if (i > 0) b.write('<w:r><w:br/></w:r>');
        b.write(
          '<w:r>${props.isEmpty ? '' : '<w:rPr>$props</w:rPr>'}<w:t xml:space="preserve">${esc(parts[i])}</w:t></w:r>',
        );
      }
      return b.toString();
    }

    // Note formatting (**bold**, _italic_, [[link]], `code`) becomes real
    // Word formatting instead of symbols.
    String run(
      String text, {
      bool bold = false,
      int? size,
      bool strike = false,
      bool italic = false,
    }) {
      final out = StringBuffer();
      var i = 0;
      for (final m in _inline.allMatches(text)) {
        if (m.start > i) {
          out.write(
            plain(
              text.substring(i, m.start),
              bold: bold,
              size: size,
              strike: strike,
              italic: italic,
            ),
          );
        }
        final isBold = m.group(1) != null || m.group(2) != null;
        final isItalic = m.group(3) != null;
        final inner =
            m.group(1) ?? m.group(2) ?? m.group(3) ?? m.group(4) ?? m.group(5) ?? m.group(6)!;
        out.write(
          plain(
            inner,
            bold: bold || isBold,
            size: size,
            strike: strike,
            italic: italic || isItalic,
          ),
        );
        i = m.end;
      }
      if (i < text.length) {
        out.write(plain(text.substring(i), bold: bold, size: size, strike: strike, italic: italic));
      }
      return out.toString();
    }

    String para(String runs, {String extra = ''}) =>
        '<w:p><w:pPr>${rtl ? '<w:bidi/>' : ''}$extra</w:pPr>$runs</w:p>';

    final body = StringBuffer();
    for (final b in d.blocks) {
      switch (b.kind) {
        case DocBlockKind.title:
          // Outline levels: Word lists them in its navigation pane, and the
          // app reads them back as headings.
          body.write(
            para(
              run(b.text, bold: true, size: 40),
              extra: '<w:spacing w:after="240"/><w:outlineLvl w:val="0"/>',
            ),
          );
        case DocBlockKind.heading:
          body.write(
            para(
              run(b.text, bold: true, size: b.level == 1 ? 32 : 28),
              extra:
                  '<w:spacing w:before="240" w:after="120"/><w:outlineLvl w:val="${b.level.clamp(1, 8)}"/>',
            ),
          );
        case DocBlockKind.paragraph:
          body.write(para(run(b.text), extra: '<w:spacing w:after="120"/>'));
        case DocBlockKind.bullet:
          body.write(para(run('•\t${b.text}'), extra: '<w:ind w:start="360" w:hanging="360"/>'));
        case DocBlockKind.check:
          body.write(
            para(
              run('${b.checked ? '☑' : '☐'}\t${b.text}', strike: b.checked),
              extra: '<w:ind w:start="360" w:hanging="360"/>',
            ),
          );
        case DocBlockKind.quote:
          body.write(para(run(b.text, italic: true), extra: '<w:ind w:start="720"/>'));
        case DocBlockKind.table:
          body.write(
            '<w:tbl><w:tblPr>${rtl ? '<w:bidiVisual/>' : ''}<w:tblW w:w="5000" w:type="pct"/>'
            '<w:tblBorders><w:top w:val="single" w:sz="4"/><w:start w:val="single" w:sz="4"/>'
            '<w:bottom w:val="single" w:sz="4"/><w:end w:val="single" w:sz="4"/>'
            '<w:insideH w:val="single" w:sz="4"/><w:insideV w:val="single" w:sz="4"/></w:tblBorders></w:tblPr>',
          );
          for (var r = 0; r < b.rows.length; r++) {
            body.write('<w:tr>');
            for (final cell in b.rows[r]) {
              body.write('<w:tc>${para(run(cell, bold: r == 0))}</w:tc>');
            }
            body.write('</w:tr>');
          }
          body.write('</w:tbl>${para('')}');
      }
    }
    final z = ZipWriter()
      ..addText(
        '[Content_Types].xml',
        '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>'
            '<Types xmlns="http://schemas.openxmlformats.org/package/2006/content-types">'
            '<Default Extension="rels" ContentType="application/vnd.openxmlformats-package.relationships+xml"/>'
            '<Default Extension="xml" ContentType="application/xml"/>'
            '<Override PartName="/word/document.xml" ContentType="application/vnd.openxmlformats-officedocument.wordprocessingml.document.main+xml"/>'
            '</Types>',
      )
      ..addText(
        '_rels/.rels',
        '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>'
            '<Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships">'
            '<Relationship Id="rId1" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument" Target="word/document.xml"/>'
            '</Relationships>',
      )
      ..addText(
        'word/document.xml',
        '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>'
            '<w:document xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main"><w:body>'
            '$body<w:sectPr><w:pgSz w:w="11906" w:h="16838"/>'
            '<w:pgMar w:top="1134" w:right="1134" w:bottom="1134" w:left="1134" w:header="708" w:footer="708" w:gutter="0"/>'
            '${rtl ? '<w:bidi/>' : ''}</w:sectPr></w:body></w:document>',
      );
    return z.finish();
  }
}
