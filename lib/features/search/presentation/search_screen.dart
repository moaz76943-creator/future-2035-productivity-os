import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../app/routing/routes.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/components/states.dart';
import '../../../core/design_system/components/surfaces.dart';
import '../../../core/design_system/tokens.dart';
import '../../../l10n/gen/app_localizations.dart';
import '../../../shared/widgets/module_scaffold.dart';
import '../application/search_providers.dart';
import '../data/search_service.dart';
import '../domain/highlight.dart';

/// Global, on-device search across all modules.
class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({super.key});

  static const debounce = Duration(milliseconds: 250);

  @override
  ConsumerState<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  final _controller = TextEditingController();
  final _focus = FocusNode();
  Timer? _debounce;
  String _query = '';
  SearchCategory? _category;

  @override
  void dispose() {
    _debounce?.cancel();
    _controller.dispose();
    _focus.dispose();
    super.dispose();
  }

  void _onChanged(String v) {
    _debounce?.cancel();
    _debounce = Timer(SearchScreen.debounce, () {
      if (mounted) setState(() => _query = v.trim());
    });
    // Rebuild for the clear button.
    setState(() {});
  }

  void _setQuery(String v) {
    _debounce?.cancel();
    _controller.value = TextEditingValue(
      text: v,
      selection: TextSelection.collapsed(offset: v.length),
    );
    setState(() => _query = v.trim());
  }

  Future<void> _remember() async {
    final q = _controller.text.trim();
    if (q.isNotEmpty) await ref.read(searchServiceProvider).remember(q);
  }

  void _open(SearchResult r) {
    unawaited(_remember());
    final path = switch (r.category) {
      SearchCategory.task => Routes.task(r.id),
      SearchCategory.project => Routes.project(r.id),
      SearchCategory.note => Routes.note(r.id),
      SearchCategory.flashcard => Routes.deck(r.parentId ?? r.id),
      SearchCategory.deck => Routes.deck(r.id),
      SearchCategory.goal => Routes.goal(r.id),
      SearchCategory.habit => Routes.habit(r.id),
      SearchCategory.event => Routes.event(r.id),
      SearchCategory.session => Routes.focus,
    };
    context.push(path);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ModuleScaffold(
      title: l10n.moduleSearch,
      hue: ModuleHue.analytics,
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(Space.page, 0, Space.page, Space.sm),
            child: TextField(
              key: const ValueKey('search-field'),
              controller: _controller,
              focusNode: _focus,
              autofocus: true,
              textInputAction: TextInputAction.search,
              onChanged: _onChanged,
              onSubmitted: (v) {
                _setQuery(v);
                unawaited(_remember());
              },
              decoration: InputDecoration(
                hintText: l10n.searchHint,
                prefixIcon: const Icon(Icons.search_rounded),
                suffixIcon: _controller.text.isEmpty
                    ? null
                    : IconButton(
                        tooltip: l10n.actionClear,
                        icon: const Icon(Icons.close_rounded),
                        onPressed: () {
                          _setQuery('');
                          _focus.requestFocus();
                        },
                      ),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: _CategoryChips(value: _category, onChanged: _setCategory),
        ),
        if (_query.isEmpty)
          _IntroAndRecent(onPick: _setQuery)
        else
          _Results(request: (query: _query, category: _category), onOpen: _open),
      ],
    );
  }

  void _setCategory(SearchCategory? c) => setState(() => _category = c);
}

String categoryLabel(AppLocalizations l10n, SearchCategory c) => switch (c) {
  SearchCategory.task => l10n.searchCatTask,
  SearchCategory.project => l10n.searchCatProject,
  SearchCategory.note => l10n.searchCatNote,
  SearchCategory.flashcard => l10n.searchCatFlashcard,
  SearchCategory.deck => l10n.searchCatDeck,
  SearchCategory.goal => l10n.searchCatGoal,
  SearchCategory.habit => l10n.searchCatHabit,
  SearchCategory.event => l10n.searchCatEvent,
  SearchCategory.session => l10n.searchCatSession,
};

