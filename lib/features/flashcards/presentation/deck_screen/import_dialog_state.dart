part of '../deck_screen.dart';

class _ImportDialogState extends ConsumerState<_ImportDialog> {
  /// Shown inside the dialog: a snackbar would sit under the dialog barrier.
  String? _error;

  Future<void> _pickFile() async {
    final l10n = context.l10n;
    setState(() => _error = null);
    try {
      final bytes = await ref.read(backupFilesProvider).pick();
      if (bytes == null || !mounted) return;
      if (bytes.length > 8 * 1024 * 1024) {
        setState(() => _error = l10n.importFailed);
        return;
      }
      // Excel (.xlsx) and Anki (.apkg) files become rows for the same preview.
      final text = await CardFileImport.toText(bytes, temp: await _tempDir());
      if (mounted) setState(() => _controller.text = text);
    } on CardFileException catch (e) {
      if (mounted) {
        setState(
          () => _error = e.error == CardFileError.ankiNewFormat
              ? l10n.importAnkiNewFormat
              : l10n.flashcardsImportFileFailed,
        );
      }
    } catch (_) {
      if (mounted) setState(() => _error = l10n.flashcardsImportFileFailed);
    }
  }

  /// A spreadsheet template to fill on a computer (Excel, Google Sheets,
  /// LibreOffice), then import here as .xlsx or .csv.
  Future<void> _shareTemplate() async {
    final l10n = context.l10n;
    final csv = [
      'front,back,example,tags',
      [
        l10n.importTemplateFront,
        l10n.importTemplateBack,
        l10n.importTemplateExample,
        l10n.importTemplateTag,
      ].map(CardImportParser.csvCell).join(','),
    ].join('\n');
    try {
      await ref
          .read(backupFilesProvider)
          .save(
            'cards_template.csv',
            Uint8List.fromList([0xEF, 0xBB, 0xBF, ...utf8.encode(csv)]),
            subject: l10n.importTemplate,
          );
    } catch (_) {
      if (mounted) setState(() => _error = l10n.errorGenericMessage);
    }
  }

  Future<Directory> _tempDir() async {
    try {
      return await getTemporaryDirectory();
    } on Object {
      return Directory.systemTemp;
    }
  }

  late final _controller = TextEditingController(text: widget.initialText);

  /// Second step for CSV/TSV text: rows plus the column → field mapping.
  ImportPreview? _preview;
  List<String> _columns = const [];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _next() {
    final text = _controller.text;
    if (text.trim().isEmpty) return;
    // The app's own JSON deck format needs no mapping.
    if (text.trimLeft().startsWith('{')) {
      Navigator.pop(context, text);
      return;
    }
    final p = CardImportParser.preview(text);
    if (p.body.isEmpty) {
      setState(() => _error = context.l10n.importFailed);
      return;
    }
    setState(() {
      _preview = p;
      _columns = [...p.columns];
    });
  }

  String _fieldLabel(String f) {
    final l10n = context.l10n;
    return switch (f) {
      'front' => l10n.cardFront,
      'back' => l10n.cardBack,
      'tags' => l10n.cardTags,
      'example' => l10n.cardFieldExample,
      'explanation' => l10n.cardFieldExplanation,
      'pronunciation' => l10n.cardFieldPronunciation,
      'notes' => l10n.cardFieldNotes,
      _ => l10n.importIgnoreColumn,
    };
  }

  Widget _mapping(BuildContext context, ImportPreview p) {
    final l10n = context.l10n;
    final built = CardImportParser.build(p.body, _columns);
    final valid = _columns.contains('front') && _columns.contains('back');
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            valid
                ? l10n.importPreviewSummary(built.cards.length, built.invalid)
                : l10n.importNeedFrontBack,
            key: const Key('importSummary'),
            style: context.text.bodyMedium?.copyWith(
              color: valid ? context.lux.ink2 : context.lux.danger,
            ),
          ),
          const SizedBox(height: Space.sm),
          for (var i = 0; i < _columns.length; i++)
            Padding(
              padding: const EdgeInsets.only(bottom: Space.sm),
              child: DropdownButtonFormField<String>(
                key: Key('importColumn_$i'),
                initialValue: _columns[i],
                isExpanded: true,
                decoration: InputDecoration(
                  labelText: p.hasHeader
                      ? '${l10n.importColumn(i + 1)} · ${p.rows.first.elementAtOrNull(i) ?? ''}'
                      : l10n.importColumn(i + 1),
                  helperText: [for (final r in p.body.take(3)) r.elementAtOrNull(i)?.trim() ?? '']
                      .where((v) => v.isNotEmpty)
                      .join(' · '),
                  helperMaxLines: 2,
                ),
                items: [
                  for (final f in CardImportParser.fields)
                    DropdownMenuItem(value: f, child: Text(_fieldLabel(f))),
                ],
                onChanged: (v) => setState(() {
                  // A field can be used by one column only.
                  final f = v ?? '';
                  if (f.isNotEmpty) {
                    for (var k = 0; k < _columns.length; k++) {
                      if (_columns[k] == f) _columns[k] = '';
                    }
                  }
                  _columns[i] = f;
                }),
              ),
            ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final p = _preview;
    if (p != null) {
      final ok = _columns.contains('front') && _columns.contains('back');
      return AlertDialog(
        title: Text(l10n.importPreviewTitle),
        content: _mapping(context, p),
        actions: [
          TextButton(
            onPressed: () => setState(() => _preview = null),
            child: Text(l10n.actionBack),
          ),
          FilledButton(
            key: const Key('importConfirmButton'),
            onPressed: ok
                ? () => Navigator.pop(context, CardImportParser.build(p.body, _columns))
                : null,
            child: Text(l10n.actionImport),
          ),
        ],
      );
    }
    return AlertDialog(
      title: Text(l10n.importCardsTitle),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              key: const Key('importField'),
              controller: _controller,
              autofocus: true,
              minLines: 4,
              maxLines: 10,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                labelText: l10n.flashcardsImportField,
                helperText: l10n.importCardsHint,
                errorText: _error,
                errorMaxLines: 3,
                helperMaxLines: 5,
                alignLabelWithHint: true,
              ),
            ),
            const SizedBox(height: Space.xs),
            TextButton.icon(
              key: const Key('importTemplateButton'),
              onPressed: _shareTemplate,
              icon: const Icon(Icons.table_view_rounded),
              label: Text(l10n.importTemplate),
            ),
          ],
        ),
      ),
      actions: [
        TextButton.icon(
          key: const Key('importFileButton'),
          onPressed: _pickFile,
          icon: const Icon(Icons.attach_file_rounded),
          label: Text(l10n.flashcardsImportFile),
        ),
        TextButton(onPressed: () => Navigator.pop(context), child: Text(l10n.actionCancel)),
        // Enabled once there is something to preview.
        ValueListenableBuilder<TextEditingValue>(
          valueListenable: _controller,
          builder: (_, v, _) => FilledButton(
            key: const Key('importNextButton'),
            onPressed: v.text.trim().isEmpty ? null : _next,
            child: Text(l10n.importNext),
          ),
        ),
      ],
    );
  }
}
