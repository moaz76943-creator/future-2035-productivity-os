import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../app/routing/routes.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/components/surfaces.dart';
import '../../../core/design_system/tokens.dart';
import '../../../core/theme/deep_focus_visuals.dart';
import '../../../core/widgets/deep_focus_glass.dart';
import '../../../core/providers/core_providers.dart';
import '../../flashcards/application/flashcards_providers.dart';
import '../../focus/application/focus_controller.dart';
import '../../focus/domain/focus_timer_state.dart';
import '../../tasks/application/tasks_providers.dart';
import '../../tasks/data/tasks_repository.dart';
import '../application/dashboard_providers.dart';

/// The day the user last tapped "Start my day" (yyyy-mm-dd), so the card
/// shows once a day.
final dayStartedProvider = FutureProvider.autoDispose<bool>((ref) async {
  final today = _dayKey(ref.watch(clockProvider).now());
  return await ref.read(databaseProvider).readValue(_key) == today;
});

const _key = 'dashboard.dayStarted';
String _dayKey(DateTime d) => '${d.year}-${d.month}-${d.day}';

/// A calm card on the dashboard: the day at a glance, then one tap to begin.
class StartMyDayCard extends ConsumerWidget {
  const StartMyDayCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (ref.watch(dayStartedProvider).value ?? true) return const SizedBox.shrink();
    final l10n = context.l10n;
    return Padding(
      padding: const EdgeInsets.fromLTRB(Space.page, Space.xs, Space.page, Space.xs),
      child: DeepFocusGlassCard(
        key: const Key('startMyDay'),
        onTap: () => showStartMyDay(context),
        child: Row(
          children: [
            const DeepFocusAssetIcon(
              assetPath: DeepFocusAssets.startMyDay,
              size: 44,
              fallbackIcon: Icons.wb_twilight_rounded,
            ),
            const SizedBox(width: Space.md),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(l10n.myDayTitle, style: context.text.titleMedium),
                  Text(
                    l10n.myDayHint,
                    style: context.text.bodySmall?.copyWith(color: context.lux.ink2),
                  ),
                ],
              ),
            ),
            const Icon(Icons.chevron_right_rounded),
          ],
        ),
      ),
    );
  }
}

Future<void> showStartMyDay(BuildContext context) => showModalBottomSheet<void>(
  useRootNavigator: true,
  context: context,
  showDragHandle: true,
  isScrollControlled: true,
  useSafeArea: true,
  builder: (_) => const _MyDaySheet(),
);

class _MyDaySheet extends ConsumerWidget {
  const _MyDaySheet();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final tasks =
        ref.watch(tasksProvider(const TaskFilter(view: TaskView.today))).value ?? const [];
    final agenda = ref.watch(todayAgendaProvider).value ?? const [];
    final habits = ref.watch(todayHabitsProvider).value ?? const [];
    final due = ref.watch(totalDueProvider).value ?? 0;
    final now = ref.watch(clockProvider).now();
    final next = agenda.where((o) => o.end.isAfter(now)).firstOrNull;
    final habitsLeft = habits.where((h) => !h.stats.doneToday).length;

    Future<void> markStarted() async {
      await ref.read(databaseProvider).writeValue(_key, _dayKey(now));
      ref.invalidate(dayStartedProvider);
    }

    void go(String route, {bool tab = false}) {
      Navigator.of(context).pop();
      tab ? context.go(route) : context.push(route);
      markStarted();
    }

    Widget row(String key, IconData icon, ModuleHue hue, String text, VoidCallback onTap) =>
        ListTile(
          key: Key(key),
          contentPadding: EdgeInsets.zero,
          leading: IconOrb(icon: icon, hue: hue, size: 40),
          title: Text(text),
          trailing: const Icon(Icons.chevron_right_rounded),
          onTap: onTap,
        );

    return Padding(
      padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.lg),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(l10n.myDayTitle, style: context.text.titleLarge),
          const SizedBox(height: Space.sm),
          row(
            'myDay-tasks',
            Icons.task_alt_rounded,
            ModuleHue.tasks,
            l10n.myDayTasks(tasks.length),
            () => go(Routes.tasks, tab: true),
          ),
          row(
            'myDay-agenda',
            Icons.event_rounded,
            ModuleHue.calendar,
            next == null
                ? l10n.myDayNoEvents
                : l10n.myDayNextEvent(next.event.title, context.fmt.time(next.start)),
            () => go(Routes.calendar, tab: true),
          ),
          if (habits.isNotEmpty)
            row(
              'myDay-habits',
              Icons.event_repeat_rounded,
              ModuleHue.habits,
              l10n.myDayHabits(habitsLeft),
              () => go(Routes.habits),
            ),
          if (due > 0)
            row(
              'myDay-cards',
              Icons.style_outlined,
              ModuleHue.flashcards,
              l10n.dashCardsDue(due),
              () => go(Routes.flashcards, tab: true),
            ),
          const SizedBox(height: Space.md),
          FilledButton.icon(
            key: const Key('myDay-focus'),
            style: FilledButton.styleFrom(minimumSize: const Size.fromHeight(52)),
            icon: const Icon(Icons.play_arrow_rounded),
            label: Text(l10n.myDayBeginFocus),
            onPressed: () async {
              final focus = ref.read(focusControllerProvider.notifier);
              Navigator.of(context).pop();
              context.go(Routes.focus);
              await markStarted();
              await focus.start(mode: FocusMode.pomodoro);
            },
          ),
        ],
      ),
    );
  }
}
