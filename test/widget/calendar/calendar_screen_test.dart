import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/core/database/app_database.dart';
import 'package:future_os/features/calendar/data/events_repository.dart';
import 'package:future_os/features/calendar/presentation/calendar_screen.dart';
import 'package:future_os/features/calendar/presentation/event_editor_screen.dart';
import 'package:future_os/features/calendar/presentation/time_grid.dart';
import 'package:future_os/features/tasks/data/tasks_repository.dart';
import 'package:future_os/l10n/gen/app_localizations.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';
import '../widget_helpers.dart';
import 'calendar_test_helpers.dart';

Future<void> seed(WidgetTester tester, TestEnv env) => db(tester, () async {
  await eventsOf(env).create(
    EventDraft(
      title: 'Design review',
      start: DateTime(2026, 11, 16, 11),
      end: DateTime(2026, 11, 16, 12),
    ),
  );
  await eventsOf(env).create(
    EventDraft(
      title: 'Deep work',
      kind: EventKind.timeBlock,
      start: DateTime(2026, 11, 16, 11, 30),
      end: DateTime(2026, 11, 16, 13),
    ),
  );
  await tasksOf(
    env,
  ).create(TaskDraft(title: 'Send invoice', dueAt: DateTime(2026, 11, 16, 17), dueHasTime: true));
});

AppLocalizations l10nOf(WidgetTester tester) =>
    AppLocalizations.of(tester.element(find.byType(CalendarScreen)));

void main() {
  for (final tag in ['en', 'ar']) {
    testWidgets('month view shows localized title, agenda, tasks and conflicts ($tag)', (
      tester,
    ) async {
      final env = TestEnv();
      await seed(tester, env);
      await pumpScreen(tester, routed(), localeTag: tag, env: env);
      await settle(tester);
      final l10n = l10nOf(tester);
      final ctx = tester.element(find.byType(CalendarScreen));
      expect(Directionality.of(ctx), tag == 'ar' ? TextDirection.rtl : TextDirection.ltr);
      expect(find.text(tag == 'ar' ? 'نوفمبر 2026' : 'November 2026'), findsOneWidget);
      expect(find.text(l10n.calendarMonth), findsOneWidget);
      expect(find.text('Design review'), findsOneWidget);
      expect(find.text('Deep work'), findsOneWidget);
      expect(find.text('Send invoice'), findsOneWidget);
      expect(find.text(l10n.eventConflictsToday), findsOneWidget);
      expect(find.text(l10n.calendarTaskDue), findsOneWidget);

      // Arrows: previous sits on the start side (right in RTL).
      final prev = tester.getCenter(find.byTooltip(l10n.calendarPrevious));
      final next = tester.getCenter(find.byTooltip(l10n.calendarNext));
      expect(tag == 'ar' ? prev.dx > next.dx : prev.dx < next.dx, isTrue);

      await tester.tap(find.byTooltip(l10n.calendarNext));
      await settle(tester);
      expect(find.text(tag == 'ar' ? 'ديسمبر 2026' : 'December 2026'), findsOneWidget);
      expect(find.text(l10n.calendarNoEvents), findsOneWidget);
      await tester.tap(find.text(l10n.calendarToday));
      await settle(tester);
      expect(find.text('Design review'), findsOneWidget);
      await env.dispose();
    });
  }

  testWidgets('selecting another day shows its agenda', (tester) async {
    final env = TestEnv();
    await seed(tester, env);
    await pumpScreen(tester, routed(), env: env);
    await settle(tester);
    final l10n = l10nOf(tester);
    await tester.tap(find.bySemanticsLabel(RegExp(r'^Tuesday, November 17, 2026')));
    await settle(tester);
    expect(find.text('Design review'), findsNothing);
    expect(find.text(l10n.calendarNoEvents), findsOneWidget);
    await env.dispose();
  });

  testWidgets('week view lays out overlapping events side by side', (tester) async {
    final env = TestEnv();
    await seed(tester, env);
    await pumpScreen(tester, routed(), env: env);
    await settle(tester);
    final l10n = l10nOf(tester);
    await tester.tap(find.text(l10n.calendarWeek));
    await settle(tester);
    expect(find.byType(TimeGrid), findsOneWidget);
    expect(find.byType(DayColumn), findsNWidgets(7));
    final a = tester.getRect(find.widgetWithText(EventBlock, 'Design review'));
    final b = tester.getRect(find.widgetWithText(EventBlock, 'Deep work'));
    expect(a.overlaps(b), isFalse);
    expect((a.top - b.top).abs(), closeTo(kHourHeight / 2, 1));
    expect(find.text(l10n.calendarDragHint), findsOneWidget);
    await env.dispose();
  });

  testWidgets('day view: drag an event to reschedule, then undo', (tester) async {
    final env = TestEnv();
    final id = await db(
      tester,
      () => eventsOf(env).create(
        EventDraft(
          title: 'Call',
          start: DateTime(2026, 11, 16, 14),
          end: DateTime(2026, 11, 16, 15),
        ),
      ),
    );
    await pumpScreen(tester, routed(), env: env);
    await settle(tester);
    final l10n = l10nOf(tester);
    await tester.tap(find.text(l10n.calendarDay));
    await settle(tester);
    final block = find.widgetWithText(EventBlock, 'Call');
    await tester.ensureVisible(block);
    await tester.pump();
    final g = await tester.startGesture(tester.getCenter(block));
    await tester.pump(const Duration(milliseconds: 600));
    await g.moveBy(const Offset(0, kHourHeight * 0.5));
    await tester.pump();
    await g.moveBy(const Offset(0, kHourHeight * 0.5 + 4));
    await tester.pump();
    await g.up();
    await settle(tester);
    var row = await db<EventRow?>(tester, () => eventsOf(env).byId(id));
    expect(row!.startAt.toLocal(), DateTime(2026, 11, 16, 15));
    expect(row.endAt.toLocal(), DateTime(2026, 11, 16, 16));
    expect(find.text(l10n.calendarRescheduled), findsOneWidget);
    await tester.tap(find.text(l10n.actionUndo));
    await settle(tester);
    row = await db<EventRow?>(tester, () => eventsOf(env).byId(id));
    expect(row!.startAt.toLocal(), DateTime(2026, 11, 16, 14));
    await env.dispose();
  });

  testWidgets('tapping an empty slot opens a new event at that time', (tester) async {
    final env = TestEnv();
    await pumpScreen(tester, routed(), env: env);
    await settle(tester);
    final l10n = l10nOf(tester);
    await tester.tap(find.text(l10n.calendarDay));
    await settle(tester);
    final rect = tester.getRect(find.byType(DayColumn));
    // 16:10 rounds down to the 16:00 half-hour slot.
    final pos = Offset(rect.center.dx, rect.top + kHourHeight * (16 + 10 / 60));
    expect(pos.dy, inExclusiveRange(0, 915));
    await tester.tapAt(pos);
    await settle(tester);
    await tester.pumpAndSettle();
    final editor = tester.widget<EventEditorScreen>(find.byType(EventEditorScreen));
    expect(editor.start, DateTime(2026, 11, 16, 16));
    await env.dispose();
  });

  testWidgets('large text month view does not overflow (ar)', (tester) async {
    final env = TestEnv();
    await seed(tester, env);
    await pumpScreen(tester, scaled(routed(), 1.6), localeTag: 'ar', env: env);
    await settle(tester);
    expect(tester.takeException(), isNull);
    expect(find.text('Design review'), findsOneWidget);
    await env.dispose();
  });
}
