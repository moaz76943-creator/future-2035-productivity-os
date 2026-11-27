import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../core/design_system/components/surfaces.dart';
import '../../core/design_system/tokens.dart';
import '../../core/theme/deep_focus_visuals.dart';
import '../../core/widgets/deep_focus_glass.dart';
import '../localization/app_format.dart';
import 'nav_icons.dart';
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
      (NavGlyphKind.home, l10n.navHome),
      (NavGlyphKind.tasks, l10n.navTasks),
      (NavGlyphKind.cards, l10n.navCards),
      (NavGlyphKind.focus, l10n.navFocus),
      (NavGlyphKind.calendar, l10n.navCalendar),
      (NavGlyphKind.spaces, l10n.navSpaces),
    ];
    return DeepFocusMeshScaffold(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBody: true,
        body: ShellScope(child: shell),
        bottomNavigationBar: DecoratedBox(
          // Fade the content out behind the floating bar so it never shows through.
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                DeepFocusVisuals.canvasLight.withValues(alpha: 0),
                DeepFocusVisuals.canvasLight.withValues(alpha: 0.92),
              ],
              stops: const [0, 0.35],
            ),
          ),
          child: SafeArea(
            minimum: const EdgeInsets.fromLTRB(Space.sm, Space.xs, Space.sm, Space.sm),
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
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: Space.xs),
                        child: NavigationBar(
                          height: 68,
                          backgroundColor: Colors.transparent,
                          surfaceTintColor: Colors.transparent,
                          elevation: 0,
                          // The active capsule is drawn in the icon (slimmer than the default 64px one).
                          indicatorColor: Colors.transparent,
                          labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
                          selectedIndex: shell.currentIndex,
                          onDestinationSelected: (i) =>
                              shell.goBranch(i, initialLocation: i == shell.currentIndex),
                          destinations: [
                            for (final d in destinations)
                              NavigationDestination(
                                icon: NavGlyph(d.$1, color: DeepFocusVisuals.textMuted),
                                selectedIcon: Container(
                                  width: 50,
                                  height: 30,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      DeepFocusVisuals.pillRadius,
                                    ),
                                    color: DeepFocusVisuals.aquaGlow.withValues(alpha: 0.22),
                                  ),
                                  child: NavGlyph(
                                    d.$1,
                                    color: DeepFocusVisuals.tealPrimary,
                                    selected: true,
                                  ),
                                ),
                                label: d.$2,
                                tooltip: d.$2,
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const BottomBannerAdWidget(useProductionUnit: true),
              ],
            ),
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
  static const navHeight = 68.0 + Space.sm + 50.0; // navigation + standard banner slot

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
