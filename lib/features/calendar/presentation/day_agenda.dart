import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../core/database/app_database.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/components/indicators.dart';
import '../../../core/design_system/components/states.dart';
import '../../../core/design_system/components/surfaces.dart';
import '../../../core/design_system/tokens.dart';
import '../data/events_repository.dart';
import 'event_style.dart';

/// Warning shown when a day contains overlapping timed events.
class ConflictBanner extends StatelessWidget {
  const ConflictBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final lux = context.lux;
    return Padding(
      padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.sm),
      child: LuxCard(
        elevated: false,
        color: lux.warning.withValues(alpha: 0.08),
        padding: const EdgeInsets.symmetric(horizontal: Space.md, vertical: Space.sm),
        child: Semantics(
          liveRegion: true,
          child: Row(
            children: [
              Icon(Icons.warning_amber_rounded, color: lux.warning, size: 20),
              const SizedBox(width: Space.sm),
              Expanded(
                child: Text(
                  context.l10n.eventConflictsToday,
                  style: context.text.bodyMedium?.copyWith(color: lux.ink),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Agenda for one day: events (all-day first) and tasks due.
class DayAgenda extends StatelessWidget {
  const DayAgenda({
    super.key,
    required this.events,
    required this.tasks,
    required this.conflicts,
    required this.onOpenEvent,
    required this.onOpenTask,
    required this.onScheduleTask,
    required this.onNewEvent,
    this.milestones = const [],
    this.onOpenProject,
  });

  final List<EventOccurrence> events;
  final List<TaskRow> tasks;

  /// Project milestones due that day (distinct type from events and tasks).
  final List<(MilestoneRow, ProjectRow)> milestones;
  final ValueChanged<String>? onOpenProject;
  final Set<EventOccurrence> conflicts;
  final ValueChanged<EventOccurrence> onOpenEvent;
  final ValueChanged<TaskRow> onOpenTask;
  final ValueChanged<TaskRow> onScheduleTask;
  final VoidCallback onNewEvent;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    if (events.isEmpty && tasks.isEmpty && milestones.isEmpty) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: Space.page),
        child: EmptyState(
          compact: true,
          icon: Icons.event_available_rounded,
          hue: ModuleHue.calendar,
          title: l10n.calendarNoEvents,
          message: l10n.calendarNoEventsHint,
          actionLabel: l10n.eventNew,
          onAction: onNewEvent,
        ),
      );
    }
    final sorted = [...events]
      ..sort((a, b) {
        if (a.event.allDay != b.event.allDay) return a.event.allDay ? -1 : 1;
        return a.start.compareTo(b.start);
      });
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Space.page),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (sorted.any(conflicts.contains)) const ConflictBanner(),
          for (final o in sorted)
            Padding(
              padding: const EdgeInsets.only(bottom: Space.sm),
              child: EventRowTile(
                occurrence: o,
                conflict: conflicts.contains(o),
                onTap: () => onOpenEvent(o),
              ),
            ),
          for (final (m, p) in milestones)
            Padding(
              padding: const EdgeInsets.only(bottom: Space.sm),
              child: LuxCard(
                key: ValueKey('cal-milestone-${m.id}'),
                elevated: false,
                onTap: onOpenProject == null ? null : () => onOpenProject!(p.id),
                padding: const EdgeInsetsDirectional.fromSTEB(
                  Space.md,
                  Space.sm,
                  Space.md,
                  Space.sm,
                ),
                child: Row(
                  children: [
                    Icon(
                      m.done ? Icons.flag_rounded : Icons.outlined_flag_rounded,
                      color: Color(p.color),
                      size: 20,
                    ),
                    const SizedBox(width: Space.sm),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            m.title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: context.text.bodyLarge?.copyWith(
                              decoration: m.done ? TextDecoration.lineThrough : null,
                            ),
                          ),
                          Text(
                            l10n.calendarMilestone(p.name),
                            style: context.text.labelSmall?.copyWith(color: context.lux.ink3),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          for (final t in tasks)
            Padding(
              padding: const EdgeInsets.only(bottom: Space.sm),
              child: _TaskDueTile(
                task: t,
                onTap: () => onOpenTask(t),
                onSchedule: () => onScheduleTask(t),
              ),
            ),
        ],
      ),
    );
  }
}

class EventRowTile extends StatelessWidget {
  const EventRowTile({
    super.key,
    required this.occurrence,
    required this.conflict,
    required this.onTap,
  });

  final EventOccurrence occurrence;
  final bool conflict;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final lux = context.lux;
    final l10n = context.l10n;
    final e = occurrence.event;
    final kind = EventStyle.kindOf(e);
    final color = EventStyle.colorOf(e);
    final time = EventStyle.timeRange(context, occurrence);
    final recurring = EventStyle.isRecurring(e);
    return LuxCard(
      accent: color,
      onTap: onTap,
      padding: const EdgeInsetsDirectional.fromSTEB(Space.lg, Space.sm, Space.md, Space.sm),
      semanticLabel: [
        l10n.calendarEventSemantics(e.title, time),
        if (kind != EventKind.event) EventStyle.kindLabel(context, kind),
        if (recurring) l10n.calendarRecurring,
        if (conflict) l10n.calendarConflictMarker,
      ].join('. '),
      child: ExcludeSemantics(
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    e.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: context.text.titleSmall,
                  ),
                  const SizedBox(height: 2),
                  Text(time, style: context.text.bodySmall?.copyWith(color: lux.ink2)),
                  if (kind != EventKind.event) ...[
                    const SizedBox(height: Space.xxs),
                    LuxPill(
                      label: EventStyle.kindLabel(context, kind),
                      color: color,
                      icon: EventStyle.kindIcon(kind),
                    ),
                  ],
                ],
              ),
            ),
            if (recurring) Icon(Icons.repeat_rounded, size: 18, color: lux.ink3),
            if (conflict) ...[
              const SizedBox(width: Space.xxs),
              Icon(Icons.warning_amber_rounded, size: 18, color: lux.warning),
            ],
          ],
        ),
      ),
    );
  }
}

