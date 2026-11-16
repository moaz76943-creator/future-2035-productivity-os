import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../core/design_system/components/surfaces.dart';
import '../../core/design_system/tokens.dart';
import '../localization/app_format.dart';

/// Root frame with the five primary destinations. The navigation bar is the
/// one persistent glass surface in the app.
class AppShell extends StatelessWidget {
  const AppShell({super.key, required this.shell});
  final StatefulNavigationShell shell;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final destinations = [
      (
        Icons.blur_on_rounded,
        Icons.blur_circular_rounded,
        l10n.navHome,
        ModuleHue.focus,
      ),
      (
        Icons.check_circle_outline_rounded,
        Icons.check_circle_rounded,
        l10n.navTasks,
        ModuleHue.tasks,
      ),
      (
        Icons.timer_outlined,
        Icons.timer_rounded,
        l10n.navFocus,
        ModuleHue.focus,
      ),
      (
        Icons.calendar_month_outlined,
        Icons.calendar_month_rounded,
        l10n.navCalendar,
        ModuleHue.calendar,
      ),
      (
        Icons.grid_view_outlined,
        Icons.grid_view_rounded,
        l10n.navSpaces,
        ModuleHue.projects,
      ),
    ];
    return Scaffold(
      extendBody: true,
      body: shell,
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(Space.sm, 0, Space.sm, Space.sm),
        child: GlassPanel(
          radius: Radii.xl,
          child: NavigationBar(
            height: 68,
            backgroundColor: Colors.transparent,
            surfaceTintColor: Colors.transparent,
            elevation: 0,
            indicatorColor: Theme.of(context).colorScheme.primary
                .withValues(alpha: 0.14),
            labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
            selectedIndex: shell.currentIndex,
            onDestinationSelected: (i) =>
                shell.goBranch(i, initialLocation: i == shell.currentIndex),
            destinations: [
              for (final d in destinations)
                NavigationDestination(
                  icon: Icon(d.$1),
                  selectedIcon: Icon(d.$2, color: d.$4.a),
                  label: d.$3,
                  tooltip: d.$3,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
