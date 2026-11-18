import 'dart:math' as math;

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

/// Scheduling state of a single card (FSRS-4.5 memory state plus the
/// learning-step bookkeeping).
class SrsCard {
  const SrsCard({
    this.state = CardState.newCard,
    this.stability = 0,
    this.difficulty = 0,
    this.intervalDays = 0,
    this.repetitions = 0,
    this.lapses = 0,
    this.learningStep = 0,
    this.dueAt,
    this.lastReviewAt,
  });

  final CardState state;

  /// Days until recall probability falls to 90 % (FSRS stability). 0 = new.
  final double stability;

  /// 1 (easy) … 10 (hard). 0 = new.
  final double difficulty;
  final int intervalDays;
  final int repetitions;
  final int lapses;
  final int learningStep;
  final DateTime? dueAt;
  final DateTime? lastReviewAt;

  bool isDue(DateTime now) => dueAt == null || !dueAt!.isAfter(now);

  /// Probability of recalling the card at [now] (null before the first review).
  double? retrievability(DateTime now) {
    final last = lastReviewAt;
    if (last == null || stability <= 0) return null;
    final days = now.difference(last).inMinutes / (60 * 24);
    return Fsrs.retrievability(days < 0 ? 0 : days, stability);
  }
}

/// FSRS-4.5 formulas with the published default parameters.
abstract final class Fsrs {
  static const w = [
    0.4872, 1.4003, 3.7145, 13.8206, 5.1618, 1.2298, 0.8975, 0.031, 1.6474, //
    0.1367, 1.0461, 2.1072, 0.0793, 0.3246, 1.587, 0.2272, 2.8755,
  ];
  static const decay = -0.5;
  static const factor = 19 / 81;

  static double retrievability(double elapsedDays, double stability) =>
      math.pow(1 + factor * elapsedDays / stability, decay).toDouble();

  /// Days until recall probability drops to [retention].
  static double interval(double stability, double retention) =>
      stability / factor * (math.pow(retention, 1 / decay) - 1);

  static double initStability(ReviewRating g) => w[g.value - 1];

  static double initDifficulty(ReviewRating g) => _clampD(w[4] - (g.value - 3) * w[5]);

  static double nextDifficulty(double d, ReviewRating g) {
    final next = d - w[6] * (g.value - 3);
    // Mean reversion towards the default difficulty of a "Good" first answer.
    return _clampD(w[7] * initDifficulty(ReviewRating.good) + (1 - w[7]) * next);
  }

  static double recallStability(double d, double s, double r, ReviewRating g) {
    final hard = g == ReviewRating.hard ? w[15] : 1.0;
    final easy = g == ReviewRating.easy ? w[16] : 1.0;
    return s *
        (1 +
            math.exp(w[8]) *
                (11 - d) *
                math.pow(s, -w[9]) *
                (math.exp((1 - r) * w[10]) - 1) *
                hard *
                easy);
  }

  static double forgetStability(double d, double s, double r) => math.min(
    s,
    w[11] * math.pow(d, -w[12]) * (math.pow(s + 1, w[13]) - 1) * math.exp((1 - r) * w[14]),
  );

  static double _clampD(double d) => d.clamp(1.0, 10.0);
}

/// FSRS-4.5 scheduler with Anki-style learning steps.
///
/// * The first answer sets stability and difficulty from the rating.
/// * New and lapsed cards go through short learning steps (minutes); the
///   memory state is not changed by same-day steps except for difficulty.
/// * Review cards: the elapsed time and current stability give the recall
///   probability R; Hard/Good/Easy raise stability (more when R was low),
///   Again lowers it and the card relearns. The next interval is the time
///   until R falls to [desiredRetention].
/// * Intervals are ordered Hard ≤ Good < Easy and capped at
///   [maximumIntervalDays]. Day-based due dates fall on the start of the
///   local day. There is no random fuzz: the same inputs give the same
///   schedule, which the unit tests verify.
class SrsScheduler {
  const SrsScheduler({
    this.learningSteps = const [1, 10],
    this.relearningSteps = const [10],
    this.desiredRetention = 0.9,
    this.maximumIntervalDays = 36500,
  });

  final List<int> learningSteps;
  final List<int> relearningSteps;
  final double desiredRetention;
  final int maximumIntervalDays;

  DateTime _dueInDays(DateTime now, int days) => Days.addDays(Days.startOfDay(now), days);

  int _days(double stability) =>
      Fsrs.interval(stability, desiredRetention).round().clamp(1, maximumIntervalDays);

  SrsCard review(SrsCard card, ReviewRating rating, DateTime now) => switch (card.state) {
    CardState.newCard => _first(card, rating, now),
    CardState.learning => _learn(card, rating, now, learningSteps, relearn: false),
    CardState.relearning => _learn(card, rating, now, relearningSteps, relearn: true),
    CardState.review => _review(card, rating, now),
  };

