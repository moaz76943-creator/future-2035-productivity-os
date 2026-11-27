import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../app/localization/app_format.dart';
import '../../../../app/localization/app_locales.dart';
import '../../../../core/design_system/app_theme.dart';
import '../../../../core/design_system/tokens.dart';
import '../../../../l10n/gen/app_localizations.dart';
import '../../../../shared/widgets/dialogs.dart';
import '../../application/flashcards_providers.dart';
import '../../data/flashcards_repository.dart';
import '../../data/word_packs.dart';
import '../../domain/card_import.dart';
import '../../domain/world_languages.dart';

final wordPackSourceProvider = Provider<WordPackSource>((_) => GithubWordPacks());

/// Topic tree of downloadable words for one language to learn. Each branch becomes
/// an ordinary deck (rename, reorder, edit or delete it like any other).
Future<void> showWordPacks(BuildContext context) => showModalBottomSheet<void>(
  useRootNavigator: true,
  context: context,
  showDragHandle: true,
  useSafeArea: true,
  isScrollControlled: true,
  builder: (_) => const WordPacksSheet(),
);

class WordPacksSheet extends ConsumerStatefulWidget {
  const WordPacksSheet({super.key});

  @override
  ConsumerState<WordPacksSheet> createState() => _WordPacksSheetState();
}

class _WordPacksSheetState extends ConsumerState<WordPacksSheet> {
  String? _learn;
  Future<(WordPack, WordPack, WordPack)>? _packs;
  final _added = <String>{};
  String? _busy;
  final _search = TextEditingController();
  String _query = '';

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  List<SupportedLanguage> get _choices {
    final mine = packCode(context.language.tag);
    final seen = <String>{mine};
    return [
      for (final l in AppLocales.all)
        if (seen.add(packCode(l.tag))) l,
    ];
  }

  /// Instant search by the name in the app language, the language's own name or English.
  bool _matches(SupportedLanguage l) =>
      _query.isEmpty ||
      '${languageSearchText(l.tag)} ${l.nativeName} ${l.englishName}'.toLowerCase().contains(
        _query,
      );

