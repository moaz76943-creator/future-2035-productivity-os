part of '../assistant_tools.dart';

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
