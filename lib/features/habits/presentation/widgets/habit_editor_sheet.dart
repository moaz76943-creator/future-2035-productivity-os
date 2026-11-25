import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../app/localization/app_format.dart';
import '../../../../core/database/app_database.dart';
import '../../../../core/design_system/app_theme.dart';
import '../../../../core/design_system/tokens.dart';
import '../../../../shared/widgets/dialogs.dart';
import '../../../../shared/widgets/pickers.dart';
import '../../application/habit_stats.dart';
import '../../application/habits_providers.dart';
import 'habit_visuals.dart';

/// Opens the habit editor; creates when [habit] is null. Returns the id.
Future<String?> showHabitEditor(BuildContext context, {HabitRow? habit}) =>
    showModalBottomSheet<String>(
      useRootNavigator: true,
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      useSafeArea: true,
      builder: (_) => HabitEditorSheet(habit: habit),
    );

class HabitEditorSheet extends ConsumerStatefulWidget {
  const HabitEditorSheet({super.key, this.habit});
  final HabitRow? habit;

  @override
  ConsumerState<HabitEditorSheet> createState() => _HabitEditorSheetState();
}

class _HabitEditorSheetState extends ConsumerState<HabitEditorSheet> {
  final _form = GlobalKey<FormState>();
  late final TextEditingController _name;
  late int _color;
  late int _weekdays;
  late int _target;
  int? _reminder;
  bool _saving = false;
  bool _daysError = false;

  @override
  void initState() {
    super.initState();
    final h = widget.habit;
    _name = TextEditingController(text: h?.name ?? '');
    _color = h?.color ?? Palette.swatches[2].toARGB32();
    _weekdays = h?.weekdays ?? 127;
    _target = h?.targetPerDay ?? 1;
    _reminder = h?.reminderMinute;
  }

  @override
  void dispose() {
    _name.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    final validName = _form.currentState?.validate() ?? false;
    setState(() => _daysError = _weekdays == 0);
    if (_saving || !validName || _weekdays == 0) return;
    setState(() => _saving = true);
    final repo = ref.read(habitsRepositoryProvider);
    try {
      final h = widget.habit;
      String id;
      if (h == null) {
        id = await repo.create(
          name: _name.text,
          color: _color,
          weekdays: _weekdays,
          targetPerDay: _target,
          reminderMinute: _reminder,
        );
      } else {
        id = h.id;
        await repo.update(
          id,
          name: _name.text,
          color: _color,
          weekdays: _weekdays,
          targetPerDay: _target,
          reminderMinute: _reminder,
        );
      }
      if (mounted) Navigator.pop(context, id);
    } on Object {
      if (!mounted) return;
      setState(() => _saving = false);
      showMessage(context, context.l10n.errorSaveFailed);
    }
  }

