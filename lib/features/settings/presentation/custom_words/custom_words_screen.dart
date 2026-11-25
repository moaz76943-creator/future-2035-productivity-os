import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../app/localization/app_format.dart';
import '../../../../core/design_system/app_theme.dart';
import '../../../../core/design_system/tokens.dart';
import '../../../../l10n/custom/custom_words.dart';
import '../../../../l10n/gen/app_localizations.dart';
import '../../../../shared/widgets/dialogs.dart';
import '../../../../shared/widgets/module_scaffold.dart';
import '../../application/custom_words_provider.dart';

/// Every plain text of the app in the current language, searchable; tap one to
/// use your own word. Texts with numbers or names inside stay as translated.
class CustomWordsScreen extends ConsumerStatefulWidget {
  const CustomWordsScreen({super.key});

  @override
  ConsumerState<CustomWordsScreen> createState() => _CustomWordsScreenState();
}

class _CustomWordsScreenState extends ConsumerState<CustomWordsScreen> {
  String _q = '';
  bool _changedOnly = false;

  Future<void> _edit(String lang, String key, String original, String? current) async {
    final result = await showDialog<String>(
      context: context,
      builder: (_) => _WordDialog(original: original, current: current),
    );
    if (result == null) return;
    await ref.read(customWordsProvider.notifier).rename(lang, key, result, original: original);
  }

  Future<void> _resetAll(String lang) async {
    final l10n = context.l10n;
    final ok = await confirmAction(
      context,
      title: l10n.wordsResetAll,
      message: l10n.wordsResetAllConfirm,
      confirmLabel: l10n.wordsResetAll,
      destructive: true,
    );
    if (ok) await ref.read(customWordsProvider.notifier).resetAll(lang);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final locale = context.language.locale;
    final lang = locale.languageCode;
    // The translations without the user's words, to show what each text was.
    final base = lookupAppLocalizations(locale);
    final mine = ref.watch(customWordsProvider).value?[lang] ?? const <String, String>{};
    final q = _q.trim().toLowerCase();
    final rows =
        [
          for (final k in customWordKeys)
            if (!_changedOnly || mine.containsKey(k))
              (key: k, original: customWordBase(base, k), current: mine[k]),
        ].where((r) {
          if (q.isEmpty) return true;
          return r.original.toLowerCase().contains(q) ||
              (r.current?.toLowerCase().contains(q) ?? false);
        }).toList();

    return ModuleScaffold(
      title: l10n.wordsTitle,
      hue: ModuleHue.focus,
      actions: [
        if (mine.isNotEmpty)
          IconButton(
            key: const Key('wordsResetAll'),
            tooltip: l10n.wordsResetAll,
            icon: const Icon(Icons.restart_alt_rounded),
            onPressed: () => _resetAll(lang),
          ),
      ],
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(Space.page, Space.xs, Space.page, Space.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.wordsHint,
                  style: context.text.bodyMedium?.copyWith(color: context.lux.ink2),
                ),
                const SizedBox(height: Space.sm),
                TextField(
                  key: const Key('wordsSearch'),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search_rounded),
                    hintText: l10n.wordsSearch,
                  ),
                  onChanged: (v) => setState(() => _q = v),
                ),
                const SizedBox(height: Space.xs),
                FilterChip(
                  key: const Key('wordsChangedOnly'),
                  label: Text(l10n.wordsChangedOnly),
                  selected: _changedOnly,
                  onSelected: (v) => setState(() => _changedOnly = v),
                ),
              ],
            ),
          ),
        ),
        if (rows.isEmpty)
          SliverFillRemaining(hasScrollBody: false, child: Center(child: Text(l10n.wordsNone)))
        else
          SliverList.builder(
            itemCount: rows.length,
            itemBuilder: (_, i) {
              final r = rows[i];
              final changed = r.current != null;
              return ListTile(
                key: Key('word_${r.key}'),
                title: Text(r.current ?? r.original, maxLines: 2, overflow: TextOverflow.ellipsis),
                subtitle: changed
                    ? Text(
                        l10n.wordsOriginal(r.original),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      )
                    : null,
                trailing: Icon(
                  changed ? Icons.edit_rounded : Icons.edit_outlined,
                  color: changed ? ModuleHue.focus.a : context.lux.ink3,
                  size: 20,
                ),
                onTap: () => unawaited(_edit(lang, r.key, r.original, r.current)),
              );
            },
          ),
        const SliverToBoxAdapter(child: SizedBox(height: Space.xxl)),
      ],
    );
  }
}

/// Edits one text. Returns the new text, '' for the original, null when cancelled.
class _WordDialog extends StatefulWidget {
  const _WordDialog({required this.original, this.current});
  final String original;
  final String? current;

  @override
  State<_WordDialog> createState() => _WordDialogState();
}

class _WordDialogState extends State<_WordDialog> {
  late final _ctrl = TextEditingController(text: widget.current ?? widget.original);

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return AlertDialog(
      title: Text(widget.original, maxLines: 3, overflow: TextOverflow.ellipsis),
      content: TextField(
        key: const Key('wordsField'),
        controller: _ctrl,
        autofocus: true,
        maxLength: CustomWordsNotifier.maxLength,
        minLines: 1,
        maxLines: 4,
      ),
      actions: [
        if (widget.current != null)
          TextButton(
            key: const Key('wordsUseOriginal'),
            onPressed: () => Navigator.pop(context, ''),
            child: Text(l10n.wordsReset),
          ),
        TextButton(onPressed: () => Navigator.pop(context), child: Text(l10n.actionCancel)),
        FilledButton(
          key: const Key('wordsSave'),
          onPressed: () => Navigator.pop(context, _ctrl.text),
          child: Text(l10n.actionSave),
        ),
      ],
    );
  }
}
