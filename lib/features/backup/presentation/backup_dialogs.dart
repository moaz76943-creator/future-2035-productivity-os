import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../core/backup/backup_service.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/tokens.dart';
import '../application/backup_ui.dart';

/// Asks for a backup password. With [confirm] (creating a backup) a second
/// field must match and the minimum length is enforced.
Future<String?> askBackupPassword(BuildContext context, {required bool confirm}) =>
    showDialog<String>(
      context: context,
      builder: (_) => _PasswordDialog(confirm: confirm),
    );

class _PasswordDialog extends StatefulWidget {
  const _PasswordDialog({required this.confirm});
  final bool confirm;

  @override
  State<_PasswordDialog> createState() => _PasswordDialogState();
}

class _PasswordDialogState extends State<_PasswordDialog> {
  final _form = GlobalKey<FormState>();
  final _pw = TextEditingController();
  final _pw2 = TextEditingController();
  bool _obscure = true;

  @override
  void dispose() {
    _pw.dispose();
    _pw2.dispose();
    super.dispose();
  }

  void _submit() {
    if (_form.currentState?.validate() ?? false) Navigator.pop(context, _pw.text);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final reveal = IconButton(
      tooltip: _obscure ? l10n.backupShowPassword : l10n.backupHidePassword,
      icon: Icon(_obscure ? Icons.visibility_rounded : Icons.visibility_off_rounded),
      onPressed: () => setState(() => _obscure = !_obscure),
    );
    return AlertDialog(
      title: Text(widget.confirm ? l10n.settingsBackup : l10n.settingsRestore),
      content: Form(
        key: _form,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                key: const ValueKey('backup-password'),
                controller: _pw,
                obscureText: _obscure,
                autofocus: true,
                enableSuggestions: false,
                autocorrect: false,
                textInputAction: widget.confirm ? TextInputAction.next : TextInputAction.done,
                onFieldSubmitted: widget.confirm ? null : (_) => _submit(),
                decoration: InputDecoration(
                  labelText: l10n.backupPassword,
                  helperText: widget.confirm
                      ? l10n.backupPasswordHint(BackupService.minPasswordLength)
                      : null,
                  helperMaxLines: 3,
                  suffixIcon: reveal,
                ),
                validator: (v) {
                  final s = v ?? '';
                  if (s.isEmpty) return l10n.validationRequired;
                  if (widget.confirm && s.length < BackupService.minPasswordLength) {
                    return l10n.backupPasswordShort;
                  }
                  return null;
                },
              ),
              if (widget.confirm) ...[
                const SizedBox(height: Space.sm),
                TextFormField(
                  key: const ValueKey('backup-password-confirm'),
                  controller: _pw2,
                  obscureText: _obscure,
                  enableSuggestions: false,
                  autocorrect: false,
                  onFieldSubmitted: (_) => _submit(),
                  decoration: InputDecoration(labelText: l10n.backupPasswordConfirm),
                  validator: (v) => v != _pw.text ? l10n.backupPasswordMismatch : null,
                ),
              ],
            ],
          ),
        ),
      ),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context), child: Text(l10n.actionCancel)),
        FilledButton(
          onPressed: _submit,
          child: Text(widget.confirm ? l10n.actionCreate : l10n.actionRestore),
        ),
      ],
    );
  }
}

/// Second, typed confirmation for erasing all data. Returns true only when
/// the user typed the localized confirmation word and confirmed.
Future<bool> confirmEraseByTyping(BuildContext context) async =>
    await showDialog<bool>(context: context, builder: (_) => const _EraseDialog()) ?? false;

class _EraseDialog extends StatefulWidget {
  const _EraseDialog();

  @override
  State<_EraseDialog> createState() => _EraseDialogState();
}

class _EraseDialogState extends State<_EraseDialog> {
  final _c = TextEditingController();

  @override
  void dispose() {
    _c.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final word = l10n.settingsEraseWord;
    final ok = matchesEraseWord(_c.text, word);
    final error = Theme.of(context).colorScheme.error;
    return AlertDialog(
      title: Text(l10n.settingsEraseConfirmTitle),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(l10n.settingsEraseConfirmBody(word)),
            const SizedBox(height: Space.md),
            TextField(
              key: const ValueKey('erase-word'),
              controller: _c,
              autofocus: true,
              autocorrect: false,
              enableSuggestions: false,
              onChanged: (_) => setState(() {}),
              decoration: InputDecoration(labelText: l10n.settingsEraseTypeLabel(word)),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context, false), child: Text(l10n.actionCancel)),
        FilledButton(
          key: const ValueKey('erase-confirm'),
          style: FilledButton.styleFrom(backgroundColor: error),
          onPressed: ok ? () => Navigator.pop(context, true) : null,
          child: Text(l10n.settingsErase),
        ),
      ],
    );
  }
}

/// Runs [task] while a blocking progress dialog with [label] is visible.
Future<T> runWithProgress<T>(BuildContext context, String label, Future<T> Function() task) async {
  final navigator = Navigator.of(context, rootNavigator: true);
  showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (ctx) => PopScope(
      canPop: false,
      child: AlertDialog(
        content: Semantics(
          liveRegion: true,
          label: label,
          child: Row(
            children: [
              const SizedBox.square(
                dimension: 28,
                child: CircularProgressIndicator(strokeWidth: 3),
              ),
              const SizedBox(width: Space.md),
              Expanded(child: Text(label, style: ctx.text.bodyLarge)),
            ],
          ),
        ),
      ),
    ),
  );
  try {
    return await task();
  } finally {
    navigator.pop();
  }
}
