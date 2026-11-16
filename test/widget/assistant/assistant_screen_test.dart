import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/assistant/application/assistant_providers.dart';
import 'package:future_os/features/assistant/presentation/assistant_screen.dart';
import 'package:future_os/features/notes/data/notes_repository.dart';
import 'package:future_os/features/settings/data/settings_repository.dart';
import 'package:future_os/features/tasks/data/tasks_repository.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';
import '../widget_helpers.dart';

const _enabled = AppSettings(onboardingDone: true, assistantEnabled: true);

void main() {
  final requests = <http.Request>[];
  final noNetwork = assistantHttpClientProvider.overrideWithValue(
    MockClient((r) async {
      requests.add(r);
      return http.Response('{}', 500);
    }),
  );

  for (final tag in ['en', 'ar']) {
    testWidgets('disabled assistant offers enabling ($tag)', (tester) async {
      final env = await pumpScreen(
        tester,
        const AssistantScreen(),
        localeTag: tag,
        overrides: [noNetwork],
      );
      await settle(tester);
      expect(find.byKey(const ValueKey('assistant-enable')), findsOneWidget);
      if (tag == 'en') expect(find.text('Assistant is off'), findsOneWidget);
      await tester.tap(find.byKey(const ValueKey('assistant-enable')));
      await settle(tester);
      expect(find.byKey(const ValueKey('assistant-enable')), findsNothing);
      if (tag == 'en') {
        expect(find.text('Plan my day'), findsOneWidget);
        expect(find.text('No provider connected. On-device tools still work.'), findsWidgets);
      }
      expect(tester.takeException(), isNull);
      await env.dispose();
    });
  }

  testWidgets('plan my day fits estimated tasks and schedules time blocks', (tester) async {
    final env = TestEnv();
    final tasks = TasksRepository(env.db, env.clock);
    await tasks.create(
      TaskDraft(title: 'Write report', dueAt: DateTime(2026, 11, 16), estimateMinutes: 60),
    );
    await tasks.create(TaskDraft(title: 'Call Sam', dueAt: DateTime(2026, 11, 16)));
    await pumpScreen(
      tester,
      const AssistantScreen(),
      env: env,
      settings: _enabled,
      overrides: [noNetwork],
    );
    await settle(tester);
    await tester.tap(find.text('Plan my day'));
    await settle(tester);
    // 10:00 → 22:00 = 12 h free.
    expect(find.text('Free focus time today: 12 h'), findsOneWidget);
    expect(find.text('Write report'), findsOneWidget);
    expect(find.text('Call Sam'), findsOneWidget);
    expect(find.text('Add an estimate to plan these'), findsOneWidget);

    await tester.tap(find.text('Schedule as time blocks'));
    await settle(tester);
    await tester.tap(find.widgetWithText(FilledButton, 'Create'));
    await settle(tester);
    final events = await env.db.select(env.db.events).get();
    expect(events, hasLength(1));
    expect(events.single.kind, 'timeBlock');
    expect(events.single.endAt.difference(events.single.startAt).inMinutes, 60);
    expect(find.text('Already on your calendar'), findsOneWidget);
    expect(requests, isEmpty);
    await env.dispose();
  });

  testWidgets('extract tasks from a note creates linked tasks', (tester) async {
    final env = TestEnv();
    final noteId = await NotesRepository(
      env.db,
      env.clock,
    ).create(title: 'Meeting', body: '- [ ] Send agenda\nTODO: Book room\nnot a task');
    await pumpScreen(
      tester,
      const AssistantScreen(),
      env: env,
      settings: _enabled,
      overrides: [noNetwork],
    );
    await settle(tester);
    await tester.tap(find.text('Extract tasks from a note'));
    await settle(tester);
    await tester.tap(find.text('Meeting'));
    await settle(tester);
    expect(find.text('2 tasks found'), findsOneWidget);
    await tester.tap(find.text('Book room'));
    await tester.pump();
    await tester.tap(find.text('Create 1'));
    await settle(tester);
    final created = await env.db.select(env.db.tasks).get();
    expect(created.map((t) => t.title), ['Send agenda']);
    final links = await env.db.select(env.db.noteTaskLinks).get();
    expect(links.single.noteId, noteId);
    await env.dispose();
  });

  testWidgets('summarize without provider opens provider setup, never the network', (
    tester,
  ) async {
    final env = await pumpScreen(
      tester,
      const AssistantScreen(),
      settings: _enabled,
      overrides: [noNetwork],
    );
    await settle(tester);
    await tester.tap(find.text('Summarize a note'));
    await settle(tester);
    expect(find.text('API endpoint (HTTPS)'), findsOneWidget);
    await tester.enterText(
      find.byKey(const ValueKey('assistant-endpoint')),
      'http://insecure.example.com',
    );
    await tester.tap(find.widgetWithText(FilledButton, 'Save'));
    await settle(tester);
    expect(find.text('Only HTTPS endpoints are allowed'), findsOneWidget);
    expect(find.text('Enter an API key'), findsOneWidget);
    expect(requests, isEmpty);
    await env.dispose();
  });
}
