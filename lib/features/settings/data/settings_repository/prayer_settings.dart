part of '../settings_repository.dart';

/// Offline prayer times. Off until a city is chosen.
class PrayerSettings {
  const PrayerSettings({
    this.city = '',
    this.method = '',
    this.hanafiAsr = false,
    this.reminders = true,
    this.pauseFocus = true,
  });

  /// Id of the chosen city; empty = prayer times off.
  final String city;

  /// Calculation method name; empty = the one used in the city.
  final String method;
  final bool hanafiAsr;

  /// A notification at each prayer time.
  final bool reminders;

  /// A running focus session pauses at prayer time.
  final bool pauseFocus;

  bool get enabled => city.isNotEmpty;

  Map<String, Object?> toJson() => {
    'city': city,
    'method': method,
    'hanafiAsr': hanafiAsr,
    'reminders': reminders,
    'pauseFocus': pauseFocus,
  };

  factory PrayerSettings.fromJson(Object? raw) {
    if (raw is! Map) return const PrayerSettings();
    T read<T>(String k, T d) => raw[k] is T ? raw[k] as T : d;
    const d = PrayerSettings();
    return PrayerSettings(
      city: read('city', d.city),
      method: read('method', d.method),
      hanafiAsr: read('hanafiAsr', d.hanafiAsr),
      reminders: read('reminders', d.reminders),
      pauseFocus: read('pauseFocus', d.pauseFocus),
    );
  }

  PrayerSettings copyWith({
    String? city,
    String? method,
    bool? hanafiAsr,
    bool? reminders,
    bool? pauseFocus,
  }) => PrayerSettings(
    city: city ?? this.city,
    method: method ?? this.method,
    hanafiAsr: hanafiAsr ?? this.hanafiAsr,
    reminders: reminders ?? this.reminders,
    pauseFocus: pauseFocus ?? this.pauseFocus,
  );
}
