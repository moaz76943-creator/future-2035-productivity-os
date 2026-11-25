/// The distraction guard's choices. Stored as one JSON value and handed to the
/// Android service (android/.../guard/GuardRules.kt reads the same keys and
/// mirrors [isGuardTime]).
class GuardConfig {
  const GuardConfig({
    this.enabled = false,
    this.strict = false,
    this.allowlist = false,
    this.apps = const {},
    this.shorts = false,
    this.scheduleOn = false,
    this.days = 0x1F,
    this.start = 9 * 60,
    this.end = 17 * 60,
  });

  final bool enabled;

  /// Strict: the app stays closed. Gentle: a breathing pause, then a choice.
  final bool strict;

  /// Allowlist: [apps] are the only ones allowed; otherwise they are the ones paused.
  final bool allowlist;
  final Set<String> apps;

  /// Close YouTube Shorts, Instagram and Facebook Reels and Snapchat Spotlight.
  final bool shorts;

  /// Time Guard: also guard on these days ([days] bit 0 = Monday) from [start]
  /// to [end] minutes after midnight; an end before the start runs overnight.
  final bool scheduleOn;
  final int days;
  final int start;
  final int end;

  bool onDay(int weekday) => days & (1 << (weekday - 1)) != 0;

  /// True while a focus session runs (until [sessionUntil]) or inside the schedule.
  bool isGuardTime(DateTime now, {DateTime? sessionUntil}) {
    if (sessionUntil != null && now.isBefore(sessionUntil)) return true;
    if (!scheduleOn) return false;
    final minute = now.hour * 60 + now.minute;
    if (start <= end) return onDay(now.weekday) && minute >= start && minute < end;
    final yesterday = now.weekday == 1 ? 7 : now.weekday - 1;
    return (onDay(now.weekday) && minute >= start) || (onDay(yesterday) && minute < end);
  }

  /// Whether opening [package] would be paused (system apps are always exempt on the phone).
  bool guards(String package) => allowlist ? !apps.contains(package) : apps.contains(package);

  GuardConfig copyWith({
    bool? enabled,
    bool? strict,
    bool? allowlist,
    Set<String>? apps,
    bool? shorts,
    bool? scheduleOn,
    int? days,
    int? start,
    int? end,
  }) => GuardConfig(
    enabled: enabled ?? this.enabled,
    strict: strict ?? this.strict,
    allowlist: allowlist ?? this.allowlist,
    apps: apps ?? this.apps,
    shorts: shorts ?? this.shorts,
    scheduleOn: scheduleOn ?? this.scheduleOn,
    days: days ?? this.days,
    start: start ?? this.start,
    end: end ?? this.end,
  );

  Map<String, Object> toJson() => {
    'enabled': enabled,
    'strict': strict,
    'allowlist': allowlist,
    'apps': apps.toList()..sort(),
    'shorts': shorts,
    'scheduleOn': scheduleOn,
    'days': days,
    'start': start,
    'end': end,
  };

  static GuardConfig fromJson(Map<String, Object?> j) {
    int minutes(Object? v, int fallback) => v is int && v >= 0 && v < 24 * 60 ? v : fallback;
    return GuardConfig(
      enabled: j['enabled'] == true,
      strict: j['strict'] == true,
      allowlist: j['allowlist'] == true,
      apps: {for (final a in (j['apps'] is List ? j['apps']! as List : const [])) '$a'},
      shorts: j['shorts'] == true,
      scheduleOn: j['scheduleOn'] == true,
      days: j['days'] is int ? (j['days']! as int) & 0x7F : 0x1F,
      start: minutes(j['start'], 9 * 60),
      end: minutes(j['end'], 17 * 60),
    );
  }
}
