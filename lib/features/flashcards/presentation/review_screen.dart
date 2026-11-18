import 'dart:async';
import 'dart:math' as math;

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../core/database/app_database.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/components/indicators.dart';
import '../../../core/design_system/components/states.dart';
import '../../../core/design_system/components/surfaces.dart';
import '../../../core/design_system/tokens.dart';
import '../../../core/providers/core_providers.dart';
import '../../../core/speech/tts_service.dart';
import '../../../l10n/gen/app_localizations.dart';
import '../../settings/application/settings_providers.dart';
import '../application/flashcards_providers.dart';
import '../domain/card_extras.dart';
import '../domain/srs_scheduler.dart';
import '../domain/study.dart';
import 'widgets/card_form_sheet.dart' show cardFieldLabel, showCardForm;

const _hue = ModuleHue.flashcards;

/// Learning cards that come due again within this window are shown again
/// in the same session.
const _sameSessionWindow = Duration(minutes: 20);

String studyModeLabel(AppLocalizations l10n, StudyMode m) => switch (m) {
  StudyMode.classic => l10n.studyModeClassic,
  StudyMode.reverse => l10n.studyModeReverse,
  StudyMode.mixed => l10n.studyModeMixed,
  StudyMode.typed => l10n.studyModeTyped,
  StudyMode.choice => l10n.studyModeChoice,
  StudyMode.listening => l10n.studyModeListening,
};

/// A study session over one deck.
///
/// [StudyScope.scheduled] rates cards and updates their schedule; practice
/// scopes never touch scheduling and only count right / wrong. Every mode
/// ends with a summary listing the cards that were missed, which can be
/// repeated straight away as a practice round.
class ReviewScreen extends ConsumerStatefulWidget {
  const ReviewScreen({
    super.key,
    required this.deckId,
    this.mode,
    this.scope = StudyScope.scheduled,
    this.cards,
  });
  final String deckId;

  /// Null: the last mode chosen in settings.
  final StudyMode? mode;
  final StudyScope scope;

  /// Fixed card list (used for "repeat mistakes"); loads from the deck when null.
  final List<CardRow>? cards;

