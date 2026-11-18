import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../app/routing/routes.dart';
import '../../../core/database/app_database.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/tokens.dart';
import '../../focus/presentation/session_plan.dart' show PlanStepper;
import '../../../core/speech/tts_service.dart';
import '../../settings/application/settings_providers.dart';
import '../application/flashcards_providers.dart';
import '../domain/study.dart';
import '../domain/card_extras.dart';
import '../domain/card_layout.dart';
import 'review_screen.dart' show studyModeLabel;
import 'widgets/card_form_sheet.dart' show cardFieldLabel;

IconData studyModeIcon(StudyMode m) => switch (m) {
  StudyMode.classic => Icons.style_rounded,
  StudyMode.reverse => Icons.swap_horiz_rounded,
  StudyMode.mixed => Icons.shuffle_rounded,
  StudyMode.typed => Icons.keyboard_rounded,
  StudyMode.choice => Icons.checklist_rounded,
  StudyMode.listening => Icons.hearing_rounded,
};

/// Choose how to study a deck: mode, then due review or a practice round.
Future<void> showStudySheet(BuildContext context, DeckRow deck) => showModalBottomSheet<void>(
  context: context,
  isScrollControlled: true,
  useSafeArea: true,
  showDragHandle: true,
  builder: (_) => _StudySheet(deck: deck),
);

class _StudySheet extends ConsumerWidget {
  const _StudySheet({required this.deck});
  final DeckRow deck;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final settings = ref.watch(settingsProvider);
    final mode = studyModeFromName(settings.flashStudyMode) ?? StudyMode.classic;
    final queue = ref.watch(studyQueueSizeProvider(deck.id)).value ?? 0;

    void go(StudyScope scope) {
      Navigator.pop(context);
      context.push(Routes.review(deck.id, mode: mode.name, scope: scope.name));
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Semantics(header: true, child: Text(l10n.studyHowTitle, style: context.text.titleLarge)),
          const SizedBox(height: Space.sm),
          Wrap(
            spacing: Space.xs,
            runSpacing: Space.xs,
            children: [
              for (final m in StudyMode.values)
                ChoiceChip(
                  key: Key('studyMode_${m.name}'),
                  avatar: Icon(studyModeIcon(m), size: 18),
                  label: Text(studyModeLabel(l10n, m)),
                  selected: m == mode,
                  onSelected: (_) => unawaited(
                    ref
                        .read(settingsProvider.notifier)
                        .update((s) => s.copyWith(flashStudyMode: m.name)),
                  ),
                ),
            ],
          ),
          const SizedBox(height: Space.lg),
          FilledButton.icon(
            key: const Key('studyDueButton'),
            style: FilledButton.styleFrom(minimumSize: const Size.fromHeight(52)),
            onPressed: queue > 0 ? () => go(StudyScope.scheduled) : null,
            icon: const Icon(Icons.school_rounded),
            label: Text(queue > 0 ? l10n.studyDueCount(queue) : l10n.deckNothingDue),
          ),
          const SizedBox(height: Space.sm),
          OutlinedButton.icon(
            key: const Key('practiceAllButton'),
            style: OutlinedButton.styleFrom(minimumSize: const Size.fromHeight(48)),
            onPressed: () => go(StudyScope.practiceAll),
            icon: const Icon(Icons.shuffle_rounded),
            label: Text(l10n.studyPracticeAll),
          ),
          const SizedBox(height: Space.sm),
          OutlinedButton.icon(
            key: const Key('practiceMistakesButton'),
            style: OutlinedButton.styleFrom(minimumSize: const Size.fromHeight(48)),
            onPressed: () => go(StudyScope.practiceMistakes),
            icon: const Icon(Icons.replay_rounded),
            label: Text(l10n.studyPracticeMistakes),
          ),
          const SizedBox(height: Space.xs),
          Wrap(
            spacing: Space.xs,
            runSpacing: Space.xs,
            children: [
              ActionChip(
                key: const Key('practiceNewButton'),
                avatar: const Icon(Icons.fiber_new_rounded, size: 18),
                label: Text(l10n.studyPracticeNew),
                onPressed: () => go(StudyScope.practiceNew),
              ),
              ActionChip(
                key: const Key('practiceHardButton'),
                avatar: const Icon(Icons.local_fire_department_outlined, size: 18),
                label: Text(l10n.studyPracticeHard),
                onPressed: () => go(StudyScope.practiceHard),
              ),
              ActionChip(
                key: const Key('practiceFavoritesButton'),
                avatar: const Icon(Icons.star_outline_rounded, size: 18),
                label: Text(l10n.studyPracticeFavorites),
                onPressed: () => go(StudyScope.practiceFavorites),
              ),
            ],
          ),
          const Divider(height: Space.xl),
          PlanStepper(
            key: const Key('studySessionSize'),
            label: l10n.studySessionSize,
            value: settings.flashSessionSize,
            min: 0,
            max: 500,
            display: (v) => v == 0 ? l10n.studySessionAll : context.fmt.number(v),
            onChanged: (v) => unawaited(
              ref.read(settingsProvider.notifier).update((s) => s.copyWith(flashSessionSize: v)),
            ),
          ),
          const SizedBox(height: Space.xs),
          Text(l10n.studyOrder, style: context.text.labelLarge),
          const SizedBox(height: Space.xs),
          Wrap(
            spacing: Space.xs,
            children: [
              for (final o in StudyOrder.values)
                ChoiceChip(
                  key: Key('studyOrder_${o.name}'),
                  label: Text(switch (o) {
                    StudyOrder.due => l10n.studyOrderDue,
                    StudyOrder.random => l10n.studyOrderRandom,
                    StudyOrder.hardest => l10n.studyOrderHardest,
                  }),
                  selected: studyOrderFromName(settings.flashOrder) == o,
                  onSelected: (_) => unawaited(
                    ref
                        .read(settingsProvider.notifier)
                        .update((s) => s.copyWith(flashOrder: o.name)),
                  ),
                ),
            ],
          ),
          const SizedBox(height: Space.sm),
          Text(
            l10n.studyPracticeHint,
            style: context.text.bodySmall?.copyWith(color: context.lux.ink2),
          ),
        ],
      ),
    );
  }
}

