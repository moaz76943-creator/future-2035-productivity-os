import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers/core_providers.dart';
import '../../focus/application/focus_controller.dart';
import '../../focus/domain/focus_timer_state.dart';
import '../../settings/application/settings_providers.dart';
import '../../settings/data/settings_repository.dart';
import '../domain/prayer_calc.dart';
import '../domain/prayer_cities.dart';

/// The five prayers (sunrise is shown but is not a prayer time).
const fivePrayers = [Prayer.fajr, Prayer.dhuhr, Prayer.asr, Prayer.maghrib, Prayer.isha];

/// Prayer times for the local day of [day] (UTC moments), or null when off.
Map<Prayer, DateTime>? prayerTimesOn(PrayerSettings s, DateTime day) {
  final city = prayerCityById(s.city);
  if (city == null) return null;
  final local = day.toLocal();
  return PrayerCalc.day(
    date: DateTime(local.year, local.month, local.day),
    lat: city.lat,
    lng: city.lng,
    method: s.method.isEmpty ? city.method : PrayerMethod.byName(s.method),
    asr: s.hanafiAsr ? AsrSchool.hanafi : AsrSchool.standard,
  );
}

/// The five prayers from [now] for [days] days, in order.
List<(Prayer, DateTime)> upcomingPrayers(PrayerSettings s, DateTime now, {int days = 7}) {
  final out = <(Prayer, DateTime)>[];
  final local = now.toLocal();
  for (var i = 0; i < days; i++) {
    final times = prayerTimesOn(s, DateTime(local.year, local.month, local.day + i));
    if (times == null) return const [];
    for (final p in fivePrayers) {
      final t = times[p]!;
      if (t.isAfter(now)) out.add((p, t));
    }
  }
  return out;
}

/// Today's times, refreshed with the settings and the clock.
final todayPrayersProvider = Provider.autoDispose<Map<Prayer, DateTime>?>((ref) {
  final s = ref.watch(settingsProvider.select((s) => s.prayer));
  return prayerTimesOn(s, ref.watch(clockProvider).now());
});

/// Pauses a running focus session at prayer time (while the app is open;
/// the prayer notification covers the rest).
final prayerFocusLinkProvider = Provider<void>((ref) {
  Timer? timer;
  void arm() {
    timer?.cancel();
    final s = ref.read(settingsProvider).prayer;
    if (!s.enabled || !s.pauseFocus) return;
    final now = ref.read(clockProvider).now();
    final next = upcomingPrayers(s, now, days: 2).firstOrNull;
    if (next == null) return;
    timer = Timer(next.$2.difference(now), () {
      final a = ref.read(focusControllerProvider).active;
      if (a != null && a.phase == FocusPhase.work && a.status == FocusStatus.running) {
        unawaited(ref.read(focusControllerProvider.notifier).pause());
      }
      arm();
    });
  }

  ref.listen(settingsProvider.select((s) => s.prayer), (_, _) => arm());
  ref.onDispose(() => timer?.cancel());
  arm();
});
