part of '../settings_screen.dart';

/// Storage, battery guide and what's new: keeping the phone and the data in
/// good shape.
class _CareSection extends StatelessWidget {
  const _CareSection();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return _Section(
      title: l10n.careTitle,
      children: [
        _NavRow(
          key: const ValueKey('settings-storage'),
          icon: Icons.sd_storage_outlined,
          title: l10n.storageTitle,
          subtitle: l10n.storageSubtitle,
          onTap: () => showStorageSheet(context),
        ),
        _NavRow(
          key: const ValueKey('settings-battery'),
          icon: Icons.battery_saver_outlined,
          title: l10n.batteryTitle,
          subtitle: l10n.batterySubtitle,
          onTap: () => showBatteryGuide(context),
        ),
        _NavRow(
          key: const ValueKey('settings-whats-new'),
          icon: Icons.new_releases_outlined,
          title: l10n.whatsNewTitle,
          subtitle: l10n.whatsNewSubtitle,
          onTap: () => showWhatsNew(context),
        ),
      ],
    );
  }
}
