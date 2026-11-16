import 'package:material_ui/material_ui.dart';

import '../../../../app/localization/app_format.dart';
import '../../../../core/database/app_database.dart';
import '../../../../core/design_system/app_theme.dart';
import '../../../../core/design_system/components/indicators.dart';
import '../../../../core/design_system/components/surfaces.dart';
import '../../../../core/design_system/tokens.dart';
import '../../application/habit_stats.dart';

/// Short weekday names, Monday first (from a fixed Monday reference week).
List<String> weekdayNames(BuildContext context) => [
  for (var i = 0; i < 7; i++) context.fmt.weekdayShort(DateTime(2024, 1, 1 + i)),
];

/// Formats minutes after midnight as a local time label.
String reminderLabel(BuildContext context, int minute) =>
    context.fmt.time(DateTime(2024, 1, 1, minute ~/ 60, minute % 60));

/// "Every day" or "Mon, Wed, Fri".
String scheduleLabel(BuildContext context, int mask) {
  if (mask & 127 == 127) return context.l10n.habitEveryDay;
  final names = weekdayNames(context);
  return [
    for (var i = 0; i < 7; i++)
      if (HabitStats.hasDay(mask, i)) names[i],
  ].join(context.l10n.habitsListSeparator);
}

/// Round check-in control: shows count/target as a ring tinted with the
/// habit's colour. Tap increments; long-press opens adjustments.
class HabitCheckInButton extends StatelessWidget {
  const HabitCheckInButton({
    super.key,
    required this.habit,
    required this.count,
    required this.onTap,
    required this.onLongPress,
    this.size = 56,
  });
  final HabitRow habit;
  final int count;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final double size;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final color = Color(habit.color);
    final target = habit.targetPerDay;
    final done = count >= target;
    return Semantics(
      button: true,
      label: l10n.habitToggleSemantics(habit.name),
      value: target == 1
          ? (done ? l10n.habitDoneToday : null)
          : l10n.habitCountToday(count, target),
      checked: target == 1 ? done : null,
      onLongPressHint: l10n.habitsCheckInHint,
      excludeSemantics: true,
      child: InkResponse(
        onTap: onTap,
        onLongPress: onLongPress,
        radius: size / 2 + 4,
        child: SizedBox.square(
          dimension: size < 48 ? 48 : size,
          child: Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox.square(
                  dimension: size,
                  child: CircularProgressIndicator(
                    value: (count / target).clamp(0.0, 1.0),
                    strokeWidth: 4,
                    color: color,
                    backgroundColor: context.lux.recessed,
                  ),
                ),
                AnimatedContainer(
                  duration: context.motion(Motion.fast),
                  width: size - 14,
                  height: size - 14,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: done ? color : color.withValues(alpha: 0.08),
                  ),
                  alignment: Alignment.center,
                  child: done && target == 1
                      ? const Icon(Icons.check_rounded, color: Colors.white)
                      : Text(
                          target == 1 ? '' : context.fmt.number(count),
                          style: context.text.titleSmall?.copyWith(
                            color: done ? Colors.white : color,
                          ),
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Small streak label with a glowing dot.
class StreakLabel extends StatelessWidget {
  const StreakLabel({super.key, required this.streak, required this.color});
  final int streak;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        GlowDot(color: streak > 0 ? color : context.lux.ink3, size: 7),
        const SizedBox(width: 6),
        Flexible(
          child: Text(
            context.l10n.habitStreak(streak),
            style: context.text.bodySmall?.copyWith(color: context.lux.ink2),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
