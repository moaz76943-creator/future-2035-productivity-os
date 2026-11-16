import 'package:material_ui/material_ui.dart';

import '../../core/design_system/app_theme.dart';
import '../../core/design_system/components/surfaces.dart';
import '../../core/design_system/tokens.dart';

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
  final PreferredSizeWidget? bottom;
  final bool? showBack;

  @override
  Widget build(BuildContext context) {
    final canPop = showBack ?? Navigator.of(context).canPop();
    return Scaffold(
      floatingActionButton: floatingActionButton,
      body: AuroraBackground(
        hue: hue,
        intensity: 0.6,
        child: CustomScrollView(
          slivers: [
            SliverAppBar.large(
              automaticallyImplyLeading: canPop,
              backgroundColor: Colors.transparent,
              surfaceTintColor: Colors.transparent,
              title: Text(title, maxLines: 1, overflow: TextOverflow.ellipsis),
              actions: [...actions, const SizedBox(width: Space.xs)],
              bottom: bottom,
            ),
            if (subtitle != null)
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.md),
                  child: Text(subtitle!,
                      style: context.text.bodyMedium?.copyWith(color: context.lux.ink2)),
                ),
              ),
            ...slivers,
            const SliverToBoxAdapter(child: SizedBox(height: 120)),
          ],
        ),
      ),
    );
  }
}
