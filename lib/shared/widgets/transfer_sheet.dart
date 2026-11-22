import 'dart:typed_data';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../app/localization/app_format.dart';
import '../../core/design_system/app_theme.dart';
import '../../core/design_system/tokens.dart';
import '../../core/transfer/transfer_model.dart';
import '../../core/transfer/transfer_service.dart';

/// A group of export buttons ("This note", "All notes", or one per screen).
class ExportGroup {
  const ExportGroup({this.label, required this.formats, required this.build});
  final String? label;
  final List<TransferFormat> formats;

  /// File name and bytes for a format.
  final Future<(String, Uint8List)> Function(TransferFormat f) build;
}

String transferFormatName(BuildContext context, TransferFormat f) => switch (f) {
  TransferFormat.xlsx => 'Excel',
  TransferFormat.csv => 'CSV',
  TransferFormat.docx => 'Word',
  TransferFormat.pdf => 'PDF',
  TransferFormat.md => 'Markdown',
  TransferFormat.txt => context.l10n.transferFormatText,
};

IconData _icon(TransferFormat f) => switch (f) {
  TransferFormat.xlsx || TransferFormat.csv => Icons.table_chart_outlined,
  TransferFormat.docx => Icons.description_outlined,
  TransferFormat.pdf => Icons.picture_as_pdf_outlined,
  TransferFormat.md || TransferFormat.txt => Icons.notes_rounded,
};

/// One sheet for every section: save as Excel/CSV/Word/PDF/…, or import.
/// [onImport] returns how many records were added; it throws
/// [FormatException] for files it cannot read.
Future<void> showTransferSheet(
  BuildContext context, {
  required List<ExportGroup> exports,
  String? importHint,
  Future<int> Function(PickedFile file)? onImport,
}) {
  final messenger = ScaffoldMessenger.maybeOf(context);
  return showModalBottomSheet<void>(
    context: context,
    showDragHandle: true,
    useSafeArea: true,
    isScrollControlled: true,
    builder: (sheet) => _TransferSheet(
      exports: exports,
      importHint: importHint,
      onImport: onImport,
      messenger: messenger,
    ),
  );
}

class _TransferSheet extends ConsumerStatefulWidget {
  const _TransferSheet({
    required this.exports,
    required this.importHint,
    required this.onImport,
    required this.messenger,
  });
  final List<ExportGroup> exports;
  final String? importHint;
  final Future<int> Function(PickedFile file)? onImport;
  final ScaffoldMessengerState? messenger;

  @override
  ConsumerState<_TransferSheet> createState() => _TransferSheetState();
}

class _TransferSheetState extends ConsumerState<_TransferSheet> {
  var _busy = false;

  void _done(String message) {
    if (mounted) Navigator.of(context).pop();
    widget.messenger?.showSnackBar(SnackBar(content: Text(message)));
  }

  Future<void> _export(ExportGroup g, TransferFormat f) async {
    final l10n = context.l10n;
    setState(() => _busy = true);
    try {
      final (name, bytes) = await g.build(f);
      final saved = await ref.read(transferFilesProvider).save(name, bytes, f);
      if (saved) {
        _done(l10n.transferSaved);
      } else if (mounted) {
        setState(() => _busy = false);
      }
    } catch (_) {
      _done(l10n.transferFailed);
    }
  }

  Future<void> _import() async {
    final l10n = context.l10n;
    setState(() => _busy = true);
    try {
      final file = await ref.read(transferFilesProvider).pick();
      if (file == null) {
        if (mounted) setState(() => _busy = false);
        return;
      }
      final added = await widget.onImport!(file);
      _done(l10n.transferImported(added));
    } on FormatException {
      _done(l10n.transferUnsupported);
    } catch (_) {
      _done(l10n.transferUnsupported);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.lg),
      children: [
        Text(l10n.transferTitle, style: context.text.titleLarge),
        if (_busy)
          const Padding(
            padding: EdgeInsets.only(top: Space.sm),
            child: LinearProgressIndicator(),
          ),
        for (final g in widget.exports) ...[
          const SizedBox(height: Space.md),
          Text(g.label ?? l10n.transferSaveAs, style: context.text.titleSmall),
          const SizedBox(height: Space.xs),
          Wrap(
            spacing: Space.xs,
            runSpacing: Space.xs,
            children: [
              for (final f in g.formats)
                ActionChip(
                  key: Key('export_${g.label ?? ''}_${f.name}'),
                  avatar: Icon(_icon(f), size: 18),
                  label: Text(transferFormatName(context, f)),
                  onPressed: _busy ? null : () => _export(g, f),
                ),
            ],
          ),
        ],
        if (widget.onImport != null) ...[
          const Divider(height: Space.xl),
          FilledButton.tonalIcon(
            key: const Key('transferImport'),
            style: FilledButton.styleFrom(minimumSize: const Size.fromHeight(48)),
            onPressed: _busy ? null : _import,
            icon: const Icon(Icons.file_open_outlined),
            label: Text(l10n.transferImport),
          ),
          if (widget.importHint != null) ...[
            const SizedBox(height: Space.xs),
            Text(
              widget.importHint!,
              style: context.text.bodySmall?.copyWith(color: context.lux.ink2),
            ),
          ],
        ],
      ],
    );
  }
}
