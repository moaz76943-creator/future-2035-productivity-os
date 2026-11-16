import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../app/localization/app_format.dart';
import '../../../../core/database/app_database.dart';
import '../../../../core/design_system/app_theme.dart';
import '../../../../core/design_system/tokens.dart';
import '../../../../core/providers/core_providers.dart';
import '../../../../core/time/clock.dart';
import '../../application/habits_providers.dart';

/// Tap on a check-in: adds one up to the daily target. Once the target is
/// reached, a tap opens the adjust sheet instead of over-counting.
Future<void> checkInHabit(BuildContext context, WidgetRef ref, HabitRow habit, int count) async {
  final today = Days.startOfDay(ref.read(clockProvider).now());
  if (count >= habit.targetPerDay) {
    await showCheckInAdjustSheet(context, ref, habit, today, count);
    return;
  }
  await ref.read(habitsRepositoryProvider).setCount(habit.id, today, count + 1);
}

/// Decrease / reset options for [day]'s check-ins.
Future<void> showCheckInAdjustSheet(
  BuildContext context,
  WidgetRef ref,
  HabitRow habit,
  DateTime day,
  int count,
) async {
  final repo = ref.read(habitsRepositoryProvider);
  final l10n = context.l10n;
  await showModalBottomSheet<void>(
    context: context,
    showDragHandle: true,
    builder: (ctx) => SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.xs),
            child: Text(
              habit.name,
              style: ctx.text.titleMedium,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Space.page),
            child: Text(
              l10n.habitCountToday(count, habit.targetPerDay),
              style: ctx.text.bodyMedium?.copyWith(color: ctx.lux.ink2),
            ),
          ),
          const SizedBox(height: Space.xs),
          if (count < habit.targetPerDay)
            ListTile(
              key: const ValueKey('adjust-add'),
              leading: const Icon(Icons.add_rounded),
              title: Text(l10n.a11yIncrease),
              onTap: () {
                Navigator.pop(ctx);
                repo.setCount(habit.id, day, count + 1);
              },
            ),
          ListTile(
            key: const ValueKey('adjust-decrease'),
            enabled: count > 0,
            leading: const Icon(Icons.remove_rounded),
            title: Text(l10n.habitsDecrease),
            onTap: () {
              Navigator.pop(ctx);
              repo.setCount(habit.id, day, count - 1);
            },
          ),
          ListTile(
            key: const ValueKey('adjust-reset'),
            enabled: count > 0,
            leading: const Icon(Icons.restart_alt_rounded),
            title: Text(l10n.habitsResetToday),
            onTap: () {
              Navigator.pop(ctx);
              repo.setCount(habit.id, day, 0);
            },
          ),
          const SizedBox(height: Space.sm),
        ],
      ),
    ),
  );
}
