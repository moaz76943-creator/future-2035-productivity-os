import 'dart:convert';

import '../../../core/database/app_database.dart';

enum ThemePreference { light, dark, system }

/// Typed application settings persisted in the encrypted key/value table.
class AppSettings {
  const AppSettings({
    this.localeTag,
    this.theme = ThemePreference.light,
    this.reduceMotion = false,
    this.workMinutes = 25,
    this.shortBreakMinutes = 5,
    this.longBreakMinutes = 15,
    this.longBreakEvery = 4,
    this.autoStartBreaks = false,
    this.focusSound = true,
    this.dailyFocusTargetMinutes = 120,
    this.weeklyFocusTargetMinutes = 600,
    this.notificationsEnabled = true,
    this.quietHoursEnabled = false,
    this.quietStartMinute = 22 * 60,
    this.quietEndMinute = 7 * 60,
    this.reviewReminderMinute = 19 * 60,
    this.onboardingDone = false,
    this.assistantEnabled = false,
    this.assistantRemoteConsent = false,
    this.assistantEndpoint = '',
    this.assistantModel = '',
    this.dashboardSections = defaultDashboardSections,
  });

  /// Null means "follow the device language if supported".
  final String? localeTag;
  final ThemePreference theme;
  final bool reduceMotion;
  final int workMinutes;
  final int shortBreakMinutes;
  final int longBreakMinutes;
  final int longBreakEvery;
  final bool autoStartBreaks;
  final bool focusSound;
  final int dailyFocusTargetMinutes;
  final int weeklyFocusTargetMinutes;
  final bool notificationsEnabled;
  final bool quietHoursEnabled;
  final int quietStartMinute;
  final int quietEndMinute;
  final int reviewReminderMinute;
  final bool onboardingDone;
  final bool assistantEnabled;
  final bool assistantRemoteConsent;
  final String assistantEndpoint;
  final String assistantModel;
  final List<String> dashboardSections;

  static const defaultDashboardSections = [
    'focus',
    'today',
    'agenda',
    'habits',
    'goals',
    'review',
    'notes',
    'insight',
  ];

  bool inQuietHours(DateTime local) {
    if (!quietHoursEnabled) return false;
    final m = local.hour * 60 + local.minute;
    return quietStartMinute <= quietEndMinute
        ? m >= quietStartMinute && m < quietEndMinute
        : m >= quietStartMinute || m < quietEndMinute;
  }

  Map<String, Object?> toJson() => {
    'localeTag': localeTag,
    'theme': theme.name,
    'reduceMotion': reduceMotion,
    'workMinutes': workMinutes,
    'shortBreakMinutes': shortBreakMinutes,
    'longBreakMinutes': longBreakMinutes,
    'longBreakEvery': longBreakEvery,
    'autoStartBreaks': autoStartBreaks,
    'focusSound': focusSound,
    'dailyFocusTargetMinutes': dailyFocusTargetMinutes,
    'weeklyFocusTargetMinutes': weeklyFocusTargetMinutes,
    'notificationsEnabled': notificationsEnabled,
    'quietHoursEnabled': quietHoursEnabled,
    'quietStartMinute': quietStartMinute,
    'quietEndMinute': quietEndMinute,
    'reviewReminderMinute': reviewReminderMinute,
    'onboardingDone': onboardingDone,
    'assistantEnabled': assistantEnabled,
    'assistantRemoteConsent': assistantRemoteConsent,
    'assistantEndpoint': assistantEndpoint,
    'assistantModel': assistantModel,
    'dashboardSections': dashboardSections,
  };