class _TaskDueTile extends StatelessWidget {
  const _TaskDueTile({required this.task, required this.onTap, required this.onSchedule});
  final TaskRow task;
  final VoidCallback onTap;
  final VoidCallback onSchedule;

  @override
  Widget build(BuildContext context) {
    final lux = context.lux;
    final l10n = context.l10n;
    final due = task.dueAt?.toLocal();
    return LuxCard(
      onTap: onTap,
      elevated: false,
      padding: const EdgeInsetsDirectional.fromSTEB(Space.md, Space.xs, Space.xxs, Space.xs),
      child: Row(
        children: [
          Icon(
            task.done ? Icons.check_circle_rounded : Icons.radio_button_unchecked_rounded,
            color: ModuleHue.tasks.a,
            size: 20,
          ),
          const SizedBox(width: Space.sm),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  task.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: context.text.bodyLarge?.copyWith(
                    decoration: task.done ? TextDecoration.lineThrough : null,
                    color: task.done ? lux.ink3 : lux.ink,
                  ),
                ),
                const SizedBox(height: 2),
                Wrap(
                  spacing: Space.xs,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    LuxPill(label: l10n.calendarTaskDue, color: ModuleHue.tasks.a),
                    if (due != null && task.dueHasTime)
                      Text(
                        context.fmt.time(due),
                        style: context.text.bodySmall?.copyWith(color: lux.ink2),
                      ),
                  ],
                ),
              ],
            ),
          ),
          if (!task.done)
            IconButton(
              tooltip: l10n.calendarScheduleTask,
              icon: const Icon(Icons.more_time_rounded),
              onPressed: onSchedule,
            ),
        ],
      ),
    );
  }
}
