import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers/core_providers.dart';

/// Newer focus choices, kept as one small JSON value in the settings store so
/// more can be added without touching the main settings schema.
class FocusPrefs {
  const FocusPrefs({
    this.calmPacing = false,
    this.immersiveBlack = false,
    this.flipToFocus = false,
    this.immersiveScene = 'night',
  });

  /// Hide the ticking seconds: show whole minutes and the ring only.
  final bool calmPacing;

  /// Immersive mode on a pure black screen (AMOLED) instead of a dim photo.
  final bool immersiveBlack;

  /// Start the timer by turning the phone face down; lifting it pauses.
  final bool flipToFocus;

  /// The photo behind the immersive clock (a nature sound's name).
  final String immersiveScene;

  FocusPrefs copyWith({
    bool? calmPacing,
    bool? immersiveBlack,
    bool? flipToFocus,
    String? immersiveScene,
  }) => FocusPrefs(
    calmPacing: calmPacing ?? this.calmPacing,
    immersiveBlack: immersiveBlack ?? this.immersiveBlack,
    flipToFocus: flipToFocus ?? this.flipToFocus,
    immersiveScene: immersiveScene ?? this.immersiveScene,
  );

  Map<String, Object> toJson() => {
    'calmPacing': calmPacing,
    'immersiveBlack': immersiveBlack,
    'flipToFocus': flipToFocus,
    'immersiveScene': immersiveScene,
  };

  static FocusPrefs fromJson(Map<String, Object?> j) => FocusPrefs(
    calmPacing: j['calmPacing'] == true,
    immersiveBlack: j['immersiveBlack'] == true,
    flipToFocus: j['flipToFocus'] == true,
    immersiveScene: j['immersiveScene'] is String ? j['immersiveScene']! as String : 'night',
  );
}

class FocusPrefsNotifier extends AsyncNotifier<FocusPrefs> {
  static const key = 'focus.prefs';

  @override
  Future<FocusPrefs> build() async {
    final raw = await ref.read(databaseProvider).readValue(key);
    if (raw == null) return const FocusPrefs();
    try {
      return FocusPrefs.fromJson((jsonDecode(raw) as Map).cast<String, Object?>());
    } on Object {
      return const FocusPrefs();
    }
  }

  Future<void> change(FocusPrefs Function(FocusPrefs) edit) async {
    final next = edit(state.value ?? const FocusPrefs());
    state = AsyncData(next);
    await ref.read(databaseProvider).writeValue(key, jsonEncode(next.toJson()));
  }
}

final focusPrefsProvider = AsyncNotifierProvider<FocusPrefsNotifier, FocusPrefs>(
  FocusPrefsNotifier.new,
);
