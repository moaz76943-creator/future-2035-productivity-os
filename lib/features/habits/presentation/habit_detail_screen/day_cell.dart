part of '../habit_detail_screen.dart';

class _DayCell extends StatelessWidget {
  const _DayCell({
    required this.day,
    required this.count,
    required this.target,
    required this.scheduled,
    required this.future,
    required this.isToday,
    required this.color,
    required this.onTap,
  });
  final DateTime day;
  final int count;
  final int target;
  final bool scheduled;
  final bool future;
  final bool isToday;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final lux = context.lux;
    final fmt = context.fmt;
    final done = count >= target;
    final partial = count > 0 && !done;
    final fg = done
        ? Colors.white
        : future
        ? lux.ink3.withValues(alpha: 0.5)
        : scheduled
        ? lux.ink
        : lux.ink3;
    return Semantics(
      button: !future,
      enabled: !future,
      checked: done,
      label: context.l10n.habitsDaySemantics(fmt.dayLong(day), count, target),
      excludeSemantics: true,
      child: InkResponse(
        key: ValueKey('day-${Days.key(day)}'),
        onTap: future ? null : onTap,
        radius: 22,
        child: SizedBox(
          height: kMinTouchTarget,
          child: Center(
            child: Container(
              width: 36,
              height: 36,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: done
                    ? color
                    : partial
                    ? color.withValues(alpha: 0.22)
                    : Colors.transparent,
                border: isToday
                    ? Border.all(color: color, width: 2)
                    : scheduled && !future && !done
                    ? Border.all(color: lux.hairline)
                    : null,
              ),
              child: Text(
                fmt.dayOfMonth(day),
                style: context.text.labelMedium?.copyWith(color: fg),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
