part of '../event_editor_screen.dart';

extension _EventEditorViews on _EventEditorScreenState {
  Widget _label(BuildContext context, String text) => Padding(
    padding: const EdgeInsets.only(bottom: Space.xs),
    child: Text(text, style: context.text.labelLarge?.copyWith(color: context.lux.ink2)),
  );

  Widget _timesCard(BuildContext context) {
    final l10n = context.l10n;
    final fmt = context.fmt;
    final lux = context.lux;
    return LuxCard(
      padding: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SwitchListTile(
            secondary: const Icon(Icons.wb_sunny_outlined),
            title: Text(l10n.calendarAllDay),
            value: _allDay,
            onChanged: _setAllDay,
          ),
          const Divider(height: 1),
          ListTile(
            leading: const Icon(Icons.play_arrow_rounded),
            title: Text(l10n.eventStarts),
            subtitle: Text(_allDay ? fmt.dayLong(_start) : fmt.dateTime(_start)),
            onTap: _pickStart,
          ),
          ListTile(
            leading: const Icon(Icons.stop_rounded),
            title: Text(l10n.eventEnds),
            subtitle: Text(_allDay ? fmt.dayLong(_lastAllDay) : fmt.dateTime(_end)),
            onTap: _pickEnd,
          ),
          if (_timeError != null)
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(Space.md, 0, Space.md, Space.sm),
              child: Semantics(
                liveRegion: true,
                child: Text(
                  _timeError!,
                  style: context.text.bodySmall?.copyWith(color: lux.danger),
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(Space.md, 0, Space.md, Space.sm),
            child: Text(
              l10n.calendarEventLocalTime,
              style: context.text.bodySmall?.copyWith(color: lux.ink3),
            ),
          ),
        ],
      ),
    );
  }

  Widget _conflictWarning(BuildContext context) {
    if (_allDay || !_end.isAfter(_start)) return const SizedBox.shrink();
    final range = DateRange(
      CalendarMath.day(_start),
      CalendarMath.addDays(CalendarMath.day(_end), 1),
    );
    final occ = ref.watch(occurrencesProvider(range)).value ?? const <EventOccurrence>[];
    final n = draftConflictCount(occ, _start, _end, excludeId: widget.eventId);
    if (n == 0) return const SizedBox.shrink();
    final lux = context.lux;
    return Padding(
      padding: const EdgeInsets.only(bottom: Space.sm),
      child: Semantics(
        liveRegion: true,
        child: LuxCard(
          elevated: false,
          color: lux.warning.withValues(alpha: 0.08),
          padding: const EdgeInsets.symmetric(horizontal: Space.md, vertical: Space.sm),
          child: Row(
            children: [
              Icon(Icons.warning_amber_rounded, color: lux.warning, size: 20),
              const SizedBox(width: Space.sm),
              Expanded(child: Text(context.l10n.eventConflict(n), style: context.text.bodyMedium)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _linkedTaskTile(BuildContext context) {
    final l10n = context.l10n;
    final id = _taskId;
    final task = id == null ? null : ref.watch(taskByIdProvider(id)).value;
    return ListTile(
      leading: const Icon(Icons.task_alt_rounded),
      title: Text(l10n.calendarEventLinkedTask),
      subtitle: Text(
        task?.title ?? l10n.calendarEventNoTask,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: id == null
          ? null
          : IconButton(
              tooltip: l10n.actionUnlink,
              icon: const Icon(Icons.link_off_rounded),
              onPressed: () => _update(() => _taskId = null),
            ),
      onTap: _pickTask,
    );
  }
}
