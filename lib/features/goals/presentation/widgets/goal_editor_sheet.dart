import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../app/localization/app_format.dart';
import '../../../../core/database/app_database.dart';
import '../../../../core/design_system/app_theme.dart';
import '../../../../core/design_system/tokens.dart';
import '../../../../core/providers/core_providers.dart';
import '../../../../shared/widgets/dialogs.dart';
import '../../../../shared/widgets/pickers.dart';
import '../../application/goals_providers.dart';
import '../../data/goals_repository.dart';
import 'goal_visuals.dart';

/// Opens the goal editor. Creates a goal when [goal] is null, otherwise
/// edits it. Returns the goal id on save.
Future<String?> showGoalEditor(BuildContext context, {GoalRow? goal}) =>
    showModalBottomSheet<String>(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      useSafeArea: true,
      builder: (_) => GoalEditorSheet(goal: goal),
    );

class GoalEditorSheet extends ConsumerStatefulWidget {
  const GoalEditorSheet({super.key, this.goal});
  final GoalRow? goal;

  @override
  ConsumerState<GoalEditorSheet> createState() => _GoalEditorSheetState();
}

class _GoalEditorSheetState extends ConsumerState<GoalEditorSheet> {
  final _form = GlobalKey<FormState>();
  late final TextEditingController _title;
  late final TextEditingController _description;
  late final TextEditingController _target;
  late final TextEditingController _unit;
  late GoalPeriod _period;
  DateTime? _due;
  bool _saving = false;

  @override
  void initState() {
    super.initState();
    final g = widget.goal;
    _title = TextEditingController(text: g?.title ?? '');
    _description = TextEditingController(text: g?.description ?? '');
    _target = TextEditingController(text: g == null ? '1' : _plain(g.target));
    _unit = TextEditingController(text: g?.unit ?? '');
    _period = g == null ? GoalPeriod.weekly : goalPeriodOf(g);
    _due = g?.dueDate?.toLocal();
  }

  static String _plain(double v) {
    final d = goalAmountDecimals(v);
    return v.toStringAsFixed(d);
  }

