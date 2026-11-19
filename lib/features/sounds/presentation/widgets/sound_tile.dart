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
  NatureSound.wind => l10n.soundWind,
  NatureSound.forest => l10n.soundForest,
  NatureSound.night => l10n.soundNight,
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

/// A painted scene with the sound's name; tap to switch it on or off.
class SoundTile extends StatelessWidget {
  const SoundTile({super.key, required this.sound, required this.on, required this.onTap});
  final NatureSound sound;
  final bool on;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final lux = context.lux;
    final name = soundName(context.l10n, sound);
    return Semantics(
      button: true,
      selected: on,
      label: name,
      excludeSemantics: true,
      child: GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.opaque,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 220),
                curve: Curves.easeOut,
                padding: EdgeInsets.all(on ? 3 : 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Radii.lg + 3),
                  color: on ? ModuleHue.sounds.a : Colors.transparent,
                  boxShadow: on
                      ? [
                          BoxShadow(
                            color: ModuleHue.sounds.a.withValues(alpha: 0.35),
                            blurRadius: 16,
                          ),
                        ]
                      : null,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(Radii.lg),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      SoundArt(sound: sound),
                      if (on)
                        PositionedDirectional(
                          top: Space.xs,
                          end: Space.xs,
                          child: Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(color: lux.surface, shape: BoxShape.circle),
                            child: Icon(
                              Icons.graphic_eq_rounded,
                              size: 16,
                              color: ModuleHue.sounds.a,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: Space.xs),
            Text(
              name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: context.text.labelLarge?.copyWith(
                color: on ? lux.ink : lux.ink2,
                fontWeight: on ? FontWeight.w700 : FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
