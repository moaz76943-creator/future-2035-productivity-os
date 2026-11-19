import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../core/database/app_database.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/components/indicators.dart';
import '../../../core/design_system/components/states.dart';
import '../../../core/design_system/components/surfaces.dart';
import '../../../core/design_system/tokens.dart';
import '../../../core/providers/core_providers.dart';
import '../../../shared/widgets/module_scaffold.dart';
import '../application/flashcards_providers.dart';
import '../data/flashcards_repository.dart';
import '../domain/card_extras.dart';
import '../domain/card_layout.dart';
import '../domain/study.dart';
import 'study_sheets.dart' show speechLanguageNames;
import 'widgets/card_form_sheet.dart';

const _hue = ModuleHue.flashcards;

enum _State { all, newCards, due, hard, favorites, suspended }

final _allCardsProvider = FutureProvider.autoDispose<List<(CardRow, DeckRow)>>((ref) async {
  // Refresh when decks change; card edits refresh through invalidate below.
  await ref.watch(decksProvider.future);
  return ref.read(flashcardsRepositoryProvider).allCards();
});

final _overviewProvider = FutureProvider.autoDispose<FlashOverview>((ref) async {
  await ref.watch(decksProvider.future);
  return ref.read(flashcardsRepositoryProvider).overview();
});

String languageLabel(BuildContext context, String code) {
  if (code.isEmpty) return context.l10n.flashcardsLangUnset;
  final name = speechLanguageNames.entries
      .where((e) => e.key.split('-').first == code)
      .map((e) => e.value)
      .firstOrNull;
  return name ?? code;
}

/// Search every deck at once: text in any field (front, back, tags, extra and
/// custom fields; case-, accent- and Arabic-diacritic-insensitive), filtered by
/// deck, language and card status. Also shows progress by language and level.
class CardSearchScreen extends ConsumerStatefulWidget {
  const CardSearchScreen({super.key});

  @override
  ConsumerState<CardSearchScreen> createState() => _CardSearchScreenState();
}

class _CardSearchScreenState extends ConsumerState<CardSearchScreen> {
  final _query = TextEditingController();
  String? _deck;
  String? _lang;
  _State _state = _State.all;

  @override
  void dispose() {
    _query.dispose();
    super.dispose();
  }

