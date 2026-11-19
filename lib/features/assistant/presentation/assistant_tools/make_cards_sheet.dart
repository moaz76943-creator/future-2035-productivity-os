part of '../assistant_tools.dart';

// ---------------------------------------------------------------------------
// Make flashcards

class MakeCardsSheet extends ConsumerStatefulWidget {
  const MakeCardsSheet({super.key});
  @override
  ConsumerState<MakeCardsSheet> createState() => _MakeCardsSheetState();
}

class _MakeCardsSheetState extends ConsumerState<MakeCardsSheet> {
  NoteRow? _note;
  List<CardDraft> _found = const [];
  final Set<int> _selected = {};
  String? _deckId;
  bool _busy = false;

  void _choose(NoteRow n) {
    final found = CardExtractor.extract(n.body);
    setState(() {
      _note = n;
      _found = found;
      _selected
        ..clear()
        ..addAll(List.generate(found.length, (i) => i));
    });
  }

  Future<void> _newDeck() async {
    final l10n = context.l10n;
    final name = await promptText(
      context,
      title: l10n.deckNew,
      hint: l10n.deckName,
      initial: _note?.title ?? '',
      confirmLabel: l10n.actionCreate,
    );
    if (name == null || name.trim().isEmpty || !mounted) return;
    final id = await ref
        .read(flashcardsRepositoryProvider)
        .createDeck(name, color: Palette.swatches.first.toARGB32());
    if (mounted) setState(() => _deckId = id);
  }

