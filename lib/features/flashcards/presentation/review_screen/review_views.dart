part of '../review_screen.dart';

extension _ReviewViews on _ReviewScreenState {
  Widget _body(BuildContext context) {
    final l10n = context.l10n;
    final queue = _queue;
    if (_failed) {
      return ErrorState(
        title: l10n.errorGenericTitle,
        message: l10n.errorLoadFailed,
        retryLabel: l10n.actionRetry,
        onRetry: () {
          _update(() => _failed = false);
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
          message: switch (widget.scope) {
            StudyScope.practiceMistakes => l10n.studyNoMistakes,
            StudyScope.scheduled => l10n.deckNothingDue,
            _ => l10n.studyNoMatchingCards,
          },
          actionLabel: l10n.actionBack,
          onAction: () => Navigator.of(context).maybePop(),
        ),
      );
    }
    if (_index >= queue.length) return _summary(context);

    final card = queue[_index];
    final question = _question(card);
    final layout = ref.watch(cardLayoutProvider(widget.deckId)).value ?? const CardLayout();
    final media = ref.watch(cardMediaProvider(card.id)).value ?? const <CardMediaRow>[];
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
            // The user's flashcard text size (Settings → Appearance).
            child: MediaQuery(
              data: MediaQuery.of(context).copyWith(
                textScaler: TextScaler.linear(
                  MediaQuery.textScalerOf(context).scale(1) *
                      ref.watch(settingsProvider.select((s) => s.flashTextPercent)) /
                      100,
                ),
              ),
              child: _FlipCard(
                key: ValueKey('card-$_index'),
                front: question,
                back: _answer(card),
                extras: CardExtras.decode(card.extra),
                flipped: _flipped,
                hideFront: !_questionShown && !_flipped,
                onRevealFront: () => _update(() => _questionShown = true),
                verdict: _match,
                onSpeakField: _speakField,
                onSpeakQuestion: () => _speakSide(card, question: true),
                onSpeakAnswer: () => _speakSide(card, question: false),
                layout: layout,
                items: _answerItems(card, layout),
                questionItems: _sideItems(card, layout, question: true),
                questionImage: _image(media, question: true, card: card),
                answerImage: _image(media, question: false, card: card),
                onPlayQuestionAudio: _audioOf(media, question: true, card: card),
                onPlayAnswerAudio: _audioOf(media, question: false, card: card),
                revealed: layout.stepReveal ? _revealed : 1 << 30,
                onRevealMore: layout.stepReveal ? () => _update(() => _revealed++) : null,
                // Answer modes flip only by answering.
                onFlip: _mode == StudyMode.typed || _mode == StudyMode.choice
                    ? null
                    : () {
                        _update(() => _flipped = !_flipped);
                        if (_flipped) _answerShown(card);
                      },
              ),
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
          onPressed: () {
            _update(() => _flipped = true);
            _answerShown(card);
          },
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
