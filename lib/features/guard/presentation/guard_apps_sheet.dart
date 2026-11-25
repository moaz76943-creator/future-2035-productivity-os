import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../core/design_system/tokens.dart';
import '../../../core/platform/distraction_guard.dart';
import '../application/guard_controller.dart';

final installedAppsProvider = FutureProvider.autoDispose<List<InstalledApp>>(
  (ref) => ref.read(distractionGuardProvider).apps(),
);

/// The phone's apps with a check each: paused apps, or allowed ones in allowlist mode.
Future<void> showGuardApps(BuildContext context) => showModalBottomSheet<void>(
  context: context,
  isScrollControlled: true,
  showDragHandle: true,
  builder: (_) => const _GuardAppsSheet(),
);

class _GuardAppsSheet extends ConsumerStatefulWidget {
  const _GuardAppsSheet();
  @override
  ConsumerState<_GuardAppsSheet> createState() => _GuardAppsSheetState();
}

class _GuardAppsSheetState extends ConsumerState<_GuardAppsSheet> {
  String _q = '';

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final config = ref.watch(guardProvider).value;
    final apps = ref.watch(installedAppsProvider);
    final chosen = config?.apps ?? const <String>{};
    final q = _q.trim().toLowerCase();
    return SafeArea(
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.8,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.sm),
              child: TextField(
                key: const Key('guardAppSearch'),
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search_rounded),
                  hintText: l10n.guardSearchApps,
                ),
                onChanged: (v) => setState(() => _q = v),
              ),
            ),
            Expanded(
              child: apps.when(
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (_, _) => Center(child: Text(l10n.guardNoApps)),
                data: (all) {
                  // Chosen apps first, so the current choice is visible at a glance.
                  final shown =
                      [
                        for (final a in all)
                          if (q.isEmpty || a.label.toLowerCase().contains(q)) a,
                      ]..sort((a, b) {
                        final c =
                            (chosen.contains(b.package) ? 1 : 0) -
                            (chosen.contains(a.package) ? 1 : 0);
                        return c != 0 ? c : a.label.toLowerCase().compareTo(b.label.toLowerCase());
                      });
                  if (shown.isEmpty) return Center(child: Text(l10n.guardNoApps));
                  return ListView.builder(
                    itemCount: shown.length,
                    itemBuilder: (_, i) {
                      final a = shown[i];
                      final on = chosen.contains(a.package);
                      final icon = a.icon;
                      return CheckboxListTile(
                        key: Key('guardApp_${a.package}'),
                        value: on,
                        secondary: icon == null
                            ? const Icon(Icons.apps_rounded)
                            : Image.memory(icon, width: 36, height: 36, gaplessPlayback: true),
                        title: Text(a.label, maxLines: 1, overflow: TextOverflow.ellipsis),
                        onChanged: (v) => unawaited(
                          ref
                              .read(guardProvider.notifier)
                              .change(
                                (c) => c.copyWith(
                                  apps: v == true
                                      ? {...c.apps, a.package}
                                      : ({...c.apps}..remove(a.package)),
                                ),
                              ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
