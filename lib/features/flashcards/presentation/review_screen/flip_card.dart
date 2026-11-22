part of '../review_screen.dart';

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
    this.onSpeakField,
    this.onSpeakQuestion,
    this.onSpeakAnswer,
    this.layout = const CardLayout(),
    this.revealed = 1 << 30,
    this.onRevealMore,
    this.items = const [],
    this.questionItems = const [],
    this.questionImage,
    this.answerImage,
    this.onPlayQuestionAudio,
    this.onPlayAnswerAudio,
  });

  /// Deck layout: order, names and visibility of the optional fields.
  final CardLayout layout;

  /// How many answer items are shown (step-by-step reveal).
  final int revealed;
  final VoidCallback? onRevealMore;

  /// Optional answer-side fields in display order (built-in, then custom).
  final List<FieldItem> items;

  /// Custom fields that belong to the question side.
  final List<FieldItem> questionItems;
  final Uint8List? questionImage;
  final Uint8List? answerImage;
  final VoidCallback? onPlayQuestionAudio;
  final VoidCallback? onPlayAnswerAudio;

  /// Speaks one optional field (kept for callers that speak built-in fields).
  final void Function(CardField field, String text)? onSpeakField;

  /// Plays the question / the answer text (a speaker button beside each).
  final VoidCallback? onSpeakQuestion;
  final VoidCallback? onSpeakAnswer;

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
    final shownFields = revealed.clamp(0, items.length);
    Widget image(Uint8List bytes, String key) => Padding(
      padding: const EdgeInsets.only(bottom: Space.md),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(Radii.md),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 200),
          child: Image.memory(
            bytes,
            key: Key(key),
            fit: BoxFit.contain,
            gaplessPlayback: true,
            errorBuilder: (_, _, _) => Icon(Icons.broken_image_outlined, color: lux.ink3),
          ),
        ),
      ),
    );
    Widget audio(VoidCallback play, String key) => Padding(
      padding: const EdgeInsets.only(top: Space.xs),
      child: TextButton.icon(
        key: Key(key),
        onPressed: play,
        icon: const Icon(Icons.play_circle_outline_rounded),
        label: Text(l10n.flashcardsPlayAudio),
      ),
    );
    Widget spoken(Widget text, VoidCallback? play, String key, String tip) => play == null
        ? text
        : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(child: text),
              IconButton(
                key: Key(key),
                tooltip: tip,
                onPressed: play,
                icon: Icon(Icons.volume_up_rounded, color: _hue.a),
              ),
            ],
          );
    Widget item(FieldItem f) => Column(
      children: [
        const SizedBox(height: Space.md),
        Text(
          f.label,
          textAlign: TextAlign.center,
          style: context.text.labelMedium?.copyWith(color: lux.ink3),
        ),
        const SizedBox(height: Space.xxs),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Text(f.value, textAlign: TextAlign.center, style: context.text.bodyLarge),
            ),
            if (f.speak != null)
              IconButton(
                key: Key('speakField_${f.key}'),
                tooltip: l10n.flashcardsSpeakField(f.label),
                onPressed: f.speak,
                icon: const Icon(Icons.volume_up_outlined, size: 20),
              ),
          ],
        ),
      ],
    );
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
                spoken(
                  Text(
                    front,
                    textAlign: TextAlign.center,
                    style: context.text.titleMedium?.copyWith(color: lux.ink2),
                  ),
                  onSpeakQuestion,
                  'speakQuestion',
                  l10n.flashcardsReadAloud,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: Space.md),
                  child: Divider(color: lux.hairline),
                ),
                spoken(
                  Text(back, textAlign: TextAlign.center, style: context.text.headlineSmall),
                  onSpeakAnswer,
                  'speakAnswer',
                  l10n.flashcardsReadAloud,
                ),
                if (answerImage != null) ...[
                  const SizedBox(height: Space.md),
                  image(answerImage!, 'answerImage'),
                ],
                if (onPlayAnswerAudio != null) audio(onPlayAnswerAudio!, 'answerAudio'),
                for (final (i, f) in items.indexed)
                  if (i < shownFields) item(f),
                if (shownFields < items.length && onRevealMore != null)
                  Padding(
                    padding: const EdgeInsets.only(top: Space.md),
                    child: TextButton.icon(
                      key: const Key('revealNextField'),
                      onPressed: onRevealMore,
                      icon: const Icon(Icons.expand_more_rounded),
                      label: Text(l10n.flashcardsRevealNext(items[shownFields].label)),
                    ),
                  ),
              ] else if (hideFront) ...[
                Icon(Icons.hearing_rounded, size: 48, color: _hue.a),
                const SizedBox(height: Space.md),
                TextButton(
                  key: const Key('revealQuestionButton'),
                  onPressed: onRevealFront,
                  child: Text(l10n.studyShowText),
                ),
              ] else ...[
                if (questionImage != null) image(questionImage!, 'questionImage'),
                spoken(
                  Text(front, textAlign: TextAlign.center, style: context.text.headlineSmall),
                  onSpeakQuestion,
                  'speakQuestion',
                  l10n.flashcardsReadAloud,
                ),
                for (final f in questionItems) item(f),
                if (onPlayQuestionAudio != null) audio(onPlayQuestionAudio!, 'questionAudio'),
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
                if (extras[f] case final v?) '${layout.labelOf(f) ?? cardFieldLabel(l10n, f)}: $v',
              for (final i in items.where((i) => i.key.startsWith('c'))) '${i.label}: ${i.value}',
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
