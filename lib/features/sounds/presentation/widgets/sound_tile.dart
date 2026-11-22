import 'package:material_ui/material_ui.dart';

import '../../../../app/localization/app_format.dart';
import '../../../../core/design_system/app_theme.dart';
import '../../../../core/design_system/tokens.dart';
import '../../../../l10n/gen/app_localizations.dart';
import '../../domain/nature_sound.dart';
import 'sound_art.dart';

String soundName(AppLocalizations l10n, NatureSound s) => switch (s) {
  NatureSound.rain => l10n.soundRain,
  NatureSound.storm => l10n.soundStorm,
  NatureSound.river => l10n.soundRiver,
  NatureSound.ocean => l10n.soundOcean,
  NatureSound.fire => l10n.soundFire,
  NatureSound.forest => l10n.soundForest,
  NatureSound.night => l10n.soundNight,
  NatureSound.forestrain => l10n.soundForestRain,
  NatureSound.white => l10n.soundWhite,
  NatureSound.pink => l10n.soundPink,
  NatureSound.brown => l10n.soundBrown,
};

/// Translated texts for the playback notification.
Map<String, String> soundLabels(AppLocalizations l10n) => {
  'title': l10n.soundsChannel,
  'channel': l10n.soundsChannel,
  'pause': l10n.actionPause,
  'resume': l10n.soundsPlay,
  'stop': l10n.actionStop,
  for (final s in NatureSound.values) 'name.${s.name}': soundName(l10n, s),
};

/// A painted scene on a soft card with the sound's name under it; tap to
/// switch it on or off. The scene gets a gentle vignette and a glossy edge so
/// it reads as a picture, and the card lifts and glows while it plays.
class SoundTile extends StatelessWidget {
  const SoundTile({super.key, required this.sound, required this.on, required this.onTap});
  final NatureSound sound;
  final bool on;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final lux = context.lux;
    final name = soundName(context.l10n, sound);
    final accent = ModuleHue.sounds.a;
    return Semantics(
      button: true,
      selected: on,
      label: name,
      excludeSemantics: true,
      child: GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.opaque,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 240),
          curve: Curves.easeOut,
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: lux.surface,
            borderRadius: BorderRadius.circular(Radii.xl),
            border: Border.all(color: on ? accent : lux.hairline, width: on ? 2 : 1),
            boxShadow: [
              BoxShadow(
                color: on ? accent.withValues(alpha: 0.28) : const Color(0x14000000),
                blurRadius: on ? 18 : 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(Radii.lg),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      SoundArt(sound: sound),
                      // Vignette: darker corners give depth.
                      const DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: RadialGradient(
                            radius: 1.0,
                            colors: [Color(0x00000000), Color(0x26000000)],
                            stops: [0.65, 1],
                          ),
                        ),
                      ),
                      // Soft light from the top edge.
                      const DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.center,
                            colors: [Color(0x33FFFFFF), Color(0x00FFFFFF)],
                          ),
                        ),
                      ),
                      PositionedDirectional(
                        top: Space.xs,
                        end: Space.xs,
                        child: AnimatedScale(
                          scale: on ? 1 : 0,
                          duration: const Duration(milliseconds: 200),
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(color: lux.surface, shape: BoxShape.circle),
                            child: Icon(Icons.graphic_eq_rounded, size: 16, color: accent),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: Space.sm),
                child: Text(
                  name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: context.text.labelLarge?.copyWith(
                    color: on ? lux.ink : lux.ink2,
                    fontWeight: on ? FontWeight.w700 : FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
