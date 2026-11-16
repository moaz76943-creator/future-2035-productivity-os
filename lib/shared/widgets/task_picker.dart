import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../app/localization/app_format.dart';
import '../../core/database/app_database.dart';
import '../../core/design_system/tokens.dart';
import '../../core/providers/core_providers.dart';
import '../../core/text/text_normalizer.dart';
import '../../features/tasks/application/tasks_providers.dart';
import 'async_value_view.dart';

/// Bottom sheet listing open tasks with a filter field. Returns the chosen
/// task or null. [exclude] hides tasks by id (e.g. the task itself).
Future<TaskRow?> pickTask(BuildContext context, {Set<String> exclude = const {}}) {
  return showModalBottomSheet<TaskRow>(
    context: context,
    isScrollControlled: true,
    showDragHandle: true,
    builder: (_) => _TaskPickerSheet(exclude: exclude),
  );
}

class _TaskPickerSheet extends ConsumerStatefulWidget {
  const _TaskPickerSheet({required this.exclude});
  final Set<String> exclude;
  @override
  ConsumerState<_TaskPickerSheet> createState() => _TaskPickerSheetState();
}

class _TaskPickerSheetState extends ConsumerState<_TaskPickerSheet> {
  String _q = '';

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final tasks = ref.watch(openTasksProvider);
    return SafeArea(
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.7,
        child: Column(children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(Space.page, 0, Space.page, Space.sm),
            child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
              Text(l10n.pickTaskTitle, style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: Space.sm),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search_rounded),
                  hintText: l10n.actionSearch,
                ),
                onChanged: (v) => setState(() => _q = TextNormalizer.normalize(v)),
              ),
            ]),
          ),
          Expanded(
            child: AsyncValueView(
              value: tasks,
              data: (list) {
                final items = list
                    .where((t) => !widget.exclude.contains(t.id))
                    .where((t) => _q.isEmpty || TextNormalizer.normalize(t.title).contains(_q))
                    .toList();
                if (items.isEmpty) {
                  return Center(child: Text(l10n.pickTaskEmpty));
                }
                return ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, i) => ListTile(
                    leading: const Icon(Icons.radio_button_unchecked_rounded),
                    title: Text(items[i].title, maxLines: 2, overflow: TextOverflow.ellipsis),
                    subtitle: items[i].dueAt == null
                        ? null
                        : Text(context.fmt.relativeDay(items[i].dueAt!, ref.read(clockProvider).now())),
                    onTap: () => Navigator.pop(context, items[i]),
                  ),
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
