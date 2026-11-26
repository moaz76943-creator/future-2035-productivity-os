part of '../card_form_sheet.dart';

class _CardFormSheetState extends ConsumerState<_CardFormSheet> {
  /// setState for the extension parts (keeps setState protected).
  void _update(VoidCallback fn) => setState(fn);

  final _form = GlobalKey<FormState>();
  final _frontFocus = FocusNode();
  late final _front = TextEditingController(text: widget.initial?.front ?? '');
  late final _back = TextEditingController(text: widget.initial?.back ?? '');
  late final _tags = TextEditingController(text: widget.initial?.tags ?? '');
  late final CardExtras _initialExtras = CardExtras.decode(widget.initial?.extra ?? '');
  late final Map<CardField, TextEditingController> _extra = {
    for (final f in CardField.values) f: TextEditingController(text: _initialExtras[f] ?? ''),
  };
  late bool _showExtra = !_initialExtras.isEmpty;

  CardExtras get _extras => CardExtras({for (final e in _extra.entries) e.key: e.value.text});

  /// Custom field controllers keyed by field id (created from the deck layout).
  final Map<String, TextEditingController> _custom = {};
  late final Map<String, String> _initialCustom = CardCustom.decode(widget.initial?.custom ?? '');

  TextEditingController _customCtrl(String id) =>
      _custom.putIfAbsent(id, () => TextEditingController(text: _initialCustom[id] ?? ''));

  Map<String, String> get _customValues => {
    // Values of fields that were removed from the layout are kept, never lost.
    ..._initialCustom,
    for (final e in _custom.entries) e.key: e.value.text,
  };

  /// Media chosen in this form: 'front:image' → picked file (null = remove).
  final Map<String, PickedMedia?> _media = {};
  List<CardMediaRow> _existing = const [];

  @override
  void initState() {
    super.initState();
    final id = widget.initial?.id;
    if (id != null) {
      ref.read(flashcardsRepositoryProvider).mediaFor(id).then((m) {
        if (mounted) setState(() => _existing = m);
      });
    }
  }

  /// Shown inside the sheet: a snackbar would sit under the sheet's barrier.
  String? _mediaError;
  String? _mediaErrorSide;