  @override
  ConsumerState<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends ConsumerState<ReviewScreen> {
  List<CardRow>? _queue;
  List<String> _pool = const [];
  List<String> _poolFronts = const [];
  bool _failed = false;
  int _index = 0;
  bool _flipped = false;
  bool _busy = false;
  bool _questionShown = false;
  AnswerMatch? _match;
  String? _picked;
  List<String>? _options;
  final _typed = TextEditingController();
  final _random = math.Random();
  final Map<ReviewRating, int> _counts = {for (final r in ReviewRating.values) r: 0};
  int _right = 0;
  final List<CardRow> _mistakes = [];

  late final StudyMode _mode =
      widget.mode ??
      studyModeFromName(ref.read(settingsProvider).flashStudyMode) ??
      StudyMode.classic;
  bool get _practice => widget.scope != StudyScope.scheduled;
  int get _done => _practice ? _right + _mistakes.length : _counts.values.fold(0, (a, b) => a + b);

  CardRow? get _currentCard {
    final q = _queue;
    return q != null && _index < q.length ? q[_index] : null;
  }

  bool _reversed(CardRow c) => StudyRules.reversed(_mode, c.id);
  String _question(CardRow c) => _reversed(c) ? c.back : c.front;
  String _answer(CardRow c) => _reversed(c) ? c.front : c.back;

  // Read once while the element is alive; `ref` must not be used in dispose().
  late final TtsService _tts = ref.read(ttsServiceProvider);

  @override
  void initState() {
    super.initState();
    _tts;
    _load();
  }

  @override
  void dispose() {
    _typed.dispose();
    _tts.stop();
    super.dispose();
  }

  Future<void> _load() async {
    final repo = ref.read(flashcardsRepositoryProvider);
    try {
      final q = widget.cards != null
          ? [...widget.cards!]
          : switch (widget.scope) {
              StudyScope.scheduled => await repo.reviewQueue(widget.deckId),
              StudyScope.practiceAll => await repo.practiceCards(
                widget.deckId,
                mistakesOnly: false,
              ),
              StudyScope.practiceMistakes => await repo.practiceCards(
                widget.deckId,
                mistakesOnly: true,
              ),
            };
      List<CardRow> all = const [];
      if (_mode == StudyMode.choice) all = await repo.watchCards(widget.deckId).first;
      if (!mounted) return;
      setState(() {
        _queue = q;
        _pool = [for (final c in all) c.back];
        _poolFronts = [for (final c in all) c.front];
      });
      _onCardShown();
    } catch (_) {
      if (mounted) setState(() => _failed = true);
    }
  }

  void _onCardShown() {
    final card = _currentCard;
    if (card == null) return;
    _typed.clear();
    _match = null;
    _picked = null;
    _questionShown = _mode != StudyMode.listening;
    _options = _mode == StudyMode.choice
        ? StudyRules.choices(_answer(card), _reversed(card) ? _poolFronts : _pool, _random)
        : null;
    final auto = _mode == StudyMode.listening || ref.read(settingsProvider).flashAutoSpeak;
    if (auto) unawaited(_speak(card, question: true));
  }

  /// Speaks one side in the deck's language for that side. Text-to-speech is
  /// optional: when the device has no engine or voice the user is told so
  /// and the session goes on.
  Future<void> _speak(CardRow card, {required bool question}) async {
    final messenger = ScaffoldMessenger.of(context);
    final l10n = context.l10n;
    final settings = ref.read(settingsProvider);
    final deck = ref.read(deckProvider(widget.deckId)).value;
    final frontSide = question != _reversed(card);
    final lang = frontSide ? deck?.frontLang : deck?.backLang;
    final tag = (lang == null || lang.isEmpty)
        ? Localizations.localeOf(context).toLanguageTag()
        : lang;
    final text = frontSide ? card.front : card.back;
    final result = await _tts.speak(
      text,
      languageTag: tag,
      rate: settings.flashSpeechRatePercent / 100,
      repeat: settings.flashSpeechRepeat,
    );
    if (!mounted) return;
    final message = switch (result) {
      TtsResult.ok || TtsResult.empty => null,
      TtsResult.languageUnavailable => l10n.flashcardsTtsLanguageUnavailable,
      TtsResult.unavailable => l10n.flashcardsTtsUnavailable,
    };
    if (message != null) {
      messenger
        ..hideCurrentSnackBar()
        // Floats above the answer / rating bar so the message never covers them.
        ..showSnackBar(
          SnackBar(
            content: Text(message),
            behavior: SnackBarBehavior.floating,
            margin: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, 52 + Space.lg + Space.md),
          ),
        );
    }
  }

  void _next() {
    setState(() {
      _index++;
      _flipped = false;
      _busy = false;
    });
    _onCardShown();
  }

  void _checkTyped(CardRow card) {
    if (_typed.text.trim().isEmpty) return;
    setState(() {
      _match = StudyRules.check(_typed.text, _answer(card));
      _flipped = true;
    });
  }

  void _pick(CardRow card, String option) {
    if (_picked != null) return;
    setState(() {
      _picked = option;
      _match = option == _answer(card) ? AnswerMatch.exact : AnswerMatch.wrong;
      _flipped = true;
    });
  }

  /// Practice: no scheduling, only right / wrong.
  void _practiceResult(CardRow card, bool knew) {
    if (!knew) _mistakes.add(card);
    if (knew) _right++;
    _next();
  }

