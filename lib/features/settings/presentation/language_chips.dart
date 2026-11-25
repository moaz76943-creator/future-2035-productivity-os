import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../app/localization/app_locales.dart';
import '../../../core/design_system/tokens.dart';
import '../application/settings_providers.dart';

/// The most likely languages as chips, each written in its own language: the
/// phone's languages first, then the most used ones. Used on the very first
/// screen so nobody has to hunt; the full searchable list follows in the
/// onboarding and in Settings.
class LanguageChips extends ConsumerWidget {
  const LanguageChips({super.key});

  /// Chips shown at most (a calm first screen, whatever the language count).
  static const max = 8;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final current = AppLocales.byTag(ref.watch(settingsProvider).localeTag)?.tag;
    final ctrl = ref.read(settingsProvider.notifier);
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: Space.xs,
      runSpacing: Space.xs,
      children: [
        ChoiceChip(
          key: const ValueKey('chip-lang-system'),
          label: Text(context.l10n.settingsLanguageSystem),
          selected: current == null,
          onSelected: (_) => ctrl.update((c) => c.copyWith(clearLocale: true)),
        ),
        for (final lang in suggested(current))
          ChoiceChip(
            key: ValueKey('chip-lang-${lang.tag}'),
            label: Text(
              lang.nativeName,
              textDirection: lang.isRtl ? TextDirection.rtl : TextDirection.ltr,
            ),
            selected: lang.tag == current,
            onSelected: (_) => ctrl.update((c) => c.copyWith(localeTag: lang.tag)),
          ),
      ],
    );
  }
}

/// At most [LanguageChips.max] languages: the chosen one, the phone's, then the
/// list order (most used first).
List<SupportedLanguage> suggested(String? current, [List<Locale>? device]) {
  final phone = device ?? WidgetsBinding.instance.platformDispatcher.locales;
  final out = <SupportedLanguage>[];
  void add(SupportedLanguage? l) {
    if (l != null && !out.contains(l) && out.length < LanguageChips.max) out.add(l);
  }

  add(AppLocales.byTag(current));
  for (final d in phone) {
    for (final l in AppLocales.all) {
      if (l.locale.languageCode == d.languageCode) add(l);
    }
  }
  AppLocales.all.forEach(add);
  return out;
}
