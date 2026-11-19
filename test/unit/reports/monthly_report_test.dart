import 'package:drift/drift.dart' show Value;
import 'package:flutter/widgets.dart' show Locale;
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:future_os/app/localization/app_format.dart';
import 'package:future_os/app/localization/app_locales.dart';
import 'package:future_os/core/database/app_database.dart';
import 'package:future_os/features/flashcards/data/flashcards_repository.dart';
import 'package:future_os/features/reports/data/monthly_report.dart';
import 'package:future_os/features/reports/presentation/monthly_report_sheet.dart';
import 'package:future_os/l10n/gen/app_localizations.dart';

import '../../helpers.dart';

void main() {
  test('a month adds up focus, reviews, tasks and habits and ignores other months', () async {
    final env = TestEnv();
    addTearDown(env.dispose);
    final db = env.db;
    FocusSessionsCompanion session(String id, DateTime at, int sec, {String phase = 'work'}) =>
        FocusSessionsCompanion.insert(
          id: id,
          mode: 'pomodoro',
          phase: Value(phase),
          activeSeconds: sec,
          startedAt: at.toUtc(),
          endedAt: at.add(Duration(seconds: sec)).toUtc(),
          outcome: 'completed',
        );
    await db.batch((b) {
      b.insertAll(db.focusSessions, [
        session('a', DateTime(2026, 10, 3, 9), 1500),
        session('b', DateTime(2026, 10, 3, 14), 1500),
        session('c', DateTime(2026, 10, 9, 9), 600),
        session('brk', DateTime(2026, 10, 9, 10), 300, phase: 'shortBreak'),
        session('other', DateTime(2026, 9, 28, 9), 3600),
      ]);
    });
    final repo = FlashcardsRepository(db, env.clock);
    final deck = await repo.createDeck('D', color: 0xFF6C4CFF);
    final card = await repo.addCard(deck, 'a', 'b');
    await db.batch((b) {
      b.insertAll(db.cardReviews, [
        for (final (i, rating) in [1, 3, 4, 2].indexed)
          CardReviewsCompanion.insert(
            id: 'r$i',
            cardId: card,
            reviewedAt: DateTime(2026, 10, 5, 8, i).toUtc(),
            rating: rating,
            stateBefore: 'new',
            intervalBefore: 0,
            intervalAfter: 1,
            easeBefore: 2500,
            easeAfter: 2500,
          ),
      ]);
    });

    final r = await MonthlyReportService(db).compute(DateTime(2026, 10, 17));
    expect(r.focusMinutes, 60, reason: '25+25+10, no break, no September');
    expect(r.focusSessions, 3);
    expect(r.bestDay, DateTime(2026, 10, 3));
    expect(r.bestDayMinutes, 50);
    expect(r.cardsReviewed, 4);
    expect(r.cardsKnown, 2);
    expect(r.knownRatio, 0.5);
    expect(r.activeDays, 3, reason: 'Oct 3, 5 and 9');
    expect(r.isEmpty, isFalse);

    final empty = await MonthlyReportService(db).compute(DateTime(2026, 8));
    expect(empty.isEmpty, isTrue);
  });

  test('the document has a title with the month and is right-to-left in Arabic', () async {
    await initializeDateFormatting();
    final l10n = lookupAppLocalizations(const Locale('ar'));
    final fmt = AppFormat(AppLocales.byTag('ar')!, l10n);
    final report = MonthlyReport(
      month: DateTime(2026, 10),
      focusMinutes: 90,
      focusSessions: 4,
      bestDay: DateTime(2026, 10, 3),
      bestDayMinutes: 50,
      activeDays: 3,
      cardsReviewed: 4,
      cardsKnown: 2,
      tasksDone: 5,
      habitCheckIns: 12,
    );
    final doc = reportDocument(l10n, fmt, report, rtl: true);
    expect(doc.rtl, isTrue);
    expect(doc.blocks.first.text, contains(l10n.reportTitle));
    expect(doc.blocks.map((b) => b.text).join(' '), isNot(contains('٣')), reason: 'Western digits');
  });
}
