import 'package:material_ui/material_ui.dart';

import '../../app/localization/app_format.dart';
import '../../core/design_system/tokens.dart';
import '../../core/recurrence/recurrence_rule.dart';
import '../../l10n/gen/app_localizations.dart';

/// Human-readable, localized summary of an RRULE string (null = never).
String describeRecurrence(BuildContext context, String? rrule) {
  final l10n = context.l10n;
  final r = RecurrenceRule.tryParse(rrule);
  if (r == null) return l10n.repeatNever;
  final presets = _presets(l10n);
  for (final p in presets) {
    if (p.$2 == r) return p.$1;
  }
  final unit = switch (r.frequency) {
    Frequency.daily => 'day',
    Frequency.weekly => 'week',
    Frequency.monthly => 'month',
    Frequency.yearly => 'year',
  };
  final b = StringBuffer(l10n.repeatSummaryEveryN(unit, r.interval));
  if (r.weekdays.isNotEmpty) {
    final names = context.fmt.weekdayInitials;
    final sorted = r.weekdays.toList()..sort();
    b.write(' ${l10n.repeatOnWeekdays(sorted.map((d) => names[d - 1]).join(', '))}');
  }
  if (r.count != null) b.write(' · ${l10n.repeatEndsCount(r.count!)}');
  return b.toString();
}

List<(String, RecurrenceRule)> _presets(AppLocalizations l10n) => [
  (l10n.repeatDaily, const RecurrenceRule(frequency: Frequency.daily)),
  (
    l10n.repeatWeekdays,
    const RecurrenceRule(frequency: Frequency.weekly, weekdays: {1, 2, 3, 4, 5}),
  ),
  (l10n.repeatWeekly, const RecurrenceRule(frequency: Frequency.weekly)),
  (l10n.repeatMonthly, const RecurrenceRule(frequency: Frequency.monthly)),
  (l10n.repeatYearly, const RecurrenceRule(frequency: Frequency.yearly)),
];

/// Bottom sheet to choose a repeat rule. Returns:
/// - `null` when dismissed (no change),
/// - `''` for "does not repeat",
/// - an RRULE string otherwise.
Future<String?> pickRecurrence(BuildContext context, {String? current}) {
  return showModalBottomSheet<String>(
    useRootNavigator: true,
    context: context,
    isScrollControlled: true,
    showDragHandle: true,
    builder: (ctx) => _RecurrenceSheet(current: RecurrenceRule.tryParse(current)),
  );
}

class _RecurrenceSheet extends StatefulWidget {
  const _RecurrenceSheet({required this.current});
  final RecurrenceRule? current;
  @override
  State<_RecurrenceSheet> createState() => _RecurrenceSheetState();
}

class _RecurrenceSheetState extends State<_RecurrenceSheet> {
  bool _custom = false;
  Frequency _freq = Frequency.weekly;
  int _interval = 1;
  Set<int> _days = {};
  int? _count;

  @override
  void initState() {
    super.initState();
    final c = widget.current;
    if (c != null) {
      _freq = c.frequency;
      _interval = c.interval;
      _days = {...c.weekdays};
      _count = c.count;
    }
  }

