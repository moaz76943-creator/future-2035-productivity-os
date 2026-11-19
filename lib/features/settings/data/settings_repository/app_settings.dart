part of '../settings_repository.dart';

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
    this.autoStartFocus = false,
    this.sessionRounds = 0,
    this.skipLastBreak = true,
    this.focusPresets = const [],
    this.flashSpeechRepeat = 1,
    this.flashSpeechRatePercent = 100,
    this.flashAutoSpeak = false,
    this.flashStudyMode = 'classic',
    this.flashSessionSize = 0,
    this.flashOrder = 'due',
    this.flashVoices = const {},
    this.flashSpeechPauseTenths = 7,
    this.flashSpeakExample = false,
    this.focusSound = true,
    this.focusEndTone = 'gentle',
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

  /// Starts the next focus phase automatically when a break ends.
  final bool autoStartFocus;

  /// Number of focus sessions in a series; 0 means no limit.
  final int sessionRounds;

  /// Ends the series right after the last focus session (no final break).
  final bool skipLastBreak;

  /// Saved session plans, newest first.
  final List<FocusPreset> focusPresets;

  /// Flashcard speech: times each text is spoken (1–9), speed in percent
  /// (50–200) and whether the question is read automatically.
  final int flashSpeechRepeat;
  final int flashSpeechRatePercent;
  final bool flashAutoSpeak;

  /// Last chosen study mode (StudyMode name).
  final String flashStudyMode;

  /// Cards per session (0 = all available) and their order (StudyOrder name).
  final int flashSessionSize;
  final String flashOrder;

  /// Preferred speech voice per language code ('es' → voice name).
  final Map<String, String> flashVoices;

  /// Silence between repeated readings, in tenths of a second (0–50).
  final int flashSpeechPauseTenths;

  /// Also read the example sentence after the answer.
  final bool flashSpeakExample;
  final bool focusSound;

  /// Sound at the end of a timer ([EndTone] name).
  final String focusEndTone;
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
    'autoStartFocus': autoStartFocus,
    'sessionRounds': sessionRounds,
    'skipLastBreak': skipLastBreak,
    'focusPresets': [for (final p in focusPresets) p.toJson()],
    'flashSpeechRepeat': flashSpeechRepeat,
    'flashSpeechRatePercent': flashSpeechRatePercent,
    'flashAutoSpeak': flashAutoSpeak,
    'flashStudyMode': flashStudyMode,
    'flashSessionSize': flashSessionSize,
    'flashOrder': flashOrder,
    'flashVoices': flashVoices,
    'flashSpeechPauseTenths': flashSpeechPauseTenths,
    'flashSpeakExample': flashSpeakExample,
    'focusSound': focusSound,
    'focusEndTone': focusEndTone,
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
      shortBreakMinutes: read('shortBreakMinutes', d.shortBreakMinutes).clamp(1, 60),
      longBreakMinutes: read('longBreakMinutes', d.longBreakMinutes).clamp(1, 120),
      longBreakEvery: read('longBreakEvery', d.longBreakEvery).clamp(2, 12),
      autoStartBreaks: read('autoStartBreaks', d.autoStartBreaks),
      autoStartFocus: read('autoStartFocus', d.autoStartFocus),
      sessionRounds: read('sessionRounds', d.sessionRounds).clamp(0, 99),
      skipLastBreak: read('skipLastBreak', d.skipLastBreak),
      focusPresets: [
        for (final p in (j['focusPresets'] as List?) ?? const [])
          if (p is Map) ?FocusPreset.tryParse(p.cast<String, Object?>()),
      ].take(FocusPreset.maxCount).toList(),
      flashSpeechRepeat: read('flashSpeechRepeat', d.flashSpeechRepeat).clamp(1, 9),
      flashSpeechRatePercent: read(
        'flashSpeechRatePercent',
        d.flashSpeechRatePercent,
      ).clamp(50, 200),
      flashAutoSpeak: read('flashAutoSpeak', d.flashAutoSpeak),
      flashStudyMode: read('flashStudyMode', d.flashStudyMode),
      flashSessionSize: read('flashSessionSize', d.flashSessionSize).clamp(0, 500),
      flashOrder: read('flashOrder', d.flashOrder),
      flashVoices: {
        for (final e in ((j['flashVoices'] as Map?) ?? const {}).entries)
          if (e.key is String && e.value is String) e.key as String: e.value as String,
      },
      flashSpeechPauseTenths: read('flashSpeechPauseTenths', d.flashSpeechPauseTenths).clamp(0, 50),
      flashSpeakExample: read('flashSpeakExample', d.flashSpeakExample),
      focusSound: read('focusSound', d.focusSound),
      focusEndTone: read('focusEndTone', d.focusEndTone),
      dailyFocusTargetMinutes: read('dailyFocusTargetMinutes', d.dailyFocusTargetMinutes),
      weeklyFocusTargetMinutes: read('weeklyFocusTargetMinutes', d.weeklyFocusTargetMinutes),
      notificationsEnabled: read('notificationsEnabled', d.notificationsEnabled),
      quietHoursEnabled: read('quietHoursEnabled', d.quietHoursEnabled),
      quietStartMinute: read('quietStartMinute', d.quietStartMinute),
      quietEndMinute: read('quietEndMinute', d.quietEndMinute),
      reviewReminderMinute: read('reviewReminderMinute', d.reviewReminderMinute),
      onboardingDone: read('onboardingDone', d.onboardingDone),
      assistantEnabled: read('assistantEnabled', d.assistantEnabled),
      assistantRemoteConsent: read('assistantRemoteConsent', d.assistantRemoteConsent),
      assistantEndpoint: read('assistantEndpoint', d.assistantEndpoint),
      assistantModel: read('assistantModel', d.assistantModel),
      dashboardSections:
          (j['dashboardSections'] as List?)?.whereType<String>().toList() ?? d.dashboardSections,
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
    bool? autoStartFocus,
    int? sessionRounds,
    bool? skipLastBreak,
    List<FocusPreset>? focusPresets,
    int? flashSpeechRepeat,
    int? flashSpeechRatePercent,
    bool? flashAutoSpeak,
    String? flashStudyMode,
    int? flashSessionSize,
    String? flashOrder,
    Map<String, String>? flashVoices,
    int? flashSpeechPauseTenths,
    bool? flashSpeakExample,
    bool? focusSound,
    String? focusEndTone,
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
    'autoStartFocus': ?autoStartFocus,
    'sessionRounds': ?sessionRounds,
    'skipLastBreak': ?skipLastBreak,
    if (focusPresets != null) 'focusPresets': [for (final p in focusPresets) p.toJson()],
    'flashSpeechRepeat': ?flashSpeechRepeat,
    'flashSpeechRatePercent': ?flashSpeechRatePercent,
    'flashAutoSpeak': ?flashAutoSpeak,
    'flashStudyMode': ?flashStudyMode,
    'flashSessionSize': ?flashSessionSize,
    'flashOrder': ?flashOrder,
    'flashVoices': ?flashVoices,
    'flashSpeechPauseTenths': ?flashSpeechPauseTenths,
    'flashSpeakExample': ?flashSpeakExample,
    'focusSound': ?focusSound,
    'focusEndTone': ?focusEndTone,
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
