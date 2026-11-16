import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../app/routing/routes.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/components/surfaces.dart';
import '../../../core/design_system/tokens.dart';
import '../../dashboard/application/dashboard_providers.dart';
import '../../flashcards/application/flashcards_providers.dart';
import '../../projects/application/projects_providers.dart';

/// Hub for every module that is not a bottom-navigation destination.
/// Two featured orbs lead, the rest flow as an orb grid (not a card wall).
class SpacesScreen extends ConsumerWidget {
  const SpacesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final fmt = context.fmt;
    final projects = ref.watch(projectsProvider(false)).value?.length;
    final due = ref.watch(totalDueProvider).value;
    final habits = ref.watch(todayHabitsProvider).value;
    final habitsDone = habits?.where((h) => h.stats.doneToday).length;

    final grid = <_Space>[
      _Space(Icons.sticky_note_2_outlined, l10n.moduleNotes, ModuleHue.notes, Routes.notes),
      _Space(Icons.flag_outlined, l10n.moduleGoals, ModuleHue.goals, Routes.goals),
      _Space(
        Icons.self_improvement_rounded,
        l10n.moduleHabits,
        ModuleHue.habits,
        Routes.habits,
        habits == null || habits.isEmpty
            ? null
            : l10n.habitsTodaySummary(habitsDone!, habits.length),
      ),
      _Space(Icons.insights_rounded, l10n.moduleAnalytics, ModuleHue.analytics, Routes.insights),
      _Space(Icons.search_rounded, l10n.moduleSearch, ModuleHue.calendar, Routes.search),
      _Space(
        Icons.auto_awesome_outlined,
        l10n.moduleAssistant,
        ModuleHue.assistant,
        Routes.assistant,
      ),
      _Space(Icons.settings_outlined, l10n.moduleSettings, ModuleHue.neutral, Routes.settings),
      _Space(Icons.delete_outline_rounded, l10n.moduleTrash, ModuleHue.neutral, Routes.trash),
    ];

    return Scaffold(
      body: AuroraBackground(
        child: SafeArea(
          bottom: false,
          child: CustomScrollView(
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(Space.page, Space.lg, Space.page, Space.md),
                sliver: SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Semantics(
                        header: true,
                        child: Text(l10n.navSpaces, style: context.text.headlineMedium),
                      ),
                      const SizedBox(height: Space.xxs),
                      Text(
                        l10n.spacesSubtitle,
                        style: context.text.bodyMedium?.copyWith(color: context.lux.ink2),
                      ),
                    ],
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: Space.page),
                sliver: SliverToBoxAdapter(
                  child: Row(
                    children: [
                      Expanded(
                        child: _Featured(
                          space: _Space(
                            Icons.workspaces_outline,
                            l10n.moduleProjects,
                            ModuleHue.projects,
                            Routes.projects,
                            projects == null ? null : fmt.number(projects),
                          ),
                        ),
                      ),
                      const SizedBox(width: Space.sm),
                      Expanded(
                        child: _Featured(
                          space: _Space(
                            Icons.style_outlined,
                            l10n.moduleFlashcards,
                            ModuleHue.flashcards,
                            Routes.flashcards,
                            due == null ? null : l10n.dashCardsDue(due),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(Space.page, Space.xl, Space.page, 120),
                sliver: SliverGrid.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 120,
                    mainAxisExtent: 128,
                    crossAxisSpacing: Space.sm,
                    mainAxisSpacing: Space.md,
                  ),
                  itemCount: grid.length,
                  itemBuilder: (_, i) => _OrbTile(space: grid[i]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Space {
  const _Space(this.icon, this.label, this.hue, this.route, [this.caption]);
  final IconData icon;
  final String label;
  final ModuleHue hue;
  final String route;
  final String? caption;
}

class _Featured extends StatelessWidget {
  const _Featured({required this.space});
  final _Space space;

  @override
  Widget build(BuildContext context) => Semantics(
    button: true,
    label: [space.label, ?space.caption].join(', '),
    excludeSemantics: true,
    child: AuroraCard(
      hue: space.hue,
      onTap: () => context.push(space.route),
      child: SizedBox(
        height: 112,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(space.icon, color: Colors.white, size: 28),
            const Spacer(),
            Text(
              space.label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: context.text.titleMedium?.copyWith(color: Colors.white),
            ),
            if (space.caption != null)
              Text(
                space.caption!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: context.text.labelMedium?.copyWith(
                  color: Colors.white.withValues(alpha: 0.9),
                ),
              ),
          ],
        ),
      ),
    ),
  );
}

class _OrbTile extends StatelessWidget {
  const _OrbTile({required this.space});
  final _Space space;

  @override
  Widget build(BuildContext context) => Semantics(
    button: true,
    label: [space.label, ?space.caption].join(', '),
    excludeSemantics: true,
    child: InkWell(
      borderRadius: BorderRadius.circular(Radii.lg),
      onTap: () => context.push(space.route),
      child: Column(
        children: [
          const SizedBox(height: Space.xs),
          IconOrb(icon: space.icon, hue: space.hue, size: 60),
          const SizedBox(height: Space.xs),
          Text(
            space.label,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: context.text.labelLarge,
          ),
          if (space.caption != null)
            Text(
              space.caption!,
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: context.text.labelSmall?.copyWith(color: context.lux.ink3),
            ),
        ],
      ),
    ),
  );
}