/// Languages offered for speech, as BCP-47 tags ('' = app language).
const speechLanguages = [
  '',
  'ar',
  'en-US',
  'en-GB',
  'de-DE',
  'fr-FR',
  'es-ES',
  'it-IT',
  'pt-BR',
  'ru-RU',
  'tr-TR',
  'zh-CN',
  'ja-JP',
  'ko-KR',
  'hi-IN',
  'ur-PK',
  'fa-IR',
  'id-ID',
  'nl-NL',
  'sv-SE',
  'pl-PL',
];

/// Each language in its own name (endonym), so it reads right in any UI language.
const speechLanguageNames = {
  'ar': 'العربية',
  'en-US': 'English (US)',
  'en-GB': 'English (UK)',
  'de-DE': 'Deutsch',
  'fr-FR': 'Français',
  'es-ES': 'Español',
  'it-IT': 'Italiano',
  'pt-BR': 'Português (Brasil)',
  'ru-RU': 'Русский',
  'tr-TR': 'Türkçe',
  'zh-CN': '中文（简体）',
  'ja-JP': '日本語',
  'ko-KR': '한국어',
  'hi-IN': 'हिन्दी',
  'ur-PK': 'اردو',
  'fa-IR': 'فارسی',
  'id-ID': 'Bahasa Indonesia',
  'nl-NL': 'Nederlands',
  'sv-SE': 'Svenska',
  'pl-PL': 'Polski',
};

/// Speech languages of a deck plus shared speech preferences.
Future<void> showSpeechSheet(BuildContext context, DeckRow deck) => showModalBottomSheet<void>(
  context: context,
  isScrollControlled: true,
  useSafeArea: true,
  showDragHandle: true,
  builder: (_) => _SpeechSheet(deck: deck),
);

class _SpeechSheet extends ConsumerStatefulWidget {
  const _SpeechSheet({required this.deck});
  final DeckRow deck;

  @override
  ConsumerState<_SpeechSheet> createState() => _SpeechSheetState();
}

class _SpeechSheetState extends ConsumerState<_SpeechSheet> {
  late String _front = widget.deck.frontLang;
  late String _back = widget.deck.backLang;
  late final Future<List<TtsVoice>> _voices = ref.read(ttsServiceProvider).voices();
  String? _testError;

