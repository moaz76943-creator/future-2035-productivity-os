import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../app/localization/app_format.dart';
import '../../../../core/design_system/app_theme.dart';
import '../../../../core/design_system/tokens.dart';
import '../../../../core/speech/tts_service.dart';
import '../../application/listen_controller.dart';

/// Controls while cards are read aloud: progress, pause/resume, next, stop.
class ListenBar extends ConsumerWidget {
  const ListenBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final fmt = context.fmt;
    final lux = context.lux;
    final s = ref.watch(listenControllerProvider);
    final ctrl = ref.read(listenControllerProvider.notifier);
    final problem = switch (s.problem) {
      TtsResult.languageUnavailable => l10n.flashcardsTtsLanguageUnavailable,
      TtsResult.unavailable => l10n.flashcardsTtsUnavailable,
      _ => null,
    };
    return Material(
      key: const Key('listenBar'),
      color: lux.surface,
      elevation: 6,
      shadowColor: lux.shadow,
      borderRadius: BorderRadius.circular(32),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Space.sm, vertical: Space.xxs),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: Space.xs),
                  child: Directionality(
                    textDirection: TextDirection.ltr,
                    child: Text(
                      '${fmt.number(s.index + 1)} / ${fmt.number(s.total)}',
                      key: const Key('listenProgress'),
                      style: context.text.labelLarge,
                    ),
                  ),
                ),
                IconButton.filled(
                  key: const Key('listenPlayPause'),
                  tooltip: s.playing ? l10n.actionPause : l10n.actionResume,
                  style: IconButton.styleFrom(
                    backgroundColor: ModuleHue.flashcards.a,
                    minimumSize: const Size(52, 52),
                  ),
                  icon: Icon(s.playing ? Icons.pause_rounded : Icons.play_arrow_rounded),
                  onPressed: s.playing ? ctrl.pause : ctrl.resume,
                ),
                IconButton(
                  key: const Key('listenNext'),
                  tooltip: l10n.flashListenNext,
                  icon: const Icon(Icons.skip_next_rounded),
                  onPressed: ctrl.next,
                ),
                IconButton(
                  key: const Key('listenStop'),
                  tooltip: l10n.actionStop,
                  icon: const Icon(Icons.stop_rounded),
                  onPressed: ctrl.stop,
                ),
              ],
            ),
            if (problem != null)
              Padding(
                padding: const EdgeInsets.fromLTRB(Space.sm, 0, Space.sm, Space.xs),
                child: Text(
                  problem,
                  key: const Key('listenProblem'),
                  textAlign: TextAlign.center,
                  style: context.text.bodySmall?.copyWith(color: lux.danger),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
