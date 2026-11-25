import 'dart:async';

import 'package:flutter/widgets.dart' show WidgetsBinding;
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/platform/app_shortcuts.dart';
import '../../features/notifications/application/notification_providers.dart';
import '../../features/notifications/data/notification_service.dart';
import '../../features/settings/application/settings_providers.dart';
import '../../l10n/gen/app_localizations.dart';
import 'app_router.dart';
import 'routes.dart';

final appShortcutsPlatformProvider = Provider<AppShortcutsPlatform>(
  (ref) => AppShortcutsPlatform.create(),
);

/// The long-press shortcuts, in the app language.
List<AppShortcut> appShortcuts(AppLocalizations l10n) => [
  AppShortcut(id: 'focus', label: l10n.shortcutFocus, route: Routes.focus),
  AppShortcut(id: 'task', label: l10n.shortcutNewTask, route: Routes.taskNew),
  AppShortcut(id: 'review', label: l10n.shortcutReview, route: Routes.flashcards),
  AppShortcut(id: 'sounds', label: l10n.shortcutSounds, route: Routes.sounds),
];

/// Tabs are switched to; every other screen opens on top of the current one.
const _tabs = {
  Routes.home,
  Routes.tasks,
  Routes.flashcards,
  Routes.focus,
  Routes.calendar,
  Routes.spaces,
};

/// Tab screens are switched to (go); others open on top (push).
bool isTabRoute(String path) => _tabs.contains(path);

/// Only in-app paths are followed (never a scheme or another host).
bool isAppRoute(String r) =>
    r.length < 300 && r.startsWith('/') && !r.startsWith('//') && !r.contains('://');

/// Opens the screen behind a tapped notification or a launcher shortcut, and
/// keeps the shortcut labels in the app language.
final deepLinksProvider = Provider<void>((ref) {
  final shortcuts = ref.read(appShortcutsPlatformProvider);
  final notifications = ref.read(notificationServiceProvider);

  void open(String? route) {
    if (route == null || !isAppRoute(route)) return;
    final router = ref.read(routerProvider);
    final path = Uri.parse(route).path;
    if (_tabs.contains(path)) {
      router.go(route);
    } else {
      router.push(route);
    }
  }

  final subs = [notifications.taps.listen(open), shortcuts.opened.listen(open)];
  ref.onDispose(() {
    for (final s in subs) {
      unawaited(s.cancel());
    }
  });

  // After the first frame, so the router is ready.
  WidgetsBinding.instance.addPostFrameCallback((_) async {
    open(notifications.launchPayload);
    open(await shortcuts.takeLaunchRoute());
  });

  void label() {
    unawaited(shortcuts.set(appShortcuts(notificationL10n(ref.read(settingsProvider)))));
  }

  ref.listen(settingsProvider.select((s) => s.localeTag), (_, _) => label());
  label();
});
