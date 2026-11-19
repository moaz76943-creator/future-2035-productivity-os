/// File formats the app reads and writes for tasks, notes and flashcards.
enum TransferFormat {
  xlsx('xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'),
  csv('csv', 'text/csv'),
  docx('docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document'),
  pdf('pdf', 'application/pdf'),
  md('md', 'text/markdown'),
  txt('txt', 'text/plain');

  const TransferFormat(this.extension, this.mime);
  final String extension;
  final String mime;
}

/// One column of a table export: [id] is stable across versions and
/// languages (files stay importable); [label] is the header people see.
class TransferColumn {
  const TransferColumn(this.id, this.label);
  final String id;
  final String label;
}

/// Rows of records (tasks, cards, notes) as text cells.
class TransferTable {
  const TransferTable({
    required this.title,
    required this.columns,
    required this.rows,
    this.rtl = false,
  });
  final String title;
  final List<TransferColumn> columns;

  /// Each row maps a column id to its text.
  final List<Map<String, String>> rows;

  /// Right-to-left layout (Arabic) for Excel, Word and PDF.
  final bool rtl;
}

enum DocBlockKind { title, heading, paragraph, bullet, check, quote, table }

/// A piece of a document: headings, paragraphs, list items, a table.
class DocBlock {
  const DocBlock(
    this.kind,
    this.text, {
    this.level = 1,
    this.checked = false,
    this.rows = const [],
  });
  final DocBlockKind kind;
  final String text;
  final int level;
  final bool checked;

  /// For [DocBlockKind.table]: header row first.
  final List<List<String>> rows;

  Map<String, Object?> toJson() => {
    'type': kind.name,
    'text': text,
    'level': level,
    'checked': checked,
    'rows': rows,
  };
}

/// A document for Word and PDF (and Markdown/text).
class TransferDoc {
  const TransferDoc({required this.blocks, this.rtl = false});
  final List<DocBlock> blocks;
  final bool rtl;

  /// A table as a document: its title, then the table itself.
  factory TransferDoc.ofTable(TransferTable t) => TransferDoc(
    rtl: t.rtl,
    blocks: [
      DocBlock(DocBlockKind.title, t.title),
      DocBlock(
        DocBlockKind.table,
        '',
        rows: [
          [for (final c in t.columns) c.label],
          for (final r in t.rows) [for (final c in t.columns) r[c.id] ?? ''],
        ],
      ),
    ],
  );
}
