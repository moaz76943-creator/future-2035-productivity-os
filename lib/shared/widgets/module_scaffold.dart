import 'package:material_ui/material_ui.dart';

import '../../app/shell/app_shell.dart';
import '../../core/design_system/app_theme.dart';
import '../../core/design_system/components/surfaces.dart';
import '../../core/design_system/tokens.dart';
import '../../core/widgets/deep_focus_glass.dart';

/// Standard page frame: a soft aurora wash tinted with the module hue at
/// the top, a large title and scrollable content. Glass is reserved for the
/// navigation bar, so pages stay calm and readable.
class ModuleScaffold extends StatelessWidget {
  const ModuleScaffold({
    super.key,
    required this.title,
    required this.hue,
    required this.slivers,
    this.actions = const [],
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.subtitle,
    this.bottom,
    this.showBack,
    this.frostedBar = false,
    this.backgroundAsset,
  });

  final String title;
  final String? subtitle;
  final ModuleHue hue;
  final List<Widget> slivers;
  final List<Widget> actions;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final PreferredSizeWidget? bottom;
  final bool? showBack;

  /// Keeps a soft, nearly opaque veil behind the title bar at all times, so rows
  /// scrolling beneath (calendar day numbers) never mix with the title text.
  final bool frostedBar;

  /// Optional full-bleed picture behind the page (light theme only; dark keeps the aurora).
  final String? backgroundAsset;

  @override
  Widget build(BuildContext context) {
    final canPop = showBack ?? Navigator.of(context).canPop();
    final lux = context.lux;
    return DeepFocusTealScope(
      child: Scaffold(
        floatingActionButtonLocation: floatingActionButtonLocation,
        floatingActionButton: floatingActionButton == null
            ? null
            : NavClearFab(child: floatingActionButton!),
        body: _PageBackdrop(
          asset: lux.isDark ? null : backgroundAsset,
          hue: hue,
          child: CustomScrollView(
            slivers: [
              // Medium header: the large one left ~150px of empty space above the
              // content on phones. Content scrolling under the pinned bar gets a
              // solid backdrop instead of showing through the transparent bar.
              SliverAppBar.medium(
                automaticallyImplyLeading: canPop,
                backgroundColor: WidgetStateColor.resolveWith(
                  (states) => states.contains(WidgetState.scrolledUnder)
                      ? lux.background.withValues(alpha: frostedBar ? 0.94 : 0.97)
                      : (frostedBar ? lux.background.withValues(alpha: 0.82) : Colors.transparent),
                ),
                scrolledUnderElevation: frostedBar ? 2 : null,
                shadowColor: frostedBar ? lux.shadow : null,
                surfaceTintColor: Colors.transparent,
                title: Text(title, maxLines: 1, overflow: TextOverflow.ellipsis),
                actions: [
                  ...actions,
                  const SizedBox(width: Space.xs),
                ],
                bottom: bottom,
              ),
              if (subtitle != null)
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.md),
                    child: Text(
                      subtitle!,
                      style: context.text.bodyMedium?.copyWith(color: context.lux.ink2),
                    ),
                  ),
                ),
              ...slivers,
              SliverToBoxAdapter(
                child: SizedBox(height: 176 + MediaQuery.viewPaddingOf(context).bottom),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Aurora wash, or a cover-fitted picture anchored to the top (never stretched).
class _PageBackdrop extends StatelessWidget {
  const _PageBackdrop({required this.asset, required this.hue, required this.child});
  final String? asset;
  final ModuleHue hue;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final path = asset;
    if (path == null) return AuroraBackground(hue: hue, intensity: 0.6, child: child);
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          path,
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
          excludeFromSemantics: true,
          errorBuilder: (_, _, _) => ColoredBox(color: context.lux.background),
        ),
        child,
      ],
    );
  }
}
