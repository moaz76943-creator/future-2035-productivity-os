import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../app/routing/deep_links.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/components/surfaces.dart';
import '../../../core/design_system/tokens.dart';
import '../../../shared/widgets/module_scaffold.dart';
import '../domain/feature_guide.dart';
import 'tour_sheet.dart';

/// Questions and answers about every feature, each with a way to the screen
/// it is about. Built from [featureGuide].
class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ModuleScaffold(
      title: l10n.helpTitle,
      hue: ModuleHue.analytics,
      actions: [
        IconButton(
          key: const Key('helpTour'),
          tooltip: l10n.helpTour,
          icon: const Icon(Icons.slideshow_outlined),
          onPressed: () => showTour(context),
        ),
      ],
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.xxxl),
          sliver: SliverList.separated(
            itemCount: featureGuide.length,
            separatorBuilder: (_, _) => const SizedBox(height: Space.xs),
            itemBuilder: (_, i) {
              final e = featureGuide[i];
              return LuxCard(
                key: Key('faq_${e.id}'),
                padding: EdgeInsets.zero,
                child: Theme(
                  data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    leading: IconOrb(icon: e.icon, hue: e.hue, size: 36),
                    title: Text(e.question(l10n), style: context.text.titleSmall),
                    childrenPadding: const EdgeInsetsDirectional.fromSTEB(
                      Space.md,
                      0,
                      Space.md,
                      Space.sm,
                    ),
                    expandedCrossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(e.answer(l10n), style: context.text.bodyMedium),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: TextButton(
                          key: Key('faqOpen_${e.id}'),
                          onPressed: () =>
                              isTabRoute(e.route) ? context.go(e.route) : context.push(e.route),
                          child: Text(l10n.helpOpen),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
