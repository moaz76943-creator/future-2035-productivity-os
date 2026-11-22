import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../app/localization/app_format.dart';
import '../../../../core/design_system/app_theme.dart';
import '../../../../core/design_system/tokens.dart';
import '../../application/sounds_controller.dart';
import '../../domain/nature_sound.dart';
import 'sound_art.dart';
import 'presets_row.dart';
import 'sound_tile.dart';

/// Floating controls for the current mix: volumes, play/pause, sleep timer, stop.
class SoundPlayerBar extends ConsumerWidget {
  const SoundPlayerBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final lux = context.lux;
    final mix = ref.watch(soundsControllerProvider);
    final ctrl = ref.read(soundsControllerProvider.notifier);
    final sleepOn = mix.sleepRemaining > Duration.zero;
    return Material(
      color: lux.surface,
      elevation: 6,
      shadowColor: lux.shadow,
      borderRadius: BorderRadius.circular(32),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Space.xs, vertical: Space.xxs),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  key: const Key('soundsMixer'),
                  tooltip: l10n.soundsMixer,
                  icon: const Icon(Icons.tune_rounded),
                  onPressed: () => showSoundMixer(context),
                ),
                const SizedBox(width: Space.xxs),
                IconButton.filled(
                  key: const Key('soundsPlayPause'),
                  tooltip: mix.playing ? l10n.actionPause : l10n.soundsPlay,
                  style: IconButton.styleFrom(
                    backgroundColor: ModuleHue.sounds.a,
                    minimumSize: const Size(56, 56),
                  ),
                  icon: Icon(
                    mix.playing ? Icons.pause_rounded : Icons.play_arrow_rounded,
                    size: 30,
                  ),
                  onPressed: () => ctrl.playPause(soundLabels(l10n)),
                ),
                const SizedBox(width: Space.xxs),
                PopupMenuButton<int>(
                  key: const Key('soundsSleepMenu'),
                  tooltip: l10n.soundsSleep,
                  icon: Icon(
                    sleepOn ? Icons.bedtime_rounded : Icons.bedtime_outlined,
                    color: sleepOn ? ModuleHue.sounds.a : null,
                  ),
                  onSelected: ctrl.sleep,
                  itemBuilder: (_) => [
                    PopupMenuItem(enabled: false, child: Text(l10n.soundsSleep)),
                    for (final m in sleepChoices)
                      PopupMenuItem(
                        key: Key('sleep_$m'),
                        value: m,
                        child: Text(m == 0 ? l10n.soundsSleepOff : l10n.durationMinutes(m)),
                      ),
                  ],
                ),
                IconButton(
                  key: const Key('soundsStop'),
                  tooltip: l10n.actionStop,
                  icon: const Icon(Icons.stop_rounded),
                  onPressed: ctrl.stop,
                ),
              ],
            ),
            if (sleepOn)
              Padding(
                padding: const EdgeInsets.only(bottom: Space.xxs),
                child: Text(
                  l10n.soundsSleepAt(context.fmt.time(DateTime.now().add(mix.sleepRemaining))),
                  key: const Key('soundsSleepLabel'),
                  style: context.text.labelSmall?.copyWith(color: lux.ink2),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

/// Volume of every sound in the mix, with a remove button for each.
Future<void> showSoundMixer(BuildContext context) => showModalBottomSheet<void>(
  context: context,
  useSafeArea: true,
  isScrollControlled: true,
  builder: (_) => const _MixerSheet(),
);

class _MixerSheet extends ConsumerWidget {
  const _MixerSheet();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final mix = ref.watch(soundsControllerProvider);
    final ctrl = ref.read(soundsControllerProvider.notifier);
    return Padding(
      padding: const EdgeInsets.fromLTRB(Space.page, Space.md, Space.page, Space.lg),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(l10n.soundsMixer, style: context.text.titleLarge),
          const SizedBox(height: Space.sm),
          if (mix.isEmpty)
            Text(
              l10n.soundsHint,
              style: context.text.bodyMedium?.copyWith(color: context.lux.ink2),
            ),
          if (!mix.isEmpty)
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: TextButton.icon(
                key: const Key('soundsSavePreset'),
                onPressed: () => saveMixDialog(context, ref),
                icon: const Icon(Icons.bookmark_add_outlined),
                label: Text(l10n.soundsSaveMix),
              ),
            ),
          for (final e in mix.volumes.entries)
            Padding(
              padding: const EdgeInsets.only(bottom: Space.xs),
              child: Row(
                children: [
                  SizedBox.square(
                    dimension: 40,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(Radii.md),
                      child: SoundArt(sound: e.key),
                    ),
                  ),
                  const SizedBox(width: Space.sm),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(soundName(l10n, e.key), style: context.text.titleSmall),
                        Slider(
                          key: Key('soundVolume_${e.key.name}'),
                          value: e.value,
                          min: 0.05,
                          semanticFormatterCallback: (v) => context.fmt.percent(v),
                          label: l10n.soundsVolumeOf(soundName(l10n, e.key)),
                          activeColor: ModuleHue.sounds.a,
                          onChanged: (v) => ctrl.setVolume(e.key, v),
                          onChangeEnd: (_) => ctrl.commit(),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    key: Key('soundRemove_${e.key.name}'),
                    tooltip: l10n.actionDelete,
                    icon: const Icon(Icons.close_rounded),
                    onPressed: () => ctrl.toggle(e.key, soundLabels(l10n)),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
