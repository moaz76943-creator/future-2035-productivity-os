import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/flashcards/domain/exam_plan.dart';

void main() {
  group('ExamPlan.of', () {
    final today = DateTime(2024);

    test('exam today returns plan with daysLeft=0', () {
      final plan = ExamPlan.of(exam: today, today: today, newCards: 10);
      expect(plan, isNotNull);
      expect(plan!.daysLeft, 0);
      expect(plan.newPerDay, 10);
    });

    test('exam tomorrow returns daysLeft=1', () {
      final exam = today.add(const Duration(days: 1));
      final plan = ExamPlan.of(exam: exam, today: today, newCards: 5);
      expect(plan!.daysLeft, 1);
      expect(plan.newPerDay, 5);
    });

    test('exam in 2 days returns daysLeft=2, learningDays=1', () {
      final exam = today.add(const Duration(days: 2));
      final plan = ExamPlan.of(exam: exam, today: today, newCards: 7);
      expect(plan!.daysLeft, 2);
      expect(plan.newPerDay, 7);
    });

    test('exam in 3 days returns daysLeft=3, learningDays=2', () {
      final exam = today.add(const Duration(days: 3));
      final plan = ExamPlan.of(exam: exam, today: today, newCards: 7);
      expect(plan!.daysLeft, 3);
      expect(plan.newPerDay, 4); // ceil(7/2)
    });

    test('exam in past returns null', () {
      final exam = today.subtract(const Duration(days: 1));
      final plan = ExamPlan.of(exam: exam, today: today, newCards: 10);
      expect(plan, isNull);
    });

    test('newCards zero yields newPerDay zero', () {
      final exam = today.add(const Duration(days: 5));
      final plan = ExamPlan.of(exam: exam, today: today, newCards: 0);
      expect(plan!.newPerDay, 0);
    });

    test('negative newCards yields newPerDay zero', () {
      final exam = today.add(const Duration(days: 5));
      final plan = ExamPlan.of(exam: exam, today: today, newCards: -3);
      expect(plan!.newPerDay, 0);
    });

    test('handles DST-like 23-hour day', () {
      final todayDst = DateTime(2024, 3, 10, 23); // 23:00
      final examDst = DateTime(2024, 3, 11, 22); // next day 22:00 -> 23h diff
      final plan = ExamPlan.of(exam: examDst, today: todayDst, newCards: 6);
      expect(plan!.daysLeft, 1);
      expect(plan.newPerDay, 6);
    });

    test('handles DST-like 25-hour day', () {
      final todayDst = DateTime(2024, 11, 3, 1); // 01:00
      final examDst = DateTime(2024, 11, 4, 2); // next day 02:00 -> 25h diff
      final plan = ExamPlan.of(exam: examDst, today: todayDst, newCards: 6);
      expect(plan!.daysLeft, 1);
      expect(plan.newPerDay, 6);
    });
  });

  group('ExamPlan.key', () {
    test('returns expected format', () {
      expect(ExamPlan.key('deck123'), 'deck.exam.deck123');
    });
  });

  group('ExamPlan.encode', () {
    test('formats date as yyyy-mm-dd', () {
      expect(ExamPlan.encode(DateTime(2024, 1, 9)), '2024-01-09');
      expect(ExamPlan.encode(DateTime(2024, 12, 31)), '2024-12-31');
    });
  });

  group('ExamPlan.decode', () {
    test('parses valid string', () {
      expect(ExamPlan.decode('2024-01-09'), DateTime(2024, 1, 9));
      expect(ExamPlan.decode('2024-12-31'), DateTime(2024, 12, 31));
    });

    test('returns null for invalid format', () {
      expect(ExamPlan.decode('2024/01/09'), isNull);
      expect(ExamPlan.decode('09-01-2024'), isNull);
      expect(ExamPlan.decode(''), isNull);
      expect(ExamPlan.decode(null), isNull);
    });
  });
}
