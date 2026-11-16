import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../app/localization/app_format.dart';
import '../../../../core/database/app_database.dart';
import '../../../../core/design_system/app_theme.dart';
import '../../../../core/design_system/tokens.dart';
import '../../application/flashcards_providers.dart';

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
  int _added = 0;
  bool _saving = false;

  @override
  void dispose() {
    _front.dispose();
    _back.dispose();
    _tags.dispose();
    _frontFocus.dispose();
    super.dispose();
  }

  Future<void> _save({required bool another}) async {
    if (_saving || !(_form.currentState?.validate() ?? false)) return;
    setState(() => _saving = true);
    final repo = ref.read(flashcardsRepositoryProvider);
    try {
      final initial = widget.initial;
      if (initial == null) {
        await repo.addCard(widget.deckId, _front.text, _back.text, tags: _tags.text);
      } else {
        await repo.updateCard(initial.id, _front.text, _back.text, tags: _tags.text.trim());
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
              const SizedBox(height: Space.sm),
              TextFormField(
                key: const Key('cardTagsField'),
                controller: _tags,
                decoration: InputDecoration(labelText: l10n.cardTags),
              ),
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
