part of '../focus_screen.dart';

class _TargetRings extends ConsumerWidget {
  const _TargetRings();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final settings = ref.watch(settingsProvider);
    final now = ref.read(clockProvider).now();
    final day = Days.startOfDay(now);
    final week = Days.startOfWeek(now);
    final daily = ref.watch(focusWorkSecondsProvider((day, Days.addDays(day, 1))));
    final weekly = ref.watch(focusWorkSecondsProvider((week, Days.addDays(week, 7))));
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: Space.page),
      child: LuxCard(
        child: Column(
          children: [
            Wrap(
              alignment: WrapAlignment.spaceEvenly,
              spacing: Space.lg,
              runSpacing: Space.lg,
              children: [
                _TargetRing(
                  label: l10n.focusDailyTarget,
                  seconds: daily,
                  targetMinutes: settings.dailyFocusTargetMinutes,
                  ringKey: const ValueKey('focus-daily-ring'),
                ),
                _TargetRing(
                  label: l10n.focusWeeklyTarget,
                  seconds: weekly,
                  targetMinutes: settings.weeklyFocusTargetMinutes,
                  ringKey: const ValueKey('focus-weekly-ring'),
                ),
              ],
            ),
            const SizedBox(height: Space.sm),
            Text(
              l10n.focusTargetCaption,
              style: context.text.bodySmall?.copyWith(color: context.lux.ink3),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class _TargetRing extends StatelessWidget {
  const _TargetRing({
    required this.label,
    required this.seconds,
    required this.targetMinutes,
    required this.ringKey,
  });
  final String label;
  final AsyncValue<int> seconds;
  final int targetMinutes;
  final Key ringKey;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final fmt = context.fmt;
    return SizedBox(
      width: 140,
      child: AsyncValueView<int>(
        value: seconds,
        loadingRows: 1,
        data: (s) {
          final target = targetMinutes <= 0 ? 0 : targetMinutes * 60;
          final ratio = target == 0 ? 0.0 : (s / target).clamp(0.0, 1.0);
          final ofTarget = l10n.dashFocusOfTarget(
            fmt.duration(Duration(seconds: s)),
            fmt.minutes(targetMinutes),
          );
          return Column(
            children: [
              GlowRing(
                key: ringKey,
                value: ratio,
                hue: ModuleHue.focus,
                size: 112,
                stroke: 10,
                semanticsLabel: label,
                semanticsValue: ofTarget,
                child: ExcludeSemantics(
                  child: Text(fmt.percent(ratio), style: context.text.titleMedium),
                ),
              ),
              const SizedBox(height: Space.xs),
              ExcludeSemantics(
                child: Column(
                  children: [
                    Text(label, style: context.text.labelLarge, textAlign: TextAlign.center),
                    Text(
                      ofTarget,
                      style: context.text.bodySmall?.copyWith(color: context.lux.ink2),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _HistorySliver extends ConsumerWidget {
  const _HistorySliver({required this.onDelete});
  final ValueChanged<FocusSessionRow> onDelete;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return SliverAsyncValueView<List<FocusSessionRow>>(
      value: ref.watch(focusHistoryProvider),
      data: (rows) {
        if (rows.isEmpty) {
          return SliverToBoxAdapter(
            child: EmptyState(
              icon: Icons.timer_outlined,
              title: l10n.focusHistory,
              message: l10n.focusNoHistory,
              compact: true,
            ),
          );
        }
        return SliverPadding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: Space.page),
          sliver: SliverList.separated(
            itemCount: rows.length,
            separatorBuilder: (_, _) => const SizedBox(height: Space.xs),
            itemBuilder: (context, i) => _HistoryRow(row: rows[i], onDelete: onDelete),
          ),
        );
      },
    );
  }
}

class _HistoryRow extends StatelessWidget {
  const _HistoryRow({required this.row, required this.onDelete});
  final FocusSessionRow row;
  final ValueChanged<FocusSessionRow> onDelete;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final fmt = context.fmt;
    final mode = FocusMode.values.asNameMap()[row.mode] ?? FocusMode.open;
    final phase = FocusPhase.values.asNameMap()[row.phase] ?? FocusPhase.work;
    final title = phase == FocusPhase.work
        ? focusModeLabel(l10n, mode)
        : focusPhaseLabel(l10n, phase);
    final duration = fmt.duration(Duration(seconds: row.activeSeconds));
    final when = fmt.dateTime(row.startedAt);
    final completed = row.outcome == SessionOutcome.completed.name;
    return LuxCard(
      elevated: false,
      padding: const EdgeInsetsDirectional.fromSTEB(Space.md, Space.sm, Space.xs, Space.sm),
      child: Row(
        children: [
          GlowDot(color: phase == FocusPhase.work ? ModuleHue.focus.a : ModuleHue.habits.a),
          const SizedBox(width: Space.sm),
          Expanded(
            child: Semantics(
              label: l10n.focusHistoryItem(title, duration, when),
              child: ExcludeSemantics(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(
                      spacing: Space.xs,
                      runSpacing: Space.xxs,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Text(title, style: context.text.titleSmall),
                        LuxPill(
                          label: completed
                              ? l10n.focusOutcomeCompleted
                              : l10n.focusOutcomeInterrupted,
                          color: completed ? context.lux.success : context.lux.ink3,
                        ),
                      ],
                    ),
                    const SizedBox(height: 2),
                    Text(
                      '$duration · $when',
                      style: context.text.bodySmall?.copyWith(color: context.lux.ink2),
                    ),
                    if (row.note.isNotEmpty)
                      Padding(
                        padding: const EdgeInsetsDirectional.only(top: Space.xxs),
                        child: Text(
                          row.note,
                          style: context.text.bodyMedium,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
          IconButton(
            tooltip: l10n.focusDeleteSession,
            onPressed: () => onDelete(row),
            icon: const Icon(Icons.delete_outline_rounded),
          ),
        ],
      ),
    );
  }
}

class _SessionNoteDialog extends StatefulWidget {
  const _SessionNoteDialog({required this.session});
  final FinishedSession session;

  @override
  State<_SessionNoteDialog> createState() => _SessionNoteDialogState();
}

class _SessionNoteDialogState extends State<_SessionNoteDialog> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final f = widget.session;
    final completed = f.outcome == SessionOutcome.completed;
    return AlertDialog(
      title: Text(completed ? l10n.focusSessionComplete : l10n.focusSessionStopped),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(l10n.focusSessionSummary(context.fmt.duration(Duration(seconds: f.activeSeconds)))),
          const SizedBox(height: Space.md),
          TextField(
            controller: _controller,
            maxLines: 3,
            minLines: 1,
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(labelText: l10n.focusAddNote, hintText: l10n.focusNoteHint),
          ),
        ],
      ),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context), child: Text(l10n.actionSkip)),
        FilledButton(
          onPressed: () => Navigator.pop(context, _controller.text.trim()),
          child: Text(l10n.actionSave),
        ),
      ],
    );
  }
}
