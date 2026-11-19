import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../app/routing/routes.dart';
import '../../../core/database/app_database.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/components/indicators.dart';
import '../../../core/design_system/components/states.dart';
import '../../../core/design_system/components/surfaces.dart';
import '../../../core/design_system/tokens.dart';
import '../../../core/providers/core_providers.dart';
import '../../../core/time/clock.dart';
import '../../../core/time/hijri.dart';
import '../../../l10n/gen/app_localizations.dart';
import '../../flashcards/application/flashcards_providers.dart';
import '../../focus/application/focus_controller.dart';
import '../../goals/application/goals_providers.dart';
import '../../notes/application/notes_providers.dart';
import '../../goals/data/goals_repository.dart';
import '../../habits/application/habits_providers.dart';
import '../../settings/application/settings_providers.dart';
import '../../settings/data/settings_repository.dart';
import '../../tasks/application/tasks_providers.dart';
import '../../tasks/data/tasks_repository.dart';
import '../../tasks/presentation/widgets/task_tile.dart';
import '../application/dashboard_providers.dart';
import 'start_my_day.dart';

part 'dashboard_screen/header.dart';
part 'dashboard_screen/goal_line.dart';

/// Section ids persisted in settings.dashboardSections (order = display order).
String dashSectionName(AppLocalizations l10n, String id) => switch (id) {
  'focus' => l10n.dashSectionFocus,
  'today' => l10n.dashSectionToday,
  'agenda' => l10n.dashSectionAgenda,
  'habits' => l10n.dashSectionHabits,
  'goals' => l10n.dashSectionGoals,
  'review' => l10n.dashSectionReview,
  'notes' => l10n.dashSectionNotes,
  'insight' => l10n.dashSectionInsight,
  _ => id,
};

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sections = ref.watch(settingsProvider.select((s) => s.dashboardSections));
    return Scaffold(
      body: AuroraBackground(
        child: SafeArea(
          bottom: false,
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(child: _Header()),
              const SliverToBoxAdapter(child: _QuickActions()),
              const SliverToBoxAdapter(child: StartMyDayCard()),
              for (final id in sections)
                SliverToBoxAdapter(
                  child: switch (id) {
                    'focus' => const _FocusSection(),
                    'today' => const _TodaySection(),
                    'agenda' => const _AgendaSection(),
                    'habits' => const _HabitsSection(),
                    'goals' => const _GoalsSection(),
                    'review' => const _ReviewSection(),
                    'notes' => const _NotesSection(),
                    'insight' => const _InsightSection(),
                    _ => const SizedBox.shrink(),
                  },
                ),
              const SliverToBoxAdapter(child: SizedBox(height: 120)),
            ],
          ),
        ),
      ),
    );
  }
}
