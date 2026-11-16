import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/components/indicators.dart';
import '../../../core/design_system/components/states.dart';
import '../../../core/design_system/components/surfaces.dart';
import '../../../core/design_system/tokens.dart';
import '../../../shared/widgets/module_scaffold.dart';
import '../../settings/application/settings_providers.dart';
import '../application/assistant_providers.dart';
import '../data/remote_assistant.dart';
import 'assistant_tools.dart';
import 'provider_settings_sheet.dart';

/// Optional productivity assistant. Every tool in the on-device section is
/// deterministic and local; the AI provider section only works after the
/// user configures their own provider and confirms each request.
class AssistantScreen extends ConsumerWidget {
  const AssistantScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final enabled = ref.watch(settingsProvider.select((s) => s.assistantEnabled));
    if (!enabled) {
      return ModuleScaffold(
        title: l10n.assistantTitle,
        hue: ModuleHue.assistant,
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                EmptyState(
                  icon: Icons.auto_awesome_rounded,
                  hue: ModuleHue.assistant,
                  title: l10n.assistantDisabledTitle,
                  message: l10n.assistantDisabledMessage,
                ),
                FilledButton.icon(
                  key: const ValueKey('assistant-enable'),
                  onPressed: () => ref
                      .read(settingsProvider.notifier)
                      .update((s) => s.copyWith(assistantEnabled: true)),
                  icon: const Icon(Icons.power_settings_new_rounded),
                  label: Text(l10n.settingsAssistantEnable),
                ),
              ],
            ),
          ),
        ],
      );
    }

    final endpoint = ref.watch(settingsProvider.select((s) => s.assistantEndpoint));
    final configured = ref.watch(assistantConfiguredProvider).value ?? false;
    final host = AssistantEndpoint.host(endpoint);

    return ModuleScaffold(
      title: l10n.assistantTitle,
      subtitle: l10n.assistantIntro,
      hue: ModuleHue.assistant,
      slivers: [
        SliverList.list(
          children: [
            SectionHeader(title: l10n.assistantOnDevice),
            _ToolCard(
              icon: Icons.wb_twilight_rounded,
              hue: ModuleHue.calendar,
              title: l10n.assistantPlanDay,
              description: l10n.assistantPlanDayDesc,
              onTap: () => showToolSheet(context, const PlanDaySheet()),
            ),
            _ToolCard(
              icon: Icons.checklist_rounded,
              hue: ModuleHue.tasks,
              title: l10n.assistantExtractTasks,
              description: l10n.assistantExtractTasksDesc,
              onTap: () => showToolSheet(context, const ExtractTasksSheet()),
            ),
            _ToolCard(
              icon: Icons.style_rounded,
              hue: ModuleHue.flashcards,
              title: l10n.assistantMakeCards,
              description: l10n.assistantMakeCardsDesc,
              onTap: () => showToolSheet(context, const MakeCardsSheet()),
            ),
            _ToolCard(
              icon: Icons.stacked_bar_chart_rounded,
              hue: ModuleHue.analytics,
              title: l10n.assistantWorkload,
              description: l10n.assistantWorkloadDesc,
              onTap: () => showToolSheet(context, const WorkloadSheet()),
            ),
            SectionHeader(title: l10n.assistantCloud),
            _ToolCard(
              icon: Icons.summarize_rounded,
              hue: ModuleHue.assistant,
              title: l10n.assistantSummarize,
              description: configured ? l10n.assistantSummarizeDesc : l10n.assistantProviderOff,
              trailing: configured ? null : LuxPill(label: l10n.assistantConfigure),
              onTap: () => configured
                  ? showToolSheet(context, const SummarizeSheet())
                  : showProviderSettings(context),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(Space.page, Space.sm, Space.page, 0),
              child: LuxCard(
                onTap: () => showProviderSettings(context),
                child: Row(
                  children: [
                    Icon(
                      configured ? Icons.cloud_done_rounded : Icons.cloud_off_rounded,
                      color: configured ? context.lux.success : context.lux.ink3,
                    ),
                    const SizedBox(width: Space.sm),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(l10n.assistantProviderTitle, style: context.text.titleSmall),
                          const SizedBox(height: 2),
                          Text(
                            configured && host != null
                                ? l10n.assistantProviderOn(host)
                                : l10n.assistantProviderOff,
                            style: context.text.bodySmall,
                          ),
                        ],
                      ),
                    ),
                    const Icon(Icons.chevron_right_rounded),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _ToolCard extends StatelessWidget {
  const _ToolCard({
    required this.icon,
    required this.hue,
    required this.title,
    required this.description,
    required this.onTap,
    this.trailing,
  });
  final IconData icon;
  final ModuleHue hue;
  final String title;
  final String description;
  final VoidCallback onTap;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(Space.page, 0, Space.page, Space.sm),
      child: LuxCard(
        onTap: onTap,
        semanticLabel: '$title. $description',
        child: ExcludeSemantics(
          child: Row(
            children: [
              IconOrb(icon: icon, hue: hue, size: 40),
              const SizedBox(width: Space.md),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: context.text.titleSmall),
                    const SizedBox(height: 2),
                    Text(description, style: context.text.bodySmall),
                  ],
                ),
              ),
              if (trailing != null) ...[const SizedBox(width: Space.xs), trailing!],
            ],
          ),
        ),
      ),
    );
  }
}
