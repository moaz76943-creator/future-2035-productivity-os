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
      body: AuroraBackground(
        hue: hue,
        intensity: 0.6,
        child: CustomScrollView(
          slivers: [
            // Medium header: the large one left ~150px of empty space above the
            // content on phones. Content scrolling under the pinned bar gets a
            // solid backdrop instead of showing through the transparent bar.
            SliverAppBar.medium(
              automaticallyImplyLeading: canPop,
              backgroundColor: WidgetStateColor.resolveWith(
                (states) => states.contains(WidgetState.scrolledUnder)
                    ? lux.background.withValues(alpha: 0.97)
                    : Colors.transparent,
              ),
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
