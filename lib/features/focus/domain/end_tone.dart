/// The sound that plays when a focus or break timer ends.
///
/// [system] uses the phone's notification sound; the others come from
/// `tool/sounds/render_alarm_sounds.py`: generated beeps and knock, and short
/// excerpts of the app's CC0 nature recordings (bird, stream). All free for
/// commercial use; none of them is music or a bell. Each lives in `res/raw/alarm_<name>.ogg` and gets its own Android
/// notification channel, because a channel's sound cannot change later.
enum EndTone {
  gentle,
  beeps,
  wood,
  bird,
  stream,
  system;

  /// Raw resource name, or null for the phone's own sound.
  String? get resource => this == system ? null : 'alarm_$name';

  static EndTone byName(String? name) => EndTone.values.asNameMap()[name] ?? EndTone.gentle;
}
