import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/tokens.dart';
import '../application/auto_backup_providers.dart';
import '../data/auto_backup.dart';

/// The automatic backups on this phone, newest first, each restorable.
Future<void> showAutoBackups(BuildContext context) => showModalBottomSheet<void>(
  context: context,
  useSafeArea: true,
  isScrollControlled: true,
  showDragHandle: true,
  builder: (_) => const _AutoBackupSheet(),
);

class _AutoBackupSheet extends ConsumerStatefulWidget {
  const _AutoBackupSheet();

  @override
  ConsumerState<_AutoBackupSheet> createState() => _AutoBackupSheetState();
}

class _AutoBackupSheetState extends ConsumerState<_AutoBackupSheet> {
  String? _message;
  bool _busy = false;

  Future<void> _restore(AutoBackupFile f) async {
    final l10n = context.l10n;
    final when = context.fmt.dateTime(f.madeAt.toLocal());
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        content: Text(l10n.autoBackupConfirm(when)),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx, false), child: Text(l10n.actionCancel)),
          FilledButton(
            key: const Key('autoBackupConfirm'),
            onPressed: () => Navigator.pop(ctx, true),
            child: Text(l10n.autoBackupRestore),
          ),
        ],
      ),
    );
    if (ok != true || !mounted) return;
    setState(() => _busy = true);
    String message;
    try {
      await ref.read(autoBackupProvider).restore(f);
      message = l10n.autoBackupRestored;
    } on Object {
      message = l10n.errorGenericTitle;
    }
    if (mounted) {
      setState(() {
        _busy = false;
        _message = message;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final files = ref.watch(autoBackupListProvider).value ?? const <AutoBackupFile>[];
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(l10n.autoBackupTitle, style: context.text.titleLarge),
          const SizedBox(height: Space.xs),
          Text(
            l10n.autoBackupHint,
            style: context.text.bodySmall?.copyWith(color: context.lux.ink2),
          ),
          const SizedBox(height: Space.sm),
          if (files.isEmpty) Text(l10n.autoBackupNone, key: const Key('autoBackupNone')),
          for (final (i, f) in files.indexed)
            ListTile(
              key: Key('autoBackup_$i'),
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.history_rounded),
              title: Text(context.fmt.dateTime(f.madeAt.toLocal())),
              trailing: TextButton(
                key: Key('autoBackupRestore_$i'),
                onPressed: _busy ? null : () => _restore(f),
                child: Text(l10n.autoBackupRestore),
              ),
            ),
          if (_message != null)
            Padding(
              padding: const EdgeInsets.only(top: Space.sm),
              child: Text(_message!, key: const Key('autoBackupMessage')),
            ),
        ],
      ),
    );
  }
}
