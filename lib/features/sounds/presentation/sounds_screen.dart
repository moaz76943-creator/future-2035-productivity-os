import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/components/states.dart';
import '../../../core/design_system/tokens.dart';
import '../../../shared/widgets/dialogs.dart';
import '../../../shared/widgets/module_scaffold.dart';
import '../application/sounds_controller.dart';
import '../domain/nature_sound.dart';
import 'widgets/player_bar.dart';
import 'widgets/presets_row.dart';
import 'widgets/sound_tile.dart';

/// Nature sounds: tap scenes to build a mix that keeps playing in the
/// background (notification controls, sleep timer).
class SoundsScreen extends ConsumerWidget {
  const SoundsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final mix = ref.watch(soundsControllerProvider);

    Future<void> toggle(NatureSound s) async {
      final ok = await ref.read(soundsControllerProvider.notifier).toggle(s, soundLabels(l10n));
      if (!ok && context.mounted) showMessage(context, l10n.soundsMixFull(maxSoundsInMix));
    }

    Widget grid(SoundGroup group) => SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: Space.page),
      sliver: SliverGrid(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 190,
          mainAxisExtent: 168 + MediaQuery.textScalerOf(context).scale(44),
          crossAxisSpacing: Space.sm,
          mainAxisSpacing: Space.md,
        ),
        delegate: SliverChildListDelegate([
          for (final s in NatureSound.values.where((s) => s.group == group))
            SoundTile(
              key: Key('sound_${s.name}'),
              sound: s,
              on: mix.contains(s),
              onTap: () => toggle(s),
            ),
        ]),
      ),
    );

    return ModuleScaffold(
      title: l10n.soundsTitle,
      subtitle: l10n.soundsSubtitle,
      hue: ModuleHue.sounds,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: mix.isEmpty ? null : const SoundPlayerBar(),
      slivers: [
        if (mix.isEmpty)
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.sm),
              child: Text(l10n.soundsHint, style: context.text.bodySmall),
            ),
          ),
        const SliverToBoxAdapter(child: SoundsExtras()),
        SliverToBoxAdapter(child: SectionHeader(title: l10n.soundsNature)),
        grid(SoundGroup.nature),
        SliverToBoxAdapter(child: SectionHeader(title: l10n.soundsNoise)),
        grid(SoundGroup.noise),
      ],
    );
  }
}