  Future<void> _rate(CardRow card, ReviewRating rating) async {
    if (_busy) return;
    setState(() => _busy = true);
    final repo = ref.read(flashcardsRepositoryProvider);
    final clock = ref.read(clockProvider);
    try {
      final after = await repo.recordReview(card.id, rating);
      CardRow? again;
      final due = after.dueAt;
      if (after.state != CardState.review &&
          due != null &&
          !due.difference(clock.now()).isNegative &&
          due.difference(clock.now()) <= _sameSessionWindow) {
        again = await repo.getCard(card.id);
      }
      if (!mounted) return;
      _counts[rating] = _counts[rating]! + 1;
      if (rating == ReviewRating.again && !_mistakes.any((c) => c.id == card.id)) {
        _mistakes.add(card);
      }
      if (again != null) _queue!.add(again);
      _next();
    } catch (_) {
      if (!mounted) return;
      setState(() => _busy = false);
      ScaffoldMessenger.maybeOf(context)
          ?.showSnackBar(SnackBar(content: Text(context.l10n.errorSaveFailed)));
    }
  }

  Future<void> _edit(CardRow card) async {
    await showCardForm(context, deckId: widget.deckId, initial: card);
    final fresh = await ref.read(flashcardsRepositoryProvider).getCard(card.id);
    if (!mounted || fresh == null || _queue == null) return;
    setState(() => _queue![_index] = fresh);
  }

