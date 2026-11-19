import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../core/providers/core_providers.dart';
import '../../../core/time/clock.dart';
import '../../flashcards/domain/study_habit.dart';

/// The hour the user usually reviews cards (last 60 days), or null.
final usualStudyMinuteProvider = FutureProvider.autoDispose<int?>((ref) async {
  final db = ref.watch(databaseProvider);
  final since = Days.addDays(Days.startOfDay(ref.watch(clockProvider).now()), -60).toUtc();
  final rows =
      await (db.select(db.cardReviews)
            ..where((r) => r.reviewedAt.isBiggerOrEqualValue(since))
            ..orderBy([(r) => OrderingTerm.desc(r.reviewedAt)])
            ..limit(2000))
          .get();
  return usualStudyMinute([for (final r in rows) r.reviewedAt.toLocal()]);
});

/// "You usually study around 21:00": one tap moves the review reminder there.
class SmartReviewTimeTile extends ConsumerWidget {
  const SmartReviewTimeTile({super.key, required this.currentMinute, required this.onUse});
  final int currentMinute;
  final void Function(int minute) onUse;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final minute = ref.watch(usualStudyMinuteProvider).value;
    if (minute == null || minute == currentMinute) return const SizedBox.shrink();
    final l10n = context.l10n;
    final time = context.fmt.time(DateTime(2000, 1, 1, minute ~/ 60, minute % 60));
    return ListTile(
      key: const Key('smartReviewTime'),
      leading: const Icon(Icons.auto_awesome_outlined),
      title: Text(l10n.smartReviewTimeTitle(time)),
      trailing: TextButton(
        key: const Key('smartReviewTimeUse'),
        onPressed: () => onUse(minute),
        child: Text(l10n.smartReviewTimeUse),
      ),
    );
  }
}
