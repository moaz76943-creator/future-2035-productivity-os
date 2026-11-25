part of '../study_sheets.dart';

class _SpeechSheet extends ConsumerStatefulWidget {
  const _SpeechSheet({required this.deck});
  final DeckRow deck;

  @override
  ConsumerState<_SpeechSheet> createState() => _SpeechSheetState();
}

/// Deck languages (any language in the world; the phone's installed voices
/// first), the voice per language and how cards are read aloud.
class _SpeechSheetState extends ConsumerState<_SpeechSheet> {
  late String _front = widget.deck.frontLang;
  late String _back = widget.deck.backLang;
  late final Future<List<TtsVoice>> _voices = ref.read(ttsServiceProvider).voices();
  String? _testError;

  String _effective(String tag) =>
      tag.isEmpty ? Localizations.localeOf(context).toLanguageTag() : tag;

  String _lang(String tag) => languageCode(_effective(tag));

  Future<void> _test(String tag) async {
    final l10n = context.l10n;
    final s = ref.read(settingsProvider);
    final eff = _effective(tag);
    final r = await ref
        .read(ttsServiceProvider)
        .speak(
          languageDisplayName(eff),
          languageTag: eff,
          rate: s.flashSpeechRatePercent / 100,
          voice: s.flashVoices[_lang(tag)],
          repeat: s.flashSpeechRepeat,
          pauseMs: s.flashSpeechPauseTenths * 100,
        );
    if (!mounted) return;
    setState(
      () => _testError = switch (r) {
        TtsResult.ok || TtsResult.empty => null,
        TtsResult.languageUnavailable => l10n.flashcardsTtsLanguageUnavailable,
        TtsResult.unavailable => l10n.flashcardsTtsUnavailable,
      },
    );
  }

