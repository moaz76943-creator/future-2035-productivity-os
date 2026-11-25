import 'dart:async';
import 'dart:io' show Platform;

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Screen-on and face-down detection for the immersive focus mode.
abstract interface class FocusTools {
  Future<void> keepAwake(bool on);

  /// true when the phone is put face down, false when it is lifted.
  Stream<bool> get faceDown;
}

class ChannelFocusTools implements FocusTools {
  static const _m = MethodChannel('future_os/focus_tools');
  static const _e = EventChannel('future_os/flip');

  @override
  Future<void> keepAwake(bool on) async {
    try {
      await _m.invokeMethod<bool>('keepAwake', {'on': on});
    } on Object {
      // Older build without the bridge: the screen simply follows the system timeout.
    }
  }

  @override
  Stream<bool> get faceDown =>
      _e.receiveBroadcastStream().map((v) => v == true).handleError((Object _) {});
}

/// For tests: records keep-awake calls; [flip] simulates turning the phone.
class MemoryFocusTools implements FocusTools {
  final awake = <bool>[];
  final _flips = StreamController<bool>.broadcast();

  void flip(bool down) => _flips.add(down);

  @override
  Future<void> keepAwake(bool on) async => awake.add(on);

  @override
  Stream<bool> get faceDown => _flips.stream;
}

final focusToolsProvider = Provider<FocusTools>(
  (ref) => Platform.isAndroid ? ChannelFocusTools() : MemoryFocusTools(),
);
