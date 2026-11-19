import 'dart:convert';

/// The procedural sounds the native engine can play (ids match `Voice.IDS`).
/// Nature sounds only, no music. Every sound is generated live on the device
/// by the app's own code, so there are no recordings and no third-party rights.
enum NatureSound {
  rain(SoundGroup.nature),
  storm(SoundGroup.nature),
  river(SoundGroup.nature),
  ocean(SoundGroup.nature),
  fire(SoundGroup.nature),
  wind(SoundGroup.nature),
  forest(SoundGroup.nature),
  night(SoundGroup.nature),
  white(SoundGroup.noise),
  pink(SoundGroup.noise),
  brown(SoundGroup.noise);

  const NatureSound(this.group);
  final SoundGroup group;

  static NatureSound? byName(String name) => NatureSound.values.asNameMap()[name];
}

enum SoundGroup { nature, noise }

/// The engine plays at most this many sounds together.
const maxSoundsInMix = 6;

/// Sleep timer choices in minutes (0 = off).
const sleepChoices = [0, 15, 30, 45, 60, 90, 120];

/// What is playing: volumes (0..1) of the sounds in the mix, play state and
/// the remaining sleep time.
class SoundMix {
  const SoundMix({
    this.volumes = const {},
    this.playing = false,
    this.sleepRemaining = Duration.zero,
  });

  final Map<NatureSound, double> volumes;
  final bool playing;
  final Duration sleepRemaining;

  bool get isEmpty => volumes.isEmpty;
  bool contains(NatureSound s) => volumes.containsKey(s);

  SoundMix copyWith({Map<NatureSound, double>? volumes, bool? playing, Duration? sleepRemaining}) =>
      SoundMix(
        volumes: volumes ?? this.volumes,
        playing: playing ?? this.playing,
        sleepRemaining: sleepRemaining ?? this.sleepRemaining,
      );

  /// Builds a mix from the engine's state map (unknown ids are ignored).
  static SoundMix fromState(Map<Object?, Object?> m) {
    final raw = m['volumes'];
    final volumes = <NatureSound, double>{
      if (raw is Map)
        for (final e in raw.entries)
          if (NatureSound.byName('${e.key}') case final s? when e.value is num)
            s: (e.value! as num).toDouble().clamp(0.0, 1.0),
    };
    final ms = m['sleepRemainingMs'];
    return SoundMix(
      volumes: volumes,
      playing: m['playing'] == true,
      sleepRemaining: Duration(milliseconds: ms is int ? ms : 0),
    );
  }

  /// The saved mix (volumes only), restored the next time the app opens.
  String encodeVolumes() => jsonEncode({for (final e in volumes.entries) e.key.name: e.value});

  static Map<NatureSound, double> decodeVolumes(String? raw) {
    if (raw == null || raw.isEmpty) return const {};
    try {
      final j = jsonDecode(raw);
      if (j is! Map) return const {};
      final out = <NatureSound, double>{};
      for (final e in j.entries) {
        final s = NatureSound.byName('${e.key}');
        if (s != null && e.value is num && out.length < maxSoundsInMix) {
          out[s] = (e.value as num).toDouble().clamp(0.05, 1.0);
        }
      }
      return out;
    } on FormatException {
      return const {};
    }
  }
}
