import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers/core_providers.dart';
import '../domain/sound_preset.dart';
import 'sounds_controller.dart';

final soundPresetsProvider = NotifierProvider<SoundPresetsController, List<SoundPreset>>(
  SoundPresetsController.new,
);

/// Saved mixes: save the current mix under a name, apply or delete one.
class SoundPresetsController extends Notifier<List<SoundPreset>> {
  static const _key = 'sounds.presets';

  late Future<void> _loaded;

  @override
  List<SoundPreset> build() {
    _loaded = _load();
    unawaited(_loaded);
    return const [];
  }

  Future<void> _load() async {
    final raw = await ref.read(databaseProvider).readValue(_key);
    if (ref.mounted) state = SoundPreset.decodeAll(raw);
  }

  Future<void> _save(List<SoundPreset> list) async {
    state = list;
    await ref.read(databaseProvider).writeValue(_key, SoundPreset.encodeAll(list));
  }

  /// Saves the current mix; a preset with the same name is replaced.
  /// Returns false when there is nothing to save or the list is full.
  Future<bool> saveCurrent(String name) async {
    await _loaded; // never let the first load overwrite a fresh save
    final mix = ref.read(soundsControllerProvider);
    final n = name.trim();
    if (mix.isEmpty || n.isEmpty) return false;
    final rest = state.where((p) => p.name != n).toList();
    if (rest.length >= SoundPreset.maxPresets) return false;
    await _save([
      SoundPreset(n.length > SoundPreset.maxName ? n.substring(0, SoundPreset.maxName) : n, {
        ...mix.volumes,
      }),
      ...rest,
    ]);
    return true;
  }

  Future<void> delete(SoundPreset p) async {
    await _loaded;
    await _save(state.where((e) => e.name != p.name).toList());
  }

  /// Replaces the current mix with [p] and plays it.
  Future<void> apply(SoundPreset p, Map<String, String> labels) =>
      ref.read(soundsControllerProvider.notifier).playMix(p.volumes, labels);
}
