import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';

/// Plays a short audio clip (a card's recording) through the native player
/// on channel `future_os/audio`. Returns false when it cannot be played.
abstract interface class AudioClipPlayer {
  Future<bool> play(List<int> bytes, {String extension = 'm4a'});
  Future<void> stop();
}

class PlatformAudioClipPlayer implements AudioClipPlayer {
  const PlatformAudioClipPlayer([this._channel = const MethodChannel('future_os/audio')]);
  final MethodChannel _channel;

  @override
  Future<bool> play(List<int> bytes, {String extension = 'm4a'}) async {
    try {
      final dir = await getTemporaryDirectory();
      final safeExt = RegExp(r'^[a-z0-9]{1,5}$').hasMatch(extension) ? extension : 'bin';
      // One reusable cache file: clips never accumulate on disk.
      final file = File('${dir.path}/card_clip.$safeExt');
      await file.writeAsBytes(bytes, flush: true);
      return await _channel.invokeMethod<String>('play', {'path': file.path}) == 'ok';
    } on MissingPluginException {
      return false;
    } on PlatformException {
      return false;
    } on FileSystemException {
      return false;
    }
  }

  @override
  Future<void> stop() async {
    try {
      await _channel.invokeMethod<void>('stop');
    } on MissingPluginException {
      // Nothing playing.
    } on PlatformException {
      // Player gone.
    }
  }
}

final audioClipPlayerProvider = Provider<AudioClipPlayer>((ref) => const PlatformAudioClipPlayer());
