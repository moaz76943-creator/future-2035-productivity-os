part of '../assistant_tools.dart';

class _SummarizeSheetState extends ConsumerState<SummarizeSheet> {
  NoteRow? _note;
  bool _busy = false;
  String? _summary;
  String? _error;

  Future<void> _run(NoteRow n) async {
    final l10n = context.l10n;
    setState(() {
      _note = n;
      _summary = null;
      _error = null;
    });
    final text = [n.title.trim(), n.body.trim()].where((s) => s.isNotEmpty).join('\n\n');
    if (n.body.trim().isEmpty) {
      setState(() => _error = l10n.assistantNoteEmpty);
      return;
    }
    setState(() => _busy = true);
    final settings = ref.read(settingsProvider);
    try {
      final (summary, decision) = await ref
          .read(remoteAssistantProvider)
          .summarize(
            text: text,
            settings: settings,
            askConsent: (host) => showConsentDialog(context, host),
          );
      if (decision == ConsentDecision.always) {
        await ref
            .read(settingsProvider.notifier)
            .update((s) => s.copyWith(assistantRemoteConsent: true));
      }
      if (mounted) setState(() => _summary = summary);
    } on AssistantConsentDeclined {
      if (mounted) setState(() => _note = null);
    } on AssistantNotConfigured {
      if (mounted) setState(() => _error = l10n.assistantProviderOff);
    } on Object {
      if (mounted) setState(() => _error = l10n.assistantUnavailable);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    if (_note == null) {
      return NoteChooser(title: l10n.assistantSummarize, onChosen: _run);
    }
    final host =
        AssistantEndpoint.host(ref.watch(settingsProvider.select((s) => s.assistantEndpoint))) ??
        '';
    return ToolSheetFrame(
      title: l10n.assistantSummarize,
      footer: _summary == null
          ? null
          : OutlinedButton.icon(
              onPressed: () async {
                await Clipboard.setData(ClipboardData(text: _summary!));
                if (context.mounted) showMessage(context, l10n.assistantCopied);
              },
              icon: const Icon(Icons.copy_rounded),
              label: Text(l10n.assistantCopy),
            ),
      children: [
        _NoteHeader(note: _note!, onChange: () => setState(() => _note = null)),
        if (_busy) LoadingState(label: l10n.assistantSummarizing, rows: 2),
        if (_error != null)
          ErrorState(
            title: l10n.assistantSummarize,
            message: _error!,
            retryLabel: l10n.actionRetry,
            onRetry: () => _run(_note!),
          ),
        if (_summary != null) ...[
          Text(l10n.assistantSummaryTitle, style: context.text.titleMedium),
          const SizedBox(height: Space.xs),
          LuxCard(child: SelectableText(_summary!, style: context.text.bodyMedium)),
          const SizedBox(height: Space.xs),
          Text(l10n.assistantSummaryNote(host), style: context.text.bodySmall),
        ],
      ],
    );
  }
}