  Widget _languageTile(SupportedLanguage l) {
    final local = languageDisplayName(l.tag);
    return Padding(
      padding: const EdgeInsets.only(bottom: Space.xs),
      child: Material(
        color: context.lux.surface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Radii.md),
          side: BorderSide(color: context.lux.hairline),
        ),
        clipBehavior: Clip.antiAlias,
        child: ListTile(
          key: Key('wordLang_${l.tag}'),
          title: Text(l.nativeName),
          subtitle: local == l.nativeName ? null : Text(local),
          trailing: const Icon(Icons.chevron_right_rounded),
          onTap: () => _pick(l.tag),
        ),
      ),
    );
  }

  void _pick(String tag) {
    final source = ref.read(wordPackSourceProvider);
    setState(() {
      _learn = tag;
      _packs = (
        source.load(packCode(tag)),
        source.load(packCode(context.language.tag)),
        source.load('en'),
      ).wait;
    });
  }

  Future<void> _add(String key, WordPack learn, WordPack mine, WordPack en) async {
    setState(() => _busy = key);
    final myTag = context.language.tag;
    final repo = ref.read(flashcardsRepositoryProvider);
    try {
      final cards = <ImportedCard>[];
      for (final e in learn.branch(key).entries) {
        final meaning = mine.items[e.key] ?? en.items[e.key];
        if (meaning == null) continue;
        final icon = en.emoji[e.key];
        final say = learn.pron[e.key];
        final back = icon == null ? meaning : '$icon $meaning';
        cards.add(ImportedCard(e.value, say == null ? back : '$back\n$say'));
      }
      final topic = key.split('.').first;
      String name(String k) => mine.names[k] ?? en.names[k] ?? k;
      final id = await repo.createDeck(
        '${name(key)} · ${name(topic)}',
        color: Palette.swatches[(key.hashCode & 0x7fffffff) % Palette.swatches.length].toARGB32(),
      );
      await repo.setDeckLanguages(id, front: _learn!, back: myTag);
      await repo.importParsed(id, cards);
      if (mounted) setState(() => _added.add(key));
    } catch (_) {
      if (mounted) showMessage(context, context.l10n.errorSaveFailed);
    } finally {
      if (mounted) setState(() => _busy = null);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final muted = context.text.bodyMedium?.copyWith(color: context.lux.ink2);
    // A tall sheet that starts at the top and rises above the keyboard.
    final media = MediaQuery.of(context);
    final height = (media.size.height - media.viewInsets.bottom) * 0.88;
    final picked = _learn;
    final choices = [
      for (final l in _choices)
        if (_matches(l)) l,
    ];
    return AnimatedPadding(
      duration: const Duration(milliseconds: 150),
      padding: EdgeInsets.only(bottom: media.viewInsets.bottom),
      child: SizedBox(
        height: height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(l10n.wordPacksTitle, style: context.text.titleLarge),
                  const SizedBox(height: Space.xxs),
                  Text(l10n.wordPacksHint, style: muted),
                  const SizedBox(height: Space.sm),
                  TextField(
                    key: const Key('wordPacksLanguage'),
                    controller: _search,
                    textInputAction: TextInputAction.search,
                    onChanged: (v) => setState(() {
                      _query = v.trim().toLowerCase();
                      // Typing again returns to the language list.
                      if (_learn != null) {
                        _learn = null;
                        _packs = null;
                      }
                    }),
                    decoration: InputDecoration(
                      hintText: l10n.speechSearchLanguage,
                      prefixIcon: const Icon(Icons.search_rounded),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.lg),
                children: [
                  if (picked == null)
                    for (final l in choices) _languageTile(l)
                  else
                    ..._packsSection(l10n, muted),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _packsSection(AppLocalizations l10n, TextStyle? muted) {
    final chosen = _choices.where((l) => l.tag == _learn).firstOrNull;
    return [
      if (chosen != null)
        Padding(
          padding: const EdgeInsets.only(bottom: Space.sm),
          child: ListTile(
            key: const Key('wordPacksChosen'),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Radii.md),
              side: BorderSide(color: context.lux.hairline),
            ),
            leading: const Icon(Icons.translate_rounded),
            title: Text(chosen.nativeName),
            trailing: const Icon(Icons.swap_horiz_rounded),
            onTap: () => setState(() {
              _learn = null;
              _packs = null;
            }),
          ),
        ),
      if (_packs != null)
        FutureBuilder(
          future: _packs,
          builder: (context, snap) {
            if (snap.hasError) {
              return Column(
                children: [
                  Text(l10n.wordPacksFailed, style: muted),
                  TextButton(onPressed: () => _pick(_learn!), child: Text(l10n.actionRetry)),
                ],
              );
            }
            final data = snap.data;
            if (data == null) return const Center(child: CircularProgressIndicator());
            final (learn, mine, en) = data;
            final tree = en.tree();
            final ready = {
              for (final t in tree.entries)
                t.key: [
                  for (final b in t.value)
                    if (learn.branch(b).length >= 5) b,
                ],
            }..removeWhere((_, v) => v.isEmpty);
            if (ready.isEmpty) return Text(l10n.wordPacksEmpty, style: muted);
            String name(String k) => mine.names[k] ?? en.names[k] ?? k;
            final branches = [for (final t in ready.values) ...t];
            final words = branches.fold<int>(0, (n, b) => n + learn.branch(b).length);
            final done = branches.every(_added.contains);
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // The whole language at once: one deck per branch, grouped by topic name.
                for (final t in ready.entries)
                  ListTile(
                    key: Key('wordTopic_${t.key}'),
                    contentPadding: EdgeInsets.zero,
                    leading: Text(en.emoji[t.key] ?? '', style: context.text.titleLarge),
                    title: Text(name(t.key)),
                    subtitle: Text(
                      t.value.map(name).join(' · '),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                const SizedBox(height: Space.md),
                FilledButton.icon(
                  key: const Key('wordPacksAddAll'),
                  onPressed: done || _busy != null
                      ? null
                      : () async {
                          for (final b in branches) {
                            if (!mounted) return;
                            if (!_added.contains(b)) await _add(b, learn, mine, en);
                          }
                        },
                  icon: Icon(done ? Icons.check_circle_rounded : Icons.download_rounded),
                  label: Text('${l10n.starterAdd} · ${l10n.deckCards(words)}'),
                ),
              ],
            );
          },
        ),
    ];
  }
}
