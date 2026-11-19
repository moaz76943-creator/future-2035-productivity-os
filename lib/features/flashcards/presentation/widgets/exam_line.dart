import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../app/localization/app_format.dart';
import '../../../../core/database/app_database.dart';
import '../../../../core/design_system/app_theme.dart';
import '../../../../core/design_system/tokens.dart';
import '../../../../core/providers/core_providers.dart';
import '../../application/flashcards_providers.dart';
import '../../domain/exam_plan.dart';

final examDateProvider = StreamProvider.autoDispose.family<DateTime?, String>(
  (ref, deckId) =>
      ref.watch(databaseProvider).watchValue(ExamPlan.key(deckId)).map(ExamPlan.decode),
);

/// In a deck: the exam date and what to learn each day to be ready.
class ExamLine extends ConsumerWidget {
  const ExamLine({required this.deck, super.key});
  final DeckRow deck;

  Future<void> _pick(BuildContext context, WidgetRef ref, DateTime? current) async {
    final now = ref.read(clockProvider).now();
    final picked = await showDatePicker(
      context: context,
      initialDate: current ?? now.add(const Duration(days: 14)),
      firstDate: DateTime(now.year, now.month, now.day),
      lastDate: DateTime(now.year + 3),
      helpText: context.l10n.examDate,
    );
    if (picked == null) return;
    await ref.read(databaseProvider).writeValue(ExamPlan.key(deck.id), ExamPlan.encode(picked));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final exam = ref.watch(examDateProvider(deck.id)).value;
    final stats = ref.watch(deckStatsProvider(deck.id)).value;
    final plan = exam == null || stats == null
        ? null
        : ExamPlan.of(exam: exam, today: ref.watch(clockProvider).now(), newCards: stats.newCount);
    if (plan == null) {
      return Align(
        alignment: AlignmentDirectional.centerStart,
        child: TextButton.icon(
          key: const Key('examSet'),
          onPressed: () => _pick(context, ref, null),
          icon: const Icon(Icons.event_available_outlined),
          label: Text(l10n.examSet),
        ),
      );
    }
    final short = plan.newPerDay > deck.dailyNewLimit;
    return InkWell(
      key: const Key('examLine'),
      borderRadius: BorderRadius.circular(Radii.md),
      onTap: () => _pick(context, ref, exam),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: Space.xs),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.event_available_outlined, size: 20, color: ModuleHue.flashcards.a),
                const SizedBox(width: Space.xs),
                Expanded(
                  child: Text(
                    plan.daysLeft == 0
                        ? l10n.examToday
                        : '${l10n.examInDays(plan.daysLeft)} · ${plan.newPerDay == 0 ? l10n.examAllLearnt : l10n.examNewPerDay(plan.newPerDay)}',
                    style: context.text.bodyMedium,
                  ),
                ),
                IconButton(
                  key: const Key('examClear'),
                  tooltip: l10n.actionDelete,
                  icon: const Icon(Icons.close_rounded, size: 18),
                  onPressed: () => ref.read(databaseProvider).deleteValue(ExamPlan.key(deck.id)),
                ),
              ],
            ),
            if (short)
              // The deck's daily limit would show too few new cards to be ready.
              TextButton(
                key: const Key('examRaiseLimit'),
                onPressed: () => ref
                    .read(flashcardsRepositoryProvider)
                    .updateDeck(
                      deck.id,
                      name: deck.name,
                      description: deck.description,
                      color: deck.color,
                      dailyNewLimit: plan.newPerDay,
                    ),
                child: Text(l10n.examRaiseLimit(plan.newPerDay)),
              ),
          ],
        ),
      ),
    );
  }
}