IconData _icon(SearchCategory c) => switch (c) {
  SearchCategory.task => Icons.check_circle_outline_rounded,
  SearchCategory.project => Icons.folder_rounded,
  SearchCategory.note => Icons.sticky_note_2_rounded,
  SearchCategory.flashcard => Icons.style_rounded,
  SearchCategory.deck => Icons.layers_rounded,
  SearchCategory.goal => Icons.flag_rounded,
  SearchCategory.habit => Icons.autorenew_rounded,
  SearchCategory.event => Icons.event_rounded,
  SearchCategory.session => Icons.timer_rounded,
};

ModuleHue _hue(SearchCategory c) => switch (c) {
  SearchCategory.task => ModuleHue.tasks,
  SearchCategory.project => ModuleHue.projects,
  SearchCategory.note => ModuleHue.notes,
  SearchCategory.flashcard || SearchCategory.deck => ModuleHue.flashcards,
  SearchCategory.goal => ModuleHue.goals,
  SearchCategory.habit => ModuleHue.habits,
  SearchCategory.event => ModuleHue.calendar,
  SearchCategory.session => ModuleHue.focus,
};

class _CategoryChips extends StatelessWidget {
  const _CategoryChips({required this.value, required this.onChanged});
  final SearchCategory? value;
  final ValueChanged<SearchCategory?> onChanged;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    Widget chip(String label, SearchCategory? c) => Padding(
      padding: const EdgeInsetsDirectional.only(end: Space.xs),
      child: ChoiceChip(label: Text(label), selected: value == c, onSelected: (_) => onChanged(c)),
    );
    return Semantics(
      label: l10n.searchCategoryFilter,
      container: true,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsetsDirectional.fromSTEB(Space.page, 0, Space.page, Space.xs),
        child: Row(
          children: [
            chip(l10n.searchAll, null),
            for (final c in SearchCategory.values) chip(categoryLabel(l10n, c), c),
          ],
        ),
      ),
    );
  }
}

class _IntroAndRecent extends ConsumerWidget {
  const _IntroAndRecent({required this.onPick});
  final ValueChanged<String> onPick;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final recent = ref.watch(recentSearchesProvider).value ?? const <String>[];
    return SliverList.list(
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(Space.page, Space.md, Space.page, 0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.lock_outline_rounded, size: 18, color: context.lux.ink3),
              const SizedBox(width: Space.xs),
              Expanded(
                child: Text(
                  l10n.searchStartTyping,
                  style: context.text.bodyMedium?.copyWith(color: context.lux.ink2),
                ),
              ),
            ],
          ),
        ),
        if (recent.isNotEmpty) ...[
          SectionHeader(
            title: l10n.searchRecent,
            action: l10n.searchClearRecent,
            onAction: () => ref.read(searchServiceProvider).clearRecent(),
          ),
          for (final q in recent)
            Semantics(
              button: true,
              hint: l10n.searchRecentTap(q),
              child: ListTile(
                contentPadding: const EdgeInsetsDirectional.symmetric(horizontal: Space.page),
                leading: Icon(Icons.history_rounded, color: context.lux.ink3),
                title: Text(q, maxLines: 1, overflow: TextOverflow.ellipsis),
                onTap: () => onPick(q),
              ),
            ),
        ],
      ],
    );
  }
}