  Future<void> _create() async {
    final l10n = context.l10n;
    final deck = _deckId!;
    setState(() => _busy = true);
    final repo = ref.read(flashcardsRepositoryProvider);
    var n = 0;
    try {
      for (final i in _selected.toList()..sort()) {
        await repo.addCard(deck, _found[i].front, _found[i].back);
        n++;
      }
      if (!mounted) return;
      showMessage(context, l10n.assistantCardsCreated(n));
      Navigator.of(context).pop();
    } on Object {
      if (mounted) showMessage(context, l10n.errorSaveFailed);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    if (_note == null) {
      return NoteChooser(title: l10n.assistantMakeCards, onChosen: _choose);
    }
    final decks = ref.watch(decksProvider).value ?? const <DeckRow>[];
    final deckId = decks.any((d) => d.id == _deckId) ? _deckId : null;
    return ToolSheetFrame(
      title: l10n.assistantMakeCards,
      footer: _found.isEmpty
          ? null
          : FilledButton(
              onPressed: _busy || _selected.isEmpty || deckId == null ? null : _create,
              child: Text(l10n.assistantCreateSelected(_selected.length)),
            ),
      children: [
        _NoteHeader(note: _note!, onChange: () => setState(() => _note = null)),
        Text(l10n.assistantFoundCards(_found.length), style: context.text.titleMedium),
        const SizedBox(height: Space.xxs),
        Text(l10n.assistantCardsHint, style: context.text.bodySmall),
        if (_found.isNotEmpty) ...[
          const SizedBox(height: Space.md),
          Row(
            children: [
              Expanded(
                child: DropdownButtonFormField<String>(
                  initialValue: deckId,
                  isExpanded: true,
                  decoration: InputDecoration(labelText: l10n.assistantChooseDeck),
                  items: [
                    for (final d in decks)
                      DropdownMenuItem(
                        value: d.id,
                        child: Text(d.name, maxLines: 1, overflow: TextOverflow.ellipsis),
                      ),
                  ],
                  onChanged: (v) => setState(() => _deckId = v),
                ),
              ),
              const SizedBox(width: Space.xs),
              IconButton(
                tooltip: l10n.deckNew,
                onPressed: _newDeck,
                icon: const Icon(Icons.add_rounded),
              ),
            ],
          ),
        ],
        const SizedBox(height: Space.sm),
        for (var i = 0; i < _found.length; i++)
          CheckboxListTile(
            contentPadding: EdgeInsets.zero,
            controlAffinity: ListTileControlAffinity.leading,
            value: _selected.contains(i),
            onChanged: (v) => setState(() => v == true ? _selected.add(i) : _selected.remove(i)),
            title: Text(_found[i].front, style: context.text.titleSmall),
            subtitle: Text(_found[i].back),
          ),
      ],
    );
  }
}

// ---------------------------------------------------------------------------
// Workload

class WorkloadSheet extends ConsumerWidget {
  const WorkloadSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final fmt = context.fmt;
    final sundayWeek = context.language.locale.languageCode == 'ar';
    final now = ref.watch(clockProvider).now();
    final today = Days.startOfDay(now);
    return AsyncValueView<WorkloadOverview>(
      value: ref.watch(workloadProvider(sundayWeek)),
      data: (w) => ToolSheetFrame(
        title: l10n.assistantWorkload,
        children: [
          AuroraCard(
            hue: w.overloaded ? ModuleHue.projects : ModuleHue.habits,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.assistantWorkloadResult(
                    fmt.minutes(w.estimatedMinutes),
                    fmt.minutes(w.freeMinutes),
                  ),
                  style: context.text.titleMedium?.copyWith(color: Colors.white),
                ),
                const SizedBox(height: Space.xs),
                Text(
                  w.overloaded ? l10n.assistantWorkloadOver : l10n.assistantWorkloadOk,
                  style: context.text.bodyMedium?.copyWith(color: Colors.white),
                ),
                if (w.unestimatedCount > 0) ...[
                  const SizedBox(height: Space.xs),
                  Text(
                    l10n.assistantWorkloadUnestimated(w.unestimatedCount),
                    style: context.text.bodySmall?.copyWith(color: Colors.white),
                  ),
                ],
              ],
            ),
          ),
          const SizedBox(height: Space.md),
          for (final d in w.days)
            Padding(
              padding: const EdgeInsets.only(bottom: Space.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(fmt.relativeDay(d.day, now), style: context.text.titleSmall),
                      ),
                      Flexible(
                        child: Text(
                          !d.workday && d.estimatedMinutes == 0
                              ? l10n.assistantWorkloadDayOff
                              : l10n.assistantWorkloadDay(
                                  fmt.minutes(d.estimatedMinutes),
                                  fmt.minutes(d.freeMinutes),
                                ),
                          style: context.text.bodySmall,
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: Space.xxs),
                  GlowBar(
                    value: d.freeMinutes == 0
                        ? (d.estimatedMinutes > 0 ? 1 : 0)
                        : d.estimatedMinutes / d.freeMinutes,
                    hue: d.estimatedMinutes > d.freeMinutes ? ModuleHue.projects : ModuleHue.habits,
                    semanticsLabel: fmt.dayShort(d.day),
                  ),
                ],
              ),
            ),
          const SizedBox(height: Space.xs),
          Text(
            l10n.assistantWorkloadRule(
              fmt.time(DateTime(today.year, today.month, today.day, WorkloadCalculator.startHour)),
              fmt.time(DateTime(today.year, today.month, today.day, WorkloadCalculator.endHour)),
              sundayWeek ? l10n.assistantWorkdaysSunThu : l10n.assistantWorkdaysMonFri,
            ),
            style: context.text.bodySmall,
          ),
        ],
      ),
    );
  }
}

class _ConsentDialog extends StatefulWidget {
  const _ConsentDialog({required this.host});
  final String host;
  @override
  State<_ConsentDialog> createState() => _ConsentDialogState();
}

class _ConsentDialogState extends State<_ConsentDialog> {
  bool _always = false;
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return AlertDialog(
      title: Text(l10n.assistantConsentTitle),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(l10n.assistantConsentBody(widget.host)),
          const SizedBox(height: Space.sm),
          CheckboxListTile(
            contentPadding: EdgeInsets.zero,
            controlAffinity: ListTileControlAffinity.leading,
            value: _always,
            onChanged: (v) => setState(() => _always = v ?? false),
            title: Text(l10n.assistantConsentAlways),
          ),
        ],
      ),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context), child: Text(l10n.actionCancel)),
        FilledButton(
          onPressed: () =>
              Navigator.pop(context, _always ? ConsentDecision.always : ConsentDecision.once),
          child: Text(l10n.assistantSend),
        ),
      ],
    );
  }
}

class SummarizeSheet extends ConsumerStatefulWidget {
  const SummarizeSheet({super.key});
  @override
  ConsumerState<SummarizeSheet> createState() => _SummarizeSheetState();
}
