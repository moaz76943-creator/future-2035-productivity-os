import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/calendar/application/calendar_providers.dart';
import 'package:future_os/features/calendar/data/events_repository.dart';

import '../../helpers.dart';

void main() {
  late TestEnv env;
  setUp(() => env = TestEnv());
  tearDown(() => env.dispose());

  test('draft conflicts ignore all-day events and the edited event', () async {
    final r = EventsRepository(env.db, env.clock);
    final a = await r.create(
      EventDraft(title: 'A', start: DateTime(2026, 11, 16, 9), end: DateTime(2026, 11, 16, 10)),
    );
    await r.create(
      EventDraft(
        title: 'All day',
        start: DateTime(2026, 11, 16),
        end: DateTime(2026, 11, 17),
        allDay: true,
      ),
    );
    await r.create(
      EventDraft(title: 'B', start: DateTime(2026, 11, 16, 9, 30), end: DateTime(2026, 11, 16, 11)),
    );
    final occ = await r.watchOccurrences(DateTime(2026, 11, 16), DateTime(2026, 11, 17)).first;
    expect(
      draftConflictCount(occ, DateTime(2026, 11, 16, 9, 45), DateTime(2026, 11, 16, 10, 15)),
      2,
    );
    expect(
      draftConflictCount(
        occ,
        DateTime(2026, 11, 16, 9, 45),
        DateTime(2026, 11, 16, 10, 15),
        excludeId: a,
      ),
      1,
    );
    expect(draftConflictCount(occ, DateTime(2026, 11, 16, 11), DateTime(2026, 11, 16, 12)), 0);
    final flagged = conflictingOccurrences(occ);
    expect(flagged.map((o) => o.event.title).toSet(), {'A', 'B'});
  });

  test('shifting a recurring event moves the whole series', () async {
    final r = EventsRepository(env.db, env.clock);
    final id = await r.create(
      EventDraft(
        title: 'Standup',
        start: DateTime(2026, 11, 16, 9),
        end: DateTime(2026, 11, 16, 9, 15),
        recurrence: 'FREQ=DAILY',
      ),
    );
    await r.shift(id, const Duration(minutes: 30));
    final occ = await r.watchOccurrences(DateTime(2026, 11, 16), DateTime(2026, 11, 19)).first;
    expect(occ.map((o) => (o.start.hour, o.start.minute)).toSet(), {(9, 30)});
    expect(occ, hasLength(3));
  });
}
