import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../core/database/app_database.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/components/indicators.dart';
import '../../../core/design_system/components/states.dart';
import '../../../core/design_system/components/surfaces.dart';
import '../../../core/design_system/tokens.dart';
import '../../../core/providers/core_providers.dart';
import '../../../core/time/clock.dart';
import '../../../shared/widgets/async_value_view.dart';
import '../../../shared/widgets/dialogs.dart';
import '../../calendar/application/calendar_providers.dart';
import '../../calendar/data/events_repository.dart';
import '../../flashcards/application/flashcards_providers.dart';
import '../../notes/application/notes_providers.dart';
import '../../notes/data/notes_repository.dart';
import '../../settings/application/settings_providers.dart';
import '../../tasks/application/tasks_providers.dart';
import '../../tasks/data/tasks_repository.dart';
import '../application/assistant_providers.dart';
import '../data/remote_assistant.dart';
import '../domain/day_planner.dart';
import '../domain/note_extractors.dart';
import '../domain/workload.dart';

/// Opens a tool in a tall bottom sheet.
Future<void> showToolSheet(BuildContext context, Widget child) => showModalBottomSheet<void>(
  context: context,
  isScrollControlled: true,
  showDragHandle: true,
  useSafeArea: true,
  builder: (_) => FractionallySizedBox(heightFactor: 0.92, child: child),
);

/// Common layout for tool sheets: title, scrollable body, optional footer.
class ToolSheetFrame extends StatelessWidget {
  const ToolSheetFrame({super.key, required this.title, required this.children, this.footer});
  final String title;
  final List<Widget> children;
  final Widget? footer;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(Space.page, 0, Space.page, Space.sm),
          child: Semantics(header: true, child: Text(title, style: context.text.titleLarge)),
        ),
        Expanded(
          child: ListView(
            padding: const EdgeInsetsDirectional.fromSTEB(Space.page, 0, Space.page, Space.lg),
            children: children,
          ),
        ),
        if (footer != null)
          SafeArea(
            top: false,
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(
                Space.page,
                Space.xs,
                Space.page,
                Space.md,
              ),
              child: footer,
            ),
          ),
      ],
    );
  }
}

String _taskSubtitle(BuildContext context, PlanTask t, DateTime now) {
  final fmt = context.fmt;
  final parts = <String>[
    if (t.isOverdue(now)) context.l10n.tasksViewOverdue,
    if (t.dueAt != null && !t.isOverdue(now))
      t.dueHasTime ? fmt.dateTime(t.dueAt!) : fmt.relativeDay(t.dueAt!, now),
    if (t.estimateMinutes != null) fmt.minutes(t.estimateMinutes!),
  ];
  return parts.join(' · ');
}

// ---------------------------------------------------------------------------
// Plan my day

class PlanDaySheet extends ConsumerStatefulWidget {
  const PlanDaySheet({super.key});
  @override
  ConsumerState<PlanDaySheet> createState() => _PlanDaySheetState();
}

class _PlanDaySheetState extends ConsumerState<PlanDaySheet> {
  bool _busy = false;

