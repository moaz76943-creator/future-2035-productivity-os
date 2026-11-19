import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/sounds/data/soundscape_platform.dart';
import 'package:future_os/features/sounds/domain/nature_sound.dart';

void main() {
  test('engine state map becomes a mix; unknown ids and bad values are ignored', () {
    final m = SoundMix.fromState({
      'playing': true,
      'volumes': {'rain': 0.5, 'music': 1.0, 'fire': 3, 'wind': 'x'},
      'sleepRemainingMs': 60000,
    });
    expect(m.playing, isTrue);
    expect(m.volumes, {NatureSound.rain: 0.5, NatureSound.fire: 1.0});
    expect(m.sleepRemaining, const Duration(minutes: 1));
  });

  test('saved volumes round-trip and are capped to the mix size', () {
    const mix = SoundMix(volumes: {NatureSound.ocean: 0.4, NatureSound.night: 0.9});
    expect(SoundMix.decodeVolumes(mix.encodeVolumes()), mix.volumes);
    expect(SoundMix.decodeVolumes('not json'), isEmpty);
    final many = '{${NatureSound.values.map((s) => '"${s.name}":0.5').join(',')}}';
    expect(SoundMix.decodeVolumes(many).length, maxSoundsInMix);
  });

  test('every sound is nature or noise; there is no music', () {
    expect(NatureSound.values.map((s) => s.group).toSet(), {SoundGroup.nature, SoundGroup.noise});
  });

  test('memory engine: max sounds, volume 0 removes, removing the last stops', () async {
    final e = MemorySoundscape();
    for (final s in NatureSound.values.take(maxSoundsInMix)) {
      expect(await e.setVolume(s, 0.5), isTrue);
    }
    expect(await e.setVolume(NatureSound.values.last, 0.5), isFalse);
    expect(await e.play(const {}), isTrue);
    for (final s in NatureSound.values.take(maxSoundsInMix)) {
      await e.setVolume(s, 0);
    }
    expect((await e.state()).playing, isFalse);
    await e.close();
  });
}
