part of '../analytics_screen.dart';

class _HorizontalBar extends StatelessWidget {
  const _HorizontalBar({
    required this.label,
    required this.value,
    required this.ratio,
    required this.color,
  });
  final String label;
  final String value;
  final double ratio;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            GlowDot(color: color),
            const SizedBox(width: Space.xs),
            Expanded(
              child: Text(
                label,
                style: context.text.bodyMedium,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(width: Space.xs),
            Text(value, style: context.text.labelMedium),
          ],
        ),
        const SizedBox(height: Space.xxs),
        Container(
          height: 8,
          decoration: BoxDecoration(
            color: context.lux.recessed,
            borderRadius: BorderRadius.circular(8),
          ),
          child: FractionallySizedBox(
            alignment: AlignmentDirectional.centerStart,
            widthFactor: ratio.clamp(0.02, 1.0),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [BoxShadow(color: color.withValues(alpha: 0.35), blurRadius: 6)],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _ProjectProgressCard extends StatelessWidget {
  const _ProjectProgressCard({required this.projects});
  final List<ProjectCompletion> projects;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final fmt = context.fmt;
    if (projects.isEmpty) {
      return LuxCard(child: Text(l10n.analyticsNoProjects, style: context.text.bodyMedium));
    }
    final sorted = [...projects]..sort((a, b) => b.ratio.compareTo(a.ratio));
    return LuxCard(
      child: Column(
        children: [
          for (final p in sorted)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: Space.xs),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      GlowDot(color: Color(p.project.color)),
                      const SizedBox(width: Space.xs),
                      Expanded(
                        child: Text(
                          p.project.name,
                          style: context.text.bodyMedium,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(width: Space.xs),
                      Text(
                        p.total == 0 ? l10n.analyticsNoData : fmt.percent(p.ratio),
                        style: context.text.labelMedium,
                      ),
                    ],
                  ),
                  const SizedBox(height: Space.xxs),
                  GlowBar(value: p.ratio, hue: ModuleHue.projects, semanticsLabel: p.project.name),
                  const SizedBox(height: 2),
                  Text(l10n.analyticsProjectTasks(p.done, p.total), style: context.text.bodySmall),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