  RecurrenceRule get _rule => RecurrenceRule(
    frequency: _freq,
    interval: _interval,
    weekdays: _freq == Frequency.weekly ? _days : const {},
    count: _count,
  );

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final presets = _presets(l10n);
    final initials = context.fmt.weekdayInitials;
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsetsDirectional.fromSTEB(
          Space.page,
          0,
          Space.page,
          Space.lg + MediaQuery.viewInsetsOf(context).bottom,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(l10n.taskRepeat, style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: Space.sm),
            if (!_custom) ...[
              ListTile(
                title: Text(l10n.repeatNever),
                selected: widget.current == null,
                onTap: () => Navigator.pop(context, ''),
              ),
              for (final p in presets)
                ListTile(
                  title: Text(p.$1),
                  selected: widget.current == p.$2,
                  onTap: () => Navigator.pop(context, p.$2.toString()),
                ),
              ListTile(
                title: Text(l10n.repeatCustom),
                trailing: const Icon(Icons.chevron_right_rounded),
                onTap: () => setState(() => _custom = true),
              ),
            ] else ...[
              Text(l10n.repeatEvery, style: Theme.of(context).textTheme.labelLarge),
              const SizedBox(height: Space.xs),
              Row(
                children: [
                  IconButton.outlined(
                    tooltip: l10n.a11yDecrease,
                    onPressed: _interval > 1 ? () => setState(() => _interval--) : null,
                    icon: const Icon(Icons.remove_rounded),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: Space.md),
                    child: Text(
                      context.fmt.number(_interval),
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  IconButton.outlined(
                    tooltip: l10n.a11yIncrease,
                    onPressed: _interval < 99 ? () => setState(() => _interval++) : null,
                    icon: const Icon(Icons.add_rounded),
                  ),
                  const SizedBox(width: Space.md),
                  Expanded(
                    child: DropdownButton<Frequency>(
                      isExpanded: true,
                      value: _freq,
                      onChanged: (f) => setState(() => _freq = f ?? _freq),
                      items: [
                        DropdownMenuItem(
                          value: Frequency.daily,
                          child: Text(l10n.repeatUnitDays(_interval)),
                        ),
                        DropdownMenuItem(
                          value: Frequency.weekly,
                          child: Text(l10n.repeatUnitWeeks(_interval)),
                        ),
                        DropdownMenuItem(
                          value: Frequency.monthly,
                          child: Text(l10n.repeatUnitMonths(_interval)),
                        ),
                        DropdownMenuItem(
                          value: Frequency.yearly,
                          child: Text(l10n.repeatUnitYears(_interval)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              if (_freq == Frequency.weekly) ...[
                const SizedBox(height: Space.md),
                Text(l10n.repeatOnDays, style: Theme.of(context).textTheme.labelLarge),
                const SizedBox(height: Space.xs),
                Wrap(
                  spacing: Space.xs,
                  children: [
                    for (var d = 1; d <= 7; d++)
                      FilterChip(
                        label: Text(initials[d - 1]),
                        selected: _days.contains(d),
                        onSelected: (on) => setState(() => on ? _days.add(d) : _days.remove(d)),
                      ),
                  ],
                ),
              ],
              const SizedBox(height: Space.md),
              Text(l10n.repeatEndsLabel, style: Theme.of(context).textTheme.labelLarge),
              RadioGroup<bool>(
                groupValue: _count != null,
                onChanged: (v) => setState(() => _count = (v ?? false) ? (_count ?? 10) : null),
                child: Column(
                  children: [
                    RadioListTile<bool>(value: false, title: Text(l10n.repeatEndsNever)),
                    RadioListTile<bool>(value: true, title: Text(l10n.repeatEndsAfter)),
                  ],
                ),
              ),
              if (_count != null)
                Row(
                  children: [
                    Expanded(child: Text(l10n.repeatCountLabel)),
                    IconButton.outlined(
                      tooltip: l10n.a11yDecrease,
                      onPressed: _count! > 1 ? () => setState(() => _count = _count! - 1) : null,
                      icon: const Icon(Icons.remove_rounded),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: Space.md),
                      child: Text(context.fmt.number(_count!)),
                    ),
                    IconButton.outlined(
                      tooltip: l10n.a11yIncrease,
                      onPressed: () => setState(() => _count = _count! + 1),
                      icon: const Icon(Icons.add_rounded),
                    ),
                  ],
                ),
              const SizedBox(height: Space.md),
              Text(
                describeRecurrence(context, _rule.toString()),
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: Space.md),
              FilledButton(
                onPressed: () => Navigator.pop(context, _rule.toString()),
                child: Text(l10n.actionDone),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
