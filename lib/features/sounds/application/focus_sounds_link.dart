import 'dart:async';

import '../../../l10n/custom/custom_words.dart';

import 'dart:ui' show PlatformDispatcher;

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../app/localization/app_locales.dart';
import '../../../l10n/gen/app_localizations.dart';
import '../../focus/application/focus_controller.dart';
import '../../focus/domain/focus_timer_state.dart';
import '../../settings/application/settings_providers.dart';
import '../presentation/widgets/sound_tile.dart' show soundLabels;
import '../domain/nature_sound.dart';
import 'sound_presets.dart';
import 'sounds_controller.dart';

/// "Play with focus": while a focus (work) session runs, the saved mix plays;
/// at a break, pause or stop it pauses. Sounds the user started themselves
/// are never paused by this link.
final focusSoundsLinkProvider = Provider<void>((ref) {
  var startedByUs = false;

  bool working(FocusTimerState? t) =>
      t != null && t.phase == FocusPhase.work && t.status == FocusStatus.running;

  ref.listen(focusControllerProvider.select((s) => working(s.active)), (was, now) {
    final settings = ref.read(settingsProvider);
    final sounds = ref.read(soundsControllerProvider.notifier);
    final mix = ref.read(soundsControllerProvider);
    if (now && was != true) {
      if (!settings.focusSounds || mix.playing) return;
      // The current mix, or the first saved one after a Stop emptied it.
      final presets = ref.read(soundPresetsProvider);
      final volumes = mix.isEmpty
          ? (presets.isEmpty ? const <NatureSound, double>{} : presets.first.volumes)
          : mix.volumes;
      if (volumes.isEmpty) return;
      final language = AppLocales.resolve(settings.localeTag, PlatformDispatcher.instance.locales);
      startedByUs = true;
      unawaited(
        sounds.playMix(
          volumes,
          soundLabels(withCustomWords(lookupAppLocalizations(language.locale))),
        ),
      );
    } else if (!now && was == true && startedByUs) {
      startedByUs = false;
      unawaited(sounds.pause());
    }
  });
});
