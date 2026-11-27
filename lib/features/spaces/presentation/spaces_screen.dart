import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../app/routing/navigation.dart';
import '../../../app/routing/routes.dart';
import '../../../app/shell/app_shell.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/components/surfaces.dart';
import '../../../core/theme/deep_focus_visuals.dart';
import '../../../core/widgets/deep_focus_glass.dart';
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
      _Space(
        Icons.water_drop_outlined,
        DeepFocusAssets.spaceSounds,
        l10n.soundsTitle,
        ModuleHue.sounds,
        Routes.sounds,
      ),
      _Space(
        Icons.sticky_note_2_outlined,
        DeepFocusAssets.spaceNotes,
        l10n.moduleNotes,
        ModuleHue.notes,
        Routes.notes,
      ),
      _Space(
        Icons.flag_outlined,
        DeepFocusAssets.spaceGoals,
        l10n.moduleGoals,
        ModuleHue.goals,
        Routes.goals,
      ),
      _Space(
        Icons.event_repeat_rounded,
        DeepFocusAssets.spaceHabits,
        l10n.moduleHabits,
        ModuleHue.habits,
        Routes.habits,
        habits == null || habits.isEmpty
            ? null
            : l10n.habitsTodaySummary(habitsDone!, habits.length),
      ),
      _Space(
        Icons.insights_rounded,
        DeepFocusAssets.spaceInsights,
        l10n.moduleAnalytics,
        ModuleHue.analytics,
        Routes.insights,
      ),
      _Space(
        Icons.search_rounded,
        DeepFocusAssets.spaceSearch,
        l10n.moduleSearch,
        ModuleHue.calendar,
        Routes.search,
      ),
      _Space(
        Icons.auto_awesome_outlined,
        DeepFocusAssets.spaceAssistant,
        l10n.moduleAssistant,
        ModuleHue.assistant,
        Routes.assistant,
      ),
      _Space(
        Icons.settings_outlined,
        DeepFocusAssets.spaceSettings,
        l10n.moduleSettings,
        ModuleHue.neutral,
        Routes.settings,
      ),
      _Space(
        Icons.delete_outline_rounded,
        DeepFocusAssets.spaceTrash,
        l10n.moduleTrash,
        ModuleHue.neutral,
        Routes.trash,
      ),
      _Space(
        Icons.help_outline_rounded,
        DeepFocusAssets.spaceHelp,
        l10n.helpTitle,
        ModuleHue.neutral,
        Routes.help,
      ),
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
                    ],
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: Space.page),
                sliver: SliverToBoxAdapter(
                  child: IntrinsicHeight(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: _Featured(
                            space: _Space(
                              Icons.workspaces_outline,
                              DeepFocusAssets.spaceProjects,
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
                              DeepFocusAssets.spaceFlashcards,
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
              ),
              SliverPadding(
                // Clears the floating navigation bar and banner slot.
                padding: EdgeInsets.fromLTRB(
                  Space.page,
                  Space.xl,
                  Space.page,
                  ShellScope.navHeight + MediaQuery.viewPaddingOf(context).bottom + Space.lg,
                ),
                sliver: Builder(
                  builder: (context) {
                    // Big 3D icons fill the wide two-column cards; smaller on wide screens.
                    final wide = MediaQuery.sizeOf(context).width >= 600;
                    final icon = wide ? 64.0 : 84.0;
                    // Only ten tiles: a shrink-wrapped grid builds them all (nothing hides below the fold).
                    return SliverToBoxAdapter(
                      child: GridView.builder(
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: wide ? 5 : 2,
                          mainAxisExtent: icon + 24 + MediaQuery.textScalerOf(context).scale(52),
                          crossAxisSpacing: Space.sm,
                          mainAxisSpacing: wide ? Space.sm : Space.md,
                        ),
                        itemCount: grid.length,
                        itemBuilder: (_, i) => _OrbTile(space: grid[i], iconSize: icon),
                      ),
                    );
                  },
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
  const _Space(this.icon, this.asset, this.label, this.hue, this.route, [this.caption]);
  final IconData icon;
  final String asset;
  final String label;
  final ModuleHue hue;
  final String route;
  final String? caption;
}

class _Featured extends StatelessWidget {
  const _Featured({required this.space});
  final _Space space;

  @override
  Widget build(BuildContext context) {
    // Same big 3D icon as the grid below (smaller on wide screens), centred.
    final icon = MediaQuery.sizeOf(context).width >= 600 ? 64.0 : 80.0;
    return Semantics(
      button: true,
      label: [space.label, ?space.caption].join(', '),
      excludeSemantics: true,
      // Calm glass card like the design; the module colour lives in the icon orb.
      child: DeepFocusGlassCard(
        onTap: () => openRoute(context, space.route),
        child: SizedBox(
          // Icon (fixed) + title + caption (scaled with the font size). Two lines each:
          // long translations (e.g. Arabic "البطاقات التعليمية") were cut with an ellipsis.
          height: icon + Space.xs + MediaQuery.textScalerOf(context).scale(84),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DeepFocusAssetIcon(assetPath: space.asset, fallbackIcon: space.icon, size: icon),
              const SizedBox(height: Space.xs),
              Text(
                space.label,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: context.text.titleMedium?.copyWith(height: 1.2),
              ),
              if (space.caption != null)
                Text(
                  space.caption!,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: context.text.labelMedium,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _OrbTile extends StatelessWidget {
  const _OrbTile({required this.space, required this.iconSize});
  final _Space space;
  final double iconSize;

  @override
  Widget build(BuildContext context) => Semantics(
    button: true,
    label: [space.label, ?space.caption].join(', '),
    excludeSemantics: true,
    child: DeepFocusGlassCard(
      onTap: () => openRoute(context, space.route),
      padding: EdgeInsets.zero,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DeepFocusAssetIcon(assetPath: space.asset, fallbackIcon: space.icon, size: iconSize),
          const SizedBox(height: Space.xs),
          Text(
            space.label,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: context.text.titleSmall?.copyWith(height: 1.15),
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
