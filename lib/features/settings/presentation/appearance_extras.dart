import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/tokens.dart';
import '../application/settings_providers.dart';

/// Appearance: accent colour and flashcard text size.
class AppearanceExtras extends ConsumerWidget {
  const AppearanceExtras({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final accent = ref.watch(settingsProvider.select((s) => s.accent));
    final percent = ref.watch(settingsProvider.select((s) => s.flashTextPercent));
    void set(String? a, int? p) => ref
        .read(settingsProvider.notifier)
        .update((s) => s.copyWith(accent: a, flashTextPercent: p));
    String name(String id) => switch (id) {
      'blue' => l10n.accentBlue,
      'teal' => l10n.accentTeal,
      'green' => l10n.accentGreen,
      'rose' => l10n.accentRose,
      'amber' => l10n.accentAmber,
      _ => l10n.accentViolet,
    };
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(Space.md, Space.sm, Space.md, Space.sm),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(l10n.settingsAccent, style: context.text.titleSmall),
          const SizedBox(height: Space.xs),
          Wrap(
            spacing: Space.xs,
            runSpacing: Space.xs,
            children: [
              for (final e in AppAccents.all.entries)
                Semantics(
                  button: true,
                  selected: e.key == accent,
                  label: name(e.key),
                  excludeSemantics: true,
                  child: InkResponse(
                    key: Key('accent_${e.key}'),
                    radius: 26,
                    onTap: () => set(e.key, null),
                    child: Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        color: e.value,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: e.key == accent ? context.lux.ink : Colors.transparent,
                          width: 3,
                        ),
                      ),
                      child: e.key == accent
                          ? const Icon(Icons.check_rounded, color: Colors.white)
                          : null,
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: Space.md),
          Text(l10n.settingsFlashTextSize, style: context.text.titleSmall),
          Slider(
            key: const Key('flashTextSize'),
            value: percent.toDouble(),
            min: 80,
            max: 160,
            divisions: 8,
            label: context.fmt.percent(percent / 100),
            semanticFormatterCallback: (v) => context.fmt.percent(v / 100),
            onChanged: (v) => set(null, v.round()),
          ),
          Center(
            child: Text(
              l10n.settingsFlashTextSample,
              textScaler: TextScaler.linear(percent / 100),
              style: context.text.headlineSmall,
            ),
          ),
        ],
      ),
    );
  }
}
