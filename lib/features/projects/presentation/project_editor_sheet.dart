import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../core/database/app_database.dart';
import '../../../core/design_system/tokens.dart';
import '../../../shared/widgets/pickers.dart';
import '../application/projects_providers.dart';
import '../data/projects_repository.dart';
import 'project_visuals.dart';

/// Create (existing == null) or edit a project. Returns the project id.
Future<String?> showProjectEditor(BuildContext context, {ProjectRow? existing}) =>
    showModalBottomSheet<String>(
      useRootNavigator: true,
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      builder: (_) => _ProjectEditor(existing: existing),
    );

class _ProjectEditor extends ConsumerStatefulWidget {
  const _ProjectEditor({this.existing});
  final ProjectRow? existing;
  @override
  ConsumerState<_ProjectEditor> createState() => _ProjectEditorState();
}

class _ProjectEditorState extends ConsumerState<_ProjectEditor> {
  late final _name = TextEditingController(text: widget.existing?.name ?? '');
  late final _description = TextEditingController(text: widget.existing?.description ?? '');
  late final _goal = TextEditingController(text: widget.existing?.goal ?? '');
  late int _color = widget.existing?.color ?? Palette.swatches.first.toARGB32();
  late String _icon = widget.existing?.icon ?? 'spark';
  late DateTime? _deadline = widget.existing?.deadline?.toLocal();
  String? _error;

  @override
  void dispose() {
    _name.dispose();
    _description.dispose();
    _goal.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (_name.text.trim().isEmpty) {
      setState(() => _error = context.l10n.validationNameRequired);
      return;
    }
    final draft = ProjectDraft(
      name: _name.text,
      color: _color,
      description: _description.text,
      icon: _icon,
      goal: _goal.text,
      deadline: _deadline,
      notes: widget.existing?.notes ?? '',
    );
    final repo = ref.read(projectsRepositoryProvider);
    String id;
    if (widget.existing == null) {
      id = await repo.create(draft);
    } else {
      id = widget.existing!.id;
      await repo.update(id, draft);
    }
    if (mounted) Navigator.pop(context, id);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
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
            Text(
              widget.existing == null ? l10n.projectNew : l10n.projectEdit,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: Space.md),
            TextField(
              controller: _name,
              autofocus: widget.existing == null,
              decoration: InputDecoration(
                labelText: l10n.projectName,
                hintText: l10n.projectNameHint,
                errorText: _error,
              ),
            ),
            const SizedBox(height: Space.sm),
            TextField(
              controller: _goal,
              decoration: InputDecoration(
                labelText: l10n.projectGoal,
                hintText: l10n.projectGoalHint,
              ),
            ),
            const SizedBox(height: Space.sm),
            TextField(
              controller: _description,
              minLines: 2,
              maxLines: 5,
              decoration: InputDecoration(labelText: l10n.projectDescription),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.flag_outlined),
              title: Text(l10n.projectDeadline),
              subtitle: Text(
                _deadline == null ? l10n.projectNoDeadline : context.fmt.date(_deadline!),
              ),
              onTap: () async {
                final d = await pickDate(context, initial: _deadline);
                if (d != null) setState(() => _deadline = d);
              },
              trailing: _deadline == null
                  ? null
                  : IconButton(
                      tooltip: l10n.actionClear,
                      icon: const Icon(Icons.close_rounded),
                      onPressed: () => setState(() => _deadline = null),
                    ),
            ),
            Text(l10n.projectColor, style: Theme.of(context).textTheme.labelLarge),
            const SizedBox(height: Space.xs),
            ColorSwatchPicker(value: _color, onChanged: (c) => setState(() => _color = c)),
            const SizedBox(height: Space.md),
            Text(l10n.projectIcon, style: Theme.of(context).textTheme.labelLarge),
            const SizedBox(height: Space.xs),
            Wrap(
              spacing: Space.xs,
              runSpacing: Space.xs,
              children: [
                for (final e in projectIcons.entries)
                  ChoiceChip(
                    // Icon-only chips need a name for TalkBack.
                    tooltip: l10n.projectIconName(e.key),
                    label: Icon(
                      e.value,
                      size: 20,
                      color: Color(_color),
                      semanticLabel: l10n.projectIconName(e.key),
                    ),
                    selected: _icon == e.key,
                    onSelected: (_) => setState(() => _icon = e.key),
                  ),
              ],
            ),
            const SizedBox(height: Space.lg),
            FilledButton(onPressed: _save, child: Text(l10n.actionSave)),
          ],
        ),
      ),
    );
  }
}
