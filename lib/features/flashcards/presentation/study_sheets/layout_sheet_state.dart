part of '../study_sheets.dart';

class _LayoutSheetState extends ConsumerState<_LayoutSheet> {
  CardLayout? _layout;
  final Map<CardField, TextEditingController> _names = {};

  @override
  void initState() {
    super.initState();
    unawaited(
      ref.read(flashcardsRepositoryProvider).layout(widget.deck.id).then((l) {
        if (!mounted) return;
        setState(() {
          _layout = l;
          for (final f in CardField.values) {
            _names[f] = TextEditingController(text: l.labels[f] ?? '');
          }
        });
      }),
    );
  }

  @override
  void dispose() {
    for (final c in _names.values) {
      c.dispose();
    }
    for (final c in _customNames.values) {
      c.dispose();
    }
    super.dispose();
  }

  void _save(CardLayout next) {
    setState(() => _layout = next);
    unawaited(ref.read(flashcardsRepositoryProvider).saveLayout(widget.deck.id, next));
  }

  void _move(CardField f, int delta) {
    final l = _layout!;
    final order = [...l.order];
    final i = order.indexOf(f);
    final j = i + delta;
    if (j < 0 || j >= order.length) return;
    order
      ..removeAt(i)
      ..insert(j, f);
    _save(l.copyWith(order: order));
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final l = _layout;
    if (l == null) return const SizedBox(height: 200);
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(
        Space.page,
        0,
        Space.page,
        Space.lg + MediaQuery.viewInsetsOf(context).bottom,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Semantics(
            header: true,
            child: Text(l10n.flashcardsLayoutTitle, style: context.text.titleLarge),
          ),
          const SizedBox(height: Space.xs),
          Text(
            l10n.flashcardsLayoutHint,
            style: context.text.bodySmall?.copyWith(color: context.lux.ink2),
          ),
          const SizedBox(height: Space.md),
          for (final (i, f) in l.order.indexed)
            Padding(
              padding: const EdgeInsets.only(bottom: Space.sm),
              child: Row(
                children: [
                  Checkbox(
                    key: Key('layoutShow_${f.name}'),
                    value: !l.hidden.contains(f),
                    semanticLabel: l10n.flashcardsLayoutShow(cardFieldLabel(l10n, f)),
                    onChanged: (v) => _save(
                      l.copyWith(hidden: v == true ? ({...l.hidden}..remove(f)) : {...l.hidden, f}),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      key: Key('layoutName_${f.name}'),
                      controller: _names[f],
                      maxLength: CardLayout.maxLabel,
                      buildCounter: (_, {required currentLength, required isFocused, maxLength}) =>
                          null,
                      decoration: InputDecoration(
                        labelText: cardFieldLabel(l10n, f),
                        hintText: cardFieldLabel(l10n, f),
                        isDense: true,
                      ),
                      onChanged: (v) => _save(l.copyWith(labels: {...l.labels, f: v})),
                    ),
                  ),
                  IconButton(
                    tooltip: l10n.actionMoveUp,
                    onPressed: i == 0 ? null : () => _move(f, -1),
                    icon: const Icon(Icons.arrow_upward_rounded),
                  ),
                  IconButton(
                    tooltip: l10n.actionMoveDown,
                    onPressed: i == l.order.length - 1 ? null : () => _move(f, 1),
                    icon: const Icon(Icons.arrow_downward_rounded),
                  ),
                ],
              ),
            ),
          SwitchListTile(
            key: const Key('layoutStepReveal'),
            contentPadding: EdgeInsets.zero,
            title: Text(l10n.flashcardsLayoutStepReveal),
            subtitle: Text(l10n.flashcardsLayoutStepRevealHint),
            value: l.stepReveal,
            onChanged: (v) => _save(l.copyWith(stepReveal: v)),
          ),
          const Divider(height: Space.xl),
          Row(
            children: [
              Expanded(child: Text(l10n.flashcardsCustomFields, style: context.text.titleMedium)),
              PopupMenuButton<CardTemplate>(
                key: const Key('layoutTemplate'),
                tooltip: l10n.flashcardsTemplates,
                icon: const Icon(Icons.dashboard_customize_outlined),
                onSelected: _applyTemplate,
                itemBuilder: (_) => [
                  for (final t in CardTemplate.values)
                    PopupMenuItem(value: t, child: Text(templateName(l10n, t))),
                ],
              ),
            ],
          ),
          for (final f in l.customFields) _customRow(l, f),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: TextButton.icon(
              key: const Key('layoutAddField'),
              onPressed: l.customFields.length >= CardLayout.maxCustomFields
                  ? null
                  : () => _save(
                      l.copyWith(
                        customFields: [
                          ...l.customFields,
                          CustomField(
                            id: l.nextCustomId(),
                            name: l10n.flashcardsNewFieldName(l.customFields.length + 1),
                          ),
                        ],
                      ),
                    ),
              icon: const Icon(Icons.add_rounded),
              label: Text(l10n.flashcardsAddField),
            ),
          ),
        ],
      ),
    );
  }

  final Map<String, TextEditingController> _customNames = {};

  Widget _customRow(CardLayout l, CustomField f) {
    final l10n = context.l10n;
    final c = _customNames.putIfAbsent(f.id, () => TextEditingController(text: f.name));
    void update(CustomField next) =>
        _save(l.copyWith(customFields: [for (final x in l.customFields) x.id == f.id ? next : x]));
    return Padding(
      padding: const EdgeInsets.only(bottom: Space.sm),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  key: Key('customName_${f.id}'),
                  controller: c,
                  maxLength: CardLayout.maxLabel,
                  buildCounter: (_, {required currentLength, required isFocused, maxLength}) =>
                      null,
                  decoration: InputDecoration(labelText: l10n.flashcardsFieldName, isDense: true),
                  onChanged: (v) {
                    if (v.trim().isNotEmpty) update(f.copyWith(name: v.trim()));
                  },
                ),
              ),
              IconButton(
                key: Key('customDelete_${f.id}'),
                tooltip: l10n.actionDelete,
                onPressed: () => _save(
                  l.copyWith(
                    customFields: [
                      for (final x in l.customFields)
                        if (x.id != f.id) x,
                    ],
                  ),
                ),
                icon: const Icon(Icons.delete_outline_rounded),
              ),
            ],
          ),
          const SizedBox(height: Space.xs),
          Wrap(
            spacing: Space.xs,
            runSpacing: Space.xs,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              SegmentedButton<CardSide>(
                key: Key('customSide_${f.id}'),
                showSelectedIcon: false,
                segments: [
                  ButtonSegment(value: CardSide.front, label: Text(l10n.cardFront)),
                  ButtonSegment(value: CardSide.back, label: Text(l10n.cardBack)),
                ],
                selected: {f.side},
                onSelectionChanged: (v) => update(f.copyWith(side: v.first)),
              ),
              DropdownButton<String>(
                key: Key('customLang_${f.id}'),
                value: speechLanguages.contains(f.lang) ? f.lang : '',
                items: [
                  for (final t in speechLanguages)
                    DropdownMenuItem(
                      value: t,
                      child: Text(
                        t.isEmpty ? l10n.flashcardsFieldLangDefault : (speechLanguageNames[t] ?? t),
                      ),
                    ),
                ],
                onChanged: (v) => update(f.copyWith(lang: v ?? '')),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> _applyTemplate(CardTemplate t) async {
    final l10n = context.l10n;
    final ok = await confirmAction(
      context,
      title: templateName(l10n, t),
      message: l10n.flashcardsTemplateConfirm,
      confirmLabel: l10n.flashcardsApplyTemplate,
    );
    if (!ok || !mounted) return;
    final current = _layout!;
    final tpl = templateLayout(t, name: (k) => templateFieldName(l10n, k));
    // New ids for the template's fields so existing values are never relabelled.
    var merged = current.copyWith(customFields: [...current.customFields]);
    final added = <CustomField>[];
    for (final f in tpl.customFields) {
      final withId = CustomField(
        id: merged.nextCustomId(),
        name: f.name,
        lang: f.lang,
        side: f.side,
      );
      added.add(withId);
      merged = merged.copyWith(customFields: [...merged.customFields, withId]);
    }
    _save(
      tpl.copyWith(
        labels: current.labels,
        fieldLangs: current.fieldLangs,
        customFields: [...current.customFields, ...added].take(CardLayout.maxCustomFields).toList(),
      ),
    );
    for (final f in added) {
      _customNames[f.id] = TextEditingController(text: f.name);
    }
  }
}
