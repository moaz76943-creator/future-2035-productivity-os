import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../core/design_system/components/surfaces.dart';
import '../../core/design_system/tokens.dart';
import '../../core/theme/deep_focus_visuals.dart';
import '../../core/widgets/deep_focus_glass.dart';
import '../localization/app_format.dart';
import '../../core/ads/bottom_banner_ad_widget.dart';

/// Root frame with the five primary destinations. The navigation bar is the
/// one persistent glass surface in the app.
class AppShell extends StatelessWidget {
  const AppShell({super.key, required this.shell});
  final StatefulNavigationShell shell;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final destinations = [
      (Icons.blur_on_rounded, Icons.blur_circular_rounded, l10n.navHome, ModuleHue.focus),
      (
        Icons.check_circle_outline_rounded,
        Icons.check_circle_rounded,
        l10n.navTasks,
        ModuleHue.tasks,
      ),
      (Icons.style_outlined, Icons.style_rounded, l10n.navCards, ModuleHue.flashcards),
      (Icons.timer_outlined, Icons.timer_rounded, l10n.navFocus, ModuleHue.focus),
      (
        Icons.calendar_month_outlined,
        Icons.calendar_month_rounded,
        l10n.navCalendar,
        ModuleHue.calendar,
      ),
      (Icons.grid_view_outlined, Icons.grid_view_rounded, l10n.navSpaces, ModuleHue.projects),
    ];
    return DeepFocusMeshScaffold(
      child: Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      body: ShellScope(child: shell),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(Space.sm, 0, Space.sm, Space.sm),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RepaintBoundary(
              child: GlassPanel(
                child: NavigationBarTheme(
                  data: NavigationBarThemeData(
                    labelPadding: EdgeInsets.zero,
                    labelTextStyle: WidgetStateProperty.resolveWith(
                      (states) => TextStyle(
                        fontSize: 10.5,
                        fontWeight: states.contains(WidgetState.selected)
                            ? FontWeight.w700
                            : FontWeight.w500,
                        color: states.contains(WidgetState.selected)
                            ? DeepFocusVisuals.tealPrimary
                            : DeepFocusVisuals.textMuted,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                child: NavigationBar(
                  height: 68,
                  backgroundColor: Colors.transparent,
                  surfaceTintColor: Colors.transparent,
                  elevation: 0,
                  indicatorColor: DeepFocusVisuals.aquaGlow.withValues(alpha: 0.22),
                  labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
                  selectedIndex: shell.currentIndex,
                  onDestinationSelected: (i) =>
                      shell.goBranch(i, initialLocation: i == shell.currentIndex),
                  destinations: [
                    for (final d in destinations)
                      NavigationDestination(
                        icon: Icon(d.$1),
                        selectedIcon: DecoratedBox(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x663BC4C0),
                                blurRadius: 14,
                                spreadRadius: 1,
                              ),
                            ],
                          ),
                          child: Icon(d.$2, color: DeepFocusVisuals.tealPrimary),
                        ),
                        label: d.$3,
                        tooltip: d.$3,
                      ),
                  ],
                ),
                ),
              ),
            ),
            const BottomBannerAdWidget(useProductionUnit: true),
          ],
        ),
      ),
      ),
    );
  }
}

/// Marks pages hosted inside the shell, whose body runs under the floating
/// navigation bar. Floating buttons there must sit above the bar.
class ShellScope extends InheritedWidget {
  const ShellScope({super.key, required super.child});

  /// Height of the floating navigation bar including its outer margin.
  static const navHeight = 68.0 + Space.sm;

  static bool of(BuildContext context) =>
      context.getInheritedWidgetOfExactType<ShellScope>() != null;

  @override
  bool updateShouldNotify(ShellScope oldWidget) => false;
}

/// Wraps a floating action button so it never hides behind the shell's
/// navigation bar. Outside the shell it is returned unchanged.
class NavClearFab extends StatelessWidget {
  const NavClearFab({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (!ShellScope.of(context)) return child;
    final bottom = ShellScope.navHeight + MediaQuery.viewPaddingOf(context).bottom;
    return Padding(
      padding: EdgeInsets.only(bottom: bottom + Space.md),
      child: child,
    );
  }
}
