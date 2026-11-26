import 'package:flutter/services.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/design_system/components/surfaces.dart';

import '../../../../app/localization/app_format.dart';
import '../../../../core/database/app_database.dart';
import '../../../../core/design_system/app_theme.dart';
import '../../../../core/design_system/tokens.dart';
import '../../../../shared/widgets/pickers.dart';

/// Values entered in [showDeckForm].
class DeckFormResult {
  const DeckFormResult({
    required this.name,
    required this.description,
    required this.color,
    required this.dailyNewLimit,
    required this.dailyReviewTarget,
    this.category = '',
  });
  final String name;
  final String description;

  /// Level or topic used to group decks (e.g. "A1", "Medicine").
  final String category;
  final int color;
  final int dailyNewLimit;
  final int dailyReviewTarget;
}

/// Bottom sheet to create or edit a deck. Returns null when cancelled.
Future<DeckFormResult?> showDeckForm(BuildContext context, {DeckRow? initial}) {
  return showModalBottomSheet<DeckFormResult>(
    useRootNavigator: true,
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    showDragHandle: true,
    builder: (ctx) => _DeckFormSheet(initial: initial),
  );
}

class _DeckFormSheet extends StatefulWidget {
  const _DeckFormSheet({this.initial});
  final DeckRow? initial;

  @override
  State<_DeckFormSheet> createState() => _DeckFormSheetState();
}

class _DeckFormSheetState extends State<_DeckFormSheet> {
  final _form = GlobalKey<FormState>();
  late final _name = TextEditingController(text: widget.initial?.name ?? '');
  late final _description = TextEditingController(text: widget.initial?.description ?? '');
  late final _category = TextEditingController(text: widget.initial?.category ?? '');
  late final _newLimit = TextEditingController(text: '${widget.initial?.dailyNewLimit ?? 20}');
  late final _reviewTarget = TextEditingController(
    text: '${widget.initial?.dailyReviewTarget ?? 50}',
  );
  late int _color = widget.initial?.color ?? Palette.swatches.first.toARGB32();

  @override
  void dispose() {
    _name.dispose();
    _description.dispose();
    _newLimit.dispose();
    _reviewTarget.dispose();
    _category.dispose();
    super.dispose();
  }

  void _submit() {
    if (!(_form.currentState?.validate() ?? false)) return;
    Navigator.pop(
      context,
      DeckFormResult(
        name: _name.text.trim(),
        description: _description.text.trim(),
        category: _category.text.trim(),
        color: _color,
        dailyNewLimit: int.parse(_newLimit.text.trim()),
        dailyReviewTarget: int.parse(_reviewTarget.text.trim()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final editing = widget.initial != null;
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Semantics(
                header: true,
                child: Text(editing ? l10n.deckEdit : l10n.deckNew, style: context.text.titleLarge),
              ),
              const SizedBox(height: Space.md),
              TextFormField(
                key: const Key('deckNameField'),
                controller: _name,
                autofocus: !editing,
                maxLength: 200,
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(labelText: l10n.deckName, counterText: ''),
                validator: (v) => (v ?? '').trim().isEmpty ? l10n.validationNameRequired : null,
              ),
              const SizedBox(height: Space.sm),
              TextFormField(
                key: const Key('deckDescriptionField'),
                controller: _description,
                minLines: 1,
                maxLines: 4,
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(labelText: l10n.deckDescription),
              ),
              const SizedBox(height: Space.sm),
              TextFormField(
                key: const Key('deckCategoryField'),
                controller: _category,
                maxLength: 60,
                buildCounter: (_, {required currentLength, required isFocused, maxLength}) => null,
                decoration: InputDecoration(
                  labelText: l10n.deckCategory,
                  hintText: l10n.deckCategoryHint,
                ),
              ),
              const SizedBox(height: Space.md),
              ColorSwatchPicker(value: _color, onChanged: (c) => setState(() => _color = c)),
              const SizedBox(height: Space.md),
              TextFormField(
                key: const Key('deckNewLimitField'),
                controller: _newLimit,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(labelText: l10n.deckDailyNew),
                validator: (v) {
                  final n = int.tryParse((v ?? '').trim());
                  return n == null || n < 0 || n > 9999
                      ? l10n.flashcardsValidationNonNegative
                      : null;
                },
              ),
              const SizedBox(height: Space.sm),
              TextFormField(
                key: const Key('deckReviewTargetField'),
                controller: _reviewTarget,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(labelText: l10n.deckDailyReview),
                validator: (v) {
                  final n = int.tryParse((v ?? '').trim());
                  return n == null || n < 1 || n > 9999 ? l10n.validationPositiveNumber : null;
                },
              ),
              const SizedBox(height: Space.lg),
              Wrap(
                alignment: WrapAlignment.end,
                spacing: Space.xs,
                runSpacing: Space.xs,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(l10n.actionCancel),
                  ),
                  FilledButton(
                    key: const Key('deckSaveButton'),
                    onPressed: _submit,
                    child: Text(editing ? l10n.actionSave : l10n.actionCreate),
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
