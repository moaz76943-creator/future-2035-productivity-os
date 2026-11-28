part of '../calendar_screen.dart';

/// Small pill under the month title naming the other calendar; tapping it
/// switches between the Gregorian and the Hijri month view.
class _CalendarSwitch extends StatelessWidget {
  const _CalendarSwitch({required this.label, required this.onTap});
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final teal = DeepFocusVisuals.tealPrimary;
    return Semantics(
      button: true,
      label: label,
      excludeSemantics: true,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(Radii.pill),
        child: ConstrainedBox(
          constraints: const BoxConstraints(minHeight: kMinTouchTarget),
          child: Center(
            widthFactor: 1,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: Space.sm, vertical: 4),
              decoration: BoxDecoration(
                color: teal.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(Radii.pill),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.swap_horiz_rounded, size: 14, color: teal),
                  const SizedBox(width: Space.xxs),
                  Text(label, style: context.text.labelMedium?.copyWith(color: teal)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// View selector plus the previous / next row; [switchLabel] (the other
/// calendar's month) is shown only when the Hijri switch applies.
class _CalendarToolbar extends StatelessWidget {
  const _CalendarToolbar({
    required this.view,
    required this.title,
    required this.switchLabel,
    required this.onView,
    required this.onStep,
    required this.onSwitch,
  });
  final CalendarView view;
  final String title;
  final String? switchLabel;
  final ValueChanged<CalendarView> onView;
  final ValueChanged<int> onStep;
  final VoidCallback onSwitch;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Padding(
      padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.sm),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SegmentedButton<CalendarView>(
            showSelectedIcon: false,
            segments: [
              ButtonSegment(value: CalendarView.month, label: _segLabel(l10n.calendarMonth)),
              ButtonSegment(value: CalendarView.week, label: _segLabel(l10n.calendarWeek)),
              ButtonSegment(value: CalendarView.day, label: _segLabel(l10n.calendarDay)),
              ButtonSegment(value: CalendarView.agenda, label: _segLabel(l10n.calendarAgenda)),
            ],
            selected: {view},
            onSelectionChanged: (s) => onView(s.first),
          ),
          const SizedBox(height: Space.sm),
          Row(
            children: [
              IconButton(
                tooltip: l10n.calendarPrevious,
                icon: const Icon(Icons.chevron_left_rounded),
                onPressed: () => onStep(-1),
              ),
              Expanded(
                child: Column(
                  children: [
                    Semantics(
                      liveRegion: true,
                      header: true,
                      child: Text(
                        title,
                        textAlign: TextAlign.center,
                        style: context.text.titleMedium,
                      ),
                    ),
                    if (switchLabel != null) _CalendarSwitch(label: switchLabel!, onTap: onSwitch),
                  ],
                ),
              ),
              IconButton(
                tooltip: l10n.calendarNext,
                icon: const Icon(Icons.chevron_right_rounded),
                onPressed: () => onStep(1),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
