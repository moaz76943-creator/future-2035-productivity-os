import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../app/localization/app_format.dart';
import '../../../../core/design_system/app_theme.dart';
import '../../../../core/design_system/components/surfaces.dart';
import '../../../../core/design_system/tokens.dart';
import '../../../../shared/widgets/dialogs.dart';
import '../../application/flashcards_providers.dart';
import '../../data/flashcards_repository.dart';
import '../../domain/card_import.dart';
import '../../domain/starter_decks.dart';
import 'word_packs_sheet.dart';

/// Ready-made decks to try the app with, written for it (free to use).
Future<void> showStarterDecks(BuildContext context) => showModalBottomSheet<void>(
  useRootNavigator: true,
  context: context,
  showDragHandle: true,
  useSafeArea: true,
  isScrollControlled: true,
  builder: (_) => const _StarterSheet(),
);

class _StarterSheet extends ConsumerStatefulWidget {
  const _StarterSheet();

  @override
  ConsumerState<_StarterSheet> createState() => _StarterSheetState();
}

class _StarterSheetState extends ConsumerState<_StarterSheet> {
  final _added = <String>{};
  String? _busy;

  String _name(String id) => switch (id) {
    'words' => context.l10n.starterWords,
    'capitals' => context.l10n.starterCapitals,
    _ => context.l10n.starterElements,
  };

  IconData _icon(String id) => switch (id) {
    'words' => Icons.translate_rounded,
    'capitals' => Icons.public_rounded,
    _ => Icons.science_outlined,
  };

  Future<void> _add(StarterDeck d) async {
    setState(() => _busy = d.id);
    final repo = ref.read(flashcardsRepositoryProvider);
    try {
      final id = await repo.createDeck(
        _name(d.id),
        color: Palette.swatches[(d.id.hashCode & 0x7fffffff) % Palette.swatches.length].toARGB32(),
      );
      await repo.setDeckLanguages(id, front: d.frontLang, back: d.backLang);
      await repo.importParsed(id, [for (final (f, b) in d.cards) ImportedCard(f, b)]);
      if (mounted) setState(() => _added.add(d.id));
    } catch (_) {
      if (mounted) showMessage(context, context.l10n.errorSaveFailed);
    } finally {
      if (mounted) setState(() => _busy = null);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final decks = starterDecks(arabic: context.language.tag == 'ar');
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.lg),
      children: [
        Text(l10n.starterTitle, style: context.text.titleLarge),
        const SizedBox(height: Space.xxs),
        Text(l10n.starterHint, style: context.text.bodyMedium?.copyWith(color: context.lux.ink2)),
        const SizedBox(height: Space.md),
        Padding(
          padding: const EdgeInsets.only(bottom: Space.sm),
          child: LuxCard(
            key: const Key('starterWordPacks'),
            onTap: () => showWordPacks(context),
            child: Row(
              children: [
                const IconOrb(icon: Icons.category_rounded, hue: ModuleHue.flashcards, size: 44),
                const SizedBox(width: Space.md),
                Expanded(child: Text(l10n.wordPacksTitle, style: context.text.titleSmall)),
                const Icon(Icons.chevron_right_rounded),
              ],
            ),
          ),
        ),
        for (final d in decks)
          Padding(
            padding: const EdgeInsets.only(bottom: Space.sm),
            child: LuxCard(
              key: Key('starter_${d.id}'),
              child: Row(
                children: [
                  IconOrb(icon: _icon(d.id), hue: ModuleHue.flashcards, size: 44),
                  const SizedBox(width: Space.md),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(_name(d.id), style: context.text.titleSmall),
                        Text(
                          l10n.deckCards(d.cards.length),
                          style: context.text.bodySmall?.copyWith(color: context.lux.ink2),
                        ),
                      ],
                    ),
                  ),
                  if (_added.contains(d.id))
                    Icon(Icons.check_circle_rounded, color: ModuleHue.flashcards.a)
                  else
                    FilledButton.tonal(
                      key: Key('starterAdd_${d.id}'),
                      onPressed: _busy == null ? () => _add(d) : null,
                      child: Text(l10n.starterAdd),
                    ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