  bool _matches((CardRow, DeckRow) e, String q, DateTime now) {
    final (c, d) = e;
    if (_deck != null && d.id != _deck) return false;
    if (_lang != null && d.frontLang.split(RegExp('[-_]')).first != _lang) return false;
    final ok = switch (_state) {
      _State.all => true,
      _State.newCards => c.state == 'new' && !c.suspended,
      _State.due => !c.suspended && c.state != 'new' && c.dueAt != null && !c.dueAt!.isAfter(now),
      _State.hard => !c.suspended && FlashcardsRepository.isHard(c),
      _State.favorites => c.favorite,
      _State.suspended => c.suspended,
    };
    if (!ok) return false;
    if (q.isEmpty) return true;
    final extras = CardExtras.decode(c.extra);
    final text = [
      c.front,
      c.back,
      c.tags,
      for (final f in CardField.values) extras[f] ?? '',
      ...CardCustom.decode(c.custom).values,
    ].join(' ');
    return StudyRules.searchKey(text).contains(q);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final all = ref.watch(_allCardsProvider);
    final now = ref.read(clockProvider).nowUtc();
    final decks = ref.watch(decksProvider).value ?? const <DeckRow>[];
    final langs = {for (final d in decks) d.frontLang.split(RegExp('[-_]')).first}..remove('');
    final q = StudyRules.searchKey(_query.text);
    return ModuleScaffold(
      title: l10n.flashcardsSearchAll,
      hue: _hue,
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Space.page),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(
                  key: const Key('globalCardSearch'),
                  controller: _query,
                  onChanged: (_) => setState(() {}),
                  decoration: InputDecoration(
                    hintText: l10n.flashcardsSearchAllHint,
                    prefixIcon: const Icon(Icons.search_rounded),
                  ),
                ),
                const SizedBox(height: Space.sm),
                // Full-width, expanded dropdowns: long names (or large text) ellipsize instead
                // of overflowing.
                DropdownButtonFormField<String?>(
                  key: const Key('searchDeck'),
                  initialValue: _deck,
                  isExpanded: true,
                  decoration: InputDecoration(labelText: l10n.flashcardsAllDecks, isDense: true),
                  items: [
                    DropdownMenuItem<String?>(child: Text(l10n.flashcardsAllDecks)),
                    for (final d in decks)
                      DropdownMenuItem<String?>(
                        value: d.id,
                        child: Text(d.name, overflow: TextOverflow.ellipsis),
                      ),
                  ],
                  onChanged: (v) => setState(() => _deck = v),
                ),
                if (langs.isNotEmpty) ...[
                  const SizedBox(height: Space.sm),
                  DropdownButtonFormField<String?>(
                    key: const Key('searchLang'),
                    initialValue: _lang,
                    isExpanded: true,
                    decoration: InputDecoration(
                      labelText: l10n.flashcardsAllLanguages,
                      isDense: true,
                    ),
                    items: [
                      DropdownMenuItem<String?>(child: Text(l10n.flashcardsAllLanguages)),
                      for (final l in langs)
                        DropdownMenuItem<String?>(
                          value: l,
                          child: Text(languageLabel(context, l), overflow: TextOverflow.ellipsis),
                        ),
                    ],
                    onChanged: (v) => setState(() => _lang = v),
                  ),
                ],
                const SizedBox(height: Space.xs),
                Wrap(
                  spacing: Space.xs,
                  runSpacing: Space.xs,
                  children: [
                    for (final s in _State.values)
                      ChoiceChip(
                        key: Key('searchState_${s.name}'),
                        label: Text(switch (s) {
                          _State.all => l10n.filterAll,
                          _State.newCards => l10n.deckNewCards,
                          _State.due => l10n.deckDue,
                          _State.hard => l10n.flashcardsHard,
                          _State.favorites => l10n.flashcardsFavorites,
                          _State.suspended => l10n.flashcardsSuspendedFilter,
                        }),
                        selected: _state == s,
                        onSelected: (_) => setState(() => _state = s),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
        ...switch (all) {
          AsyncData(:final value) => () {
            final shown = value.where((e) => _matches(e, q, now)).toList();
            return [
              SliverToBoxAdapter(
                child: SectionHeader(title: l10n.flashcardsShownOf(shown.length, value.length)),
              ),
              if (shown.isEmpty)
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: Space.page),
                    child: Text(
                      l10n.flashcardsSearchEmpty,
                      style: context.text.bodyMedium?.copyWith(color: context.lux.ink2),
                    ),
                  ),
                )
              else
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: Space.page),
                  sliver: SliverList.separated(
                    itemCount: shown.length.clamp(0, 300),
                    separatorBuilder: (_, _) => const SizedBox(height: Space.xs),
                    itemBuilder: (_, i) {
                      final (c, d) = shown[i];
                      return LuxCard(
                        elevated: false,
                        onTap: () async {
                          await showCardForm(context, deckId: d.id, initial: c);
                          ref.invalidate(_allCardsProvider);
                        },
                        padding: const EdgeInsets.all(Space.sm),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(c.front, maxLines: 2, style: context.text.titleSmall),
                                  Text(
                                    c.back,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: context.text.bodySmall?.copyWith(
                                      color: context.lux.ink2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: Space.xs),
                            LuxPill(label: d.name, color: Color(d.color)),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              const SliverToBoxAdapter(child: _Overview()),
            ];
          }(),
          AsyncError() => [
            SliverToBoxAdapter(
              child: ErrorState(title: l10n.errorGenericTitle, message: l10n.errorLoadFailed),
            ),
          ],
          _ => [SliverToBoxAdapter(child: LoadingState(label: l10n.stateLoading))],
        },
      ],
    );
  }
}

class _Overview extends ConsumerWidget {
  const _Overview();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final fmt = context.fmt;
    final o = ref.watch(_overviewProvider).value;
    if (o == null) return const SizedBox.shrink();
    Widget group(String title, Map<String, GroupStats> m, String Function(String) name, Key key) =>
        Column(
          key: key,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SectionHeader(title: title),
            for (final e
                in m.entries.toList()..sort((a, b) => b.value.cards.compareTo(a.value.cards)))
              Padding(
                padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.xs),
                child: LuxCard(
                  elevated: false,
                  padding: const EdgeInsets.all(Space.sm),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name(e.key), style: context.text.titleSmall),
                      const SizedBox(height: Space.xxs),
                      Text(
                        l10n.flashcardsGroupLine(
                          e.value.decks,
                          e.value.cards,
                          e.value.mature,
                          e.value.due,
                          e.value.correctRate == null ? '—' : fmt.percent(e.value.correctRate!),
                        ),
                        style: context.text.bodySmall?.copyWith(color: context.lux.ink2),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        );
    return Column(
      children: [
        group(
          l10n.flashcardsByLanguage,
          o.byLanguage,
          (k) => languageLabel(context, k),
          const Key('overviewByLanguage'),
        ),
        group(
          l10n.flashcardsByLevel,
          o.byLevel,
          (k) => k.isEmpty ? l10n.flashcardsLevelUnset : k,
          const Key('overviewByLevel'),
        ),
      ],
    );
  }
}
