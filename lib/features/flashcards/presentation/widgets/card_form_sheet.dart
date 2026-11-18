import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../app/localization/app_format.dart';
import '../../../../core/database/app_database.dart';
import '../../../../core/design_system/app_theme.dart';
import '../../../../core/design_system/tokens.dart';
import '../../../../shared/widgets/dialogs.dart';
import '../../application/flashcards_providers.dart';
import '../../application/media_picker.dart';
import '../../data/flashcards_repository.dart';
import '../../domain/card_layout.dart';
import '../../domain/card_extras.dart';
import '../../../../l10n/gen/app_localizations.dart';

/// Bottom sheet to add cards to [deckId] or edit [initial]. Persists
/// directly through the repository.
Future<void> showCardForm(BuildContext context, {required String deckId, CardRow? initial}) {
  return showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    showDragHandle: true,
    builder: (ctx) => _CardFormSheet(deckId: deckId, initial: initial),
  );
}

class _CardFormSheet extends ConsumerStatefulWidget {
  const _CardFormSheet({required this.deckId, this.initial});
  final String deckId;
  final CardRow? initial;

  @override
  ConsumerState<_CardFormSheet> createState() => _CardFormSheetState();
}

class _CardFormSheetState extends ConsumerState<_CardFormSheet> {
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

  Future<void> _pickMedia(String side, String kind) async {
    final l10n = context.l10n;
    try {
      final picked = await ref.read(mediaPickerProvider).pick(image: kind == 'image');
      if (picked == null || !mounted) return;
      final limit = kind == 'image'
          ? FlashcardsRepository.maxImageBytes
          : FlashcardsRepository.maxAudioBytes;
      if (picked.bytes.length > limit) {
        showMessage(context, l10n.flashcardsMediaTooLarge(limit ~/ (1024 * 1024)));
        return;
      }
      setState(() => _media['$side:$kind'] = picked);
    } catch (_) {
      if (mounted) showMessage(context, l10n.flashcardsImportFileFailed);
    }
  }

  /// Applies picked / removed media to [cardId].
  Future<void> _saveMedia(String cardId) async {
    final repo = ref.read(flashcardsRepositoryProvider);
    for (final e in _media.entries) {
      final [side, kind] = e.key.split(':');
      final picked = e.value;
      if (picked == null) {
        for (final m in _existing.where((m) => m.side == side && m.kind == kind)) {
          await repo.removeMedia(m.id);
        }
      } else {
        await repo.addMedia(
          cardId,
          side: side,
          kind: kind,
          bytes: picked.bytes,
          name: picked.name,
          mime: kind == 'image' ? 'image/${picked.extension}' : 'audio/${picked.extension}',
        );
      }
    }
  }

  Widget _mediaRow(String side) {
    final l10n = context.l10n;
    Widget slot(String kind) {
      final key = '$side:$kind';
      final picked = _media[key];
      final existing = _existing.where((m) => m.side == side && m.kind == kind).firstOrNull;
      final has = _media.containsKey(key) ? picked != null : existing != null;
      final name = picked?.name ?? existing?.name ?? '';
      final isImage = kind == 'image';
      return InputChip(
        key: Key('media_${side}_$kind'),
        avatar: Icon(isImage ? Icons.image_outlined : Icons.mic_none_rounded, size: 18),
        label: Text(
          has
              ? (name.isEmpty ? (isImage ? l10n.flashcardsImage : l10n.flashcardsAudio) : name)
              : (isImage ? l10n.flashcardsAddImage : l10n.flashcardsAddAudio),
          overflow: TextOverflow.ellipsis,
        ),
        onPressed: () => _pickMedia(side, kind),
        onDeleted: has ? () => setState(() => _media[key] = null) : null,
        deleteButtonTooltipMessage: l10n.actionDelete,
      );
    }

    return Padding(
      padding: const EdgeInsets.only(top: Space.xs),
      child: Wrap(
        spacing: Space.xs,
        runSpacing: Space.xs,
        children: [slot('image'), slot('audio')],
      ),
    );
  }

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
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: Space.page,
        end: Space.page,
        bottom: MediaQuery.viewInsetsOf(context).bottom + Space.lg,
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
                decoration: InputDecoration(labelText: l10n.cardBack, hintText: l10n.cardBackHint),
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

String cardFieldLabel(AppLocalizations l10n, CardField f) => switch (f) {
  CardField.example => l10n.cardFieldExample,
  CardField.explanation => l10n.cardFieldExplanation,
  CardField.pronunciation => l10n.cardFieldPronunciation,
  CardField.notes => l10n.cardFieldNotes,
};
