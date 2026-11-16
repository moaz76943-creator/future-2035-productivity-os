import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/goals/application/goals_providers.dart';
import 'package:future_os/features/goals/data/goals_repository.dart';

import '../../helpers.dart';

void main() {
  test('parseGoalAmount accepts localized digits and separators', () {
    expect(parseGoalAmount('12'), 12);
    expect(parseGoalAmount(' 2.5 '), 2.5);
    expect(parseGoalAmount('2,5'), 2.5);
    expect(parseGoalAmount('١٢٫٥'), 12.5);
    expect(parseGoalAmount('३'), 3);
    expect(parseGoalAmount('abc'), isNull);
    expect(parseGoalAmount(''), isNull);
    expect(parseGoalAmount('Infinity'), isNull);
  });

  test('goalAmountDecimals', () {
    expect(goalAmountDecimals(3), 0);
    expect(goalAmountDecimals(2.5), 1);
    expect(goalAmountDecimals(1.25), 2);
  });

  test('restoreEntry brings a deleted entry back unchanged', () async {
    final env = TestEnv();
    addTearDown(env.dispose);
    final r = GoalsRepository(env.db, env.clock);
    final id = await r.create(title: 'Read', period: GoalPeriod.weekly, target: 10);
    await r.addEntry(id, 4, note: 'chapter');
    final entry = (await r.watchEntries(id).first).single;
    await r.deleteEntry(entry.id);
    expect(await r.watchEntries(id).first, isEmpty);
    await r.restoreEntry(entry);
    expect((await r.watchEntries(id).first).single, entry);
    final g = (await r.watchGoal(id).first)!;
    expect((await r.watchProgress(g).first).current, 4);
  });
}