  /// Voice choice for the language of [tag], with a test button.
  Widget _voiceRow(String tag, List<TtsVoice> all, Key key) {
    final l10n = context.l10n;
    final lang = _lang(tag);
    // Same order every time: on-phone voices first, then by region and engine name.
    final options = all.where((v) => v.language == lang && !v.notInstalled).toList()
      ..sort((a, b) {
        if (a.network != b.network) return a.network ? 1 : -1;
        final r = _region(a).compareTo(_region(b));
        return r != 0 ? r : a.name.compareTo(b.name);
      });
    final current = ref.watch(settingsProvider.select((s) => s.flashVoices[lang]));
    final value = options.any((v) => v.name == current) ? current : null;
    return Row(
      children: [
        Expanded(
          child: DropdownButtonFormField<String?>(
            key: key,
            initialValue: value,
            isExpanded: true,
            decoration: InputDecoration(labelText: l10n.speechVoice),
            items: [
              DropdownMenuItem<String?>(child: Text(l10n.speechVoiceDefault)),
              // Engine ids ("en-us-x-sfg-local") mean nothing to people: number them instead.
              for (final (i, v) in options.indexed)
                DropdownMenuItem<String?>(
                  value: v.name,
                  child: Text(
                    [
                      l10n.speechVoiceNumber(context.fmt.number(i + 1)),
                      if (_region(v).isNotEmpty) _region(v),
                      if (v.network) l10n.speechVoiceOnline,
                    ].join(' · '),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
            ],
            onChanged: (name) => unawaited(
              ref.read(settingsProvider.notifier).update((s) {
                final m = {...s.flashVoices};
                if (name == null) {
                  m.remove(lang);
                } else {
                  m[lang] = name;
                }
                return s.copyWith(flashVoices: m);
              }),
            ),
          ),
        ),
        IconButton(
          tooltip: l10n.speechTest,
          onPressed: () => _test(tag),
          icon: const Icon(Icons.play_circle_outline_rounded),
        ),
      ],
    );
  }

  static String _region(TtsVoice v) {
    final parts = v.localeTag.split(RegExp('[-_]'));
    return parts.length > 1 && parts[1].length == 2 ? parts[1].toUpperCase() : '';
  }

  Future<void> _save() => ref
      .read(flashcardsRepositoryProvider)
      .setDeckLanguages(widget.deck.id, front: _front, back: _back);

  Widget _side(String label, String value, ValueChanged<String> set, Key key, Key voiceKey) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          LanguageButton(
            key: key,
            label: label,
            value: value,
            appLanguage: context.l10n.speechAppLanguage,
            onChanged: (v) {
              setState(() => set(v));
              unawaited(_save());
            },
          ),
          const SizedBox(height: Space.xs),
          FutureBuilder<List<TtsVoice>>(
            future: _voices,
            builder: (context, snap) => _voiceRow(value, snap.data ?? const [], voiceKey),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final fmt = context.fmt;
    final s = ref.watch(settingsProvider);
    final ctrl = ref.read(settingsProvider.notifier);
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Semantics(header: true, child: Text(l10n.speechTitle, style: context.text.titleLarge)),
          const SizedBox(height: Space.md),
          _side(
            l10n.speechFrontLanguage,
            _front,
            (v) => _front = v,
            const Key('speechFront'),
            const Key('voiceFront'),
          ),
          const SizedBox(height: Space.md),
          _side(
            l10n.speechBackLanguage,
            _back,
            (v) => _back = v,
            const Key('speechBack'),
            const Key('voiceBack'),
          ),
          if (_testError != null)
            Padding(
              padding: const EdgeInsets.only(top: Space.xs),
              child: Text(
                _testError!,
                key: const Key('speechTestError'),
                style: context.text.bodySmall?.copyWith(color: context.lux.danger),
              ),
            ),
          const SizedBox(height: Space.md),
          _SliderRow(
            key: const Key('speechRate'),
            label: l10n.speechRate,
            value: s.flashSpeechRatePercent ~/ 10,
            min: 5,
            max: 20,
            display: (v) => context.fmt.percent(v / 10),
            onChanged: (v) =>
                unawaited(ctrl.update((c) => c.copyWith(flashSpeechRatePercent: v * 10))),
          ),
          _SliderRow(
            key: const Key('speechRepeat'),
            label: l10n.speechRepeat,
            value: s.flashSpeechRepeat,
            min: 1,
            max: 9,
            display: (v) => '×${fmt.number(v)}',
            onChanged: (v) => unawaited(ctrl.update((c) => c.copyWith(flashSpeechRepeat: v))),
          ),
          _SliderRow(
            key: const Key('speechPause'),
            label: l10n.speechPause,
            value: s.flashSpeechPauseTenths,
            min: 0,
            max: 50,
            display: (v) => l10n.speechSeconds(fmt.number(v / 10, decimals: 1)),
            onChanged: (v) => unawaited(ctrl.update((c) => c.copyWith(flashSpeechPauseTenths: v))),
          ),
          SwitchListTile(
            key: const Key('speechAuto'),
            contentPadding: EdgeInsets.zero,
            title: Text(l10n.speechAutoRead),
            value: s.flashAutoSpeak,
            onChanged: (v) => unawaited(ctrl.update((c) => c.copyWith(flashAutoSpeak: v))),
          ),
          SwitchListTile(
            key: const Key('speechExample'),
            contentPadding: EdgeInsets.zero,
            title: Text(l10n.speechExample),
            value: s.flashSpeakExample,
            onChanged: (v) => unawaited(ctrl.update((c) => c.copyWith(flashSpeakExample: v))),
          ),
          Text(l10n.speechHint, style: context.text.bodySmall?.copyWith(color: context.lux.ink2)),
        ],
      ),
    );
  }
}

/// A setting you drag (or nudge with − and +): the value is shown large beside its name.
class _SliderRow extends StatelessWidget {
  const _SliderRow({
    super.key,
    required this.label,
    required this.value,
    required this.min,
    required this.max,
    required this.display,
    required this.onChanged,
  });
  final String label;
  final int value, min, max;
  final String Function(int) display;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    final v = value.clamp(min, max);
    final hue = ModuleHue.flashcards.a;
    return Padding(
      padding: const EdgeInsets.only(bottom: Space.xs),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(child: Text(label, style: context.text.titleSmall)),
              Text(
                display(v),
                style: context.text.titleMedium?.copyWith(color: hue, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                tooltip: context.l10n.focusPlanDecrease(label),
                icon: const Icon(Icons.remove_rounded),
                onPressed: v > min ? () => onChanged(v - 1) : null,
              ),
              Expanded(
                child: Slider(
                  value: v.toDouble(),
                  min: min.toDouble(),
                  max: max.toDouble(),
                  divisions: max - min,
                  label: display(v),
                  activeColor: hue,
                  semanticFormatterCallback: (d) => '$label ${display(d.round())}',
                  onChanged: (d) {
                    if (d.round() != v) onChanged(d.round());
                  },
                ),
              ),
              IconButton(
                tooltip: context.l10n.focusPlanIncrease(label),
                icon: const Icon(Icons.add_rounded),
                onPressed: v < max ? () => onChanged(v + 1) : null,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
