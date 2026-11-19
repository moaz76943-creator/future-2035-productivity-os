import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/tokens.dart';
import '../../../core/providers/core_providers.dart';
import '../../../core/time/clock.dart';
import '../../../core/transfer/transfer_model.dart';
import '../../../core/transfer/transfer_service.dart';
import '../../../l10n/gen/app_localizations.dart';
import '../../../shared/widgets/transfer_sheet.dart';
import '../data/monthly_report.dart';

final monthlyReportServiceProvider = Provider<MonthlyReportService>(
  (ref) => MonthlyReportService(ref.watch(databaseProvider)),
);

/// The report as a document (Word, PDF, Markdown), in the app language.
TransferDoc reportDocument(
  AppLocalizations l10n,
  AppFormat fmt,
  MonthlyReport r, {
  bool rtl = false,
}) {
  final known = r.knownRatio;
  return TransferDoc(
    rtl: rtl,
    blocks: [
      DocBlock(DocBlockKind.title, '${l10n.reportTitle} · ${fmt.monthYear(r.month)}'),
      if (r.isEmpty)
        DocBlock(DocBlockKind.paragraph, l10n.reportEmpty)
      else ...[
        DocBlock(DocBlockKind.heading, l10n.reportFocus),
        DocBlock(DocBlockKind.bullet, fmt.minutes(r.focusMinutes)),
        DocBlock(DocBlockKind.bullet, l10n.reportSessions(r.focusSessions)),
        if (r.bestDay != null)
          DocBlock(
            DocBlockKind.bullet,
            l10n.reportBestDay(fmt.date(r.bestDay!), fmt.minutes(r.bestDayMinutes)),
          ),
        DocBlock(DocBlockKind.bullet, l10n.reportActiveDays(r.activeDays)),
        DocBlock(DocBlockKind.heading, l10n.reportCards),
        DocBlock(DocBlockKind.bullet, fmt.number(r.cardsReviewed)),
        if (known != null) DocBlock(DocBlockKind.bullet, l10n.reportCardsKnown(fmt.percent(known))),
        DocBlock(DocBlockKind.heading, l10n.reportTasks),
        DocBlock(DocBlockKind.bullet, fmt.number(r.tasksDone)),
        DocBlock(DocBlockKind.heading, l10n.reportHabits),
        DocBlock(DocBlockKind.bullet, fmt.number(r.habitCheckIns)),
      ],
    ],
  );
}

/// One month at a glance with month arrows and a button to save it as a file.
Future<void> showMonthlyReport(BuildContext context) => showModalBottomSheet<void>(
  context: context,
  showDragHandle: true,
  useSafeArea: true,
  isScrollControlled: true,
  builder: (_) => const _ReportSheet(),
);

class _ReportSheet extends ConsumerStatefulWidget {
  const _ReportSheet();
  @override
  ConsumerState<_ReportSheet> createState() => _ReportSheetState();
}

class _ReportSheetState extends ConsumerState<_ReportSheet> {
  late DateTime _month = Days.startOfMonth(ref.read(clockProvider).now());
  late Future<MonthlyReport> _report = ref.read(monthlyReportServiceProvider).compute(_month);

  void _go(int delta) => setState(() {
    _month = DateTime(_month.year, _month.month + delta);
    _report = ref.read(monthlyReportServiceProvider).compute(_month);
  });

  Widget _row(IconData icon, String label, String value) => ListTile(
    dense: true,
    leading: Icon(icon, color: ModuleHue.analytics.a),
    title: Text(label),
    trailing: Text(value, style: context.text.titleMedium),
  );

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final fmt = context.fmt;
    final thisMonth = Days.startOfMonth(ref.read(clockProvider).now());
    final rtl = Directionality.of(context) == TextDirection.rtl;
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              IconButton(
                key: const Key('reportPrev'),
                tooltip: l10n.reportPrevMonth,
                onPressed: () => _go(-1),
                icon: const Icon(Icons.chevron_left_rounded),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(l10n.reportTitle, style: context.text.titleLarge),
                    Text(fmt.monthYear(_month), style: context.text.bodyMedium),
                  ],
                ),
              ),
              IconButton(
                key: const Key('reportNext'),
                tooltip: l10n.reportNextMonth,
                onPressed: _month.isBefore(thisMonth) ? () => _go(1) : null,
                icon: const Icon(Icons.chevron_right_rounded),
              ),
            ],
          ),
          FutureBuilder<MonthlyReport>(
            future: _report,
            builder: (context, snap) {
              final r = snap.data;
              if (r == null) {
                return const Padding(
                  padding: EdgeInsets.all(Space.xl),
                  child: Center(child: CircularProgressIndicator()),
                );
              }
              if (r.isEmpty) {
                return Padding(
                  padding: const EdgeInsets.all(Space.xl),
                  child: Text(l10n.reportEmpty, textAlign: TextAlign.center),
                );
              }
              final known = r.knownRatio;
              return Column(
                children: [
                  _row(Icons.timer_outlined, l10n.reportFocus, fmt.minutes(r.focusMinutes)),
                  _row(
                    Icons.local_fire_department_outlined,
                    l10n.reportSessions(r.focusSessions),
                    l10n.reportActiveDays(r.activeDays),
                  ),
                  _row(
                    Icons.style_outlined,
                    l10n.reportCards,
                    known == null
                        ? fmt.number(r.cardsReviewed)
                        : '${fmt.number(r.cardsReviewed)} · ${fmt.percent(known)}',
                  ),
                  _row(Icons.task_alt_rounded, l10n.reportTasks, fmt.number(r.tasksDone)),
                  _row(Icons.event_repeat_rounded, l10n.reportHabits, fmt.number(r.habitCheckIns)),
                ],
              );
            },
          ),
          const SizedBox(height: Space.md),
          FilledButton.icon(
            key: const Key('reportSave'),
            icon: const Icon(Icons.picture_as_pdf_outlined),
            label: Text(l10n.reportSave),
            onPressed: () async {
              final encoder = ref.read(transferEncoderProvider);
              final r = await _report;
              if (!context.mounted) return;
              final doc = reportDocument(l10n, fmt, r, rtl: rtl);
              await showTransferSheet(
                context,
                exports: [
                  ExportGroup(
                    formats: const [TransferFormat.pdf, TransferFormat.docx, TransferFormat.md],
                    build: (f) async => (
                      safeFileName('${l10n.reportTitle} ${_month.year}-${_month.month}', f),
                      await encoder.doc(doc, f),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
