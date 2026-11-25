import 'package:material_ui/material_ui.dart';

import '../../app/localization/app_format.dart';
import '../../core/design_system/tokens.dart';

/// Date picker that respects the app locale and text direction.
Future<DateTime?> pickDate(BuildContext context, {DateTime? initial, DateTime? first}) {
  final now = DateTime.now();
  return showDatePicker(
    context: context,
    initialDate: initial ?? now,
    firstDate: first ?? DateTime(now.year - 5),
    lastDate: DateTime(now.year + 20),
  );
}

Future<TimeOfDay?> pickTime(BuildContext context, {TimeOfDay? initial}) => showTimePicker(
  context: context,
  initialTime: initial ?? TimeOfDay.now(),
  // Keep Western digits in every locale.
  builder: (ctx, child) => MediaQuery(
    data: MediaQuery.of(ctx)
        .copyWith(alwaysUse24HourFormat: MediaQuery.of(ctx).alwaysUse24HourFormat),
    child: child!,
  ),
);

/// Picks a date and then a time; returns a local DateTime.
Future<DateTime?> pickDateTime(BuildContext context, {DateTime? initial}) async {
  final d = await pickDate(context, initial: initial);
  if (d == null || !context.mounted) return null;
  final t = await pickTime(
    context,
    initial: initial == null ? null : TimeOfDay.fromDateTime(initial),
  );
  if (t == null) return null;
  return DateTime(d.year, d.month, d.day, t.hour, t.minute);
}

/// Row of accessible color swatches from [Palette.swatches].
class ColorSwatchPicker extends StatelessWidget {
  const ColorSwatchPicker({super.key, required this.value, required this.onChanged});
  final int value;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Wrap(
      spacing: Space.xs,
      runSpacing: Space.xs,
      children: [
        for (var i = 0; i < Palette.swatches.length; i++)
          Semantics(
            button: true,
            selected: Palette.swatches[i].toARGB32() == value,
            label: l10n.a11yColor(i + 1),
            child: InkResponse(
              onTap: () => onChanged(Palette.swatches[i].toARGB32()),
              radius: 26,
              child: AnimatedContainer(
                duration: Motion.fast,
                width: kMinTouchTarget,
                height: kMinTouchTarget,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Palette.swatches[i].toARGB32() == value
                        ? Palette.swatches[i]
                        : Colors.transparent,
                    width: 2,
                  ),
                ),
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Palette.swatches[i],
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(color: Palette.swatches[i].withValues(alpha: 0.35), blurRadius: 10),
                    ],
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