  SrsCard _first(SrsCard c, ReviewRating r, DateTime now) {
    final seeded = SrsCard(
      state: CardState.learning,
      stability: Fsrs.initStability(r),
      difficulty: Fsrs.initDifficulty(r),
      repetitions: c.repetitions,
      lapses: c.lapses,
    );
    return _steps(seeded, r, now, learningSteps, relearn: false, step: 0, first: true);
  }

  SrsCard _learn(SrsCard c, ReviewRating r, DateTime now, List<int> steps, {required bool relearn}) {
    final updated = SrsCard(
      state: c.state,
      stability: c.stability > 0 ? c.stability : Fsrs.initStability(r),
      difficulty: c.difficulty > 0 ? Fsrs.nextDifficulty(c.difficulty, r) : Fsrs.initDifficulty(r),
      intervalDays: c.intervalDays,
      repetitions: c.repetitions,
      lapses: c.lapses,
      lastReviewAt: c.lastReviewAt,
    );
    return _steps(updated, r, now, steps, relearn: relearn, step: c.learningStep);
  }

  /// Moves through learning steps; graduates with an FSRS interval.
  SrsCard _steps(
    SrsCard c,
    ReviewRating r,
    DateTime now,
    List<int> steps, {
    required bool relearn,
    required int step,
    bool first = false,
  }) {
    final state = relearn ? CardState.relearning : CardState.learning;
    SrsCard stepAt(int i, Duration wait) => SrsCard(
      state: state,
      stability: c.stability,
      difficulty: c.difficulty,
      intervalDays: c.intervalDays,
      repetitions: c.repetitions,
      lapses: c.lapses,
      learningStep: i,
      dueAt: now.add(wait),
      lastReviewAt: now,
    );
    SrsCard graduate(double stability, {int minimum = 1}) {
      final days = math.max(_days(stability), minimum).clamp(1, maximumIntervalDays);
      return SrsCard(
        state: CardState.review,
        stability: stability,
        difficulty: c.difficulty,
        intervalDays: days,
        repetitions: c.repetitions + 1,
        lapses: c.lapses,
        dueAt: _dueInDays(now, days),
        lastReviewAt: now,
      );
    }

    final current = step.clamp(0, steps.length - 1);
    switch (r) {
      case ReviewRating.again:
        return stepAt(0, Duration(minutes: steps.first));
      case ReviewRating.hard:
        final here = steps[current];
        final next = current + 1 < steps.length ? steps[current + 1] : here;
        return stepAt(current, Duration(minutes: ((here + next) / 2).round()));
      case ReviewRating.good:
        final nextStep = step + 1;
        if (nextStep < steps.length) return stepAt(nextStep, Duration(minutes: steps[nextStep]));
        return graduate(c.stability);
      case ReviewRating.easy:
        // Easy always graduates. On a first answer the larger Easy stability
        // already sets the interval; later it is at least a day beyond Good.
        return graduate(c.stability, minimum: first ? 1 : _days(c.stability) + 1);
    }
  }

  SrsCard _review(SrsCard c, ReviewRating r, DateTime now) {
    final s = c.stability > 0 ? c.stability : math.max(c.intervalDays, 1).toDouble();
    final d = c.difficulty > 0 ? c.difficulty : 5.0;
    final last = c.lastReviewAt ?? now.subtract(Duration(days: math.max(c.intervalDays, 1)));
    final elapsed = math.max(0, now.difference(last).inMinutes) / (60 * 24);
    final rNow = Fsrs.retrievability(elapsed, s);
    final nd = Fsrs.nextDifficulty(d, r);

    if (r == ReviewRating.again) {
      return SrsCard(
        state: CardState.relearning,
        stability: math.max(0.1, Fsrs.forgetStability(d, s, rNow)),
        difficulty: nd,
        intervalDays: c.intervalDays,
        repetitions: 0,
        lapses: c.lapses + 1,
        learningStep: 0,
        dueAt: now.add(Duration(minutes: relearningSteps.first)),
        lastReviewAt: now,
      );
    }
    final hardS = Fsrs.recallStability(d, s, rNow, ReviewRating.hard);
    final goodS = Fsrs.recallStability(d, s, rNow, ReviewRating.good);
    final easyS = Fsrs.recallStability(d, s, rNow, ReviewRating.easy);
    var hardI = _days(hardS);
    var goodI = _days(goodS);
    var easyI = _days(easyS);
    // Keep the buttons in a sensible order.
    hardI = math.min(hardI, goodI);
    goodI = math.max(goodI, hardI + 1);
    easyI = math.max(easyI, goodI + 1);
    final (ns, days) = switch (r) {
      ReviewRating.hard => (hardS, hardI),
      ReviewRating.good => (goodS, goodI),
      _ => (easyS, easyI),
    };
    final capped = days.clamp(1, maximumIntervalDays);
    return SrsCard(
      state: CardState.review,
      stability: ns,
      difficulty: nd,
      intervalDays: capped,
      repetitions: c.repetitions + 1,
      lapses: c.lapses,
      dueAt: _dueInDays(now, capped),
      lastReviewAt: now,
    );
  }
}
