import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/prayer/application/prayer_providers.dart';
import 'package:future_os/features/prayer/domain/prayer_calc.dart';
import 'package:future_os/features/prayer/domain/prayer_cities.dart';
import 'package:future_os/features/settings/data/settings_repository.dart';

void main() {
  String hm(DateTime utc, int offset) {
    final t = utc.add(Duration(hours: offset));
    return '${t.hour}:${t.minute.toString().padLeft(2, '0')}';
  }

  test('matches published tables within a couple of minutes', () {
    // Makkah, 19 Nov 2026 (Umm al-Qura): 5:13 6:32 12:08 15:16 17:39 19:09.
    final m = PrayerCalc.day(
      date: DateTime(2026, 11, 19),
      lat: 21.42,
      lng: 39.83,
      method: PrayerMethod.ummAlQura,
    );
    int minutes(String s) => int.parse(s.split(':')[0]) * 60 + int.parse(s.split(':')[1]);
    void near(Prayer p, String expected) => expect(
      (minutes(hm(m[p]!, 3)) - minutes(expected)).abs(),
      lessThanOrEqualTo(2),
      reason: p.name,
    );
    near(Prayer.fajr, '5:13');
    near(Prayer.sunrise, '6:32');
    near(Prayer.dhuhr, '12:08');
    near(Prayer.asr, '15:16');
    near(Prayer.maghrib, '17:39');
    near(Prayer.isha, '19:09');
  });

  test('every city, every season: the six times are in order', () {
    for (final c in prayerCities) {
      for (final month in [1, 4, 6, 9, 12]) {
        final t = PrayerCalc.day(
          date: DateTime(2026, month, 15),
          lat: c.lat,
          lng: c.lng,
          method: c.method,
        );
        final list = [for (final p in Prayer.values) t[p]!];
        for (var i = 1; i < list.length; i++) {
          expect(
            list[i].isAfter(list[i - 1]),
            isTrue,
            reason: '${c.en} $month ${Prayer.values[i]}',
          );
        }
      }
    }
  });

  test('upcoming prayers skip the past and need a city', () {
    expect(upcomingPrayers(const PrayerSettings(), DateTime.utc(2026, 11, 19)), isEmpty);
    const s = PrayerSettings(city: 'Amman');
    final list = upcomingPrayers(s, DateTime.utc(2026, 11, 19, 10), days: 1); // 13:00 in Amman
    expect(list.map((e) => e.$1), [Prayer.asr, Prayer.maghrib, Prayer.isha]);
    expect(PrayerSettings.fromJson(s.toJson()).city, 'Amman');
  });
}