  @override
  void dispose() {
    _title.dispose();
    _description.dispose();
    _target.dispose();
    _unit.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (_saving || !(_form.currentState?.validate() ?? false)) return;
    setState(() => _saving = true);
    final repo = ref.read(goalsRepositoryProvider);
    final target = parseGoalAmount(_target.text)!;
    try {
      final g = widget.goal;
      String id;
      if (g == null) {
        id = await repo.create(
          title: _title.text,
          period: _period,
          target: target,
          unit: _unit.text.trim(),
          description: _description.text.trim(),
          dueDate: _due,
        );
      } else {
        id = g.id;
        await repo.update(
          id,
          title: _title.text,
          period: _period,
          target: target,
          unit: _unit.text.trim(),
          description: _description.text.trim(),
          dueDate: _due,
        );
      }
      if (mounted) Navigator.pop(context, id);
    } on Object {
      if (!mounted) return;
      setState(() => _saving = false);
      showMessage(context, context.l10n.errorSaveFailed);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final fmt = context.fmt;
    final now = ref.read(clockProvider).now();
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
                widget.goal == null ? l10n.goalNew : l10n.goalEdit,
                style: context.text.titleLarge,
              ),
              const SizedBox(height: Space.md),
              TextFormField(
                key: const ValueKey('goal-title'),
                controller: _title,
                autofocus: widget.goal == null,
                textCapitalization: TextCapitalization.sentences,
                maxLength: 300,
                decoration: InputDecoration(
                  labelText: l10n.goalsTitleLabel,
                  hintText: l10n.goalTitleHint,
                  counterText: '',
                ),
                validator: (v) =>
                    (v == null || v.trim().isEmpty) ? l10n.validationTitleRequired : null,
              ),
              // Title and description first; the numbers follow.
              const SizedBox(height: Space.sm),
              TextFormField(
                controller: _description,
                minLines: 1,
                maxLines: 4,
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(labelText: l10n.goalsDescription),
              ),
              const SizedBox(height: Space.md),
              Text(l10n.goalPeriod, style: context.text.labelLarge),
              const SizedBox(height: Space.xs),
              Wrap(
                spacing: Space.xs,
                runSpacing: Space.xs,
                children: [
                  for (final p in GoalPeriod.values)
                    ChoiceChip(
                      label: Text(goalPeriodLabel(context, p)),
                      selected: _period == p,
                      onSelected: (_) => setState(() => _period = p),
                    ),
                ],
              ),
              const SizedBox(height: Space.md),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: TextFormField(
                      key: const ValueKey('goal-target'),
                      controller: _target,
                      keyboardType: const TextInputType.numberWithOptions(decimal: true),
                      decoration: InputDecoration(labelText: l10n.goalTarget),
                      validator: (v) {
                        final n = parseGoalAmount(v ?? '');
                        return (n == null || n <= 0) ? l10n.validationPositiveNumber : null;
                      },
                    ),
                  ),
                  const SizedBox(width: Space.sm),
                  Expanded(
                    child: TextFormField(
                      key: const ValueKey('goal-unit'),
                      controller: _unit,
                      maxLength: 40,
                      decoration: InputDecoration(
                        labelText: l10n.goalUnit,
                        hintText: l10n.goalUnitHint,
                        counterText: '',
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: Space.sm),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: const Icon(Icons.event_rounded),
                title: Text(l10n.goalsDeadline),
                subtitle: Text(_due == null ? l10n.goalsNoDeadline : fmt.date(_due!)),
                onTap: () async {
                  final d = await pickDate(
                    context,
                    initial: _due ?? now,
                    first: DateTime(now.year - 5),
                  );
                  if (d != null) setState(() => _due = DateTime(d.year, d.month, d.day));
                },
                trailing: _due == null
                    ? TextButton(
                        onPressed: () async {
                          final d = await pickDate(context, initial: now);
                          if (d != null) {
                            setState(() => _due = DateTime(d.year, d.month, d.day));
                          }
                        },
                        child: Text(l10n.goalsSetDeadline),
                      )
                    : IconButton(
                        tooltip: l10n.goalsRemoveDeadline,
                        icon: const Icon(Icons.close_rounded),
                        onPressed: () => setState(() => _due = null),
                      ),
              ),
              const SizedBox(height: Space.md),
              FilledButton(
                key: const ValueKey('goal-save'),
                onPressed: _saving ? null : _save,
                child: Text(widget.goal == null ? l10n.actionCreate : l10n.actionSave),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Log-progress sheet: amount and optional note. Returns true when saved.
Future<bool> showLogProgressSheet(BuildContext context, GoalRow goal) async {
  final r = await showModalBottomSheet<bool>(
    context: context,
    isScrollControlled: true,
    showDragHandle: true,
    useSafeArea: true,
    builder: (_) => _LogProgressSheet(goal: goal),
  );
  return r ?? false;
}

class _LogProgressSheet extends ConsumerStatefulWidget {
  const _LogProgressSheet({required this.goal});
  final GoalRow goal;
  @override
  ConsumerState<_LogProgressSheet> createState() => _LogProgressSheetState();
}

class _LogProgressSheetState extends ConsumerState<_LogProgressSheet> {
  final _form = GlobalKey<FormState>();
  final _amount = TextEditingController(text: '1');
  final _note = TextEditingController();
  bool _saving = false;

  @override
  void dispose() {
    _amount.dispose();
    _note.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (_saving || !(_form.currentState?.validate() ?? false)) return;
    setState(() => _saving = true);
    try {
      await ref
          .read(goalsRepositoryProvider)
          .addEntry(widget.goal.id, parseGoalAmount(_amount.text)!, note: _note.text.trim());
      if (mounted) Navigator.pop(context, true);
    } on Object {
      if (!mounted) return;
      setState(() => _saving = false);
      showMessage(context, context.l10n.errorSaveFailed);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final unit = widget.goal.unit.trim();
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: Space.page,
        end: Space.page,
        bottom: MediaQuery.viewInsetsOf(context).bottom + Space.lg,
      ),
      child: Form(
        key: _form,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(l10n.actionLog, style: context.text.titleLarge),
            const SizedBox(height: Space.xxs),
            Text(
              widget.goal.title,
              style: context.text.bodyMedium?.copyWith(color: context.lux.ink2),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: Space.md),
            TextFormField(
              key: const ValueKey('log-amount'),
              controller: _amount,
              autofocus: true,
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(
                labelText: l10n.goalLogAmount,
                suffixText: unit.isEmpty ? null : unit,
              ),
              validator: (v) {
                final n = parseGoalAmount(v ?? '');
                return (n == null || n <= 0) ? l10n.validationPositiveNumber : null;
              },
            ),
            const SizedBox(height: Space.md),
            TextFormField(
              key: const ValueKey('log-note'),
              controller: _note,
              textCapitalization: TextCapitalization.sentences,
              maxLines: 3,
              minLines: 1,
              decoration: InputDecoration(labelText: l10n.goalLogNote),
            ),
            const SizedBox(height: Space.lg),
            FilledButton(
              key: const ValueKey('log-save'),
              onPressed: _saving ? null : _save,
              child: Text(l10n.actionSave),
            ),
          ],
        ),
      ),
    );
  }
}
