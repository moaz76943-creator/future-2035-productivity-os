import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import 'deep_links.dart';

/// Leaves the current screen after save or delete.
///
/// A screen opened from a deep link or notification has nothing beneath it:
/// `context.pop()` then throws and `maybePop()` silently keeps the user on a
/// screen whose record may no longer exist. Fall back to the module's list.
void leaveScreen(BuildContext context, String fallback) {
  if (context.canPop()) {
    context.pop();
  } else {
    context.go(fallback);
  }
}

/// Opens [route]: a bottom tab is switched to, any other screen opens on top.
/// Pushing a tab would stack a second copy of the tabs.
void openRoute(BuildContext context, String route) =>
    isTabRoute(Uri.parse(route).path) ? context.go(route) : context.push(route);
