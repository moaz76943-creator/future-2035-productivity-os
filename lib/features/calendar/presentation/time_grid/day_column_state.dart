part of '../time_grid.dart';

class _DayColumnState extends State<DayColumn> {
  EventOccurrence? _dragging;
  double _dragDy = 0;

  int get _dragMinutes => CalendarMath.snap(_dragDy / kHourHeight * 60);

  void _endDrag() {
    final o = _dragging;
    final delta = _dragMinutes;
    setState(() {
      _dragging = null;
      _dragDy = 0;
    });
    if (o == null || delta == 0) return;
    final newStart = CalendarMath.draggedStart(
      o.start,
      widget.day,
      delta,
      durationMinutes: o.end.difference(o.start).inMinutes,
    );
    if (newStart != o.start) widget.onMove(o, newStart);
  }

  @override
  Widget build(BuildContext context) {
    final lux = context.lux;
    final l10n = context.l10n;
    final slots = layoutDay(
      widget.occurrences,
      widget.day,
      start: (o) => o.start,
      end: (o) => o.end,
    );
    final isToday = CalendarMath.sameDay(widget.day, widget.now);
    return LayoutBuilder(
      builder: (context, c) {
        final width = c.maxWidth;
        // Tapping the empty grid creates an event; TalkBack needs to know that too.
        return Semantics(
          container: true,
          label: '${l10n.eventNew}, ${context.fmt.dayLong(widget.day)}',
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTapUp: (d) {
              final minute = ((d.localPosition.dy / kHourHeight * 60) ~/ 30) * 30;
              widget.onCreateAt(
                CalendarMath.atMinute(widget.day, minute.clamp(0, CalendarMath.minutesPerDay - 30)),
              );
            },
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned.fill(
                  child: Column(
                    children: [
                      for (var h = 0; h < 24; h++)
                        Expanded(
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              border: BorderDirectional(
                                top: BorderSide(color: lux.hairline),
                                start: BorderSide(color: lux.hairline),
                              ),
                            ),
                            child: const SizedBox.expand(),
                          ),
                        ),
                    ],
                  ),
                ),
                for (final s in slots) _block(context, s, width),
                if (isToday)
                  PositionedDirectional(
                    top: CalendarMath.wallMinute(widget.now, widget.day) * kHourHeight / 60 - 4,
                    start: 0,
                    end: 0,
                    height: 8,
                    child: Semantics(
                      label: '${l10n.calendarNow} ${context.fmt.time(widget.now)}',
                      child: IgnorePointer(
                        child: Row(
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(color: lux.danger, shape: BoxShape.circle),
                            ),
                            Expanded(child: Container(height: 2, color: lux.danger)),
                          ],
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _block(BuildContext context, GridSlot<EventOccurrence> s, double width) {
    final o = s.item;
    final dragging = identical(_dragging, o);
    final colW = width / s.columns;
    var top = s.startMinute * kHourHeight / 60;
    final height = (s.endMinute - s.startMinute) * kHourHeight / 60;
    DateTime? previewStart;
    if (dragging) {
      previewStart = CalendarMath.draggedStart(
        o.start,
        widget.day,
        _dragMinutes,
        durationMinutes: o.end.difference(o.start).inMinutes,
      );
      top = CalendarMath.wallMinute(previewStart, widget.day) * kHourHeight / 60;
    }
    return PositionedDirectional(
      key: ValueKey('${o.event.id}@${o.start.toIso8601String()}'),
      top: top,
      height: height,
      start: s.column * colW + 1,
      width: colW - 2,
      child: GestureDetector(
        onTap: () => widget.onOpen(o),
        onLongPressStart: (_) {
          HapticFeedback.selectionClick();
          setState(() {
            _dragging = o;
            _dragDy = 0;
          });
        },
        onLongPressMoveUpdate: (d) {
          final before = _dragMinutes;
          setState(() => _dragDy = d.offsetFromOrigin.dy);
          if (_dragMinutes != before) HapticFeedback.selectionClick();
        },
        onLongPressEnd: (_) => _endDrag(),
        onLongPressCancel: () => setState(() {
          _dragging = null;
          _dragDy = 0;
        }),
        child: EventBlock(
          occurrence: o,
          conflict: widget.conflicts.contains(o),
          compact: widget.compact,
          dragging: dragging,
          previewStart: previewStart,
        ),
      ),
    );
  }
}

/// Visual block of a timed occurrence in the grid.
class EventBlock extends StatelessWidget {
  const EventBlock({
    super.key,
    required this.occurrence,
    required this.conflict,
    this.compact = false,
    this.dragging = false,
    this.previewStart,
  });

  final EventOccurrence occurrence;
  final bool conflict;
  final bool compact;
  final bool dragging;
  final DateTime? previewStart;

  @override
  Widget build(BuildContext context) {
    final lux = context.lux;
    final l10n = context.l10n;
    final e = occurrence.event;
    final kind = EventStyle.kindOf(e);
    final color = EventStyle.colorOf(e);
    final timeBlock = kind == EventKind.timeBlock;
    final time = previewStart != null
        ? context.fmt.time(previewStart!)
        : EventStyle.timeRange(context, occurrence);
    final label = [
      l10n.calendarEventSemantics(e.title, EventStyle.timeRange(context, occurrence)),
      if (kind != EventKind.event) EventStyle.kindLabel(context, kind),
      if (EventStyle.isRecurring(e)) l10n.calendarRecurring,
      if (conflict) l10n.calendarConflictMarker,
    ].join('. ');
    final br = BorderRadius.circular(8);
    return Semantics(
      button: true,
      label: label,
      hint: l10n.calendarDragHint,
      child: ExcludeSemantics(
        child: AnimatedContainer(
          duration: Duration.zero,
          decoration: BoxDecoration(
            borderRadius: br,
            color: Color.alphaBlend(color.withValues(alpha: timeBlock ? 0.08 : 0.18), lux.surface),
            border: timeBlock ? Border.all(color: color.withValues(alpha: 0.7), width: 1.2) : null,
            boxShadow: dragging
                ? [BoxShadow(color: lux.shadow, blurRadius: 16, offset: const Offset(0, 6))]
                : null,
          ),
          child: ClipRRect(
            borderRadius: br,
            child: CustomPaint(
              painter: timeBlock ? TimeBlockHatch(color) : null,
              child: LayoutBuilder(
                builder: (context, c) {
                  final tall = c.maxHeight >= 34;
                  final content = Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(4, 2, 2, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            if (timeBlock && !compact) ...[
                              Icon(EventStyle.kindIcon(kind), size: 12, color: color),
                              const SizedBox(width: 2),
                            ],
                            Expanded(
                              child: Text(
                                e.title,
                                maxLines: tall ? 2 : 1,
                                overflow: TextOverflow.ellipsis,
                                style: context.text.labelMedium?.copyWith(
                                  color: lux.ink,
                                  fontWeight: FontWeight.w600,
                                  height: 1.15,
                                ),
                              ),
                            ),
                            if (conflict)
                              Icon(Icons.warning_amber_rounded, size: 12, color: lux.warning),
                          ],
                        ),
                        if (tall && (!compact || dragging))
                          Flexible(
                            child: Text(
                              time,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: context.text.labelSmall?.copyWith(color: lux.ink2),
                            ),
                          ),
                      ],
                    ),
                  );
                  if (timeBlock) return content;
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(width: 3, color: color),
                      Expanded(child: content),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
