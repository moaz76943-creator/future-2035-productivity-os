import 'dart:convert';

import 'nature_sound.dart';

/// A named, saved sound mix ("Rain + fire", "Library"...).
class SoundPreset {
  const SoundPreset(this.name, this.volumes);
  final String name;
  final Map<NatureSound, double> volumes;

  static const maxPresets = 8;
  static const maxName = 30;

  static String encodeAll(List<SoundPreset> list) => jsonEncode([
    for (final p in list)
      {
        'name': p.name,
        'volumes': {for (final e in p.volumes.entries) e.key.name: e.value},
      },
  ]);

  static List<SoundPreset> decodeAll(String? raw) {
    if (raw == null || raw.isEmpty) return const [];
    try {
      final j = jsonDecode(raw);
      if (j is! List) return const [];
      final out = <SoundPreset>[];
      for (final e in j) {
        if (e is! Map || e['name'] is! String) continue;
        final volumes = SoundMix.decodeVolumes(jsonEncode(e['volumes']));
        if (volumes.isEmpty) continue;
        final name = (e['name'] as String).trim();
        out.add(SoundPreset(name.length > maxName ? name.substring(0, maxName) : name, volumes));
        if (out.length >= maxPresets) break;
      }
      return out;
    } on FormatException {
      return const [];
    }
  }
}
