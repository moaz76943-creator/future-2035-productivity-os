import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../app/localization/app_locales.dart';
import '../../../core/design_system/tokens.dart';
import '../application/settings_providers.dart';

/// "Device language" plus every supported language, shown only by its
/// native name (never flags). Selecting applies immediately, so the whole
/// app re-renders in that language and text direction.
class LanguageOptionList extends ConsumerWidget {
  const LanguageOptionList({super.key, this.onSelected});

  /// Called after a selection was applied.
  final VoidCallback? onSelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final current = AppLocales.byTag(ref.watch(settingsProvider).localeTag)?.tag;
    final ctrl = ref.read(settingsProvider.notifier);

    Widget option({
      required String id,
      required String label,
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
          selected: selected,
          trailing: selected
              ? Icon(Icons.check_circle_rounded, color: ModuleHue.focus.a)
              : const SizedBox.square(dimension: 24),
          onTap: () {
            apply();
            onSelected?.call();
          },
        ),
      );
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        option(
          id: 'system',
          label: l10n.settingsLanguageSystem,
          selected: current == null,
          apply: () => ctrl.update((c) => c.copyWith(clearLocale: true)),
        ),
        for (final lang in AppLocales.all)
          option(
            id: lang.tag,
            label: lang.nativeName,
            selected: lang.tag == current,
            direction: lang.isRtl ? TextDirection.rtl : TextDirection.ltr,
            apply: () => ctrl.update((c) => c.copyWith(localeTag: lang.tag)),
          ),
      ],
    );
  }
}
