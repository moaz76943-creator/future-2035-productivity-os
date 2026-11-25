import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/guard/domain/guard_config.dart';

void main() {
  // 2024-01-01 is a Monday.
  DateTime at(int day, int h, [int m = 0]) => DateTime(2024, 1, day, h, m);

  test('a running session guards at any hour; without a schedule nothing else does', () {
    const c = GuardConfig(enabled: true);
    expect(c.isGuardTime(at(1, 3), sessionUntil: at(1, 4)), isTrue);
    expect(c.isGuardTime(at(1, 5), sessionUntil: at(1, 4)), isFalse);
    expect(c.isGuardTime(at(1, 10)), isFalse);
  });

  test('day schedule: weekdays 9 to 17, end excluded', () {
    const c = GuardConfig(scheduleOn: true); // Monday to Friday, 9:00 to 17:00
    expect(c.isGuardTime(at(1, 9)), isTrue);
    expect(c.isGuardTime(at(1, 16, 59)), isTrue);
    expect(c.isGuardTime(at(1, 17)), isFalse);
    expect(c.isGuardTime(at(1, 8, 59)), isFalse);
    expect(c.isGuardTime(at(6, 10)), isFalse, reason: 'Saturday is off');
  });

  test('overnight schedule: the early hours belong to the day before', () {
    // Friday only, 22:00 to 06:00.
    const c = GuardConfig(scheduleOn: true, days: 1 << 4, start: 22 * 60, end: 6 * 60);
    expect(c.isGuardTime(at(5, 23)), isTrue, reason: 'Friday night');
    expect(c.isGuardTime(at(6, 5)), isTrue, reason: 'Saturday early morning');
    expect(c.isGuardTime(at(6, 23)), isFalse, reason: 'Saturday night is not chosen');
    expect(c.isGuardTime(at(5, 5)), isFalse, reason: 'Friday early morning follows Thursday');
  });

  test('block list and allowlist', () {
    const block = GuardConfig(apps: {'com.video'});
    expect(block.guards('com.video'), isTrue);
    expect(block.guards('com.maps'), isFalse);
    const allow = GuardConfig(allowlist: true, apps: {'com.maps'});
    expect(allow.guards('com.video'), isTrue);
    expect(allow.guards('com.maps'), isFalse);
  });

  test('JSON round trip and bad values fall back', () {
    const c = GuardConfig(
      enabled: true,
      strict: true,
      allowlist: true,
      apps: {'b', 'a'},
      shorts: true,
      scheduleOn: true,
      days: 0x41,
      start: 60,
      end: 120,
    );
    final back = GuardConfig.fromJson(c.toJson());
    expect(back.toJson(), c.toJson());
    expect(c.toJson()['apps'], ['a', 'b']);
    final bad = GuardConfig.fromJson({'start': 99999, 'end': 'x', 'days': 0xFFFF, 'apps': 3});
    expect(bad.start, 9 * 60);
    expect(bad.end, 17 * 60);
    expect(bad.days, 0x7F);
    expect(bad.apps, isEmpty);
  });
}
