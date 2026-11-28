import 'package:material_ui/material_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../app/localization/app_format.dart';
import '../../../../core/design_system/app_theme.dart';
import '../../../../core/design_system/tokens.dart';
import '../../../../core/speech/audio_service.dart';
import '../../../settings/application/settings_providers.dart';
import '../../application/end_tone_labels.dart';
import '../../domain/end_tone.dart';

/// The timer-end sounds as a row of chips under the controls. Tapping one
/// selects it and plays it once, so the choice is heard before it is needed.
class EndToneStrip extends ConsumerWidget {
  const EndToneStrip({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final current = EndTone.byName(ref.watch(settingsProvider.select((s) => s.focusEndTone)));
    Future<void> pick(EndTone t) async {
      await ref.read(settingsProvider.notifier).update((s) => s.copyWith(focusEndTone: t.name));
      final res = t.resource;
      if (res != null) await ref.read(audioClipPlayerProvider).playTone(res);
    }

    return Column(
      key: const Key('focusEndToneStrip'),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.notifications_active_outlined, size: 18, color: context.lux.ink2),
            const SizedBox(width: Space.xs),
            Text(l10n.settingsEndTone, style: context.text.titleSmall),
          ],
        ),
        const SizedBox(height: Space.xs),
        Wrap(
          spacing: Space.xs,
          runSpacing: Space.xs,
          children: [
            for (final t in EndTone.values)
              ChoiceChip(
                key: Key('focusTone_${t.name}'),
                label: Text(endToneName(l10n, t)),
                selected: t == current,
                onSelected: (_) => pick(t),
              ),
          ],
        ),
      ],
    );
  }
}
