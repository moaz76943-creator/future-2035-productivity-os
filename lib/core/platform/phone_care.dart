import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// What the phone says about itself (see PhoneCare.kt).
class PhoneInfo {
  const PhoneInfo({this.manufacturer = '', this.unrestricted = true, this.freeBytes = -1});
  final String manufacturer;

  /// True when battery saving does not limit the app.
  final bool unrestricted;

  /// Free space in bytes, -1 when unknown.
  final int freeBytes;
}

abstract class PhoneCare {
  Future<PhoneInfo> info();
  Future<bool> openBattery();
  Future<bool> openAppInfo();

  /// Each language code's name written in [inTag] (empty map when unknown).
  Future<Map<String, String>> languageNames(List<String> codes, String inTag);
}

class ChannelPhoneCare implements PhoneCare {
  static const _c = MethodChannel('future_os/care');

  @override
  Future<PhoneInfo> info() async {
    try {
      final m = await _c.invokeMapMethod<String, Object?>('info');
      if (m == null) return const PhoneInfo();
      return PhoneInfo(
        manufacturer: (m['manufacturer'] as String?) ?? '',
        unrestricted: m['unrestricted'] != false,
        freeBytes: (m['freeBytes'] as num?)?.toInt() ?? -1,
      );
    } on Object {
      return const PhoneInfo();
    }
  }

  @override
  Future<bool> openBattery() => _open('openBattery');
  @override
  Future<bool> openAppInfo() => _open('openAppInfo');

  @override
  Future<Map<String, String>> languageNames(List<String> codes, String inTag) async {
    try {
      final m = await _c.invokeMapMethod<String, String>('languageNames', {
        'codes': codes,
        'in': inTag,
      });
      return m ?? const {};
    } on Object {
      return const {};
    }
  }

  Future<bool> _open(String method) async {
    try {
      return await _c.invokeMethod<bool>(method) ?? false;
    } on Object {
      return false;
    }
  }
}

/// Tests and desktop.
class MemoryPhoneCare implements PhoneCare {
  MemoryPhoneCare({this.phone = const PhoneInfo()});
  PhoneInfo phone;
  final opened = <String>[];

  @override
  Future<PhoneInfo> info() async => phone;
  @override
  Future<bool> openBattery() async {
    opened.add('battery');
    return true;
  }

  @override
  Future<bool> openAppInfo() async {
    opened.add('app');
    return true;
  }

  /// Names a test wants the phone to report.
  Map<String, String> names = const {};
  @override
  Future<Map<String, String>> languageNames(List<String> codes, String inTag) async => names;
}

final phoneCareProvider = Provider<PhoneCare>(
  (ref) => Platform.isAndroid ? ChannelPhoneCare() : MemoryPhoneCare(),
);
