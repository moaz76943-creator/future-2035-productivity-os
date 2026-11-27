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
      _Space(Icons.water_drop_outlined, DeepFocusAssets.spaceSounds, l10n.soundsTitle, ModuleHue.sounds, Routes.sounds),
      _Space(Icons.sticky_note_2_outlined, DeepFocusAssets.spaceNotes, l10n.moduleNotes, ModuleHue.notes, Routes.notes),
      _Space(Icons.flag_outlined, DeepFocusAssets.spaceGoals, l10n.moduleGoals, ModuleHue.goals, Routes.goals),
      _Space(
        Icons.event_repeat_rounded, DeepFocusAssets.spaceHabits,
        l10n.moduleHabits,
        ModuleHue.habits,
        Routes.habits,
        habits == null || habits.isEmpty
            ? null
            : l10n.habitsTodaySummary(habitsDone!, habits.length),
      ),
      _Space(Icons.insights_rounded, DeepFocusAssets.spaceInsights, l10n.moduleAnalytics, ModuleHue.analytics, Routes.insights),
      _Space(Icons.search_rounded, DeepFocusAssets.spaceSearch, l10n.moduleSearch, ModuleHue.calendar, Routes.search),
      _Space(
        Icons.auto_awesome_outlined, DeepFocusAssets.spaceAssistant,
        l10n.moduleAssistant,
        ModuleHue.assistant,
        Routes.assistant,
      ),
      _Space(Icons.settings_outlined, DeepFocusAssets.spaceSettings, l10n.moduleSettings, ModuleHue.neutral, Routes.settings),
      _Space(Icons.delete_outline_rounded, DeepFocusAssets.spaceTrash, l10n.moduleTrash, ModuleHue.neutral, Routes.trash),
      _Space(Icons.help_outline_rounded, DeepFocusAssets.spaceHelp, l10n.helpTitle, ModuleHue.neutral, Routes.help),
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
                            Icons.workspaces_outline, DeepFocusAssets.spaceProjects,
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
                            Icons.style_outlined, DeepFocusAssets.spaceFlashcards,
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
                sliver: SliverGrid.builder(
                  // Ten tiles: two columns on phones (5 full rows) and five on wide
                  // screens (2 full rows), so the last row is never left half empty.
                  // Tile height grows with the system font scale: orb (fixed) + up to two
                  // label lines and a caption (scaled).
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: MediaQuery.sizeOf(context).width >= 600 ? 5 : 2,
                    mainAxisExtent: 76 + MediaQuery.textScalerOf(context).scale(52),
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
  Widget build(BuildContext context) => Semantics(
    button: true,
    label: [space.label, ?space.caption].join(', '),
    excludeSemantics: true,
    // Calm glass card like the design; the module colour lives in the icon orb.
    child: DeepFocusGlassCard(
      onTap: () => openRoute(context, space.route),
      child: SizedBox(
        // Icon (fixed) + title + caption (scaled with the font size).
        // Two lines for the title and the caption: long translations
        // (e.g. Arabic "البطاقات التعليمية") were cut with an ellipsis.
        height: 64 + MediaQuery.textScalerOf(context).scale(84),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DeepFocusAssetIcon(assetPath: space.asset, fallbackIcon: space.icon, size: 52),
            const Spacer(),
            Text(
              space.label,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: context.text.titleMedium?.copyWith(height: 1.2),
            ),
            if (space.caption != null)
              Text(
                space.caption!,
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

class _OrbTile extends StatelessWidget {
  const _OrbTile({required this.space});
  final _Space space;

  @override
  Widget build(BuildContext context) => Semantics(
    button: true,
    label: [space.label, ?space.caption].join(', '),
    excludeSemantics: true,
    child: DeepFocusGlassCard(
      onTap: () => openRoute(context, space.route),
      padding: EdgeInsets.zero,
      child: Column(
        children: [
          const SizedBox(height: Space.xs),
          DeepFocusAssetIcon(assetPath: space.asset, fallbackIcon: space.icon, size: 56),
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
