import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../core/database/app_database.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/components/states.dart';
import '../../../core/design_system/components/surfaces.dart';
import '../../../core/design_system/tokens.dart';
import '../../../core/providers/core_providers.dart';
import '../../../shared/widgets/dialogs.dart';
import '../application/projects_providers.dart';
import '../data/milestones_repository.dart';
import 'projects_screen.dart';

/// Project milestones: dated checkpoints that also appear on the calendar and
/// count toward project progress.
class MilestonesSection extends ConsumerWidget {
  const MilestonesSection({super.key, required this.projectId});
  final String projectId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final items = ref.watch(milestonesProvider(projectId)).value ?? const <MilestoneRow>[];
    final now = ref.watch(clockProvider).now();
    final repo = ref.read(milestonesRepositoryProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SectionHeader(
          title: l10n.projectMilestones,
          action: l10n.milestoneAdd,
          onAction: () => showMilestoneEditor(context, ref, projectId: projectId),
          padding: const EdgeInsets.only(top: Space.xl, bottom: Space.xs),
        ),
        if (items.isEmpty)
          Text(
            l10n.milestonesEmpty,
            style: context.text.bodyMedium?.copyWith(color: context.lux.ink3),
          )
        else
          for (final m in items)
            Padding(
              padding: const EdgeInsets.only(bottom: Space.xs),
              child: LuxCard(
                key: ValueKey('milestone-${m.id}'),
                padding: const EdgeInsetsDirectional.fromSTEB(
                  Space.xxs,
                  Space.xxs,
                  Space.xxs,
                  Space.xxs,
                ),
                onTap: () => showMilestoneEditor(context, ref, projectId: projectId, existing: m),
                child: Row(
                  children: [
                    Checkbox(
                      value: m.done,
                      semanticLabel: l10n.milestoneDoneA11y(m.title),
                      onChanged: (v) => repo.setDone(m.id, v ?? false),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            m.title,
                            style: context.text.titleSmall?.copyWith(
                              decoration: m.done ? TextDecoration.lineThrough : null,
                              color: m.done ? context.lux.ink3 : null,
                            ),
                          ),
                          if (m.dueAt != null && !m.done)
                            DeadlineLabel(deadline: m.dueAt!.toLocal(), now: now)
                          else if (m.dueAt != null)
                            Text(
                              context.fmt.dayLong(m.dueAt!.toLocal()),
                              style: context.text.labelSmall,
                            )
                          else
                            Text(
                              l10n.milestoneNoDate,
                              style: context.text.labelSmall?.copyWith(color: context.lux.ink3),
                            ),
                        ],
                      ),
                    ),
                    IconButton(
                      tooltip: l10n.actionDelete,
                      icon: const Icon(Icons.delete_outline_rounded),
                      onPressed: () async {
                        await repo.softDelete(m.id);
                        if (context.mounted) {
                          showUndoSnack(
                            context,
                            l10n.milestoneDeleted,
                            onUndo: () => repo.restore(m.id),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
      ],
    );
  }
}

/// Create or edit a milestone. Saving is guarded against double taps and
/// keeps the dialog open with the input on failure.
Future<void> showMilestoneEditor(
  BuildContext context,
  WidgetRef ref, {
  required String projectId,
  MilestoneRow? existing,
}) => showDialog<void>(
  context: context,
  builder: (_) => _MilestoneDialog(projectId: projectId, existing: existing),
);

class _MilestoneDialog extends ConsumerStatefulWidget {
  const _MilestoneDialog({required this.projectId, this.existing});
  final String projectId;
  final MilestoneRow? existing;

  @override
  ConsumerState<_MilestoneDialog> createState() => _MilestoneDialogState();
}

class _MilestoneDialogState extends ConsumerState<_MilestoneDialog> {
  late final _title = TextEditingController(text: widget.existing?.title ?? '');
  late DateTime? _due = widget.existing?.dueAt?.toLocal();
  bool _saving = false;
  String? _error;

  @override
  void dispose() {
    _title.dispose();
    super.dispose();
  }

  Future<void> _pickDate() async {
    final now = ref.read(clockProvider).now();
    final picked = await showDatePicker(
      context: context,
      initialDate: _due ?? now,
      firstDate: DateTime(now.year - 5),
      lastDate: DateTime(now.year + 20),
    );
    if (picked != null) {
      setState(() => _due = DateTime(picked.year, picked.month, picked.day, 23, 59));
    }
  }

  Future<void> _save() async {
    final l10n = context.l10n;
    if (_title.text.trim().isEmpty) {
      setState(() => _error = l10n.validationRequired);
      return;
    }
    if (_saving) return;
    setState(() => _saving = true);
    final repo = ref.read(milestonesRepositoryProvider);
    try {
      if (widget.existing == null) {
        await repo.add(widget.projectId, _title.text, dueAt: _due);
      } else {
        await repo.update(widget.existing!.id, title: _title.text, dueAt: _due);
      }
      if (mounted) Navigator.pop(context);
    } on Object {
      if (mounted) {
        setState(() {
          _saving = false;
          _error = l10n.errorSaveFailed;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return AlertDialog(
      title: Text(widget.existing == null ? l10n.milestoneAdd : l10n.milestoneEdit),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            key: const Key('milestoneTitleField'),
            controller: _title,
            autofocus: widget.existing == null,
            maxLength: MilestonesRepository.maxTitle,
            buildCounter: (_, {required currentLength, required isFocused, maxLength}) => null,
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(labelText: l10n.milestoneTitleLabel, errorText: _error),
            onSubmitted: (_) => _save(),
          ),
          const SizedBox(height: Space.sm),
          ListTile(
            key: const Key('milestoneDateTile'),
            contentPadding: EdgeInsets.zero,
            leading: const Icon(Icons.event_outlined),
            title: Text(l10n.taskDueDate),
            subtitle: Text(_due == null ? l10n.milestoneNoDate : context.fmt.dayLong(_due!)),
            trailing: _due == null
                ? null
                : IconButton(
                    tooltip: l10n.actionClear,
                    icon: const Icon(Icons.close_rounded),
                    onPressed: () => setState(() => _due = null),
                  ),
            onTap: _pickDate,
          ),
        ],
      ),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context), child: Text(l10n.actionCancel)),
        FilledButton(
          key: const Key('milestoneSaveButton'),
          onPressed: _saving ? null : _save,
          child: Text(l10n.actionSave),
        ),
      ],
    );
  }
}