  String _effective(String tag) =>
      tag.isEmpty ? Localizations.localeOf(context).toLanguageTag() : tag;

  String _lang(String tag) => _effective(tag).split(RegExp('[-_]')).first.toLowerCase();

  Future<void> _test(String tag) async {
    final l10n = context.l10n;
    final s = ref.read(settingsProvider);
    final eff = _effective(tag);
    final sample =
        speechLanguageNames[eff] ??
        speechLanguageNames.entries
            .firstWhere((e) => e.key.startsWith(_lang(tag)), orElse: () => MapEntry(eff, eff))
            .value;
    final r = await ref
        .read(ttsServiceProvider)
        .speak(
          sample,
          languageTag: eff,
          rate: s.flashSpeechRatePercent / 100,
          voice: s.flashVoices[_lang(tag)],
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
    final options = all.where((v) => v.language == lang && !v.notInstalled).toList();
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
              for (final v in options)
                DropdownMenuItem<String?>(
                  value: v.name,
                  child: Text(
                    v.network ? '${v.name} · ${l10n.speechVoiceOnline}' : v.name,
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

  String _name(String tag) {
    if (tag.isEmpty) return context.l10n.speechAppLanguage;
    return '${speechLanguageNames[tag] ?? tag} ($tag)';
  }

  Future<void> _save() async {
    await ref
        .read(flashcardsRepositoryProvider)
        .setDeckLanguages(widget.deck.id, front: _front, back: _back);
  }

  Widget _picker(String label, String value, ValueChanged<String> onChanged, Key key) =>
      DropdownButtonFormField<String>(
        key: key,
        initialValue: speechLanguages.contains(value) ? value : '',
        isExpanded: true,
        decoration: InputDecoration(labelText: label),
        items: [for (final t in speechLanguages) DropdownMenuItem(value: t, child: Text(_name(t)))],
        onChanged: (v) {
          onChanged(v ?? '');
          unawaited(_save());
        },
      );

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final s = ref.watch(settingsProvider);
    final ctrl = ref.read(settingsProvider.notifier);
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Semantics(header: true, child: Text(l10n.speechTitle, style: context.text.titleLarge)),
          const SizedBox(height: Space.md),
          _picker(
            l10n.speechFrontLanguage,
            _front,
            (v) => setState(() => _front = v),
            const Key('speechFront'),
          ),
          FutureBuilder<List<TtsVoice>>(
            future: _voices,
            builder: (context, snap) =>
                _voiceRow(_front, snap.data ?? const [], const Key('voiceFront')),
          ),
          const SizedBox(height: Space.md),
          _picker(
            l10n.speechBackLanguage,
            _back,
            (v) => setState(() => _back = v),
            const Key('speechBack'),
          ),
          FutureBuilder<List<TtsVoice>>(
            future: _voices,
            builder: (context, snap) =>
                _voiceRow(_back, snap.data ?? const [], const Key('voiceBack')),
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
          PlanStepper(
            key: const Key('speechRepeat'),
            label: l10n.speechRepeat,
            value: s.flashSpeechRepeat,
            min: 1,
            max: 9,
            display: (v) => '×${context.fmt.number(v)}',
            onChanged: (v) => unawaited(ctrl.update((c) => c.copyWith(flashSpeechRepeat: v))),
          ),
          PlanStepper(
            key: const Key('speechRate'),
            label: l10n.speechRate,
            value: s.flashSpeechRatePercent ~/ 10,
            min: 5,
            max: 20,
            display: (v) => context.fmt.percent(v / 10),
            onChanged: (v) =>
                unawaited(ctrl.update((c) => c.copyWith(flashSpeechRatePercent: v * 10))),
          ),
          SwitchListTile(
            key: const Key('speechAuto'),
            contentPadding: EdgeInsets.zero,
            title: Text(l10n.speechAutoRead),
            value: s.flashAutoSpeak,
            onChanged: (v) => unawaited(ctrl.update((c) => c.copyWith(flashAutoSpeak: v))),
          ),
          Text(l10n.speechHint, style: context.text.bodySmall?.copyWith(color: context.lux.ink2)),
        ],
      ),
    );
  }
}

/// Card layout for one deck: rename, hide and reorder the optional fields,
/// and reveal them one at a time on the answer side. Content is never changed.
Future<void> showLayoutSheet(BuildContext context, DeckRow deck) => showModalBottomSheet<void>(
  context: context,
  isScrollControlled: true,
  useSafeArea: true,
  showDragHandle: true,
  builder: (_) => _LayoutSheet(deck: deck),
);

class _LayoutSheet extends ConsumerStatefulWidget {
  const _LayoutSheet({required this.deck});
  final DeckRow deck;