  factory AppSettings.fromJson(Map<String, Object?> j) {
    const d = AppSettings();
    T read<T>(String k, T fallback) {
      final v = j[k];
      return v is T ? v : fallback;
    }

    return AppSettings(
      localeTag: j['localeTag'] as String?,
      theme: ThemePreference.values.asNameMap()[j['theme']] ?? d.theme,
      reduceMotion: read('reduceMotion', d.reduceMotion),
      workMinutes: read('workMinutes', d.workMinutes).clamp(1, 240),
      shortBreakMinutes: read(
        'shortBreakMinutes',
        d.shortBreakMinutes,
      ).clamp(1, 60),
      longBreakMinutes: read(
        'longBreakMinutes',
        d.longBreakMinutes,
      ).clamp(1, 120),
      longBreakEvery: read('longBreakEvery', d.longBreakEvery).clamp(2, 12),
      autoStartBreaks: read('autoStartBreaks', d.autoStartBreaks),
      focusSound: read('focusSound', d.focusSound),
      dailyFocusTargetMinutes: read(
        'dailyFocusTargetMinutes',
        d.dailyFocusTargetMinutes,
      ),
      weeklyFocusTargetMinutes: read(
        'weeklyFocusTargetMinutes',
        d.weeklyFocusTargetMinutes,
      ),
      notificationsEnabled: read(
        'notificationsEnabled',
        d.notificationsEnabled,
      ),
      quietHoursEnabled: read('quietHoursEnabled', d.quietHoursEnabled),
      quietStartMinute: read('quietStartMinute', d.quietStartMinute),
      quietEndMinute: read('quietEndMinute', d.quietEndMinute),
      reviewReminderMinute: read(
        'reviewReminderMinute',
        d.reviewReminderMinute,
      ),
      onboardingDone: read('onboardingDone', d.onboardingDone),
      assistantEnabled: read('assistantEnabled', d.assistantEnabled),
      assistantRemoteConsent: read(
        'assistantRemoteConsent',
        d.assistantRemoteConsent,
      ),
      assistantEndpoint: read('assistantEndpoint', d.assistantEndpoint),
      assistantModel: read('assistantModel', d.assistantModel),
      dashboardSections:
          (j['dashboardSections'] as List?)?.whereType<String>().toList() ??
          d.dashboardSections,
    );
  }

  AppSettings copyWith({
    String? localeTag,
    bool clearLocale = false,
    ThemePreference? theme,
    bool? reduceMotion,
    int? workMinutes,
    int? shortBreakMinutes,
    int? longBreakMinutes,
    int? longBreakEvery,
    bool? autoStartBreaks,
    bool? focusSound,
    int? dailyFocusTargetMinutes,
    int? weeklyFocusTargetMinutes,
    bool? notificationsEnabled,
    bool? quietHoursEnabled,
    int? quietStartMinute,
    int? quietEndMinute,
    int? reviewReminderMinute,
    bool? onboardingDone,
    bool? assistantEnabled,
    bool? assistantRemoteConsent,
    String? assistantEndpoint,
    String? assistantModel,
    List<String>? dashboardSections,
  }) => AppSettings.fromJson({
    ...toJson(),
    if (clearLocale) 'localeTag': null else 'localeTag': ?localeTag,
    if (theme != null) 'theme': theme.name,
    'reduceMotion': ?reduceMotion,
    'workMinutes': ?workMinutes,
    'shortBreakMinutes': ?shortBreakMinutes,
    'longBreakMinutes': ?longBreakMinutes,
    'longBreakEvery': ?longBreakEvery,
    'autoStartBreaks': ?autoStartBreaks,
    'focusSound': ?focusSound,
    'dailyFocusTargetMinutes': ?dailyFocusTargetMinutes,
    'weeklyFocusTargetMinutes': ?weeklyFocusTargetMinutes,
    'notificationsEnabled': ?notificationsEnabled,
    'quietHoursEnabled': ?quietHoursEnabled,
    'quietStartMinute': ?quietStartMinute,
    'quietEndMinute': ?quietEndMinute,
    'reviewReminderMinute': ?reviewReminderMinute,
    'onboardingDone': ?onboardingDone,
    'assistantEnabled': ?assistantEnabled,
    'assistantRemoteConsent': ?assistantRemoteConsent,
    'assistantEndpoint': ?assistantEndpoint,
    'assistantModel': ?assistantModel,
    'dashboardSections': ?dashboardSections,
  });
}

class SettingsRepository {
  SettingsRepository(this._db);
  final AppDatabase _db;
  static const key = 'app.settings';

  Future<AppSettings> load() async => _decode(await _db.readValue(key));

  Stream<AppSettings> watch() => _db.watchValue(key).map(_decode);

  Future<void> save(AppSettings s) =>
      _db.writeValue(key, jsonEncode(s.toJson()));

  AppSettings _decode(String? raw) {
    if (raw == null) return const AppSettings();
    try {
      return AppSettings.fromJson(jsonDecode(raw) as Map<String, Object?>);
    } on Object {
      return const AppSettings();
    }
  }
}
