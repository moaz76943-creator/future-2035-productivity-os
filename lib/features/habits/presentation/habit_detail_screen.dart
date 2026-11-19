import 'dart:math' as math;

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../app/routing/navigation.dart';
import '../../../app/routing/routes.dart';
import '../../../core/database/app_database.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/components/charts.dart';
import '../../../core/design_system/components/indicators.dart';
import '../../../core/design_system/components/states.dart';
import '../../../core/design_system/components/surfaces.dart';
import '../../../core/design_system/tokens.dart';
import '../../../core/providers/core_providers.dart';
import '../../../core/time/clock.dart';
import '../../../shared/widgets/async_value_view.dart';
import '../../../shared/widgets/module_scaffold.dart';
import '../application/habit_stats.dart';
import '../application/habits_providers.dart';
import '../data/habits_repository.dart';
import 'widgets/habit_actions.dart';
import 'widgets/habit_editor_sheet.dart';
import 'widgets/habit_visuals.dart';

part 'habit_detail_screen/habit_body.dart';
part 'habit_detail_screen/day_cell.dart';

enum _HabitAction { edit, pause, resume, archive }

class HabitDetailScreen extends ConsumerWidget {
  const HabitDetailScreen({super.key, required this.habitId});
  final String habitId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final habit = ref.watch(habitByIdProvider(habitId));
    final counts = ref.watch(habitCountsProvider(habitId));
    final pauses = ref.watch(habitPausesProvider(habitId));
    final h = habit.value;
    final combined = switch ((habit, counts, pauses)) {
      (AsyncData(value: final a), AsyncData(value: final c), AsyncData(value: final p)) =>
        AsyncData<_Data>((a, c, p)),
      (AsyncError(:final error, :final stackTrace), _, _) ||
      (_, AsyncError(:final error, :final stackTrace), _) ||
      (_, _, AsyncError(:final error, :final stackTrace)) => AsyncError<_Data>(error, stackTrace),
      _ => const AsyncLoading<_Data>(),
    };
    final available = h != null && !h.archived;
    return ModuleScaffold(
      title: available ? h.name : l10n.habitsTitle,
      hue: ModuleHue.habits,
      actions: [if (available) _menu(context, ref, h)],
      slivers: [
        SliverAsyncValueView<_Data>(
          value: combined,
          data: (d) {
            final (row, c, p) = d;
            if (row == null || row.archived) {
              return SliverToBoxAdapter(
                child: EmptyState(
                  icon: Icons.event_repeat_rounded,
                  hue: ModuleHue.habits,
                  title: l10n.habitsNotFound,
                  message: l10n.habitsEmptyMessage,
                ),
              );
            }
            return SliverList.list(
              children: [_HabitBody(habit: row, counts: c, pauses: p)],
            );
          },
        ),
      ],
    );
  }

  Widget _menu(BuildContext context, WidgetRef ref, HabitRow h) {
    final l10n = context.l10n;
    PopupMenuItem<_HabitAction> item(_HabitAction a, IconData icon, String label) => PopupMenuItem(
      value: a,
      child: ListTile(contentPadding: EdgeInsets.zero, leading: Icon(icon), title: Text(label)),
    );
    return PopupMenuButton<_HabitAction>(
      key: const ValueKey('habit-menu'),
      tooltip: l10n.actionMore,
      icon: const Icon(Icons.more_vert_rounded),
      onSelected: (a) => _onAction(context, ref, h, a),
      itemBuilder: (_) => [
        item(_HabitAction.edit, Icons.edit_rounded, l10n.actionEdit),
        if (h.paused)
          item(_HabitAction.resume, Icons.play_arrow_rounded, l10n.habitResume)
        else
          item(_HabitAction.pause, Icons.pause_rounded, l10n.habitPause),
        item(_HabitAction.archive, Icons.archive_outlined, l10n.habitsArchive),
      ],
    );
  }

  Future<void> _onAction(BuildContext context, WidgetRef ref, HabitRow h, _HabitAction a) async {
    final repo = ref.read(habitsRepositoryProvider);
    switch (a) {
      case _HabitAction.edit:
        await showHabitEditor(context, habit: h);
      case _HabitAction.pause:
        await repo.setPaused(h.id, true);
      case _HabitAction.resume:
        await repo.setPaused(h.id, false);
      case _HabitAction.archive:
        final messenger = ScaffoldMessenger.maybeOf(context);
        final l10n = context.l10n;
        await repo.archive(h.id);
        messenger
          ?..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(
              behavior: SnackBarBehavior.floating,
              content: Text(l10n.habitsArchived),
              action: SnackBarAction(label: l10n.actionUndo, onPressed: () => repo.unarchive(h.id)),
            ),
          );
        if (context.mounted) leaveScreen(context, Routes.habits);
    }
  }
}

typedef _Data = (HabitRow?, Map<int, int>, List<PauseSpan>);
