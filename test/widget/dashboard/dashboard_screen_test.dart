import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/dashboard/application/dashboard_providers.dart';
import 'package:future_os/features/dashboard/presentation/dashboard_screen.dart';
import 'package:future_os/features/spaces/presentation/spaces_screen.dart';
import 'package:future_os/features/tasks/data/tasks_repository.dart';
import 'package:future_os/l10n/gen/app_localizations.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';
import '../widget_helpers.dart';

void main() {
  for (final tag in allLocaleTags) {
    testWidgets('dashboard renders real data without overflow ($tag)', (tester) async {
      final env = TestEnv();
      await tester.runAsync(() async {
        final t = TasksRepository(env.db, env.clock);
        await t.create(TaskDraft(title: 'Ship build', dueAt: DateTime(2026, 11, 16)));
        await t.create(TaskDraft(title: 'Late', dueAt: DateTime(2026, 11, 12)));
      });
      await pumpScreen(tester, const DashboardScreen(), localeTag: tag, env: env);
      await settle(tester);
      final l10n = AppLocalizations.of(tester.element(find.byType(DashboardScreen)));
      expect(find.text(l10n.greetingMorning), findsOneWidget); // fixed clock 10:00
      // The quick focus banner sits above the task list, so scroll to it.
      await tester.scrollUntilVisible(find.text('Ship build'), 300);
      expect(find.text('Ship build'), findsOneWidget);
      await tester.scrollUntilVisible(find.text(l10n.insightOverdue(1)), 300);
      expect(find.text(l10n.insightOverdue(1)), findsOneWidget);
      expect(tester.takeException(), isNull);
      await env.dispose();
    });
  }

  testWidgets('customize sheet hides a section and persists it', (tester) async {
    final env = TestEnv();
    await pumpScreen(tester, const DashboardScreen(), env: env);
    await settle(tester);
    final l10n = AppLocalizations.of(tester.element(find.byType(DashboardScreen)));
    expect(find.text(l10n.dashFocusToday), findsOneWidget);
    await tester.tap(find.byTooltip(l10n.actionCustomize));
    await settle(tester);
    await tester.tap(find.widgetWithText(SwitchListTile, l10n.dashSectionFocus));
    await settle(tester);
    await tester.tapAt(const Offset(10, 10));
    await settle(tester);
    expect(find.text(l10n.dashFocusToday), findsNothing);
    await env.dispose();
  });

  testWidgets('spaces hub renders in Arabic RTL', (tester) async {
    final env = TestEnv();
    await pumpScreen(tester, const SpacesScreen(), localeTag: 'ar', env: env);
    await settle(tester);
    final l10n = AppLocalizations.of(tester.element(find.byType(SpacesScreen)));
    expect(find.text(l10n.moduleProjects), findsOneWidget);
    expect(find.text(l10n.moduleTrash), findsOneWidget);
    expect(Directionality.of(tester.element(find.byType(SpacesScreen))), TextDirection.rtl);
    await env.dispose();
  });

  group('pickInsight', () {
    final evening = DateTime(2026, 11, 16, 19);
    test('overdue wins', () {
      expect(
        pickInsight(
          overdue: 2,
          habits: const [],
          cardsDue: 5,
          focusSeconds: 0,
          focusTargetMinutes: 60,
          now: evening,
        ),
        isA<InsightOverdue>(),
      );
    });
    test('cards due before focus gap', () {
      expect(
        pickInsight(
          overdue: 0,
          habits: const [],
          cardsDue: 1,
          focusSeconds: 0,
          focusTargetMinutes: 60,
          now: evening,
        ),
        isA<InsightCardsDue>(),
      );
    });
    test('focus gap minutes are measured', () {
      final i = pickInsight(
        overdue: 0,
        habits: const [],
        cardsDue: 0,
        focusSeconds: 1800,
        focusTargetMinutes: 60,
        now: evening,
      );
      expect((i as InsightFocusGap).minutes, 30);
    });
    test('all clear when target met', () {
      expect(
        pickInsight(
          overdue: 0,
          habits: const [],
          cardsDue: 0,
          focusSeconds: 3600,
          focusTargetMinutes: 60,
          now: evening,
        ),
        isA<InsightAllClear>(),
      );
    });
  });
}
