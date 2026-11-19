import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/tokens.dart';
import '../../../core/providers/core_providers.dart';
import '../../settings/application/settings_providers.dart';
import '../application/prayer_providers.dart';
import 'prayer_labels.dart';
import 'prayer_sheet.dart';

/// "Asr at 3:15 PM" under the greeting, when prayer times are on.
class NextPrayerChip extends ConsumerWidget {
  const NextPrayerChip({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s = ref.watch(settingsProvider.select((s) => s.prayer));
    if (!s.enabled) return const SizedBox.shrink();
    final next = upcomingPrayers(s, ref.watch(clockProvider).now(), days: 2).firstOrNull;
    if (next == null) return const SizedBox.shrink();
    final l10n = context.l10n;
    return Padding(
      padding: const EdgeInsets.only(top: Space.xxs),
      child: InkWell(
        key: const Key('nextPrayer'),
        borderRadius: BorderRadius.circular(Radii.md),
        onTap: () => showPrayerSheet(context),
        child: ConstrainedBox(
          constraints: const BoxConstraints(minHeight: 44),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.mosque_outlined, size: 18, color: context.lux.ink2),
              const SizedBox(width: Space.xxs),
              Text(
                l10n.prayerNext(prayerName(l10n, next.$1), context.fmt.time(next.$2)),
                style: context.text.labelLarge?.copyWith(color: context.lux.ink2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
