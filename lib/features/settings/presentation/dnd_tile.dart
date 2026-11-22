import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../focus/application/focus_dnd_link.dart';
import '../application/settings_providers.dart';

final _dndAccessProvider = FutureProvider.autoDispose<bool>(
  (ref) => ref.read(dndPlatformProvider).hasAccess(),
);

/// Settings switch: Do Not Disturb during focus. Asks for the system access
/// on first use and shows when it is still missing.
class DndTile extends ConsumerStatefulWidget {
  const DndTile({super.key});

  @override
  ConsumerState<DndTile> createState() => _DndTileState();
}

class _DndTileState extends ConsumerState<DndTile> {
  late final AppLifecycleListener _life;

  @override
  void initState() {
    super.initState();
    // Back from the system page: show the new access state.
    _life = AppLifecycleListener(onResume: () => ref.invalidate(_dndAccessProvider));
  }

  @override
  void dispose() {
    _life.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final on = ref.watch(settingsProvider.select((s) => s.focusDnd));
    final access = ref.watch(_dndAccessProvider).value ?? true;
    final missing = on && !access;
    return SwitchListTile(
      key: const Key('settings-focus-dnd'),
      secondary: const Icon(Icons.do_not_disturb_on_outlined),
      title: Text(l10n.focusDndTitle),
      subtitle: Text(
        missing ? l10n.focusDndNeedsAccess : l10n.focusDndHint,
        style: missing ? TextStyle(color: Theme.of(context).colorScheme.error) : null,
      ),
      value: on,
      onChanged: (v) async {
        await ref.read(settingsProvider.notifier).update((s) => s.copyWith(focusDnd: v));
        if (v && !await ref.read(dndPlatformProvider).hasAccess()) {
          unawaited(ref.read(dndPlatformProvider).requestAccess());
        }
      },
    );
  }
}
