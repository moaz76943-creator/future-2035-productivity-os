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
    ..showSnackBar(SnackBar(
      content: Text(message),
      behavior: SnackBarBehavior.floating,
      action: onUndo == null
          ? null
          : SnackBarAction(label: context.l10n.actionUndo, onPressed: onUndo),
    ));
}

void showMessage(BuildContext context, String message) => showUndoSnack(context, message);

/// Asks for a single line of text. Returns null when cancelled.
Future<String?> promptText(
  BuildContext context, {
  required String title,
  String initial = '',
  String? hint,
  String? confirmLabel,
}) {
  final controller = TextEditingController(text: initial);
  final l10n = context.l10n;
  return showDialog<String>(
    context: context,
    builder: (ctx) => AlertDialog(
      title: Text(title),
      content: TextField(
        controller: controller,
        autofocus: true,
        decoration: InputDecoration(hintText: hint),
        onSubmitted: (v) => Navigator.pop(ctx, v.trim()),
      ),
      actions: [
        TextButton(onPressed: () => Navigator.pop(ctx), child: Text(l10n.actionCancel)),
        FilledButton(
          onPressed: () => Navigator.pop(ctx, controller.text.trim()),
          child: Text(confirmLabel ?? l10n.actionSave),
        ),
      ],
    ),
  ).whenComplete(controller.dispose);
}
