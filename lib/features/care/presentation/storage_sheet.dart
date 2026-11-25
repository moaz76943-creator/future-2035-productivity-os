import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/tokens.dart';
import '../../../core/platform/phone_care.dart';
import '../../../core/providers/core_providers.dart';
import '../data/storage_service.dart';

final storageServiceProvider = Provider<StorageService>(
  (ref) => StorageService(ref.watch(databaseProvider)),
);

/// Below this much free space on the phone a warning shows.
const lowFreeBytes = 300 * 1024 * 1024;

Future<void> showStorageSheet(BuildContext context) => showModalBottomSheet<void>(
  useRootNavigator: true,
  context: context,
  showDragHandle: true,
  useSafeArea: true,
  isScrollControlled: true,
  builder: (_) => const _StorageSheet(),
);

class _StorageSheet extends ConsumerStatefulWidget {
  const _StorageSheet();
  @override
  ConsumerState<_StorageSheet> createState() => _StorageSheetState();
}

class _StorageSheetState extends ConsumerState<_StorageSheet> {
  late Future<(StorageUsage, PhoneInfo)> _data = _load();

  Future<(StorageUsage, PhoneInfo)> _load() async =>
      (await ref.read(storageServiceProvider).usage(), await ref.read(phoneCareProvider).info());

  Future<void> _clean() async {
    final n = await ref.read(storageServiceProvider).removeUnused();
    if (!mounted) return;
    ScaffoldMessenger.maybeOf(context)
        ?.showSnackBar(SnackBar(content: Text(context.l10n.storageCleaned(n))));
    setState(() {
      _data = _load();
    });
  }

  Widget _row(IconData icon, String label, String value) => ListTile(
    dense: true,
    leading: Icon(icon, color: ModuleHue.neutral.a),
    title: Text(label),
    trailing: Text(value, style: context.text.titleSmall),
  );

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final fmt = context.fmt;
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.lg),
      child: FutureBuilder<(StorageUsage, PhoneInfo)>(
        future: _data,
        builder: (context, snap) {
          final data = snap.data;
          if (data == null) {
            return const Padding(
              padding: EdgeInsets.all(Space.xl),
              child: Center(child: CircularProgressIndicator()),
            );
          }
          final (u, phone) = data;
          final low = phone.freeBytes >= 0 && phone.freeBytes < lowFreeBytes;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(l10n.storageTitle, style: context.text.titleLarge),
              const SizedBox(height: Space.sm),
              if (low)
                Padding(
                  padding: const EdgeInsets.only(bottom: Space.sm),
                  child: Text(
                    l10n.storageLow,
                    key: const Key('storageLow'),
                    style: context.text.bodyMedium?.copyWith(color: context.lux.danger),
                  ),
                ),
              if (phone.freeBytes >= 0)
                _row(Icons.sd_storage_outlined, l10n.storageFree, formatBytes(phone.freeBytes)),
              _row(
                Icons.image_outlined,
                '${l10n.storagePictures} (${fmt.number(u.pictureCount)})',
                formatBytes(u.pictureBytes),
              ),
              _row(
                Icons.perm_media_outlined,
                '${l10n.storageCardMedia} (${fmt.number(u.mediaCount)})',
                formatBytes(u.mediaBytes),
              ),
              _row(
                Icons.sticky_note_2_outlined,
                '${l10n.storageText} (${fmt.number(u.noteCount)})',
                formatBytes(u.notesBytes),
              ),
              const Divider(),
              if (u.unusedCount == 0)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: Space.sm),
                  child: Text(l10n.storageNoUnused, key: const Key('storageNoUnused')),
                )
              else ...[
                Text(
                  l10n.storageUnused(u.unusedCount, formatBytes(u.unusedBytes)),
                  key: const Key('storageUnused'),
                ),
                const SizedBox(height: Space.sm),
                FilledButton.icon(
                  key: const Key('storageClean'),
                  onPressed: _clean,
                  icon: const Icon(Icons.cleaning_services_outlined),
                  label: Text(l10n.storageClean),
                ),
              ],
              const SizedBox(height: Space.sm),
              Text(
                l10n.storageHint,
                style: context.text.bodySmall?.copyWith(color: context.lux.ink2),
              ),
            ],
          );
        },
      ),
    );
  }
}