  Future<void> _schedule(List<PlannedBlock> blocks) async {
    final l10n = context.l10n;
    final ok = await confirmAction(
      context,
      title: l10n.assistantScheduleConfirmTitle,
      message: l10n.assistantScheduleConfirmBody(blocks.length),
      confirmLabel: l10n.actionCreate,
    );
    if (!ok || !mounted) return;
    setState(() => _busy = true);
    final repo = ref.read(eventsRepositoryProvider);
    var created = 0;
    try {
      for (final b in blocks) {
        await repo.create(
          EventDraft(
            title: b.task.title,
            start: b.start,
            end: b.end,
            kind: EventKind.timeBlock,
            taskId: b.task.id,
          ),
        );
        created++;
      }
      if (mounted) showMessage(context, l10n.assistantScheduled(created));
    } on Object {
      if (mounted) showMessage(context, l10n.errorSaveFailed);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final fmt = context.fmt;
    final now = ref.watch(clockProvider).now();
    final today = Days.startOfDay(now);
    final endOfPlan = DateTime(today.year, today.month, today.day, DayPlanner.endHour);
    final async = ref.watch(todayPlanProvider);
    return AsyncValueView<TodayPlan>(
      value: async,
      data: (tp) {
        final p = tp.plan;
        final children = <Widget>[
          AuroraCard(
            hue: ModuleHue.calendar,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.assistantPlanCapacity(fmt.minutes(p.capacityMinutes)),
                  style: context.text.titleMedium?.copyWith(color: Colors.white),
                ),
                const SizedBox(height: Space.xs),
                Text(
                  l10n.assistantPlanRule(fmt.time(endOfPlan)),
                  style: context.text.bodySmall?.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
        ];
        if (p.isEmpty && tp.alreadyBlocked.isEmpty) {
          children.add(
            EmptyState(
              icon: Icons.self_improvement_rounded,
              hue: ModuleHue.calendar,
              title: l10n.assistantPlanDay,
              message: l10n.assistantPlanEmpty,
              compact: true,
            ),
          );
        }
        Widget header(String t) => SectionHeader(title: t, padding: _sectionPad);
        if (p.blocks.isNotEmpty) {
          children.add(header(l10n.assistantPlanTimeline));
          for (final b in p.blocks) {
            children.add(
              _Row(
                leading: Directionality(
                  textDirection: TextDirection.ltr,
                  child: Text(fmt.time(b.start), style: context.text.labelMedium),
                ),
                title: b.task.title,
                subtitle: l10n.assistantTimeRange(fmt.time(b.start), fmt.time(b.end)),
                accent: b.task.isOverdue(now) ? context.lux.danger : ModuleHue.calendar.a,
              ),
            );
          }
        }
        if (p.overflow.isNotEmpty) {
          children.add(header(l10n.assistantPlanOverflow));
          for (final t in p.overflow) {
            children.add(_Row(title: t.title, subtitle: _taskSubtitle(context, t, now)));
          }
        }
        if (p.unestimated.isNotEmpty) {
          children.add(header(l10n.assistantNoEstimate));
          for (final t in p.unestimated) {
            children.add(_Row(title: t.title, subtitle: _taskSubtitle(context, t, now)));
          }
        }
        if (tp.alreadyBlocked.isNotEmpty) {
          children.add(header(l10n.assistantAlreadyScheduled));
          for (final o in tp.alreadyBlocked) {
            children.add(
              _Row(
                title: o.event.title,
                subtitle: l10n.assistantTimeRange(fmt.time(o.start), fmt.time(o.end)),
                accent: context.lux.success,
              ),
            );
          }
        }
        return ToolSheetFrame(
          title: l10n.assistantPlanDay,
          footer: p.blocks.isEmpty
              ? null
              : FilledButton.icon(
                  onPressed: _busy ? null : () => _schedule(p.blocks),
                  icon: const Icon(Icons.event_available_rounded),
                  label: Text(l10n.assistantScheduleBlocks),
                ),
          children: children,
        );
      },
    );
  }
}

const _sectionPad = EdgeInsetsDirectional.fromSTEB(0, Space.lg, 0, Space.xs);

class _Row extends StatelessWidget {
  const _Row({required this.title, this.subtitle, this.leading, this.accent});
  final String title;
  final String? subtitle;
  final Widget? leading;
  final Color? accent;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: Space.xs),
      child: LuxCard(
        accent: accent,
        elevated: false,
        padding: const EdgeInsetsDirectional.fromSTEB(Space.md, Space.sm, Space.md, Space.sm),
        child: Row(
          children: [
            if (leading != null) ...[leading!, const SizedBox(width: Space.sm)],
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: context.text.bodyLarge,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (subtitle != null && subtitle!.isNotEmpty)
                    Text(subtitle!, style: context.text.bodySmall),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Note chooser shared by the note tools

final _allNotesProvider = Provider.autoDispose<AsyncValue<List<NoteRow>>>(
  (ref) => ref.watch(notesListProvider((view: NotesView.all, notebookId: null, tag: null))),
);

class NoteChooser extends ConsumerWidget {
  const NoteChooser({super.key, required this.title, required this.onChosen});
  final String title;
  final ValueChanged<NoteRow> onChosen;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final now = ref.watch(clockProvider).now();
    return AsyncValueView<List<NoteRow>>(
      value: ref.watch(_allNotesProvider),
      data: (notes) => ToolSheetFrame(
        title: title,
        children: [
          Text(l10n.assistantChooseNote, style: context.text.labelLarge),
          const SizedBox(height: Space.xs),
          if (notes.isEmpty)
            EmptyState(
              icon: Icons.sticky_note_2_rounded,
              hue: ModuleHue.notes,
              title: l10n.assistantChooseNote,
              message: l10n.assistantNoNotes,
              compact: true,
            ),
          for (final n in notes)
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.sticky_note_2_outlined),
              title: Text(
                n.title.trim().isEmpty ? l10n.untitled : n.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(context.fmt.relativeDay(n.updatedAt.toLocal(), now)),
              trailing: const Icon(Icons.chevron_right_rounded),
              onTap: () => onChosen(n),
            ),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Extract tasks

class ExtractTasksSheet extends ConsumerStatefulWidget {
  const ExtractTasksSheet({super.key});
  @override
  ConsumerState<ExtractTasksSheet> createState() => _ExtractTasksSheetState();
}

class _ExtractTasksSheetState extends ConsumerState<ExtractTasksSheet> {
  NoteRow? _note;
  List<String> _found = const [];
  final Set<int> _selected = {};
  bool _busy = false;

  void _choose(NoteRow n) {
    final found = TaskExtractor.extract(n.body);
    setState(() {
      _note = n;
      _found = found;
      _selected
        ..clear()
        ..addAll(List.generate(found.length, (i) => i));
    });
  }

  Future<void> _create() async {
    final l10n = context.l10n;
    final note = _note!;
    setState(() => _busy = true);
    final tasks = ref.read(tasksRepositoryProvider);
    final notes = ref.read(notesRepositoryProvider);
    var n = 0;
    try {
      for (final i in _selected.toList()..sort()) {
        final id = await tasks.create(TaskDraft(title: _found[i]));
        await notes.linkTask(note.id, id);
        n++;
      }
      if (!mounted) return;
      showMessage(context, l10n.assistantTasksCreated(n));
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
      return NoteChooser(title: l10n.assistantExtractTasks, onChosen: _choose);
    }
    return ToolSheetFrame(
      title: l10n.assistantExtractTasks,
      footer: _found.isEmpty
          ? null
          : FilledButton(
              onPressed: _busy || _selected.isEmpty ? null : _create,
              child: Text(l10n.assistantCreateSelected(_selected.length)),
            ),
      children: [
        _NoteHeader(note: _note!, onChange: () => setState(() => _note = null)),
        Text(l10n.assistantFoundTasks(_found.length), style: context.text.titleMedium),
        const SizedBox(height: Space.xxs),
        Text(l10n.assistantExtractHint, style: context.text.bodySmall),
        const SizedBox(height: Space.sm),
        for (var i = 0; i < _found.length; i++)
          CheckboxListTile(
            contentPadding: EdgeInsets.zero,
            controlAffinity: ListTileControlAffinity.leading,
            value: _selected.contains(i),
            onChanged: (v) => setState(() => v == true ? _selected.add(i) : _selected.remove(i)),
            title: Text(_found[i]),
          ),
      ],
    );
  }
}

class _NoteHeader extends StatelessWidget {
  const _NoteHeader({required this.note, required this.onChange});
  final NoteRow note;
  final VoidCallback onChange;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Padding(
      padding: const EdgeInsets.only(bottom: Space.sm),
      child: LuxCard(
        elevated: false,
        padding: const EdgeInsetsDirectional.fromSTEB(Space.md, Space.xs, Space.xs, Space.xs),
        child: Row(
          children: [
            const Icon(Icons.sticky_note_2_outlined, size: 20),
            const SizedBox(width: Space.xs),
            Expanded(
              child: Text(
                note.title.trim().isEmpty ? l10n.untitled : note.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: context.text.titleSmall,
              ),
            ),
            TextButton(onPressed: onChange, child: Text(l10n.assistantChooseNote)),
          ],
        ),
      ),
    );
  }
}

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

// ---------------------------------------------------------------------------
// Summarize (remote, optional)

/// Consent dialog shown before any content leaves the device.
Future<ConsentDecision?> showConsentDialog(BuildContext context, String host) {
  return showDialog<ConsentDecision>(
    context: context,
    builder: (ctx) => _ConsentDialog(host: host),
  );
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

class _SummarizeSheetState extends ConsumerState<SummarizeSheet> {
  NoteRow? _note;
  bool _busy = false;
  String? _summary;
  String? _error;

  Future<void> _run(NoteRow n) async {
    final l10n = context.l10n;
    setState(() {
      _note = n;
      _summary = null;
      _error = null;
    });
    final text = [n.title.trim(), n.body.trim()].where((s) => s.isNotEmpty).join('\n\n');
    if (n.body.trim().isEmpty) {
      setState(() => _error = l10n.assistantNoteEmpty);
      return;
    }
    setState(() => _busy = true);
    final settings = ref.read(settingsProvider);
    try {
      final (summary, decision) = await ref
          .read(remoteAssistantProvider)
          .summarize(
            text: text,
            settings: settings,
            askConsent: (host) => showConsentDialog(context, host),
          );
      if (decision == ConsentDecision.always) {
        await ref
            .read(settingsProvider.notifier)
            .update((s) => s.copyWith(assistantRemoteConsent: true));
      }
      if (mounted) setState(() => _summary = summary);
    } on AssistantConsentDeclined {
      if (mounted) setState(() => _note = null);
    } on AssistantNotConfigured {
      if (mounted) setState(() => _error = l10n.assistantProviderOff);
    } on Object {
      if (mounted) setState(() => _error = l10n.assistantUnavailable);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    if (_note == null) {
      return NoteChooser(title: l10n.assistantSummarize, onChosen: _run);
    }
    final host =
        AssistantEndpoint.host(ref.watch(settingsProvider.select((s) => s.assistantEndpoint))) ??
        '';
    return ToolSheetFrame(
      title: l10n.assistantSummarize,
      footer: _summary == null
          ? null
          : OutlinedButton.icon(
              onPressed: () async {
                await Clipboard.setData(ClipboardData(text: _summary!));
                if (context.mounted) showMessage(context, l10n.assistantCopied);
              },
              icon: const Icon(Icons.copy_rounded),
              label: Text(l10n.assistantCopy),
            ),
      children: [
        _NoteHeader(note: _note!, onChange: () => setState(() => _note = null)),
        if (_busy) LoadingState(label: l10n.assistantSummarizing, rows: 2),
        if (_error != null)
          ErrorState(
            title: l10n.assistantSummarize,
            message: _error!,
            retryLabel: l10n.actionRetry,
            onRetry: () => _run(_note!),
          ),
        if (_summary != null) ...[
          Text(l10n.assistantSummaryTitle, style: context.text.titleMedium),
          const SizedBox(height: Space.xs),
          LuxCard(child: SelectableText(_summary!, style: context.text.bodyMedium)),
          const SizedBox(height: Space.xs),
          Text(l10n.assistantSummaryNote(host), style: context.text.bodySmall),
        ],
      ],
    );
  }
}
