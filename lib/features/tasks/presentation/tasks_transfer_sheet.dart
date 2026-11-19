import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../core/providers/core_providers.dart';
import '../../../core/transfer/transfer_model.dart';
import '../../../core/transfer/transfer_reader.dart';
import '../../../core/transfer/transfer_service.dart';
import '../../../shared/widgets/transfer_sheet.dart';
import '../application/tasks_providers.dart';
import '../data/tasks_transfer.dart';

final tasksTransferProvider = Provider<TasksTransfer>(
  (ref) => TasksTransfer(ref.watch(databaseProvider), ref.watch(tasksRepositoryProvider)),
);

/// Tasks as Excel, CSV, Word or PDF, and tasks from a file.
Future<void> showTasksTransfer(BuildContext context, WidgetRef ref) {
  final l10n = context.l10n;
  final rtl = Directionality.of(context) == TextDirection.rtl;
  final transfer = ref.read(tasksTransferProvider);
  final encoder = ref.read(transferEncoderProvider);
  return showTransferSheet(
    context,
    exports: [
      ExportGroup(
        formats: const [
          TransferFormat.xlsx,
          TransferFormat.csv,
          TransferFormat.docx,
          TransferFormat.pdf,
        ],
        build: (f) async {
          final t = await transfer.table(l10n, rtl: rtl);
          return (safeFileName(l10n.navTasks, f, fallback: 'tasks'), await encoder.table(t, f));
        },
      ),
    ],
    importHint: l10n.transferImportTasksHint,
    onImport: (file) async {
      final rows = TransferReader.rows(file.bytes);
      if (rows == null) throw const FormatException('unsupported');
      return (await transfer.import(rows)).added;
    },
  );
}
