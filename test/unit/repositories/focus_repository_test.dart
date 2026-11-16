import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/focus/data/focus_repository.dart';
import 'package:future_os/features/focus/domain/focus_engine.dart';
import 'package:future_os/features/focus/domain/focus_timer_state.dart';

import '../../helpers.dart';

void main() {
  test('active state persists and finished session is recorded once', () async {
    final env = TestEnv();
    final repo = FocusRepository(env.db);
    final t0 = DateTime.utc(2026, 11, 16, 8);
    final s = FocusEngine.start(
      sessionId: 'abc',
      mode: FocusMode.pomodoro,
      nowUtc: t0,
      plannedSeconds: 1500,
    );
    await repo.saveActive(s);
    final loaded = await repo.loadActive();
    expect(loaded!.sessionId, 'abc');

    final f = FocusEngine.finish(loaded, t0.add(const Duration(hours: 1)));
    expect(await repo.recordFinished(f), isTrue);
    expect(await repo.recordFinished(f), isFalse);
    expect(await repo.loadActive(), isNull);
    final history = await repo.watchHistory().first;
    expect(history, hasLength(1));
    expect(history.single.activeSeconds, 1500);
    expect(history.single.outcome, 'completed');
    expect(
      await repo
          .watchWorkSeconds(
            t0.subtract(const Duration(days: 1)),
            t0.add(const Duration(days: 1)),
          )
          .first,
      1500,
    );
    await env.dispose();
  });
}
