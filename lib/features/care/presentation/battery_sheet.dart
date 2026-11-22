import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/tokens.dart';
import '../../../core/platform/phone_care.dart';
import '../../../l10n/gen/app_localizations.dart';
import '../domain/battery_brand.dart';

String batteryTip(AppLocalizations l10n, BatteryBrand b) => switch (b) {
  BatteryBrand.xiaomi => l10n.batteryXiaomi,
  BatteryBrand.oppo => l10n.batteryOppo,
  BatteryBrand.samsung => l10n.batterySamsung,
  BatteryBrand.huawei => l10n.batteryHuawei,
  BatteryBrand.vivo => l10n.batteryVivo,
  BatteryBrand.other => '',
};

Future<void> showBatteryGuide(BuildContext context) => showModalBottomSheet<void>(
  context: context,
  showDragHandle: true,
  useSafeArea: true,
  isScrollControlled: true,
  builder: (_) => const _BatterySheet(),
);

class _BatterySheet extends ConsumerWidget {
  const _BatterySheet();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final care = ref.read(phoneCareProvider);
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.lg),
      child: FutureBuilder<PhoneInfo>(
        future: care.info(),
        builder: (context, snap) {
          final info = snap.data;
          if (info == null) {
            return const Padding(
              padding: EdgeInsets.all(Space.xl),
              child: Center(child: CircularProgressIndicator()),
            );
          }
          final tip = batteryTip(l10n, batteryBrandOf(info.manufacturer));
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(l10n.batteryTitle, style: context.text.titleLarge),
              const SizedBox(height: Space.sm),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    info.unrestricted ? Icons.check_circle_rounded : Icons.warning_amber_rounded,
                    color: info.unrestricted ? context.lux.success : context.lux.danger,
                  ),
                  const SizedBox(width: Space.sm),
                  Expanded(
                    child: Text(
                      info.unrestricted ? l10n.batteryStatusOk : l10n.batteryStatusLimited,
                      key: Key(info.unrestricted ? 'batteryOk' : 'batteryLimited'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: Space.md),
              Text(l10n.batteryGeneric),
              if (tip.isNotEmpty) ...[
                const SizedBox(height: Space.sm),
                Text(tip, key: const Key('batteryTip')),
              ],
              const SizedBox(height: Space.md),
              FilledButton.icon(
                key: const Key('batteryOpen'),
                onPressed: care.openBattery,
                icon: const Icon(Icons.battery_charging_full_rounded),
                label: Text(l10n.batteryOpen),
              ),
              TextButton(
                key: const Key('batteryOpenApp'),
                onPressed: care.openAppInfo,
                child: Text(l10n.batteryOpenApp),
              ),
            ],
          );
        },
      ),
    );
  }
}
