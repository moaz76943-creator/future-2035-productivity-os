import 'package:material_ui/material_ui.dart';

import '../../app/localization/app_format.dart';

/// Confirmation dialog. Returns true only when the user confirms.
Future<bool> confirmAction(
  BuildContext context, {
  required String title,
  required String message,
  required String confirmLabel,
  bool destructive = false,
}) async {
  final l10n = context.l10n;
  final result = await showDialog<bool>(
    context: context,
    builder: (ctx) => AlertDialog(
      title: Text(title),
      content: Text(message),
      actions: [
        TextButton(onPressed: () => Navigator.pop(ctx, false), child: Text(l10n.actionCancel)),
        FilledButton(
          style: destructive
              ? FilledButton.styleFrom(backgroundColor: Theme.of(ctx).colorScheme.error)
              : null,
          onPressed: () => Navigator.pop(ctx, true),
          child: Text(confirmLabel),
        ),
      ],
    ),
  );
  return result ?? false;
}

/// Shows a short message with an optional undo action.
void showUndoSnack(BuildContext context, String message, {VoidCallback? onUndo}) {
  final messenger = ScaffoldMessenger.maybeOf(context);
  if (messenger == null) return;
  messenger
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Text(message),
        behavior: SnackBarBehavior.floating,
        action: onUndo == null
            ? null
            : SnackBarAction(label: context.l10n.actionUndo, onPressed: onUndo),
      ),
    );
}

void showMessage(BuildContext context, String message) => showUndoSnack(context, message);

/// Asks for a single line of text. Returns null when cancelled.
Future<String?> promptText(
  BuildContext context, {
  required String title,
  String initial = '',
  String? hint,
  String? confirmLabel,
}) => showDialog<String>(
  context: context,
  builder: (_) =>
      _PromptDialog(title: title, initial: initial, hint: hint, confirmLabel: confirmLabel),
);

/// Stateful so the controller lives exactly as long as the dialog route,
/// including its exit animation.
class _PromptDialog extends StatefulWidget {
  const _PromptDialog({required this.title, required this.initial, this.hint, this.confirmLabel});
  final String title;
  final String initial;
  final String? hint;
  final String? confirmLabel;

  @override
  State<_PromptDialog> createState() => _PromptDialogState();
}

class _PromptDialogState extends State<_PromptDialog> {
  late final _controller = TextEditingController(text: widget.initial);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return AlertDialog(
      title: Text(widget.title),
      content: TextField(
        controller: _controller,
        autofocus: true,
        decoration: InputDecoration(hintText: widget.hint),
        onSubmitted: (v) => Navigator.pop(context, v.trim()),
      ),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context), child: Text(l10n.actionCancel)),
        FilledButton(
          onPressed: () => Navigator.pop(context, _controller.text.trim()),
          child: Text(widget.confirmLabel ?? l10n.actionSave),
        ),
      ],
    );
  }
}
