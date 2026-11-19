import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum RecordStart { ok, denied, unavailable }

/// Records a short voice clip for a flashcard with the device microphone
/// (native MediaRecorder on channel `future_os/audio`, AAC in MPEG-4, at most
/// 5 minutes). The clip is returned as bytes and its temporary file removed.
abstract interface class AudioRecorder {
  /// Asks for the microphone permission when needed, then starts recording.
  Future<RecordStart> start();

  /// Stops and returns the recording, or null when nothing was recorded.
  Future<Uint8List?> stop();

  /// Stops and discards the recording.
  Future<void> cancel();
}

class PlatformAudioRecorder implements AudioRecorder {
  const PlatformAudioRecorder([this._channel = const MethodChannel('future_os/audio')]);
  final MethodChannel _channel;

  @override
  Future<RecordStart> start() async {
    try {
      return switch (await _channel.invokeMethod<String>('recordStart')) {
        'ok' => RecordStart.ok,
        'denied' => RecordStart.denied,
        _ => RecordStart.unavailable,
      };
    } on MissingPluginException {
      return RecordStart.unavailable;
    } on PlatformException {
      return RecordStart.unavailable;
    }
  }

  @override
  Future<Uint8List?> stop() async {
    try {
      final path = await _channel.invokeMethod<String>('recordStop');
      if (path == null) return null;
      final file = File(path);
      final bytes = await file.readAsBytes();
      await file.delete();
      return bytes.isEmpty ? null : bytes;
    } on MissingPluginException {
      return null;
    } on PlatformException {
      return null;
    } on FileSystemException {
      return null;
    }
  }

  @override
  Future<void> cancel() async {
    try {
      await _channel.invokeMethod<void>('recordCancel');
    } on MissingPluginException {
      // Not recording.
    } on PlatformException {
      // Recorder gone.
    }
  }
}

final audioRecorderProvider = Provider<AudioRecorder>((ref) => const PlatformAudioRecorder());
