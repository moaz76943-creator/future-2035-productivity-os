import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../app/localization/app_format.dart';
import '../../../../core/design_system/app_theme.dart';
import '../../../../core/design_system/tokens.dart';
import '../../../settings/application/settings_providers.dart';
import '../../application/sound_presets.dart';
import '../../domain/sound_preset.dart';
import 'sound_tile.dart';

/// "Play with focus" switch and the saved mixes (tap to play, long-press to delete).
class SoundsExtras extends ConsumerWidget {
  const SoundsExtras({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final presets = ref.watch(soundPresetsProvider);
    final withFocus = ref.watch(settingsProvider.select((s) => s.focusSounds));
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Space.page),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SwitchListTile(
            key: const Key('soundsWithFocus'),
            contentPadding: EdgeInsets.zero,
            secondary: const Icon(Icons.timer_outlined),
            title: Text(l10n.soundsWithFocus),
            subtitle: Text(l10n.soundsWithFocusHint),
            value: withFocus,
            onChanged: (v) =>
                ref.read(settingsProvider.notifier).update((s) => s.copyWith(focusSounds: v)),
          ),
          if (presets.isNotEmpty) ...[
            Text(
              l10n.soundsSavedMixes,
              style: context.text.labelLarge?.copyWith(color: context.lux.ink2),
            ),
            const SizedBox(height: Space.xs),
            Wrap(
              spacing: Space.xs,
              runSpacing: Space.xs,
              children: [
                for (final (i, p) in presets.indexed)
                  GestureDetector(
                    onLongPress: () => _delete(context, ref, p),
                    child: ActionChip(
                      key: Key('preset_$i'),
                      avatar: const Icon(Icons.queue_music_rounded, size: 18),
                      label: Text(p.name),
                      onPressed: () =>
                          ref.read(soundPresetsProvider.notifier).apply(p, soundLabels(l10n)),
                    ),
                  ),
              ],
            ),
          ],
        ],
      ),
    );
  }

  Future<void> _delete(BuildContext context, WidgetRef ref, SoundPreset p) async {
    final l10n = context.l10n;
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        content: Text(l10n.soundsDeleteMix(p.name)),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx, false), child: Text(l10n.actionCancel)),
          FilledButton(
            key: const Key('presetDeleteConfirm'),
            onPressed: () => Navigator.pop(ctx, true),
            child: Text(l10n.actionDelete),
          ),
        ],
      ),
    );
    if (ok == true) await ref.read(soundPresetsProvider.notifier).delete(p);
  }
}

/// Asks for a name and saves the current mix.
Future<void> saveMixDialog(BuildContext context, WidgetRef ref) async {
  final l10n = context.l10n;
  final controller = TextEditingController();
  final name = await showDialog<String>(
    context: context,
    builder: (ctx) => AlertDialog(
      title: Text(l10n.soundsSaveMix),
      content: TextField(
        key: const Key('presetName'),
        controller: controller,
        autofocus: true,
        maxLength: SoundPreset.maxName,
        decoration: InputDecoration(hintText: l10n.soundsMixNameHint),
        onSubmitted: (v) => Navigator.pop(ctx, v),
      ),
      actions: [
        TextButton(onPressed: () => Navigator.pop(ctx), child: Text(l10n.actionCancel)),
        FilledButton(
          key: const Key('presetSave'),
          onPressed: () => Navigator.pop(ctx, controller.text),
          child: Text(l10n.actionSave),
        ),
      ],
    ),
  );
  controller.dispose();
  if (name != null && name.trim().isNotEmpty) {
    await ref.read(soundPresetsProvider.notifier).saveCurrent(name);
  }
}
