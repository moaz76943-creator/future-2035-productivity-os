import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/tokens.dart';
import '../../../core/providers/core_providers.dart';
import '../../../l10n/gen/app_localizations.dart';

/// Raise by one whenever there is news worth showing again.
const whatsNewVersion = 1;
const _seenKey = 'whatsNew.seen';

/// Setup just finished: a new user needs the tour, not the news.
Future<void> markWhatsNewSeen(WidgetRef ref) =>
    ref.read(databaseProvider).writeValue(_seenKey, '$whatsNewVersion');

class _Item {
  const _Item(this.icon, this.title, this.body);
  final IconData icon;
  final String Function(AppLocalizations) title;
  final String Function(AppLocalizations) body;
}

final _items = <_Item>[
  _Item(Icons.drag_indicator_rounded, (l) => l.whatsNewOrderTitle, (l) => l.whatsNewOrderBody),
  _Item(Icons.volume_up_rounded, (l) => l.whatsNewSpeechTitle, (l) => l.whatsNewSpeechBody),
  _Item(Icons.summarize_outlined, (l) => l.whatsNewReportTitle, (l) => l.whatsNewReportBody),
  _Item(Icons.health_and_safety_outlined, (l) => l.whatsNewCareTitle, (l) => l.whatsNewCareBody),
  _Item(Icons.water_drop_outlined, (l) => l.whatsNewSoundTitle, (l) => l.whatsNewSoundBody),
];

/// On the home screen: shows the news once after an update.
class WhatsNewLauncher extends ConsumerStatefulWidget {
  const WhatsNewLauncher({super.key});

  @override
  ConsumerState<WhatsNewLauncher> createState() => _WhatsNewLauncherState();
}

class _WhatsNewLauncherState extends ConsumerState<WhatsNewLauncher> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final db = ref.read(databaseProvider);
      final seen = int.tryParse(await db.readValue(_seenKey) ?? '') ?? 0;
      if (seen >= whatsNewVersion || !mounted) return;
      await db.writeValue(_seenKey, '$whatsNewVersion');
      if (mounted) await showWhatsNew(context);
    });
  }

  @override
  Widget build(BuildContext context) => const SizedBox.shrink();
}

Future<void> showWhatsNew(BuildContext context) => showModalBottomSheet<void>(
  useRootNavigator: true,
  context: context,
  showDragHandle: true,
  useSafeArea: true,
  isScrollControlled: true,
  builder: (sheet) {
    final l10n = sheet.l10n;
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(l10n.whatsNewTitle, style: sheet.text.titleLarge),
          const SizedBox(height: Space.sm),
          for (final i in _items)
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(i.icon, color: ModuleHue.focus.a),
              title: Text(i.title(l10n)),
              subtitle: Text(i.body(l10n)),
            ),
          const SizedBox(height: Space.sm),
          FilledButton(
            key: const Key('whatsNewDone'),
            onPressed: () => Navigator.of(sheet).pop(),
            child: Text(l10n.whatsNewDone),
          ),
        ],
      ),
    );
  },
);
