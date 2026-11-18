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
import '../../settings/application/settings_providers.dart';
import '../application/flashcards_providers.dart';
import '../domain/study.dart';
import 'review_screen.dart' show studyModeLabel;

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
          const SizedBox(height: Space.md),
          _picker(
            l10n.speechBackLanguage,
            _back,
            (v) => setState(() => _back = v),
            const Key('speechBack'),
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
