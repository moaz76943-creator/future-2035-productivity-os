import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../features/help/presentation/help_screen.dart';
import '../../features/analytics/presentation/analytics_screen.dart';
import '../../features/assistant/presentation/assistant_screen.dart';
import '../../features/calendar/presentation/calendar_screen.dart';
import '../../features/calendar/presentation/event_editor_screen.dart';
import '../../features/dashboard/presentation/dashboard_screen.dart';
import '../../features/flashcards/presentation/deck_screen.dart';
import '../../features/flashcards/presentation/decks_screen.dart';
import '../../features/flashcards/domain/study.dart';
import '../../features/flashcards/presentation/card_search_screen.dart';
import '../../features/flashcards/presentation/deck_stats_screen.dart';
import '../../features/flashcards/presentation/review_screen.dart';
import '../../features/focus/presentation/focus_screen.dart';
import '../../features/goals/presentation/goal_detail_screen.dart';
import '../../features/goals/presentation/goals_screen.dart';
import '../../features/habits/presentation/habit_detail_screen.dart';
import '../../features/habits/presentation/habits_screen.dart';
import '../../features/notes/presentation/note_editor_screen.dart';
import '../../features/notes/presentation/new_note_screen.dart';
import '../../features/notes/presentation/notes_screen.dart';
import '../../features/onboarding/presentation/onboarding_screen.dart';
import '../../features/projects/presentation/project_detail_screen.dart';
import '../../features/projects/presentation/projects_screen.dart';
import '../../features/search/presentation/search_screen.dart';
import '../../features/settings/application/settings_providers.dart';
import '../../features/settings/presentation/settings_screen.dart';
import '../../features/spaces/presentation/spaces_screen.dart';
import '../../features/tasks/presentation/task_editor_screen.dart';
import '../../features/tasks/presentation/tasks_screen.dart';
import '../../features/trash/presentation/trash_screen.dart';
import '../../features/sounds/presentation/sounds_screen.dart';
import '../../core/design_system/components/states.dart';
import '../localization/app_format.dart';
import '../shell/app_shell.dart';
import 'routes.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

DateTime? _parseDate(String? v) => v == null ? null : DateTime.tryParse(v);

final routerProvider = Provider<GoRouter>((ref) {
  final onboarding = ValueNotifier<bool>(ref.read(settingsProvider).onboardingDone);
  ref.listen(settingsProvider.select((s) => s.onboardingDone), (_, v) => onboarding.value = v);
  ref.onDispose(onboarding.dispose);

  GoRoute page(String path, Widget Function(GoRouterState s) build) =>
      GoRoute(path: path, parentNavigatorKey: rootNavigatorKey, builder: (context, s) => build(s));

  final router = GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: Routes.home,
    refreshListenable: onboarding,
    // Unknown or stale links (old notifications, removed records) get a recovery screen, never a blank page.
    errorBuilder: (context, state) => Scaffold(
      key: const ValueKey('route-not-found'),
      body: SafeArea(
        child: ErrorState(
          title: context.l10n.errorGenericTitle,
          message: context.l10n.errorLoadFailed,
          retryLabel: context.l10n.navHome,
          onRetry: () => context.go(Routes.home),
        ),
      ),
    ),
    redirect: (context, state) {
      final done = onboarding.value;
      final atOnboarding = state.matchedLocation == Routes.onboarding;
      if (!done && !atOnboarding) return Routes.onboarding;
      if (done && atOnboarding) return Routes.home;
      return null;
    },
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, shell) => AppShell(shell: shell),
        branches: [
          StatefulShellBranch(
            routes: [GoRoute(path: Routes.home, builder: (_, _) => const DashboardScreen())],
          ),
          StatefulShellBranch(
            routes: [GoRoute(path: Routes.tasks, builder: (_, _) => const TasksScreen())],
          ),
          // Flashcards are a pillar of the app: a tab of their own, beside Focus.
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.flashcards,
                builder: (_, _) => const DecksScreen(),
                // Deck pages open full screen above the tabs (root navigator).
                routes: [
                  page(':id', (s) => DeckScreen(deckId: s.pathParameters['id']!)),
                  page(':id/stats', (s) => DeckStatsScreen(deckId: s.pathParameters['id']!)),
                  page(
                    ':id/review',
                    (s) => ReviewScreen(
                      deckId: s.pathParameters['id']!,
                      mode: studyModeFromName(s.uri.queryParameters['mode']),
                      scope:
                          studyScopeFromName(s.uri.queryParameters['scope']) ??
                          StudyScope.scheduled,
                    ),
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.focus,
                builder: (_, s) => FocusScreen(initialTaskId: s.uri.queryParameters['task']),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [GoRoute(path: Routes.calendar, builder: (_, _) => const CalendarScreen())],
          ),
          StatefulShellBranch(
            routes: [GoRoute(path: Routes.spaces, builder: (_, _) => const SpacesScreen())],
          ),
        ],
      ),
      page(
        Routes.taskNew,
        (s) => TaskEditorScreen(
          parentId: s.uri.queryParameters['parent'],
          projectId: s.uri.queryParameters['project'],
          initialDue: _parseDate(s.uri.queryParameters['due']),
        ),
      ),
      page('/task/:id', (s) => TaskEditorScreen(taskId: s.pathParameters['id'])),
      page(
        Routes.eventNew,
        (s) => EventEditorScreen(start: _parseDate(s.uri.queryParameters['start'])),
      ),
      page('/event/:id', (s) => EventEditorScreen(eventId: s.pathParameters['id'])),
      page(Routes.projects, (_) => const ProjectsScreen()),
      page('/projects/:id', (s) => ProjectDetailScreen(projectId: s.pathParameters['id']!)),
      page(Routes.notes, (_) => const NotesScreen()),
      page(Routes.noteNew, (_) => const NewNoteScreen()),
      page('/notes/:id', (s) => NoteEditorScreen(noteId: s.pathParameters['id']!)),
      page(Routes.cardSearch, (_) => const CardSearchScreen()),
      page(Routes.goals, (_) => const GoalsScreen()),
      page('/goals/:id', (s) => GoalDetailScreen(goalId: s.pathParameters['id']!)),
      page(Routes.habits, (_) => const HabitsScreen()),
      page('/habits/:id', (s) => HabitDetailScreen(habitId: s.pathParameters['id']!)),
      page(Routes.insights, (_) => const AnalyticsScreen()),
      page(Routes.search, (_) => const SearchScreen()),
      page(Routes.assistant, (_) => const AssistantScreen()),
      page(Routes.sounds, (_) => const SoundsScreen()),
      page(Routes.settings, (_) => const SettingsScreen()),
      page(Routes.help, (_) => const HelpScreen()),
      page(Routes.trash, (_) => const TrashScreen()),
      page(Routes.onboarding, (_) => const OnboardingScreen()),
    ],
  );
  ref.onDispose(router.dispose);
  return router;
});