class _Results extends ConsumerWidget {
  const _Results({required this.request, required this.onOpen});
  final SearchRequest request;
  final ValueChanged<SearchResult> onOpen;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final async = ref.watch(searchResultsProvider(request));
    return async.when(
      skipLoadingOnReload: true,
      loading: () => SliverToBoxAdapter(child: LoadingState(label: l10n.stateLoading, rows: 3)),
      error: (_, _) => SliverToBoxAdapter(
        child: ErrorState(title: l10n.errorGenericTitle, message: l10n.errorLoadFailed),
      ),
      data: (results) {
        if (results.isEmpty) {
          return SliverToBoxAdapter(
            child: EmptyState(
              icon: Icons.search_off_rounded,
              title: l10n.searchNoResults(request.query),
              message: l10n.searchStartTyping,
              hue: ModuleHue.analytics,
              compact: true,
            ),
          );
        }
        final groups = <SearchCategory, List<SearchResult>>{};
        for (final r in results) {
          (groups[r.category] ??= []).add(r);
        }
        final children = <Widget>[
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(Space.page, Space.xs, Space.page, 0),
            child: Semantics(
              liveRegion: true,
              child: Text(
                l10n.searchResultCount(results.length),
                style: context.text.labelMedium?.copyWith(color: context.lux.ink3),
              ),
            ),
          ),
        ];
        for (final c in SearchCategory.values) {
          final list = groups[c];
          if (list == null) continue;
          children.add(SectionHeader(title: categoryLabel(l10n, c)));
          children.add(
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: Space.page),
              child: LuxCard(
                padding: const EdgeInsets.symmetric(vertical: Space.xxs),
                child: Column(
                  children: [
                    for (var i = 0; i < list.length; i++) ...[
                      if (i > 0) Divider(height: 1, color: context.lux.hairline),
                      _ResultTile(result: list[i], query: request.query, onTap: onOpen),
                    ],
                  ],
                ),
              ),
            ),
          );
        }
        return SliverList.list(children: children);
      },
    );
  }
}

class _ResultTile extends StatelessWidget {
  const _ResultTile({required this.result, required this.query, required this.onTap});
  final SearchResult result;
  final String query;
  final ValueChanged<SearchResult> onTap;

  @override
  Widget build(BuildContext context) {
    final hue = _hue(result.category);
    final title = result.title.trim().isEmpty ? context.l10n.untitled : result.title;
    return ListTile(
      onTap: () => onTap(result),
      minVerticalPadding: Space.xs,
      leading: IconOrb(icon: _icon(result.category), hue: hue, size: 36, glow: false),
      title: HighlightedText(
        text: title,
        query: query,
        hue: hue,
        style: context.text.titleSmall,
        maxLines: 2,
      ),
      subtitle: result.subtitle.trim().isEmpty
          ? null
          : HighlightedText(
              text: result.subtitle.replaceAll(RegExp(r'\s+'), ' ').trim(),
              query: query,
              hue: hue,
              style: context.text.bodySmall,
              maxLines: 2,
            ),
      trailing: const Icon(Icons.chevron_right_rounded),
    );
  }
}

/// Text with query matches emphasized. Matching ignores case, accents and
/// Arabic diacritics/hamza variants, like the search itself.
class HighlightedText extends StatelessWidget {
  const HighlightedText({
    super.key,
    required this.text,
    required this.query,
    required this.hue,
    this.style,
    this.maxLines,
  });
  final String text;
  final String query;
  final ModuleHue hue;
  final TextStyle? style;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    final ranges = MatchHighlighter.ranges(text, query);
    final base = style ?? DefaultTextStyle.of(context).style;
    final mark = base.copyWith(
      fontWeight: FontWeight.w700,
      color: context.lux.ink,
      backgroundColor: hue.a.withValues(alpha: 0.16),
    );
    final spans = <InlineSpan>[];
    var pos = 0;
    for (final (s, e) in ranges) {
      if (s > pos) spans.add(TextSpan(text: text.substring(pos, s)));
      spans.add(TextSpan(text: text.substring(s, e), style: mark));
      pos = e;
    }
    if (pos < text.length) spans.add(TextSpan(text: text.substring(pos)));
    return Text.rich(
      TextSpan(style: base, children: spans),
      maxLines: maxLines,
      overflow: maxLines == null ? null : TextOverflow.ellipsis,
    );
  }
}
