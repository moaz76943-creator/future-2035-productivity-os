import 'package:material_ui/material_ui.dart';

import '../../../../app/localization/app_format.dart';
import '../../../../core/database/app_database.dart';
import '../../../../core/design_system/app_theme.dart';
import '../../../../core/design_system/tokens.dart';
import '../../application/goals_providers.dart';
import '../../data/goals_repository.dart';

GoalPeriod goalPeriodOf(GoalRow g) =>
    GoalPeriod.values.asNameMap()[g.period] ?? GoalPeriod.longTerm;

GoalStatus goalStatusOf(GoalRow g) => GoalStatus.values.asNameMap()[g.status] ?? GoalStatus.active;

String goalPeriodLabel(BuildContext context, GoalPeriod p) {
  final l10n = context.l10n;
  return switch (p) {
    GoalPeriod.daily => l10n.goalPeriodDaily,
    GoalPeriod.weekly => l10n.goalPeriodWeekly,
    GoalPeriod.monthly => l10n.goalPeriodMonthly,
    GoalPeriod.longTerm => l10n.goalPeriodLongTerm,
  };
}

String goalStatusLabel(BuildContext context, GoalStatus s) {
  final l10n = context.l10n;
  return switch (s) {
    GoalStatus.active => l10n.goalStatusActive,
    GoalStatus.paused => l10n.goalStatusPaused,
    GoalStatus.achieved => l10n.goalStatusAchieved,
  };
}

Color goalStatusColor(BuildContext context, GoalStatus s) => switch (s) {
  GoalStatus.active => ModuleHue.goals.a,
  GoalStatus.paused => context.lux.ink3,
  GoalStatus.achieved => Palette.champagne,
};

IconData goalStatusIcon(GoalStatus s) => switch (s) {
  GoalStatus.active => Icons.flag_rounded,
  GoalStatus.paused => Icons.pause_rounded,
  GoalStatus.achieved => Icons.emoji_events_rounded,
};

/// Formats an amount with only the decimals it needs.
String goalNumber(BuildContext context, double v) =>
    context.fmt.number(v, decimals: goalAmountDecimals(v));

/// "12 pages" or "12" when the goal has no unit.
String goalAmount(BuildContext context, double v, String unit) {
  final n = goalNumber(context, v);
  return unit.trim().isEmpty ? n : context.l10n.goalsAmountWithUnit(n, unit.trim());
}

/// "3 of 10 pages".
String goalProgressText(BuildContext context, GoalProgress p, String unit) => context.l10n
    .goalProgressOf(goalNumber(context, p.current), goalAmount(context, p.target, unit));
