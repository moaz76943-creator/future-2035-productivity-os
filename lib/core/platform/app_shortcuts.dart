import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';

/// One long-press action on the app icon.
class AppShortcut {
  const AppShortcut({required this.id, required this.label, required this.route});
  final String id;
  final String label;

  /// In-app route opened by the shortcut.
  final String route;

  Map<String, String> toMap() => {'id': id, 'label': label, 'route': route};
}

/// Launcher shortcuts (long-press on the app icon) and the routes they open.
abstract class AppShortcutsPlatform {
  /// Replaces the shortcuts; labels follow the app language.
  Future<void> set(List<AppShortcut> shortcuts);

  /// Route of the shortcut that launched the app, once.
  Future<String?> takeLaunchRoute();

  /// Routes of shortcuts used while the app is running.
  Stream<String> get opened;

  static AppShortcutsPlatform create() =>
      Platform.isAndroid ? ChannelAppShortcuts() : MemoryAppShortcuts();
}

class ChannelAppShortcuts implements AppShortcutsPlatform {
  ChannelAppShortcuts() {
    _channel.setMethodCallHandler((call) async {
      if (call.method == 'open' && call.arguments is String) _opened.add(call.arguments as String);
    });
  }

  static const _channel = MethodChannel('future_os/shortcuts');
  final _opened = StreamController<String>.broadcast();

  @override
  Future<void> set(List<AppShortcut> shortcuts) async {
    try {
      await _channel.invokeMethod<void>('set', [for (final s in shortcuts) s.toMap()]);
    } on Object {
      // Older launchers without shortcuts: nothing to do.
    }
  }

  @override
  Future<String?> takeLaunchRoute() async {
    try {
      return await _channel.invokeMethod<String>('takeLaunchRoute');
    } on Object {
      return null;
    }
  }

  @override
  Stream<String> get opened => _opened.stream;
}

/// Tests and desktop.
class MemoryAppShortcuts implements AppShortcutsPlatform {
  List<AppShortcut> current = const [];
  String? launchRoute;
  final _opened = StreamController<String>.broadcast();

  void open(String route) => _opened.add(route);

  @override
  Future<void> set(List<AppShortcut> shortcuts) async => current = shortcuts;

  @override
  Future<String?> takeLaunchRoute() async {
    final r = launchRoute;
    launchRoute = null;
    return r;
  }

  @override
  Stream<String> get opened => _opened.stream;
}
