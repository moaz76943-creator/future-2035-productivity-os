import '../../../core/time/clock.dart';

enum CardState { newCard, learning, review, relearning }

CardState cardStateFromDb(String s) => switch (s) {
  'learning' => CardState.learning,
  'review' => CardState.review,
  'relearning' => CardState.relearning,
  _ => CardState.newCard,
};

String cardStateToDb(CardState s) => switch (s) {
  CardState.newCard => 'new',
  CardState.learning => 'learning',
  CardState.review => 'review',
  CardState.relearning => 'relearning',
};

enum ReviewRating {
  again(1),
  hard(2),
  good(3),
  easy(4);

  const ReviewRating(this.value);
  final int value;
}

/// Scheduling state of a single card.
class SrsCard {
  const SrsCard({
    this.state = CardState.newCard,
    this.easePermille = 2500,
    this.intervalDays = 0,
    this.repetitions = 0,
    this.lapses = 0,
    this.learningStep = 0,
    this.dueAt,
  });

  final CardState state;

  /// Ease factor ×1000. 2500 means 2.5.
  final int easePermille;
  final int intervalDays;
  final int repetitions;
  final int lapses;
  final int learningStep;
  final DateTime? dueAt;

  bool isDue(DateTime now) => dueAt == null || !dueAt!.isAfter(now);
}

/// Deterministic SM-2 derived scheduler with Anki-style learning steps.
///
/// * New / learning cards step through [learningSteps] (minutes).
///   Good advances a step; Again restarts; Easy graduates immediately.
/// * Graduation sets interval to [graduatingIntervalDays] (or
///   [easyIntervalDays] for Easy).
/// * Review cards: Again → lapse, ease −200, relearn, interval × 0.5.
///   Hard → interval × 1.2, ease −150. Good → interval × ease.
///   Easy → interval × ease × 1.3, ease +150.
/// * Ease never drops below 1.3. Each successful review grows the
///   interval by at least one day. Interval caps at [maximumIntervalDays].
/// * Day-based due dates fall on the start of the local day so that a
///   card scheduled "in 3 days" is due all day on that date.
///
/// There is no random fuzz, so the same inputs always yield the same
/// schedule — this is what the unit tests verify.
class SrsScheduler {
  const SrsScheduler({
    this.learningSteps = const [1, 10],
    this.relearningSteps = const [10],
    this.graduatingIntervalDays = 1,
    this.easyIntervalDays = 4,
    this.maximumIntervalDays = 36500,
  });

  final List<int> learningSteps;
  final List<int> relearningSteps;
  final int graduatingIntervalDays;
  final int easyIntervalDays;
  final int maximumIntervalDays;

  static const int minimumEase = 1300;

  DateTime _dueInDays(DateTime now, int days) =>
      Days.addDays(Days.startOfDay(now), days);

  SrsCard review(SrsCard card, ReviewRating rating, DateTime now) {
    switch (card.state) {
      case CardState.newCard:
      case CardState.learning:
        return _learn(card, rating, now, learningSteps, relearn: false);
      case CardState.relearning:
        return _learn(card, rating, now, relearningSteps, relearn: true);
      case CardState.review:
        return _review(card, rating, now);
    }
  }

  SrsCard _learn(
    SrsCard c,
    ReviewRating r,
    DateTime now,
    List<int> steps, {
    required bool relearn,
  }) {
    final state = relearn ? CardState.relearning : CardState.learning;
    int graduate(int days) => days.clamp(1, maximumIntervalDays);

    switch (r) {
      case ReviewRating.again:
        return SrsCard(
          state: state,
          easePermille: c.easePermille,
          intervalDays: c.intervalDays,
          repetitions: c.repetitions,
          lapses: c.lapses,
          learningStep: 0,
          dueAt: now.add(Duration(minutes: steps.first)),
        );
      case ReviewRating.hard:
        final step = c.learningStep.clamp(0, steps.length - 1);
        final current = steps[step];
        final next = step + 1 < steps.length ? steps[step + 1] : current;
        return SrsCard(
          state: state,
          easePermille: c.easePermille,
          intervalDays: c.intervalDays,
          repetitions: c.repetitions,
          lapses: c.lapses,
          learningStep: step,
          dueAt: now.add(Duration(minutes: ((current + next) / 2).round())),
        );
      case ReviewRating.good:
        final nextStep = c.learningStep + 1;
        if (nextStep < steps.length) {
          return SrsCard(
            state: state,
            easePermille: c.easePermille,
            intervalDays: c.intervalDays,
            repetitions: c.repetitions,
            lapses: c.lapses,
            learningStep: nextStep,
            dueAt: now.add(Duration(minutes: steps[nextStep])),
          );
        }
        final days = relearn
            ? graduate(c.intervalDays)
            : graduate(graduatingIntervalDays);
        return SrsCard(
          state: CardState.review,
          easePermille: c.easePermille,
          intervalDays: days,
          repetitions: c.repetitions + 1,
          lapses: c.lapses,
          learningStep: 0,
          dueAt: _dueInDays(now, days),
        );
      case ReviewRating.easy:
        final days = relearn
            ? graduate(c.intervalDays + 1)
            : graduate(easyIntervalDays);
        return SrsCard(
          state: CardState.review,
          easePermille: c.easePermille,
          intervalDays: days,
          repetitions: c.repetitions + 1,
          lapses: c.lapses,
          learningStep: 0,
          dueAt: _dueInDays(now, days),
        );
    }
  }

  SrsCard _review(SrsCard c, ReviewRating r, DateTime now) {
    final interval = c.intervalDays < 1 ? 1 : c.intervalDays;
    int clampEase(int e) => e < minimumEase ? minimumEase : e;
    int clampInterval(int i) => i.clamp(1, maximumIntervalDays);

    switch (r) {
      case ReviewRating.again:
        final newInterval = clampInterval((interval * 0.5).floor());
        return SrsCard(
          state: CardState.relearning,
          easePermille: clampEase(c.easePermille - 200),
          intervalDays: newInterval,
          repetitions: 0,
          lapses: c.lapses + 1,
          learningStep: 0,
          dueAt: now.add(Duration(minutes: relearningSteps.first)),
        );
      case ReviewRating.hard:
        final next = clampInterval(
          _atLeastPlusOne(interval, (interval * 1.2).round()),
        );
        return SrsCard(
          state: CardState.review,
          easePermille: clampEase(c.easePermille - 150),
          intervalDays: next,
          repetitions: c.repetitions + 1,
          lapses: c.lapses,
          dueAt: _dueInDays(now, next),
        );
      case ReviewRating.good:
        final next = clampInterval(
          _atLeastPlusOne(interval, (interval * c.easePermille / 1000).round()),
        );
        return SrsCard(
          state: CardState.review,
          easePermille: c.easePermille,
          intervalDays: next,
          repetitions: c.repetitions + 1,
          lapses: c.lapses,
          dueAt: _dueInDays(now, next),
        );
      case ReviewRating.easy:
        final next = clampInterval(
          _atLeastPlusOne(
            interval,
            (interval * c.easePermille / 1000 * 1.3).round(),
          ),
        );
        return SrsCard(
          state: CardState.review,
          easePermille: c.easePermille + 150,
          intervalDays: next,
          repetitions: c.repetitions + 1,
          lapses: c.lapses,
          dueAt: _dueInDays(now, next),
        );
    }
  }

  int _atLeastPlusOne(int previous, int proposed) =>
      proposed <= previous ? previous + 1 : proposed;
}
