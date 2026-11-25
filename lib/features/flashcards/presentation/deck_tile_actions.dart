import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../app/routing/routes.dart';
import '../../../core/database/app_database.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/tokens.dart';
import '../../../shared/widgets/dialogs.dart';
import '../application/deck_order.dart';
import '../application/flashcards_providers.dart';
import '../data/flashcards_repository.dart';
import 'widgets/card_form_sheet.dart';
import 'widgets/deck_form_sheet.dart';
import 'widgets/language_picker.dart';

/// Everything you can do with a deck, right from the list: no need to open it first.
Future<void> showDeckActions(BuildContext context, WidgetRef ref, DeckRow deck) async {
  final l10n = context.l10n;
  final choice = await showModalBottomSheet<String>(
    context: context,
    showDragHandle: true,
    useSafeArea: true,
    builder: (ctx) {
      Widget item(String id, IconData icon, String label, {bool danger = false}) => ListTile(
        key: Key('deckAction_$id'),
        leading: Icon(icon, color: danger ? ctx.lux.danger : null),
        title: Text(label, style: danger ? TextStyle(color: ctx.lux.danger) : null),
        onTap: () => Navigator.of(ctx).pop(id),
      );
      return SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: Space.md),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.xs),
              child: Text(deck.name, style: ctx.text.titleLarge, maxLines: 2),
            ),
            item('study', Icons.school_rounded, l10n.studyHowTitle),
            item('add', Icons.add_rounded, l10n.cardNew),
            item('edit', Icons.edit_outlined, l10n.deckEdit),
            item('front', Icons.translate_rounded, l10n.speechFrontLanguage),
            item('back', Icons.translate_rounded, l10n.speechBackLanguage),
            item('arrange', Icons.swap_vert_rounded, l10n.flashArrangeDecks),
            item('delete', Icons.delete_outline_rounded, l10n.flashcardsDeleteDeck, danger: true),
          ],
        ),
      );
    },
  );
  if (choice == null || !context.mounted) return;
  final repo = ref.read(flashcardsRepositoryProvider);
  switch (choice) {
    case 'study':
      await context.push(Routes.review(deck.id));
    case 'add':
      await showCardForm(context, deckId: deck.id);
    case 'edit':
      final r = await showDeckForm(context, initial: deck);
      if (r == null) return;
      await repo.updateDeck(
        deck.id,
        name: r.name,
        description: r.description,
        category: r.category,
        color: r.color,
        dailyNewLimit: r.dailyNewLimit,
        dailyReviewTarget: r.dailyReviewTarget,
      );
    case 'front' || 'back':
      final front = choice == 'front';
      final picked = await pickLanguage(
        context,
        current: front ? deck.frontLang : deck.backLang,
        appLanguage: l10n.speechAppLanguage,
      );
      if (picked == null) return;
      await repo.setDeckLanguages(
        deck.id,
        front: front ? picked : deck.frontLang,
        back: front ? deck.backLang : picked,
      );
    case 'arrange':
      final decks = ref.read(decksProvider).value ?? const <DeckRow>[];
      await showArrangeDecks(context, ref, decks);
    case 'delete':
      final ok = await confirmAction(
        context,
        title: l10n.flashcardsDeleteDeck,
        message: deck.name,
        confirmLabel: l10n.actionDelete,
        destructive: true,
      );
      if (!ok || !context.mounted) return;
      final messenger = ScaffoldMessenger.maybeOf(context);
      await repo.deleteDeck(deck.id);
      messenger
        ?..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            content: Text(l10n.deletedItem),
            behavior: SnackBarBehavior.floating,
            action: SnackBarAction(
              label: l10n.actionUndo,
              onPressed: () => unawaited(repo.restoreDeck(deck.id)),
            ),
          ),
        );
  }
}

/// Drag decks into the order you want (long-press and move, like apps on a phone).
Future<void> showArrangeDecks(BuildContext context, WidgetRef ref, List<DeckRow> decks) {
  final order = ref.read(deckOrderProvider).value ?? const <String>[];
  final list = orderDecks(decks, order);
  return showModalBottomSheet<void>(
    context: context,
    showDragHandle: true,
    useSafeArea: true,
    isScrollControlled: true,
    builder: (ctx) => StatefulBuilder(
      builder: (ctx, setState) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.xs),
            child: Text(ctx.l10n.flashArrangeDecks, style: ctx.text.titleLarge),
          ),
          Flexible(
            child: ReorderableListView.builder(
              key: const Key('arrangeDecks'),
              shrinkWrap: true,
              buildDefaultDragHandles: false,
              itemCount: list.length,
              onReorderItem: (from, to) {
                setState(() => list.insert(to, list.removeAt(from)));
                unawaited(ref.read(deckOrderProvider.notifier).save([for (final d in list) d.id]));
              },
              itemBuilder: (_, i) => ListTile(
                key: ValueKey(list[i].id),
                leading: CircleAvatar(radius: 8, backgroundColor: Color(list[i].color)),
                title: Text(list[i].name, maxLines: 1, overflow: TextOverflow.ellipsis),
                trailing: ReorderableDragStartListener(
                  index: i,
                  child: Padding(
                    key: Key('deckDrag_${list[i].id}'),
                    padding: const EdgeInsets.all(Space.sm),
                    child: Semantics(
                      label: ctx.l10n.flashDragHandle,
                      child: const Icon(Icons.drag_handle_rounded),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: Space.md),
        ],
      ),
    ),
  );
}
