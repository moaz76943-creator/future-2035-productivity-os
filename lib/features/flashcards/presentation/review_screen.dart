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
import '../../../l10n/gen/app_localizations.dart';
import '../application/flashcards_providers.dart';
import '../domain/srs_scheduler.dart';

const _hue = ModuleHue.flashcards;

/// Learning cards that come due again within this window are shown again
/// in the same session.
const _sameSessionWindow = Duration(minutes: 20);

class ReviewScreen extends ConsumerStatefulWidget {
  const ReviewScreen({super.key, required this.deckId});
  final String deckId;

  @override
  ConsumerState<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends ConsumerState<ReviewScreen> {
  /// Loaded once when the session starts so the queue is stable; only
  /// cards that the scheduler makes due again within the session are
  /// appended.
  List<CardRow>? _queue;
  bool _failed = false;
  int _index = 0;
  bool _flipped = false;
  bool _busy = false;
  final Map<ReviewRating, int> _counts = {for (final r in ReviewRating.values) r: 0};

  int get _reviewed => _counts.values.fold(0, (a, b) => a + b);

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    try {
      final q = await ref.read(flashcardsRepositoryProvider).reviewQueue(widget.deckId);
      if (mounted) setState(() => _queue = q);
    } catch (_) {
      if (mounted) setState(() => _failed = true);
    }
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
      setState(() {
        _counts[rating] = _counts[rating]! + 1;
        if (again != null) _queue!.add(again);
        _index++;
        _flipped = false;
        _busy = false;
      });
    } catch (_) {
      if (!mounted) return;
      setState(() => _busy = false);
      ScaffoldMessenger.maybeOf(context)
          ?.showSnackBar(SnackBar(content: Text(context.l10n.errorSaveFailed)));
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final deck = ref.watch(deckProvider(widget.deckId)).value;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        title: Text(deck?.name ?? l10n.flashTitle, maxLines: 1, overflow: TextOverflow.ellipsis),
      ),
      extendBodyBehindAppBar: false,
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
          message: l10n.deckNothingDue,
          actionLabel: l10n.actionBack,
          onAction: () => Navigator.of(context).maybePop(),
        ),
      );
    }
    if (_index >= queue.length) return _summary(context);

    final card = queue[_index];
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
              front: card.front,
              back: card.back,
              flipped: _flipped,
              onFlip: () => setState(() => _flipped = !_flipped),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.lg),
          child: _flipped
              ? _RatingBar(card: card, enabled: !_busy, onRate: (r) => _rate(card, r))
              : FilledButton.icon(
                  key: const Key('showAnswerButton'),
                  style: FilledButton.styleFrom(minimumSize: const Size.fromHeight(52)),
                  onPressed: () => setState(() => _flipped = true),
                  icon: const Icon(Icons.flip_rounded),
                  label: Text(l10n.reviewShowAnswer),
                ),
        ),
      ],
    );
  }

  Widget _summary(BuildContext context) {
    final l10n = context.l10n;
    final fmt = context.fmt;
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
                l10n.reviewFinishedMessage(_reviewed),
                style: context.text.bodyLarge?.copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
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
        const SizedBox(height: Space.xl),
        FilledButton(
          key: const Key('reviewDoneButton'),
          onPressed: () => Navigator.of(context).maybePop(),
          child: Text(l10n.actionDone),
        ),
      ],
    );
  }
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
  });
  final String front;
  final String back;
  final bool flipped;
  final VoidCallback onFlip;

  Widget _face(BuildContext context, {required bool showBack}) {
    final lux = context.lux;
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
              ] else ...[
                Text(front, textAlign: TextAlign.center, style: context.text.headlineSmall),
                const SizedBox(height: Space.lg),
                Text(
                  context.l10n.reviewTapToFlip,
                  textAlign: TextAlign.center,
                  style: context.text.bodySmall?.copyWith(color: lux.ink3),
                ),
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
    return Semantics(
      key: const Key('flipCard'),
      button: true,
      container: true,
      label: flipped ? l10n.flashcardsAnswerA11y(back) : l10n.flashcardsQuestionA11y(front),
      hint: flipped ? l10n.flashcardsShowQuestion : l10n.reviewTapToFlip,
      onTap: onFlip,
      excludeSemantics: true,
      child: GestureDetector(behavior: HitTestBehavior.opaque, onTap: onFlip, child: visual),
    );
  }
}

class _RatingBar extends ConsumerWidget {
  const _RatingBar({required this.card, required this.enabled, required this.onRate});
  final CardRow card;
  final bool enabled;
  final ValueChanged<ReviewRating> onRate;

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
  });
  final String label;
  final String interval;
  final Color color;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      enabled: onPressed != null,
      label: context.l10n.flashcardsRatingA11y(label, interval),
      excludeSemantics: true,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          foregroundColor: color,
          side: BorderSide(color: color.withValues(alpha: 0.5)),
          backgroundColor: color.withValues(alpha: 0.06),
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
