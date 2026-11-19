part of '../settings_repository.dart';

/// A named, saved focus plan (lengths in minutes).
class FocusPreset {
  const FocusPreset({
    required this.name,
    required this.workMinutes,
    required this.shortBreakMinutes,
    required this.longBreakMinutes,
    required this.longBreakEvery,
    required this.rounds,
  });

  static const maxCount = 12;
  static const maxName = 40;

  final String name;
  final int workMinutes;
  final int shortBreakMinutes;
  final int longBreakMinutes;
  final int longBreakEvery;
  final int rounds;

  Map<String, Object?> toJson() => {
    'name': name,
    'work': workMinutes,
    'short': shortBreakMinutes,
    'long': longBreakMinutes,
    'every': longBreakEvery,
    'rounds': rounds,
  };

  static FocusPreset? tryParse(Map<String, Object?> j) {
    final name = j['name'];
    int? n(String k, int lo, int hi) => switch (j[k]) {
      final int v when v >= lo && v <= hi => v,
      _ => null,
    };
    final work = n('work', 1, 240), short = n('short', 1, 60), long = n('long', 1, 120);
    final every = n('every', 2, 12), rounds = n('rounds', 0, 99);
    if (name is! String || name.trim().isEmpty || name.length > maxName) return null;
    if (work == null || short == null || long == null || every == null || rounds == null) {
      return null;
    }
    return FocusPreset(
      name: name.trim(),
      workMinutes: work,
      shortBreakMinutes: short,
      longBreakMinutes: long,
      longBreakEvery: every,
      rounds: rounds,
    );
  }

  /// True when [s] currently uses exactly this plan.
  bool matches(AppSettings s) =>
      s.workMinutes == workMinutes &&
      s.shortBreakMinutes == shortBreakMinutes &&
      s.longBreakMinutes == longBreakMinutes &&
      s.longBreakEvery == longBreakEvery &&
      s.sessionRounds == rounds;
}
