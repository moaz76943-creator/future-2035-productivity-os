import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../app/localization/app_format.dart';
import '../../core/platform/speech_input.dart';

final speechInputProvider = Provider<SpeechInputPlatform>((ref) => SpeechInputPlatform.create());

/// A microphone button for a text field: speaks into [controller]. The words
/// are added after any text already there, separated by a space.
class MicButton extends ConsumerWidget {
  const MicButton({required this.controller, this.languageTag, super.key});

  final TextEditingController controller;

  /// Spoken language (a card side's language); null = the app language.
  final String? languageTag;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return IconButton(
      tooltip: l10n.voiceInput,
      icon: const Icon(Icons.mic_none_rounded),
      onPressed: () async {
        final lang = (languageTag?.isNotEmpty ?? false) ? languageTag : context.language.tag;
        final r = await ref
            .read(speechInputProvider)
            .listen(languageTag: lang, prompt: l10n.voiceInputPrompt);
        if (!context.mounted) return;
        switch (r) {
          case SpeechText(:final text):
            final before = controller.text.trimRight();
            final value = before.isEmpty ? text : '$before $text';
            controller.value = TextEditingValue(
              text: value,
              selection: TextSelection.collapsed(offset: value.length),
            );
          case SpeechUnavailable():
            ScaffoldMessenger.maybeOf(context)
                ?.showSnackBar(SnackBar(content: Text(l10n.voiceInputUnavailable)));
          case SpeechCancelled():
            break;
        }
      },
    );
  }
}
