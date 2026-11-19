import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/flashcards/domain/exam_plan.dart';

void main() {
  final today = DateTime(2026, 11, 19, 21, 30);

  test('new cards are spread so everything is seen a day before the exam', () {
    final p = ExamPlan.of(exam: DateTime(2026, 11, 30), today: today, newCards: 100)!;
    expect((p.daysLeft, p.newPerDay), (11, 10)); // 10 learning days
    expect(ExamPlan.of(exam: DateTime(2026, 11, 20), today: today, newCards: 7)!.newPerDay, 7);
    expect(ExamPlan.of(exam: DateTime(2026, 11, 19), today: today, newCards: 7)!.daysLeft, 0);
    expect(ExamPlan.of(exam: DateTime(2026, 12), today: today, newCards: 0)!.newPerDay, 0);
    expect(ExamPlan.of(exam: DateTime(2026, 11, 18), today: today, newCards: 5), isNull);
  });

  test('across a clock change and stored as a plain date', () {
    final p = ExamPlan.of(exam: DateTime(2026, 4, 3), today: DateTime(2026, 3, 27), newCards: 12)!;
    expect(p.daysLeft, 7);
    expect(ExamPlan.decode(ExamPlan.encode(DateTime(2027, 1, 5))), DateTime(2027, 1, 5));
    expect(ExamPlan.decode('x'), isNull);
  });
}
