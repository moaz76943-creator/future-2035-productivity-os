import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../app/localization/app_locales.dart';
import '../../../core/design_system/tokens.dart';
import '../application/settings_providers.dart';

/// Every app language as chips that are all visible at once (no scrolling),
/// each written in its own language. Used on the very first screen so nobody
/// has to hunt for their language.
class LanguageChips extends ConsumerWidget {
  const LanguageChips({super.key});

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
        for (final lang in AppLocales.all)
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
