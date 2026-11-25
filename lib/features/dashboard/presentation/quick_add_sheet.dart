import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../app/routing/deep_links.dart';
import '../../../app/routing/routes.dart';
import '../../../core/design_system/tokens.dart';

/// One "+" for everything: a task, a note, an event or a flashcard.
class QuickAddButton extends StatelessWidget {
  const QuickAddButton({super.key});

  @override
  Widget build(BuildContext context) => FloatingActionButton(
    key: const Key('quickAdd'),
    heroTag: 'dash-quick-add',
    tooltip: context.l10n.actionAdd,
    onPressed: () => showQuickAdd(context),
    child: const Icon(Icons.add_rounded),
  );
}

Future<void> showQuickAdd(BuildContext context) => showModalBottomSheet<void>(
  context: context,
  showDragHandle: true,
  useSafeArea: true,
  builder: (_) => const _QuickAddSheet(),
);

class _QuickAddSheet extends StatelessWidget {
  const _QuickAddSheet();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final items = [
      (const Key('quickAddTask'), Icons.check_circle_outline_rounded, l10n.taskNew, Routes.taskNew),
      (const Key('quickAddNote'), Icons.sticky_note_2_outlined, l10n.widgetNewNote, Routes.noteNew),
      (const Key('quickAddEvent'), Icons.event_outlined, l10n.eventNew, Routes.eventNew),
      (const Key('quickAddCard'), Icons.style_outlined, l10n.cardNew, Routes.flashcards),
    ];
    return Padding(
      padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.lg),
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        mainAxisSpacing: Space.sm,
        crossAxisSpacing: Space.sm,
        childAspectRatio: 2.2,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          for (final (key, icon, label, route) in items)
            FilledButton.tonalIcon(
              key: key,
              icon: Icon(icon),
              label: Text(label, maxLines: 1, overflow: TextOverflow.ellipsis),
              style: FilledButton.styleFrom(shape: const StadiumBorder()),
              onPressed: () {
                final router = GoRouter.of(context);
                Navigator.of(context).pop();
                isTabRoute(route) ? router.go(route) : router.push(route);
              },
            ),
        ],
      ),
    );
  }
}