  Future<void> _suspend(CardRow card) async {
    await ref.read(flashcardsRepositoryProvider).setSuspended(card.id, true);
    if (!mounted) return;
    final repo = ref.read(flashcardsRepositoryProvider);
    showUndoSnackBar(
      context,
      context.l10n.flashcardsSuspended,
      () => repo.setSuspended(card.id, false),
    );
    setState(() => _queue!.removeAt(_index));
    _onCardShown();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final deck = ref.watch(deckProvider(widget.deckId)).value;
    final card = _currentCard;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(deck?.name ?? l10n.flashTitle, maxLines: 1, overflow: TextOverflow.ellipsis),
            Text(
              _practice
                  ? '${studyModeLabel(l10n, _mode)} · ${l10n.studyPractice}'
                  : studyModeLabel(l10n, _mode),
              style: context.text.labelMedium?.copyWith(color: context.lux.ink2),
            ),
          ],
        ),
        actions: [
          if (card != null) ...[
            IconButton(
              key: const Key('reviewSpeakButton'),
              tooltip: l10n.flashcardsReadAloud,
              icon: const Icon(Icons.volume_up_rounded),
              onPressed: () => _speak(card, question: !_flipped),
            ),
            PopupMenuButton<String>(
              key: const Key('reviewMenu'),
              tooltip: l10n.actionMore,
              onSelected: (v) => v == 'edit' ? _edit(card) : _suspend(card),
              itemBuilder: (_) => [
                PopupMenuItem(value: 'edit', child: Text(l10n.cardEdit)),
                PopupMenuItem(value: 'suspend', child: Text(l10n.flashcardsSuspend)),
              ],
            ),
          ],
        ],
      ),
      body: AuroraBackground(
        hue: _hue,
        intensity: 0.5,
        child: SafeArea(child: _body(context)),
      ),
    );
  }

  Widget _body(BuildContext context) {
    final l10n = context.l10n;
    final queue = _queue;
    if (_failed) {
      return ErrorState(
        title: l10n.errorGenericTitle,
        message: l10n.errorLoadFailed,
        retryLabel: l10n.actionRetry,
        onRetry: () {
          setState(() => _failed = false);
          _load();
        },
      );
    }
    if (queue == null) return LoadingState(label: l10n.stateLoading, rows: 2);
    if (queue.isEmpty) {
      return Padding(
        padding: const EdgeInsets.all(Space.page),
        child: EmptyState(
          icon: Icons.check_circle_outline_rounded,
          hue: _hue,
          title: l10n.flashcardsNothingToStudy,
          message: widget.scope == StudyScope.practiceMistakes
              ? l10n.studyNoMistakes
              : l10n.deckNothingDue,
          actionLabel: l10n.actionBack,
          onAction: () => Navigator.of(context).maybePop(),
        ),
      );
    }
    if (_index >= queue.length) return _summary(context);

    final card = queue[_index];
    final question = _question(card);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(Space.page, Space.xs, Space.page, 0),
          child: Row(
            children: [
              Expanded(
                child: GlowBar(
                  value: _index / queue.length,
                  hue: _hue,
                  semanticsLabel: l10n.reviewProgress(_index, queue.length),
                ),
              ),
              const SizedBox(width: Space.sm),
              ExcludeSemantics(
                child: Text(
                  l10n.reviewProgress(_index, queue.length),
                  style: context.text.labelMedium?.copyWith(color: context.lux.ink2),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(Space.page),
            child: _FlipCard(
              key: ValueKey('card-$_index'),
              front: question,
              back: _answer(card),
              extras: CardExtras.decode(card.extra),
              flipped: _flipped,
              hideFront: !_questionShown && !_flipped,
              onRevealFront: () => setState(() => _questionShown = true),
              verdict: _match,
              // Answer modes flip only by answering.
              onFlip: _mode == StudyMode.typed || _mode == StudyMode.choice
                  ? null
                  : () => setState(() => _flipped = !_flipped),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.lg),
          child: _flipped ? _afterAnswer(card) : _beforeAnswer(card),
        ),
      ],
    );
  }

  Widget _beforeAnswer(CardRow card) {
    final l10n = context.l10n;
    switch (_mode) {
      case StudyMode.typed:
        return Row(
          children: [
            Expanded(
              child: TextField(
                key: const Key('typedAnswerField'),
                controller: _typed,
                autofocus: true,
                textInputAction: TextInputAction.done,
                onSubmitted: (_) => _checkTyped(card),
                decoration: InputDecoration(hintText: l10n.studyTypeAnswer),
              ),
            ),
            const SizedBox(width: Space.sm),
            ValueListenableBuilder<TextEditingValue>(
              valueListenable: _typed,
              builder: (_, v, _) => FilledButton(
                key: const Key('checkAnswerButton'),
                style: FilledButton.styleFrom(minimumSize: const Size(0, 52)),
                onPressed: v.text.trim().isEmpty ? null : () => _checkTyped(card),
                child: Text(l10n.studyCheck),
              ),
            ),
          ],
        );
      case StudyMode.choice:
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            for (final (i, o) in (_options ?? const <String>[]).indexed)
              Padding(
                padding: const EdgeInsets.only(bottom: Space.xs),
                child: OutlinedButton(
                  key: Key('choice_$i'),
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size.fromHeight(52),
                    alignment: AlignmentDirectional.centerStart,
                  ),
                  onPressed: () => _pick(card, o),
                  child: Text(o, maxLines: 2, overflow: TextOverflow.ellipsis),
                ),
              ),
          ],
        );
      default:
        return FilledButton.icon(
          key: const Key('showAnswerButton'),
          style: FilledButton.styleFrom(minimumSize: const Size.fromHeight(52)),
          onPressed: () => setState(() => _flipped = true),
          icon: const Icon(Icons.flip_rounded),
          label: Text(l10n.reviewShowAnswer),
        );
    }
  }

  Widget _afterAnswer(CardRow card) {
    final l10n = context.l10n;
    if (_practice) {
      final knewDefault = _match == null ? null : _match != AnswerMatch.wrong;
      return Row(
        children: [
          Expanded(
            child: OutlinedButton.icon(
              key: const Key('practiceWrong'),
              style: OutlinedButton.styleFrom(
                minimumSize: const Size.fromHeight(52),
                foregroundColor: context.lux.danger,
              ),
              onPressed: () => _practiceResult(card, false),
              icon: const Icon(Icons.close_rounded),
              label: Text(l10n.studyDidntKnow),
            ),
          ),
          const SizedBox(width: Space.sm),
          Expanded(
            child: FilledButton.icon(
              key: const Key('practiceRight'),
              style: FilledButton.styleFrom(minimumSize: const Size.fromHeight(52)),
              onPressed: knewDefault == false && _mode == StudyMode.choice
                  ? null
                  : () => _practiceResult(card, true),
              icon: const Icon(Icons.check_rounded),
              label: Text(l10n.studyKnewIt),
            ),
          ),
        ],
      );
    }
    final suggested = switch (_match) {
      AnswerMatch.exact => ReviewRating.good,
      AnswerMatch.close => ReviewRating.hard,
      AnswerMatch.wrong => ReviewRating.again,
      null => null,
    };
    return _RatingBar(
      card: card,
      enabled: !_busy,
      suggested: suggested,
      onRate: (r) => _rate(card, r),
    );
  }

  Widget _summary(BuildContext context) {
    final l10n = context.l10n;
    final fmt = context.fmt;
    final mistakes = List<CardRow>.of(_mistakes);
    return ListView(
      padding: const EdgeInsets.all(Space.page),
      children: [
        AuroraCard(
          hue: _hue,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Semantics(
                header: true,
                child: Text(
                  l10n.reviewFinishedTitle,
                  style: context.text.headlineSmall?.copyWith(color: Colors.white),
                ),
              ),
              const SizedBox(height: Space.xs),
              Text(
                l10n.reviewFinishedMessage(_done),
                style: context.text.bodyLarge?.copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
        if (_practice) ...[
          const SizedBox(height: Space.lg),
          Row(
            children: [
              Expanded(
                child: StatTile(
                  key: const Key('summary_right'),
                  value: fmt.number(_right),
                  label: l10n.studyKnewIt,
                  hue: _hue,
                ),
              ),
              const SizedBox(width: Space.sm),
              Expanded(
                child: StatTile(
                  key: const Key('summary_wrong'),
                  value: fmt.number(mistakes.length),
                  label: l10n.studyDidntKnow,
                  hue: _hue,
                ),
              ),
            ],
          ),
        ] else ...[
          SectionHeader(
            title: l10n.flashcardsByRating,
            padding: const EdgeInsets.fromLTRB(0, Space.xl, 0, Space.sm),
          ),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            mainAxisSpacing: Space.sm,
            crossAxisSpacing: Space.sm,
            childAspectRatio: 1.7,
            children: [
              for (final r in ReviewRating.values)
                StatTile(
                  key: Key('summary_${r.name}'),
                  value: fmt.number(_counts[r]!),
                  label: _ratingLabel(l10n, r),
                  hue: _hue,
                ),
            ],
          ),
        ],
        if (mistakes.isNotEmpty) ...[
          SectionHeader(
            title: l10n.studyMistakes(mistakes.length),
            padding: const EdgeInsets.fromLTRB(0, Space.xl, 0, Space.sm),
          ),
          for (final c in mistakes)
            Padding(
              padding: const EdgeInsets.only(bottom: Space.xs),
              child: LuxCard(
                elevated: false,
                padding: const EdgeInsets.all(Space.sm),
                child: Row(
                  children: [
                    Expanded(child: Text(c.front, style: context.text.titleSmall)),
                    const SizedBox(width: Space.sm),
                    Expanded(
                      child: Text(
                        c.back,
                        textAlign: TextAlign.end,
                        style: context.text.bodyMedium?.copyWith(color: context.lux.ink2),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          const SizedBox(height: Space.md),
          FilledButton.tonalIcon(
            key: const Key('repeatMistakesButton'),
            onPressed: () => Navigator.of(context).pushReplacement(
              MaterialPageRoute<void>(
                builder: (_) => ReviewScreen(
                  deckId: widget.deckId,
                  mode: _mode,
                  scope: StudyScope.practiceMistakes,
                  cards: mistakes..shuffle(_random),
                ),
              ),
            ),
            icon: const Icon(Icons.replay_rounded),
            label: Text(l10n.studyRepeatMistakes),
          ),
        ],
        const SizedBox(height: Space.md),
        FilledButton(
          key: const Key('reviewDoneButton'),
          onPressed: () => Navigator.of(context).maybePop(),
          child: Text(l10n.actionDone),
        ),
      ],
    );
  }
}

/// Undo snackbar shared by the study screen.
void showUndoSnackBar(BuildContext context, String message, VoidCallback onUndo) {
  ScaffoldMessenger.maybeOf(context)
    ?..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Text(message),
        behavior: SnackBarBehavior.floating,
        action: SnackBarAction(label: context.l10n.actionUndo, onPressed: onUndo),
      ),
    );
}

String _ratingLabel(AppLocalizations l10n, ReviewRating r) => switch (r) {
  ReviewRating.again => l10n.reviewAgain,
  ReviewRating.hard => l10n.reviewHard,
  ReviewRating.good => l10n.reviewGood,
  ReviewRating.easy => l10n.reviewEasy,
};

class _FlipCard extends StatelessWidget {
  const _FlipCard({
    super.key,
    required this.front,
    required this.back,
    required this.flipped,
    required this.onFlip,
    this.extras = const CardExtras(),
    this.hideFront = false,
    this.onRevealFront,
    this.verdict,
  });

  /// Question text (the back of the card in reverse mode).
  final String front;

  /// Answer text.
  final String back;
  final CardExtras extras;
  final bool flipped;
  final VoidCallback? onFlip;

  /// Listening mode: the question is heard first; its text is revealed on tap.
  final bool hideFront;
  final VoidCallback? onRevealFront;
  final AnswerMatch? verdict;

  Widget _verdict(BuildContext context) {
    final l10n = context.l10n;
    final lux = context.lux;
    final (icon, text, color) = switch (verdict!) {
      AnswerMatch.exact => (Icons.check_circle_rounded, l10n.studyCorrect, lux.success),
      AnswerMatch.close => (Icons.adjust_rounded, l10n.studyAlmost, lux.warning),
      AnswerMatch.wrong => (Icons.cancel_rounded, l10n.studyWrong, lux.danger),
    };
    return Padding(
      padding: const EdgeInsets.only(bottom: Space.md),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          const SizedBox(width: Space.xs),
          Flexible(
            child: Text(
              text,
              key: const Key('answerVerdict'),
              textAlign: TextAlign.center,
              style: context.text.titleMedium?.copyWith(color: color),
            ),
          ),
        ],
      ),
    );
  }

  Widget _face(BuildContext context, {required bool showBack}) {
    final lux = context.lux;
    final l10n = context.l10n;
    return LuxCard(
      key: ValueKey(showBack),
      radius: Radii.xl,
      padding: const EdgeInsets.all(Space.xl),
      child: SizedBox.expand(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (showBack) ...[
                if (verdict != null) _verdict(context),
                Text(
                  front,
                  textAlign: TextAlign.center,
                  style: context.text.titleMedium?.copyWith(color: lux.ink2),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: Space.md),
                  child: Divider(color: lux.hairline),
                ),
                Text(back, textAlign: TextAlign.center, style: context.text.headlineSmall),
                for (final f in CardField.values)
                  if (extras[f] case final value?) ...[
                    const SizedBox(height: Space.md),
                    Text(
                      cardFieldLabel(l10n, f),
                      textAlign: TextAlign.center,
                      style: context.text.labelMedium?.copyWith(color: lux.ink3),
                    ),
                    const SizedBox(height: Space.xxs),
                    Text(value, textAlign: TextAlign.center, style: context.text.bodyLarge),
                  ],
              ] else if (hideFront) ...[
                Icon(Icons.hearing_rounded, size: 48, color: _hue.a),
                const SizedBox(height: Space.md),
                TextButton(
                  key: const Key('revealQuestionButton'),
                  onPressed: onRevealFront,
                  child: Text(l10n.studyShowText),
                ),
              ] else ...[
                Text(front, textAlign: TextAlign.center, style: context.text.headlineSmall),
                if (onFlip != null) ...[
                  const SizedBox(height: Space.lg),
                  Text(
                    l10n.reviewTapToFlip,
                    textAlign: TextAlign.center,
                    style: context.text.bodySmall?.copyWith(color: lux.ink3),
                  ),
                ],
              ],
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final Widget visual;
    if (context.reduceMotion) {
      // Crossfade only: no spatial motion for reduced-motion users.
      visual = AnimatedSwitcher(
        duration: Motion.fast,
        child: _face(context, showBack: flipped),
      );
    } else {
      visual = TweenAnimationBuilder<double>(
        tween: Tween(end: flipped ? 1 : 0),
        duration: Motion.slow,
        curve: Motion.emphasized,
        builder: (context, t, _) {
          final showBack = t >= 0.5;
          final angle = t * math.pi;
          return Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY(showBack ? angle - math.pi : angle),
            child: _face(context, showBack: showBack),
          );
        },
      );
    }
    if (hideFront && !flipped) {
      // The reveal button inside must stay reachable; no whole-card tap target.
      return visual;
    }
    return Semantics(
      key: const Key('flipCard'),
      button: onFlip != null,
      container: true,
      label: flipped
          ? [
              if (verdict != null)
                switch (verdict!) {
                  AnswerMatch.exact => l10n.studyCorrect,
                  AnswerMatch.close => l10n.studyAlmost,
                  AnswerMatch.wrong => l10n.studyWrong,
                },
              l10n.flashcardsAnswerA11y(back),
              for (final f in CardField.values)
                if (extras[f] case final v?) '${cardFieldLabel(l10n, f)}: $v',
            ].join('. ')
          : l10n.flashcardsQuestionA11y(front),
      hint: onFlip == null ? null : (flipped ? l10n.flashcardsShowQuestion : l10n.reviewTapToFlip),
      onTap: onFlip,
      excludeSemantics: true,
      child: GestureDetector(behavior: HitTestBehavior.opaque, onTap: onFlip, child: visual),
    );
  }
}

class _RatingBar extends ConsumerWidget {
  const _RatingBar({
    required this.card,
    required this.enabled,
    required this.onRate,
    this.suggested,
  });
  final CardRow card;
  final bool enabled;
  final ValueChanged<ReviewRating> onRate;

  /// Rating proposed by an answer check (typed / multiple choice), highlighted.
  final ReviewRating? suggested;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final repo = ref.read(flashcardsRepositoryProvider);
    final now = ref.read(clockProvider).now();
    final previews = repo.previewRatings(card);
    String interval(SrsCard after) {
      if (after.state == CardState.review) return l10n.intervalDays(after.intervalDays);
      final due = after.dueAt ?? now;
      final minutes = math.max(1, (due.difference(now).inSeconds / 60).round());
      return l10n.intervalMinutes(minutes);
    }

    final lux = context.lux;
    Color colorOf(ReviewRating r) => switch (r) {
      ReviewRating.again => lux.danger,
      ReviewRating.hard => lux.warning,
      ReviewRating.good => lux.success,
      ReviewRating.easy => Palette.aurora,
    };

    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          for (final r in ReviewRating.values) ...[
            if (r != ReviewRating.again) const SizedBox(width: Space.xs),
            Expanded(
              child: _RatingButton(
                key: Key('rating_${r.name}'),
                label: _ratingLabel(l10n, r),
                interval: interval(previews[r]!),
                color: colorOf(r),
                highlighted: r == suggested,
                onPressed: enabled ? () => onRate(r) : null,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _RatingButton extends StatelessWidget {
  const _RatingButton({
    super.key,
    required this.label,
    required this.interval,
    required this.color,
    required this.onPressed,
    this.highlighted = false,
  });
  final String label;
  final String interval;
  final Color color;
  final VoidCallback? onPressed;
  final bool highlighted;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      enabled: onPressed != null,
      selected: highlighted,
      label: context.l10n.flashcardsRatingA11y(label, interval),
      excludeSemantics: true,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          foregroundColor: color,
          side: BorderSide(
            color: color.withValues(alpha: highlighted ? 1 : 0.5),
            width: highlighted ? 2 : 1,
          ),
          backgroundColor: color.withValues(alpha: highlighted ? 0.16 : 0.06),
          minimumSize: const Size(0, 64),
          padding: const EdgeInsets.symmetric(horizontal: Space.xxs, vertical: Space.xs),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Radii.md)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              label,
              textAlign: TextAlign.center,
              style: context.text.labelLarge?.copyWith(color: color),
            ),
            const SizedBox(height: 2),
            Text(
              interval,
              textAlign: TextAlign.center,
              style: context.text.labelSmall?.copyWith(color: context.lux.ink2),
            ),
          ],
        ),
      ),
    );
  }
}