  Widget _customFields(CardLayout layout, CardSide side) {
    final fields = layout.customFields.where((f) => f.side == side).toList();
    if (fields.isEmpty) return const SizedBox.shrink();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (final f in fields)
          Padding(
            padding: const EdgeInsets.only(top: Space.sm),
            child: TextFormField(
              key: Key('customField_${f.id}'),
              controller: _customCtrl(f.id),
              minLines: 1,
              maxLines: 4,
              maxLength: CardCustom.maxLength,
              buildCounter: (_, {required currentLength, required isFocused, maxLength}) => null,
              decoration: InputDecoration(labelText: f.name),
            ),
          ),
      ],
    );
  }

  int _added = 0;
  bool _saving = false;

  @override
  void dispose() {
    _front.dispose();
    _back.dispose();
    _tags.dispose();
    for (final c in _extra.values) {
      c.dispose();
    }
    for (final c in _custom.values) {
      c.dispose();
    }
    _frontFocus.dispose();
    super.dispose();
  }

  Future<void> _save({required bool another}) async {
    if (_saving || !(_form.currentState?.validate() ?? false)) return;
    setState(() => _saving = true);
    final repo = ref.read(flashcardsRepositoryProvider);
    // Duplicate front in this deck (ignoring case and diacritics): ask first.
    final dup = await repo.findDuplicate(widget.deckId, _front.text, exceptId: widget.initial?.id);
    if (dup != null && mounted) {
      final l10n = context.l10n;
      final go = await confirmAction(
        context,
        title: l10n.flashcardsDuplicateTitle,
        message: l10n.flashcardsDuplicateMessage(dup.front, dup.back),
        confirmLabel: l10n.flashcardsSaveAnyway,
      );
      if (!go) {
        if (mounted) setState(() => _saving = false);
        return;
      }
    }
    if (!mounted) return;
    try {
      final initial = widget.initial;
      if (initial == null) {
        final id = await repo.addCard(
          widget.deckId,
          _front.text,
          _back.text,
          tags: _tags.text,
          extras: _extras,
          custom: _customValues,
        );
        await _saveMedia(id);
      } else {
        await repo.updateCard(
          initial.id,
          _front.text,
          _back.text,
          tags: _tags.text.trim(),
          extras: _extras,
          custom: _customValues,
        );
        await _saveMedia(initial.id);
      }
    } catch (_) {
      if (mounted) {
        setState(() => _saving = false);
        ScaffoldMessenger.maybeOf(context)
            ?.showSnackBar(SnackBar(content: Text(context.l10n.errorSaveFailed)));
      }
      return;
    }
    if (!mounted) return;
    if (another) {
      setState(() {
        _saving = false;
        _added++;
        _front.clear();
        _back.clear();
        for (final c in _extra.values) {
          c.clear();
        }
        for (final c in _custom.values) {
          c.clear();
        }
        _media.clear();
      });
      _form.currentState?.reset();
      _frontFocus.requestFocus();
    } else {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final editing = widget.initial != null;
    final layout = ref.watch(cardLayoutProvider(widget.deckId)).value ?? const CardLayout();
    final deck = ref.watch(deckProvider(widget.deckId)).value;
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: Space.page,
        end: Space.page,
        bottom: sheetBottomInset(context) + Space.lg,
      ),
      child: Form(
        key: _form,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Semantics(
                header: true,
                child: Text(editing ? l10n.cardEdit : l10n.cardNew, style: context.text.titleLarge),
              ),
              if (_added > 0)
                Padding(
                  padding: const EdgeInsets.only(top: Space.xxs),
                  child: Semantics(
                    liveRegion: true,
                    child: Text(
                      l10n.flashcardsCardAdded,
                      style: context.text.bodySmall?.copyWith(color: context.lux.success),
                    ),
                  ),
                ),
              const SizedBox(height: Space.md),
              TextFormField(
                key: const Key('cardFrontField'),
                controller: _front,
                focusNode: _frontFocus,
                autofocus: !editing,
                minLines: 1,
                maxLines: 6,
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                  labelText: l10n.cardFront,
                  hintText: l10n.cardFrontHint,
                  suffixIcon: MicButton(controller: _front, languageTag: deck?.frontLang),
                ),
                validator: (v) => (v ?? '').trim().isEmpty ? l10n.validationRequired : null,
              ),
              _customFields(layout, CardSide.front),
              _mediaRow('front'),
              const SizedBox(height: Space.sm),
              TextFormField(
                key: const Key('cardBackField'),
                controller: _back,
                minLines: 2,
                maxLines: 10,
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                  labelText: l10n.cardBack,
                  hintText: l10n.cardBackHint,
                  suffixIcon: MicButton(controller: _back, languageTag: deck?.backLang),
                ),
                validator: (v) => (v ?? '').trim().isEmpty ? l10n.validationRequired : null,
              ),
              _customFields(layout, CardSide.back),
              _mediaRow('back'),
              const SizedBox(height: Space.sm),
              TextFormField(
                key: const Key('cardTagsField'),
                controller: _tags,
                decoration: InputDecoration(labelText: l10n.cardTags),
              ),
              const SizedBox(height: Space.xs),
              // Optional fields beyond front/back; hidden until wanted so the quick path stays short.
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: TextButton.icon(
                  key: const Key('cardMoreFieldsButton'),
                  onPressed: () => setState(() => _showExtra = !_showExtra),
                  icon: Icon(_showExtra ? Icons.expand_less_rounded : Icons.expand_more_rounded),
                  label: Text(l10n.cardMoreFields),
                ),
              ),
              if (_showExtra)
                for (final f in CardField.values) ...[
                  const SizedBox(height: Space.sm),
                  TextFormField(
                    key: Key('cardField_${f.name}'),
                    controller: _extra[f],
                    minLines: 1,
                    maxLines: 4,
                    maxLength: CardExtras.maxLength,
                    buildCounter: (_, {required currentLength, required isFocused, maxLength}) =>
                        null,
                    textCapitalization: TextCapitalization.sentences,
                    decoration: InputDecoration(
                      labelText: layout.labelOf(f) ?? cardFieldLabel(l10n, f),
                    ),
                  ),
                ],
              const SizedBox(height: Space.lg),
              Wrap(
                alignment: WrapAlignment.end,
                spacing: Space.xs,
                runSpacing: Space.xs,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(editing ? l10n.actionCancel : l10n.actionDone),
                  ),
                  if (!editing)
                    OutlinedButton(
                      key: const Key('cardSaveAnotherButton'),
                      onPressed: _saving ? null : () => _save(another: true),
                      child: Text(l10n.cardAddAnother),
                    ),
                  FilledButton(
                    key: const Key('cardSaveButton'),
                    onPressed: _saving ? null : () => _save(another: false),
                    child: Text(l10n.actionSave),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
