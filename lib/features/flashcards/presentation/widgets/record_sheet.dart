import 'dart:async';
import 'dart:typed_data';

import 'package:material_ui/material_ui.dart';

import '../../../../app/localization/app_format.dart';
import '../../../../core/design_system/app_theme.dart';
import '../../../../core/design_system/tokens.dart';
import '../../../../core/speech/audio_recorder.dart';

/// Shows the running recording (already started) with Stop and Cancel.
/// Returns the recorded bytes, or null when cancelled or nothing was recorded.
/// Stops by itself at [maxDuration], as the native recorder does.
Future<Uint8List?> showRecordSheet(BuildContext context, AudioRecorder recorder) =>
    showModalBottomSheet<Uint8List>(
      useRootNavigator: true,
      context: context,
      isDismissible: false,
      enableDrag: false,
      useSafeArea: true,
      builder: (_) => _RecordSheet(recorder: recorder),
    );

const maxDuration = Duration(minutes: 5);

class _RecordSheet extends StatefulWidget {
  const _RecordSheet({required this.recorder});
  final AudioRecorder recorder;

  @override
  State<_RecordSheet> createState() => _RecordSheetState();
}

class _RecordSheetState extends State<_RecordSheet> {
  final _watch = Stopwatch()..start();
  late final Timer _ticker;
  bool _done = false;

  @override
  void initState() {
    super.initState();
    _ticker = Timer.periodic(const Duration(seconds: 1), (_) {
      if (_watch.elapsed >= maxDuration) {
        unawaited(_stop());
      } else {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    _ticker.cancel();
    // Closed without Stop (e.g. the route was removed): never leave the mic on.
    if (!_done) unawaited(widget.recorder.cancel());
    super.dispose();
  }

  Future<void> _stop() async {
    if (_done) return;
    _done = true;
    _ticker.cancel();
    final bytes = await widget.recorder.stop();
    if (mounted) Navigator.of(context).pop(bytes);
  }

  Future<void> _cancel() async {
    if (_done) return;
    _done = true;
    _ticker.cancel();
    await widget.recorder.cancel();
    if (mounted) Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) unawaited(_cancel());
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(Space.page, Space.lg, Space.page, Space.lg),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.mic_rounded, size: 40, color: context.lux.danger),
            const SizedBox(height: Space.sm),
            Text(l10n.flashcardsRecording, style: context.text.titleMedium),
            const SizedBox(height: Space.xs),
            Directionality(
              textDirection: TextDirection.ltr,
              child: Text(
                AppFormat.clock(_watch.elapsed),
                key: const Key('recordElapsed'),
                style: context.text.headlineSmall,
              ),
            ),
            const SizedBox(height: Space.lg),
            Wrap(
              alignment: WrapAlignment.center,
              spacing: Space.sm,
              runSpacing: Space.xs,
              children: [
                TextButton(
                  key: const Key('recordCancel'),
                  onPressed: _cancel,
                  child: Text(l10n.actionCancel),
                ),
                FilledButton.icon(
                  key: const Key('recordStop'),
                  onPressed: _stop,
                  icon: const Icon(Icons.stop_rounded),
                  label: Text(l10n.flashcardsRecordStop),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
