import 'dart:io' show Platform;

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// An app from the phone's home screen, for the guard's app list.
class InstalledApp {
  const InstalledApp(this.package, this.label, [this.icon]);
  final String package;
  final String label;
  final Uint8List? icon;
}

/// Bridge to the Android distraction guard (an accessibility service that
/// pauses chosen apps). Everything stays on the phone.
abstract interface class DistractionGuard {
  /// Whether the user has turned the service on in Accessibility settings.
  Future<bool> isEnabled();
  Future<void> openSettings();
  Future<List<InstalledApp>> apps();

  /// The rules and the pause screen's texts, as JSON.
  Future<void> setConfig(String json);

  /// While a focus session runs: guard until [until] (null ends it).
  Future<void> session(DateTime? until);

  /// Last 7 days, counted on the phone: paused, returned (to focus), unlocked.
  Future<GuardWeek> week();
}

class GuardWeek {
  const GuardWeek({this.paused = 0, this.returned = 0, this.unlocked = 0});
  final int paused;
  final int returned;
  final int unlocked;
}

class ChannelDistractionGuard implements DistractionGuard {
  static const _c = MethodChannel('future_os/guard');

  Future<T?> _call<T>(String m, [Map<String, Object?>? args]) async {
    try {
      return await _c.invokeMethod<T>(m, args);
    } on Object {
      return null; // An older build without the bridge: the guard is simply off.
    }
  }

  @override
  Future<bool> isEnabled() async => await _call<bool>('enabled') ?? false;

  @override
  Future<void> openSettings() => _call<bool>('openSettings');

  @override
  Future<List<InstalledApp>> apps() async {
    final raw = await _call<List<Object?>>('apps') ?? const [];
    return [
      for (final r in raw.whereType<Map<Object?, Object?>>())
        InstalledApp('${r['package']}', '${r['label']}', r['icon'] as Uint8List?),
    ];
  }

  @override
  Future<void> setConfig(String json) => _call<bool>('setConfig', {'json': json});

  @override
  Future<void> session(DateTime? until) =>
      _call<bool>('session', {'until': until?.millisecondsSinceEpoch ?? 0});

  @override
  Future<GuardWeek> week() async {
    final m = await _call<Map<Object?, Object?>>('stats') ?? const {};
    int n(String k) => m[k] is int ? m[k]! as int : 0;
    return GuardWeek(paused: n('paused'), returned: n('returned'), unlocked: n('unlocked'));
  }
}

/// For tests and platforms without the service.
class MemoryDistractionGuard implements DistractionGuard {
  MemoryDistractionGuard({this.enabled = false, this.installed = const []});
  bool enabled;
  final List<InstalledApp> installed;
  String? config;
  DateTime? until;
  int settingsOpened = 0;

  @override
  Future<bool> isEnabled() async => enabled;

  @override
  Future<void> openSettings() async => settingsOpened++;

  @override
  Future<List<InstalledApp>> apps() async => installed;

  @override
  Future<void> setConfig(String json) async => config = json;

  @override
  Future<void> session(DateTime? until) async => this.until = until;

  GuardWeek stats = const GuardWeek();

  @override
  Future<GuardWeek> week() async => stats;
}

final distractionGuardProvider = Provider<DistractionGuard>(
  (ref) => Platform.isAndroid ? ChannelDistractionGuard() : MemoryDistractionGuard(),
);