  @override
  ConsumerState<_LayoutSheet> createState() => _LayoutSheetState();
}

class _LayoutSheetState extends ConsumerState<_LayoutSheet> {
  CardLayout? _layout;
  final Map<CardField, TextEditingController> _names = {};

  @override
  void initState() {
    super.initState();
    unawaited(
      ref.read(flashcardsRepositoryProvider).layout(widget.deck.id).then((l) {
        if (!mounted) return;
        setState(() {
          _layout = l;
          for (final f in CardField.values) {
            _names[f] = TextEditingController(text: l.labels[f] ?? '');
          }
        });
      }),
    );
  }

  @override
  void dispose() {
    for (final c in _names.values) {
      c.dispose();
    }
    super.dispose();
  }

  void _save(CardLayout next) {
    setState(() => _layout = next);
    unawaited(ref.read(flashcardsRepositoryProvider).saveLayout(widget.deck.id, next));
  }

  void _move(CardField f, int delta) {
    final l = _layout!;
    final order = [...l.order];
    final i = order.indexOf(f);
    final j = i + delta;
    if (j < 0 || j >= order.length) return;
    order
      ..removeAt(i)
      ..insert(j, f);
    _save(l.copyWith(order: order));
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final l = _layout;
    if (l == null) return const SizedBox(height: 200);
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(
        Space.page,
        0,
        Space.page,
        Space.lg + MediaQuery.viewInsetsOf(context).bottom,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Semantics(
            header: true,
            child: Text(l10n.flashcardsLayoutTitle, style: context.text.titleLarge),
          ),
          const SizedBox(height: Space.xs),
          Text(
            l10n.flashcardsLayoutHint,
            style: context.text.bodySmall?.copyWith(color: context.lux.ink2),
          ),
          const SizedBox(height: Space.md),
          for (final (i, f) in l.order.indexed)
            Padding(
              padding: const EdgeInsets.only(bottom: Space.sm),
              child: Row(
                children: [
                  Checkbox(
                    key: Key('layoutShow_${f.name}'),
                    value: !l.hidden.contains(f),
                    semanticLabel: l10n.flashcardsLayoutShow(cardFieldLabel(l10n, f)),
                    onChanged: (v) => _save(
                      l.copyWith(hidden: v == true ? ({...l.hidden}..remove(f)) : {...l.hidden, f}),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      key: Key('layoutName_${f.name}'),
                      controller: _names[f],
                      maxLength: CardLayout.maxLabel,
                      buildCounter: (_, {required currentLength, required isFocused, maxLength}) =>
                          null,
                      decoration: InputDecoration(
                        labelText: cardFieldLabel(l10n, f),
                        hintText: cardFieldLabel(l10n, f),
                        isDense: true,
                      ),
                      onChanged: (v) => _save(l.copyWith(labels: {...l.labels, f: v})),
                    ),
                  ),
                  IconButton(
                    tooltip: l10n.actionMoveUp,
                    onPressed: i == 0 ? null : () => _move(f, -1),
                    icon: const Icon(Icons.arrow_upward_rounded),
                  ),
                  IconButton(
                    tooltip: l10n.actionMoveDown,
                    onPressed: i == l.order.length - 1 ? null : () => _move(f, 1),
                    icon: const Icon(Icons.arrow_downward_rounded),
                  ),
                ],
              ),
            ),
          SwitchListTile(
            key: const Key('layoutStepReveal'),
            contentPadding: EdgeInsets.zero,
            title: Text(l10n.flashcardsLayoutStepReveal),
            subtitle: Text(l10n.flashcardsLayoutStepRevealHint),
            value: l.stepReveal,
            onChanged: (v) => _save(l.copyWith(stepReveal: v)),
          ),
        ],
      ),
    );
  }
}
