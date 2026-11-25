import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/components/surfaces.dart';
import '../../../core/design_system/tokens.dart';
import '../../../core/providers/core_providers.dart';
import '../../care/presentation/whats_new_sheet.dart';
import '../domain/feature_guide.dart';

const _pendingKey = 'help.tourPending';

/// Called when the first-run setup finishes: the home screen then shows the
/// tour once.
Future<void> markTourPending(WidgetRef ref) async {
  await markWhatsNewSeen(ref);
  await ref.read(databaseProvider).writeValue(_pendingKey, '1');
}

/// On the home screen: shows the tour if the setup just finished.
class TourLauncher extends ConsumerStatefulWidget {
  const TourLauncher({super.key});

  @override
  ConsumerState<TourLauncher> createState() => _TourLauncherState();
}

class _TourLauncherState extends ConsumerState<TourLauncher> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final db = ref.read(databaseProvider);
      if (await db.readValue(_pendingKey) == null) return;
      await db.deleteValue(_pendingKey);
      if (mounted) await showTour(context);
    });
  }

  @override
  Widget build(BuildContext context) => const SizedBox.shrink();
}

Future<void> showTour(BuildContext context) => showModalBottomSheet<void>(
  useRootNavigator: true,
  context: context,
  isScrollControlled: true,
  useSafeArea: true,
  showDragHandle: true,
  builder: (_) => const _Tour(),
);

class _Tour extends StatefulWidget {
  const _Tour();

  @override
  State<_Tour> createState() => _TourState();
}

class _TourState extends State<_Tour> {
  final _pages = PageController();
  var _i = 0;

  @override
  void dispose() {
    _pages.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final pages = tourEntries;
    final last = _i == pages.length - 1;
    return SizedBox(
      height: 420,
      child: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pages,
              onPageChanged: (i) => setState(() => _i = i),
              children: [
                for (final e in pages)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: Space.page),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconOrb(icon: e.icon, hue: e.hue, size: 72),
                        const SizedBox(height: Space.lg),
                        Text(
                          e.tourTitle!(l10n),
                          style: context.text.headlineSmall,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: Space.sm),
                        Text(
                          e.tourBody!(l10n),
                          style: context.text.bodyLarge?.copyWith(color: context.lux.ink2),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.lg),
            child: Row(
              children: [
                Text(l10n.onboardStep(_i + 1, pages.length), style: context.text.labelMedium),
                const Spacer(),
                if (!last)
                  TextButton(
                    key: const Key('tourSkip'),
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text(l10n.actionSkip),
                  ),
                FilledButton(
                  key: const Key('tourNext'),
                  onPressed: last
                      ? () => Navigator.of(context).pop()
                      : () => _pages.nextPage(duration: Motion.medium, curve: Motion.emphasized),
                  child: Text(last ? l10n.tourDone : l10n.tourNext),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
