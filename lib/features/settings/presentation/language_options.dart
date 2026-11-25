import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../app/localization/app_locales.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/tokens.dart';
import '../../../core/text/text_normalizer.dart';
import '../../flashcards/domain/world_languages.dart' show localLanguageNames;
import '../application/settings_providers.dart';

/// "Device language" plus every supported language, by its own name (never a
/// flag) with its name in the app language under it. A search field finds a
/// language by any of its names or its code, so the list stays easy at any
/// length. Selecting applies immediately: the whole app re-renders in that
/// language and text direction.
class LanguageOptionList extends ConsumerStatefulWidget {
  const LanguageOptionList({super.key, this.onSelected});

  /// Called after a selection was applied.
  final VoidCallback? onSelected;

  /// Lists longer than this get a search field.
  static const searchFrom = 10;

  @override
  ConsumerState<LanguageOptionList> createState() => _LanguageOptionListState();
}

/// The name of [lang] in the app language (from the phone), if it differs.
String? localNameOf(SupportedLanguage lang) {
  final local = localLanguageNames[lang.locale.languageCode];
  if (local == null || local.toLowerCase() == lang.nativeName.toLowerCase()) return null;
  return local;
}

/// Whether [lang] matches the normalized search [q].
bool languageMatches(SupportedLanguage lang, String q) {
  if (q.isEmpty) return true;
  final names = [lang.nativeName, lang.englishName, lang.tag, localNameOf(lang) ?? ''];
  return names.any((n) => TextNormalizer.normalize(n).contains(q));
}

class _LanguageOptionListState extends ConsumerState<LanguageOptionList> {
  String _q = '';

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final current = AppLocales.byTag(ref.watch(settingsProvider).localeTag)?.tag;
    final ctrl = ref.read(settingsProvider.notifier);
    final shown = [
      for (final l in AppLocales.all)
        if (languageMatches(l, _q)) l,
    ];

    Widget option({
      required String id,
      required String label,
      String? subtitle,
      required bool selected,
      required VoidCallback apply,
      TextDirection? direction,
    }) {
      return Semantics(
        selected: selected,
        inMutuallyExclusiveGroup: true,
        child: ListTile(
          key: ValueKey('lang-$id'),
          title: Text(label, textDirection: direction),
          subtitle: subtitle == null ? null : Text(subtitle),
          selected: selected,
          trailing: selected
              ? Icon(Icons.check_circle_rounded, color: ModuleHue.focus.a)
              : const SizedBox.square(dimension: 24),
          onTap: () {
            apply();
            widget.onSelected?.call();
          },
        ),
      );
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (AppLocales.all.length > LanguageOptionList.searchFrom)
          Padding(
            padding: const EdgeInsets.fromLTRB(Space.md, Space.xs, Space.md, Space.xs),
            child: TextField(
              key: const ValueKey('lang-search'),
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search_rounded),
                hintText: l10n.settingsLanguageSearch,
              ),
              onChanged: (v) => setState(() => _q = TextNormalizer.normalize(v.trim())),
            ),
          ),
        if (_q.isEmpty)
          option(
            id: 'system',
            label: l10n.settingsLanguageSystem,
            selected: current == null,
            apply: () => ctrl.update((c) => c.copyWith(clearLocale: true)),
          ),
        for (final lang in shown)
          option(
            id: lang.tag,
            label: lang.nativeName,
            subtitle: localNameOf(lang),
            selected: lang.tag == current,
            direction: lang.isRtl ? TextDirection.rtl : TextDirection.ltr,
            apply: () => ctrl.update((c) => c.copyWith(localeTag: lang.tag)),
          ),
        if (shown.isEmpty)
          Padding(
            padding: const EdgeInsets.all(Space.lg),
            child: Text(
              l10n.settingsLanguageNoMatch,
              textAlign: TextAlign.center,
              style: context.text.bodyMedium?.copyWith(color: context.lux.ink2),
            ),
          ),
      ],
    );
  }
}
