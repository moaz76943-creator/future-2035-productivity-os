import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/sounds/domain/nature_sound.dart';

void main() {
  group('NatureSound', () {
    test('byName returns correct enum for valid names', () {
      expect(NatureSound.byName('rain'), NatureSound.rain);
      expect(NatureSound.byName('white'), NatureSound.white);
      expect(NatureSound.byName('brown'), NatureSound.brown);
    });

    test('byName returns null for invalid names', () {
      expect(NatureSound.byName('invalid'), isNull);
      expect(NatureSound.byName(''), isNull);
    });

    test('group property matches expected SoundGroup', () {
      expect(NatureSound.rain.group, SoundGroup.nature);
      expect(NatureSound.white.group, SoundGroup.noise);
    });
  });

  group('SoundGroup', () {
    test('has expected values', () {
      expect(SoundGroup.values, [SoundGroup.nature, SoundGroup.noise]);
    });
  });

  group('Constants', () {
    test('maxSoundsInMix is 6', () {
      expect(maxSoundsInMix, 6);
    });

    test('sleepChoices contains expected values', () {
      expect(sleepChoices, [0, 15, 30, 45, 60, 90, 120]);
    });
  });

  group('MusicPick', () {
    test('constructor sets required name and default volume', () {
      const pick = MusicPick(name: 'song.mp3');
      expect(pick.name, 'song.mp3');
      expect(pick.volume, 0.8);
    });

    test('constructor accepts custom volume', () {
      const pick = MusicPick(name: 'song.mp3', volume: 0.5);
      expect(pick.volume, 0.5);
    });
  });

  group('SoundMix', () {
    const rain = NatureSound.rain;
    const ocean = NatureSound.ocean;
    const white = NatureSound.white;

    test('default constructor creates empty mix', () {
      const mix = SoundMix();
      expect(mix.volumes, isEmpty);
      expect(mix.playing, false);
      expect(mix.sleepRemaining, Duration.zero);
      expect(mix.music, isNull);
      expect(mix.isEmpty, true);
      expect(mix.isSilent, true);
    });

    test('constructor with volumes sets properties', () {
      const mix = SoundMix(volumes: {rain: 0.5, ocean: 0.3}, playing: true);
      expect(mix.volumes[rain], 0.5);
      expect(mix.volumes[ocean], 0.3);
      expect(mix.playing, true);
      expect(mix.isEmpty, false);
      expect(mix.isSilent, false);
    });

    test('contains returns true for present sound', () {
      const mix = SoundMix(volumes: {rain: 0.5});
      expect(mix.contains(rain), true);
      expect(mix.contains(ocean), false);
    });

    test('isSilent is false when music is present', () {
      const mix = SoundMix(music: MusicPick(name: 'song.mp3'));
      expect(mix.isEmpty, true);
      expect(mix.isSilent, false);
    });

    test('copyWith updates only provided fields', () {
      const original = SoundMix(volumes: {rain: 0.5});
      final updated = original.copyWith(playing: true, volumes: {ocean: 0.7});
      expect(updated.playing, true);
      expect(updated.volumes, {ocean: 0.7});
      expect(updated.sleepRemaining, Duration.zero);
    });

    test('copyWith with clearMusic removes music', () {
      const original = SoundMix(music: MusicPick(name: 'song.mp3'));
      final updated = original.copyWith(clearMusic: true);
      expect(updated.music, isNull);
    });

    test('copyWith without clearMusic keeps music', () {
      const original = SoundMix(music: MusicPick(name: 'song.mp3'));
      final updated = original.copyWith(playing: true);
      expect(updated.music, original.music);
    });

    group('fromState', () {
      test('parses valid state map', () {
        final state = {
          'volumes': {'rain': 0.6, 'ocean': 0.4},
          'playing': true,
          'sleepRemainingMs': 30000,
          'music': {'name': 'song.mp3', 'volume': 0.7},
        };
        final mix = SoundMix.fromState(state);
        expect(mix.volumes[rain], 0.6);
        expect(mix.volumes[ocean], 0.4);
        expect(mix.playing, true);
        expect(mix.sleepRemaining, const Duration(milliseconds: 30000));
        expect(mix.music?.name, 'song.mp3');
        expect(mix.music?.volume, 0.7);
      });

      test('ignores unknown sound ids', () {
        final state = {
          'volumes': {'unknown': 0.5, 'rain': 0.3},
        };
        final mix = SoundMix.fromState(state);
        expect(mix.volumes.length, 1);
        expect(mix.volumes[rain], 0.3);
      });

      test('clamps volume values to 0..1', () {
        final state = {
          'volumes': {'rain': 1.5, 'ocean': -0.2},
        };
        final mix = SoundMix.fromState(state);
        expect(mix.volumes[rain], 1.0);
        expect(mix.volumes[ocean], 0.0);
      });

      test('handles missing or invalid fields gracefully', () {
        final mix = SoundMix.fromState({});
        expect(mix.volumes, isEmpty);
        expect(mix.playing, false);
        expect(mix.sleepRemaining, Duration.zero);
        expect(mix.music, isNull);
      });

      test('handles non-int sleepRemainingMs', () {
        final state = {'sleepRemainingMs': 'invalid'};
        final mix = SoundMix.fromState(state);
        expect(mix.sleepRemaining, Duration.zero);
      });

      test('handles missing music volume defaults to 0.8', () {
        final state = {
          'music': {'name': 'song.mp3'},
        };
        final mix = SoundMix.fromState(state);
        expect(mix.music?.volume, 0.8);
      });
    });

    group('encodeVolumes / decodeVolumes', () {
      test('roundtrip preserves volumes', () {
        const original = SoundMix(volumes: {rain: 0.5, ocean: 0.3, white: 1.0});
        final encoded = original.encodeVolumes();
        final decoded = SoundMix.decodeVolumes(encoded);
        expect(decoded[rain], 0.5);
        expect(decoded[ocean], 0.3);
        expect(decoded[white], 1.0);
      });

      test('decodeVolumes clamps to 0.05..1.0', () {
        const json = '{"rain": 0.01, "ocean": 1.5}';
        final decoded = SoundMix.decodeVolumes(json);
        expect(decoded[rain], 0.05);
        expect(decoded[ocean], 1.0);
      });

      test('decodeVolumes respects maxSoundsInMix limit', () {
        final entries = NatureSound.values
            .take(maxSoundsInMix + 2)
            .map((s) => '"${s.name}": 0.5')
            .join(',');
        final json = '{$entries}';
        final decoded = SoundMix.decodeVolumes(json);
        expect(decoded.length, maxSoundsInMix);
      });

      test('decodeVolumes returns empty map for null or empty string', () {
        expect(SoundMix.decodeVolumes(null), isEmpty);
        expect(SoundMix.decodeVolumes(''), isEmpty);
      });

      test('decodeVolumes returns empty map for invalid JSON', () {
        expect(SoundMix.decodeVolumes('invalid'), isEmpty);
        expect(SoundMix.decodeVolumes('[]'), isEmpty);
      });

      test('decodeVolumes ignores unknown sound names', () {
        const json = '{"unknown": 0.5, "rain": 0.3}';
        final decoded = SoundMix.decodeVolumes(json);
        expect(decoded.length, 1);
        expect(decoded[rain], 0.3);
      });
    });
  });
}
