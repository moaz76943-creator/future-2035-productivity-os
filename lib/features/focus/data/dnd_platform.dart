import 'dart:io';

import 'package:flutter/services.dart';

/// The phone's Do Not Disturb, switched on for focus sessions.
abstract class DndPlatform {
  /// Whether the user allowed the app to change Do Not Disturb.
  Future<bool> hasAccess();

  /// Opens the system page where that access is granted.
  Future<void> requestAccess();

  /// Turns on priority-only mode until [untilUtc] at the latest (restored by
  /// the system alarm even if the app is not running then).
  Future<bool> enable(DateTime? untilUtc);

  /// Restores the previous mode, only if the app was the one that changed it.
  Future<void> restore();

  static DndPlatform create() => Platform.isAndroid ? const ChannelDnd() : MemoryDnd();
}

class ChannelDnd implements DndPlatform {
  const ChannelDnd();
  static const _c = MethodChannel('future_os/dnd');

  Future<T?> _call<T>(String m, [Object? args]) async {
    try {
      return await _c.invokeMethod<T>(m, args);
    } on Object {
      return null;
    }
  }

  @override
  Future<bool> hasAccess() async => await _call<bool>('hasAccess') ?? false;
  @override
  Future<void> requestAccess() => _call<void>('requestAccess');
  @override
  Future<bool> enable(DateTime? untilUtc) async =>
      await _call<bool>('enable', untilUtc?.millisecondsSinceEpoch) ?? false;
  @override
  Future<void> restore() => _call<void>('restore');
}

/// Tests and desktop.
class MemoryDnd implements DndPlatform {
  bool access = true;
  bool on = false;
  DateTime? until;

  @override
  Future<bool> hasAccess() async => access;
  @override
  Future<void> requestAccess() async => access = true;
  @override
  Future<bool> enable(DateTime? untilUtc) async {
    if (!access) return false;
    on = true;
    until = untilUtc;
    return true;
  }

  @override
  Future<void> restore() async => on = false;
}