  Future<void> _pickReminder() async {
    final r = _reminder;
    final t = await pickTime(
      context,
      initial: TimeOfDay(hour: (r ?? 540) ~/ 60, minute: (r ?? 540) % 60),
    );
    if (t != null) setState(() => _reminder = t.hour * 60 + t.minute);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final initials = context.fmt.weekdayInitials;
    final names = weekdayNames(context);
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: Space.page,
        end: Space.page,
        bottom: MediaQuery.viewInsetsOf(context).bottom + Space.lg,
      ),
      child: Form(
        key: _form,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                widget.habit == null ? l10n.habitNew : l10n.habitEdit,
                style: context.text.titleLarge,
              ),
              const SizedBox(height: Space.md),
              TextFormField(
                key: const ValueKey('habit-name'),
                controller: _name,
                autofocus: widget.habit == null,
                maxLength: 200,
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                  labelText: l10n.habitsName,
                  hintText: l10n.habitNameHint,
                  counterText: '',
                ),
                validator: (v) =>
                    (v == null || v.trim().isEmpty) ? l10n.validationNameRequired : null,
              ),
              const SizedBox(height: Space.md),
              Text(l10n.habitsColor, style: context.text.labelLarge),
              const SizedBox(height: Space.xs),
              ColorSwatchPicker(value: _color, onChanged: (c) => setState(() => _color = c)),
              const SizedBox(height: Space.md),
              Row(
                children: [
                  Expanded(child: Text(l10n.habitDays, style: context.text.labelLarge)),
                  TextButton(
                    // Disabled when every day is already selected (the tap would do nothing).
                    onPressed: _weekdays == 127
                        ? null
                        : () => setState(() {
                            _weekdays = 127;
                            _daysError = false;
                          }),
                    child: Text(l10n.habitEveryDay),
                  ),
                ],
              ),
              // Monday first; Row follows the ambient direction, so in RTL
              // Monday sits on the right.
              Row(
                key: const ValueKey('habit-weekdays'),
                children: [
                  for (var i = 0; i < 7; i++)
                    Expanded(
                      child: Center(
                        child: Semantics(
                          label: names[i],
                          selected: HabitStats.hasDay(_weekdays, i),
                          button: true,
                          excludeSemantics: true,
                          child: _DayChip(
                            key: ValueKey('weekday-$i'),
                            label: initials.length == 7 ? initials[i] : names[i],
                            selected: HabitStats.hasDay(_weekdays, i),
                            color: Color(_color),
                            onTap: () => setState(() {
                              _weekdays = HabitStats.toggleDay(_weekdays, i);
                              if (_weekdays != 0) _daysError = false;
                            }),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              if (_daysError)
                Padding(
                  padding: const EdgeInsetsDirectional.only(top: Space.xs),
                  child: Text(
                    l10n.habitsValidationDays,
                    style: context.text.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.error,
                    ),
                  ),
                ),
              const SizedBox(height: Space.md),
              Row(
                children: [
                  Expanded(child: Text(l10n.habitTargetPerDay, style: context.text.labelLarge)),
                  IconButton(
                    tooltip: l10n.a11yDecrease,
                    onPressed: _target > 1 ? () => setState(() => _target--) : null,
                    icon: const Icon(Icons.remove_rounded),
                  ),
                  Semantics(
                    label: l10n.habitTargetPerDay,
                    value: context.fmt.number(_target),
                    excludeSemantics: true,
                    child: SizedBox(
                      width: 36,
                      child: Text(
                        context.fmt.number(_target),
                        key: const ValueKey('habit-target'),
                        textAlign: TextAlign.center,
                        style: context.text.titleMedium,
                      ),
                    ),
                  ),
                  IconButton(
                    tooltip: l10n.a11yIncrease,
                    onPressed: _target < 99 ? () => setState(() => _target++) : null,
                    icon: const Icon(Icons.add_rounded),
                  ),
                ],
              ),
              const SizedBox(height: Space.xs),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: const Icon(Icons.notifications_none_rounded),
                title: Text(l10n.habitReminder),
                subtitle: Text(
                  _reminder == null
                      ? l10n.reminderNone
                      : l10n.habitsReminderAt(reminderLabel(context, _reminder!)),
                ),
                onTap: _pickReminder,
                trailing: _reminder == null
                    ? TextButton(onPressed: _pickReminder, child: Text(l10n.habitsSetReminder))
                    : IconButton(
                        tooltip: l10n.habitsRemoveReminder,
                        icon: const Icon(Icons.close_rounded),
                        onPressed: () => setState(() => _reminder = null),
                      ),
              ),
              Text(
                l10n.habitsReminderNote,
                style: context.text.bodySmall?.copyWith(color: context.lux.ink3),
              ),
              const SizedBox(height: Space.lg),
              FilledButton(
                key: const ValueKey('habit-save'),
                onPressed: _saving ? null : _save,
                child: Text(widget.habit == null ? l10n.actionCreate : l10n.actionSave),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DayChip extends StatelessWidget {
  const _DayChip({
    super.key,
    required this.label,
    required this.selected,
    required this.color,
    required this.onTap,
  });
  final String label;
  final bool selected;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: onTap,
      radius: kMinTouchTarget / 2,
      child: Container(
        width: kMinTouchTarget - 4,
        height: kMinTouchTarget - 4,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: selected ? color : context.lux.recessed,
          border: Border.all(color: selected ? color : context.lux.hairline),
        ),
        child: Text(
          label,
          style: context.text.labelLarge?.copyWith(
            color: selected ? Colors.white : context.lux.ink2,
          ),
        ),
      ),
    );
  }
}
