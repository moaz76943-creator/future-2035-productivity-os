import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';
import 'package:share_plus/share_plus.dart';

import '../../../app/localization/app_format.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/tokens.dart';
import '../../../core/diagnostics/error_log.dart';

/// Shows the local error log; the user decides whether to share it.
Future<void> showErrorLog(BuildContext context) => showModalBottomSheet<void>(
  useRootNavigator: true,
  context: context,
  useSafeArea: true,
  isScrollControlled: true,
  showDragHandle: true,
  builder: (_) => const _ErrorLogSheet(),
);

class _ErrorLogSheet extends ConsumerStatefulWidget {
  const _ErrorLogSheet();

  @override
  ConsumerState<_ErrorLogSheet> createState() => _ErrorLogSheetState();
}

class _ErrorLogSheetState extends ConsumerState<_ErrorLogSheet> {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final log = ref.read(errorLogProvider);
    final text = log.read();
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(l10n.errorLogTitle, style: context.text.titleLarge),
          const SizedBox(height: Space.xs),
          Text(l10n.errorLogHint, style: context.text.bodySmall?.copyWith(color: context.lux.ink2)),
          const SizedBox(height: Space.sm),
          if (text.isEmpty)
            Text(l10n.errorLogEmpty, key: const Key('errorLogEmpty'))
          else ...[
            Container(
              constraints: const BoxConstraints(maxHeight: 280),
              padding: const EdgeInsets.all(Space.sm),
              decoration: BoxDecoration(
                color: context.lux.recessed,
                borderRadius: BorderRadius.circular(Radii.md),
              ),
              child: SingleChildScrollView(
                child: Directionality(
                  textDirection: TextDirection.ltr,
                  child: SelectableText(
                    text,
                    style: const TextStyle(fontFamily: 'monospace', fontSize: 11),
                  ),
                ),
              ),
            ),
            const SizedBox(height: Space.sm),
            Wrap(
              spacing: Space.sm,
              children: [
                FilledButton.icon(
                  key: const Key('errorLogShare'),
                  onPressed: () => SharePlus.instance.share(
                    ShareParams(text: text, subject: 'Deep Focus error log'),
                  ),
                  icon: const Icon(Icons.share_rounded),
                  label: Text(l10n.actionShare),
                ),
                TextButton(
                  key: const Key('errorLogClear'),
                  onPressed: () => setState(log.clear),
                  child: Text(l10n.errorLogClear),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
