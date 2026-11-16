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
import '../../../shared/widgets/async_value_view.dart';
import '../../../shared/widgets/module_scaffold.dart';
import '../application/projects_providers.dart';
import 'project_editor_sheet.dart';
import 'project_visuals.dart';

class ProjectsScreen extends ConsumerStatefulWidget {
  const ProjectsScreen({super.key});
  @override
  ConsumerState<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends ConsumerState<ProjectsScreen> {
  bool _archived = false;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final projects = ref.watch(projectsProvider(_archived));
    return ModuleScaffold(
      title: l10n.projectsTitle,
      hue: ModuleHue.projects,
      actions: [
        IconButton(
          tooltip: l10n.projectShowArchived,
          isSelected: _archived,
          icon: const Icon(Icons.inventory_2_outlined),
          selectedIcon: const Icon(Icons.inventory_2_rounded),
          onPressed: () => setState(() => _archived = !_archived),
        ),
      ],
      floatingActionButton: FloatingActionButton.extended(
        heroTag: 'projects-fab',
        icon: const Icon(Icons.add_rounded),
        label: Text(l10n.projectNew),
        onPressed: () async {
          final id = await showProjectEditor(context);
          if (id != null && context.mounted) context.push(Routes.project(id));
        },
      ),
      slivers: [
        SliverToBoxAdapter(
          child: SectionHeader(title: _archived ? l10n.projectArchived : l10n.projectsActive),
        ),
        SliverAsyncValueView(
          value: projects,
          data: (list) => list.isEmpty
              ? SliverToBoxAdapter(
                  child: EmptyState(
                    icon: Icons.workspaces_outline,
                    hue: ModuleHue.projects,
                    title: l10n.projectsEmptyTitle,
                    message: l10n.projectsEmptyMessage,
                  ),
                )
              : SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: Space.page),
                  sliver: SliverList.separated(
                    itemCount: list.length,
                    separatorBuilder: (_, _) => const SizedBox(height: Space.sm),
                    itemBuilder: (_, i) => ProjectCard(project: list[i]),
                  ),
                ),
        ),
      ],
    );
  }
}

/// Project summary: color orb, name, goal, live progress ring and deadline.
class ProjectCard extends ConsumerWidget {
  const ProjectCard({super.key, required this.project});
  final ProjectRow project;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final progress = ref.watch(projectProgressProvider(project.id)).value;
    final color = Color(project.color);
    final ratio = progress?.ratio ?? 0;
    final now = ref.watch(clockProvider).now();
    return LuxCard(
      accent: color,
      semanticLabel: l10n.projectSemantics(project.name, (ratio * 100).round()),
      onTap: () => context.push(Routes.project(project.id)),
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(Radii.md),
            ),
            child: Icon(projectIcon(project.icon), color: color),
          ),
          const SizedBox(width: Space.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  project.name,
                  style: context.text.titleMedium,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                if (project.goal.isNotEmpty)
                  Text(
                    project.goal,
                    style: context.text.bodySmall?.copyWith(color: context.lux.ink2),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                const SizedBox(height: Space.xxs),
                Wrap(
                  spacing: Space.sm,
                  children: [
                    if (progress != null)
                      Text(
                        l10n.projectTasksDone(progress.done, progress.total),
                        style: context.text.labelMedium?.copyWith(color: context.lux.ink3),
                      ),
                    if (project.deadline != null)
                      DeadlineLabel(deadline: project.deadline!, now: now),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: Space.sm),
          GlowRing(
            value: ratio,
            hue: ModuleHue.projects,
            size: 52,
            stroke: 6,
            child: Text(context.fmt.percent(ratio), style: context.text.labelSmall),
          ),
        ],
      ),
    );
  }
}

class DeadlineLabel extends StatelessWidget {
  const DeadlineLabel({super.key, required this.deadline, required this.now});
  final DateTime deadline;
  final DateTime now;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final days = Days.startOfDay(deadline.toLocal()).difference(Days.startOfDay(now)).inDays;
    final late = days < 0;
    return Text(
      late ? l10n.projectOverdue : l10n.projectDaysLeft(days),
      style: context.text.labelMedium?.copyWith(
        color: late ? context.lux.danger : (days <= 3 ? context.lux.warning : context.lux.ink3),
      ),
    );
  }
}
