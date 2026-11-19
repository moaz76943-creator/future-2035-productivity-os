import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/flashcards/domain/study_habit.dart';

void main() {
  DateTime at(int h) => DateTime(2026, 11, 10, h, 15);

  test('the busiest hour is suggested once there is enough to say', () {
    final times = [for (var i = 0; i < 12; i++) at(21), for (var i = 0; i < 5; i++) at(8)];
    expect(usualStudyMinute(times), 21 * 60);
  });

  test('too few reviews, or no clear hour, gives no suggestion', () {
    expect(usualStudyMinute([for (var i = 0; i < 10; i++) at(21)]), isNull);
    final spread = [
      for (var h = 0; h < 24; h++) ...List.filled(1, at(h)),
      for (var h = 0; h < 24; h++) at(h),
    ];
    expect(usualStudyMinute(spread), isNull, reason: 'every hour has the same share');
  });
}
