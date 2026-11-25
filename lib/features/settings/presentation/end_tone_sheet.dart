import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/tokens.dart';
import '../../../core/speech/audio_service.dart';
import '../../focus/application/end_tone_labels.dart';
import '../../focus/domain/end_tone.dart';
import '../application/settings_providers.dart';

/// Settings row for the timer-end sound; opens [_EndToneSheet].
class EndToneTile extends ConsumerWidget {
  const EndToneTile({super.key, required this.enabled});
  final bool enabled;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final tone = EndTone.byName(ref.watch(settingsProvider.select((s) => s.focusEndTone)));
    return ListTile(
      key: const Key('focusEndTone'),
      enabled: enabled,
      leading: const Icon(Icons.notifications_active_outlined),
      title: Text(l10n.settingsEndTone),
      subtitle: Text(endToneName(l10n, tone)),
      trailing: const Icon(Icons.chevron_right_rounded),
      onTap: () => showModalBottomSheet<void>(
        useRootNavigator: true,
        context: context,
        useSafeArea: true,
        isScrollControlled: true,
        builder: (_) => const _EndToneSheet(),
      ),
    );
  }
}

/// Choose the sound; tapping one also plays it once.
class _EndToneSheet extends ConsumerWidget {
  const _EndToneSheet();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final current = EndTone.byName(ref.watch(settingsProvider.select((s) => s.focusEndTone)));
    Future<void> pick(EndTone t) async {
      await ref.read(settingsProvider.notifier).update((s) => s.copyWith(focusEndTone: t.name));
      final res = t.resource;
      if (res != null) await ref.read(audioClipPlayerProvider).playTone(res);
    }

    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(0, Space.md, 0, Space.md),
        child: RadioGroup<EndTone>(
          groupValue: current,
          onChanged: (t) {
            if (t != null) pick(t);
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: Space.page),
                child: Text(l10n.settingsEndTone, style: context.text.titleLarge),
              ),
              const SizedBox(height: Space.xs),
              for (final t in EndTone.values)
                RadioListTile<EndTone>(
                  key: Key('endTone_${t.name}'),
                  value: t,
                  title: Text(endToneName(l10n, t)),
                  secondary: Icon(
                    t == EndTone.system ? Icons.phone_android_rounded : Icons.play_circle_outline,
                    color: context.lux.ink2,
                  ),
                ),
              Padding(
                padding: const EdgeInsets.fromLTRB(Space.page, Space.sm, Space.page, 0),
                child: FilledButton(
                  key: const Key('endToneDone'),
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text(l10n.actionDone),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
