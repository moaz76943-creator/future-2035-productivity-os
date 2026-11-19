/// The sound that plays when a focus or break timer ends.
///
/// [system] uses the phone's notification sound; the others are short sounds
/// made by the app's own generator (`tool/sounds/render_alarm_sounds.py`):
/// original work, free for commercial use, and none of them is music or a
/// bell. Each lives in `res/raw/alarm_<name>.ogg` and gets its own Android
/// notification channel, because a channel's sound cannot change later.
enum EndTone {
  gentle,
  beeps,
  drops,
  wood,
  bird,
  stream,
  system;

  /// Raw resource name, or null for the phone's own sound.
  String? get resource => this == system ? null : 'alarm_$name';

  static EndTone byName(String? name) => EndTone.values.asNameMap()[name] ?? EndTone.gentle;
}
