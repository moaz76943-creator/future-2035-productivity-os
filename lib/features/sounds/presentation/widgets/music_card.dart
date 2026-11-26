import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../app/localization/app_format.dart';
import '../../../../core/design_system/tokens.dart';
import '../../application/sounds_controller.dart';
import 'sound_tile.dart';

/// The person's own audio file from the phone (mp3, m4a, ...), looped under the
/// nature sounds. It is played in place: nothing is copied, stored or uploaded.
class MusicCard extends ConsumerWidget {
  const MusicCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final music = ref.watch(soundsControllerProvider.select((m) => m.music));
    final ctrl = ref.read(soundsControllerProvider.notifier);
    Future<void> pick() => ctrl.pickMusic(soundLabels(l10n));
    return Padding(
      padding: const EdgeInsets.fromLTRB(Space.page, Space.sm, Space.page, 0),
      child: Card(
        margin: EdgeInsets.zero,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Space.md, vertical: Space.sm),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: const Icon(Icons.library_music_outlined),
                title: Text(
                  music == null || music.name.isEmpty ? l10n.soundsMyMusic : music.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: music == null ? Text(l10n.soundsMusicHint) : null,
                trailing: music == null
                    ? null
                    : IconButton(
                        key: const Key('soundsMusicRemove'),
                        tooltip: l10n.soundsRemoveMusic,
                        icon: const Icon(Icons.close),
                        onPressed: ctrl.clearMusic,
                      ),
                onTap: music == null ? pick : null,
              ),
              if (music == null)
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: FilledButton.tonalIcon(
                    key: const Key('soundsMusicPick'),
                    onPressed: pick,
                    icon: const Icon(Icons.audio_file_outlined),
                    label: Text(l10n.soundsChooseMusic),
                  ),
                )
              else
                Slider(
                  key: const Key('soundsMusicVolume'),
                  value: music.volume,
                  semanticFormatterCallback: (v) => '${(v * 100).round()}%',
                  onChanged: ctrl.setMusicVolume,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
