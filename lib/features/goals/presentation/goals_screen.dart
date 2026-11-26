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
import '../../../shared/widgets/async_value_view.dart';
import '../../../shared/widgets/module_scaffold.dart';
import '../application/goals_providers.dart';
import '../data/goals_repository.dart';
import 'widgets/goal_editor_sheet.dart';
import 'widgets/goal_visuals.dart';

class GoalsScreen extends ConsumerStatefulWidget {
  const GoalsScreen({super.key});

  @override
  ConsumerState<GoalsScreen> createState() => _GoalsScreenState();
}

class _GoalsScreenState extends ConsumerState<GoalsScreen> {
  GoalPeriod? _period;
  GoalStatus? _status;

  Future<void> _create() async {
    await showGoalEditor(context);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final goals = ref.watch(goalsListProvider(_status));
    final hasAny = (ref.watch(goalsListProvider(null)).value ?? const []).isNotEmpty;
    return ModuleScaffold(
      title: l10n.goalsTitle,
      hue: ModuleHue.goals,
      floatingActionButton: FloatingActionButton.extended(
        heroTag: 'goals-fab',
        onPressed: _create,
        icon: const Icon(Icons.add_rounded),
        label: Text(l10n.goalNew),
      ),
      slivers: [
        if (hasAny) ...[
          SliverToBoxAdapter(
            child: _FilterRow(
              label: l10n.goalsFilterPeriod,
              children: [
                _chip(l10n.goalsFilterAll, _period == null, () => setState(() => _period = null)),
                for (final p in GoalPeriod.values)
                  _chip(
                    goalPeriodLabel(context, p),
                    _period == p,
                    () => setState(() => _period = p),
                  ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: _FilterRow(
              label: l10n.goalsFilterStatus,
              children: [
                _chip(l10n.goalsFilterAll, _status == null, () => setState(() => _status = null)),
                for (final s in GoalStatus.values)
                  _chip(
                    goalStatusLabel(context, s),
                    _status == s,
                    () => setState(() => _status = s),
                    icon: goalStatusIcon(s),
                  ),
              ],
            ),
          ),
        ],
        SliverAsyncValueView<List<GoalRow>>(
          value: goals,
          data: (rows) {
            final shown = _period == null
                ? rows
                : rows.where((g) => goalPeriodOf(g) == _period).toList();
            if (!hasAny) {
              return SliverToBoxAdapter(
                child: EmptyState(
                  icon: Icons.flag_rounded,
                  hue: ModuleHue.goals,
                  title: l10n.goalsEmptyTitle,
                  message: l10n.goalsEmptyMessage,
                ),
              );
            }
            if (shown.isEmpty) {
              return SliverToBoxAdapter(
                child: EmptyState(
                  compact: true,
                  icon: Icons.filter_alt_off_rounded,
                  hue: ModuleHue.goals,
                  title: l10n.goalsEmptyFiltered,
                  message: l10n.goalsEmptyMessage,
                ),
              );
            }
            return SliverPadding(
              padding: const EdgeInsets.fromLTRB(Space.page, Space.sm, Space.page, 0),
              sliver: SliverList.separated(
                itemCount: shown.length,
                separatorBuilder: (_, _) => const SizedBox(height: Space.sm),
                itemBuilder: (_, i) => GoalCard(goal: shown[i]),
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _chip(String label, bool selected, VoidCallback onTap, {IconData? icon}) => ChoiceChip(
    label: Text(label),
    avatar: icon == null ? null : Icon(icon, size: 16),
    selected: selected,
    onSelected: (_) => onTap(),
  );
}

class _FilterRow extends StatelessWidget {
  const _FilterRow({required this.label, required this.children});
  final String label;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      container: true,
      label: label,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsetsDirectional.fromSTEB(Space.page, Space.xxs, Space.page, Space.xxs),
        child: Row(
          children: [
            for (final c in children)
              Padding(
                padding: const EdgeInsetsDirectional.only(end: Space.xs),
                child: c,
              ),
          ],
        ),
      ),
    );
  }
}

/// One goal: progress ring for the current period, title, status and period.
class GoalCard extends ConsumerWidget {
  const GoalCard({super.key, required this.goal});
  final GoalRow goal;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final fmt = context.fmt;
    final status = goalStatusOf(goal);
    final period = goalPeriodOf(goal);
    final progress =
        ref.watch(goalProgressProvider(goal)).value ??
        GoalProgress(current: 0, target: goal.target);
    final progressText = goalProgressText(context, progress, goal.unit);
    final muted = status == GoalStatus.paused;
    return LuxCard(
      key: ValueKey('goal-card-${goal.id}'),
      onTap: () => context.push(Routes.goal(goal.id)),
      accent: muted ? null : ModuleHue.goals.a,
      semanticLabel: l10n.goalsCardSemantics(
        goal.title,
        progressText,
        goalStatusLabel(context, status),
      ),
      child: ExcludeSemantics(
        child: Opacity(
          opacity: muted ? 0.7 : 1,
          child: Row(
            children: [
              GlowRing(
                value: progress.ratio,
                hue: muted ? ModuleHue.neutral : ModuleHue.goals,
                size: 60,
                stroke: 6,
                child: status == GoalStatus.achieved
                    ? const Icon(Icons.emoji_events_rounded, color: Palette.champagne, size: 22)
                    : Text(fmt.percent(progress.ratio), style: context.text.labelMedium),
              ),
              const SizedBox(width: Space.md),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      goal.title,
                      style: context.text.titleMedium,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: Space.xxs),
                    Text(
                      progressText,
                      style: context.text.bodyMedium?.copyWith(color: context.lux.ink2),
                    ),
                    const SizedBox(height: Space.xs),
                    Wrap(
                      spacing: Space.xs,
                      runSpacing: Space.xxs,
                      children: [
                        LuxPill(
                          label: goalStatusLabel(context, status),
                          icon: goalStatusIcon(status),
                          color: goalStatusColor(context, status),
                        ),
                        LuxPill(label: goalPeriodLabel(context, period)),
                        if (goal.dueDate != null)
                          LuxPill(
                            label: l10n.goalsDueOn(fmt.date(goal.dueDate!)),
                            icon: Icons.event_rounded,
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
