import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/app/routing/routes.dart';
import 'package:future_os/features/calendar/data/events_repository.dart';
import 'package:future_os/features/calendar/presentation/calendar_screen.dart';
import 'package:future_os/features/calendar/presentation/event_editor_screen.dart';
import 'package:future_os/features/tasks/data/tasks_repository.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';

EventsRepository eventsOf(TestEnv env) => EventsRepository(env.db, env.clock);
TasksRepository tasksOf(TestEnv env) => TasksRepository(env.db, env.clock);

Future<T> db<T>(WidgetTester tester, Future<T> Function() fn) async =>
    (await tester.runAsync(fn)) as T;

DateTime? _parse(String? s) => s == null ? null : DateTime.tryParse(s);

/// Calendar and editor inside a real GoRouter so navigation works.
Widget routed({String initial = Routes.calendar}) => Router.withConfig(
  config: GoRouter(
    initialLocation: initial,
    routes: [
      GoRoute(path: Routes.calendar, builder: (_, _) => const CalendarScreen()),
      GoRoute(
        path: Routes.eventNew,
        builder: (_, s) => EventEditorScreen(
          start: _parse(s.uri.queryParameters['start']),
          taskId: s.uri.queryParameters['task'],
        ),
      ),
      GoRoute(
        path: '/event/:id',
        builder: (_, s) => EventEditorScreen(eventId: s.pathParameters['id']),
      ),
      GoRoute(
        path: '/task/:id',
        builder: (_, s) => Scaffold(body: Text('task ${s.pathParameters['id']}')),
      ),
    ],
  ),
);

Widget scaled(Widget child, double scale) => Builder(
  builder: (c) => MediaQuery(
    data: MediaQuery.of(c).copyWith(textScaler: TextScaler.linear(scale)),
    child: child,
  ),
);
